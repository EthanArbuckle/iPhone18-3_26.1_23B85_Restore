uint64_t sub_1D77CF4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1D78B49C4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D77CF5BC, 0, 0);
}

uint64_t sub_1D77CF5BC()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1D77CD908(sub_1D77CF6D0, v3);

  sub_1D77CE170();
  sub_1D77CE1C8();
  sub_1D78B46B4();

  v4 = v0[1];

  return v4();
}

void sub_1D77CF6F0()
{
  if (!qword_1EC9CB990)
  {
    sub_1D77CE170();
    sub_1D77CE1C8();
    v0 = sub_1D78B49F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CB990);
    }
  }
}

void sub_1D77CF76C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HideMyEmailSignupSectionDescriptor;
    v8[1] = &type metadata for HideMyEmailSignupModel;
    v8[2] = sub_1D77CE118();
    v8[3] = sub_1D77CE220();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D77CF978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D77CF9E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D77CF76C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D77CFA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 6;
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      return result;
    }
  }

  else
  {
  }
}

double sub_1D77CFAEC@<D0>(uint64_t a1@<X0>, double *a2@<X8>, CGFloat a3@<D0>)
{
  sub_1D78B49A4();
  v84 = v6 + -20.0 + -20.0;
  sub_1D778AF9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v72 = sub_1D773F004(0, &qword_1EE08FC10);
  v89 = v8;
  *(inited + 40) = sub_1D78B61B4();
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v72;
  *(inited + 72) = v9;
  v88 = objc_opt_self();
  v87 = v9;
  v10 = [v88 labelColor];
  v11 = sub_1D773F004(0, &qword_1EE08FC00);
  *(inited + 104) = v11;
  *(inited + 80) = v10;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4();
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v14 = sub_1D78B5BB4();

  v15 = [v12 initWithString:v13 attributes:v14];

  sub_1D78B49A4();
  v86 = v15;
  [v15 boundingRectWithSize:3 options:0 context:{v16 - a3, 1.79769313e308}];
  x = v91.origin.x;
  y = v91.origin.y;
  width = v91.size.width;
  height = v91.size.height;
  v21 = CGRectGetWidth(v91);
  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = width;
  v92.size.height = height;
  v93.size.height = CGRectGetHeight(v92);
  v93.origin.y = 11.0;
  v93.origin.x = a3;
  v22 = a3;
  v93.size.width = v21;
  v94 = CGRectIntegral(v93);
  v23 = v94.origin.x;
  v24 = v94.origin.y;
  rect = v94.size.width;
  v25 = v94.size.height;
  v73 = a1;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v26 setLineBreakMode_];
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1D78BF690;
  *(v27 + 32) = v89;
  *(v27 + 40) = sub_1D78B61B4();
  *(v27 + 64) = v72;
  *(v27 + 72) = v87;
  *(v27 + 80) = [v88 secondaryLabelColor];
  v28 = *MEMORY[0x1E69DB688];
  *(v27 + 104) = v11;
  *(v27 + 112) = v28;
  *(v27 + 144) = sub_1D773F004(0, &unk_1EE08FCD8);
  *(v27 + 120) = v26;
  v29 = v28;
  v30 = v26;
  sub_1D77FED68(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v32 = sub_1D78B5C44();
  v33 = sub_1D78B5BB4();

  v34 = [v31 initWithString:v32 attributes:v33];

  v35 = v22;
  [v34 boundingRectWithSize:3 options:0 context:{v84 - v22, 1.79769313e308}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v83 = v24;
  v85 = v23;
  v95.origin.x = v23;
  v95.origin.y = v24;
  v95.size.width = rect;
  v82 = v25;
  v95.size.height = v25;
  v44 = CGRectGetMaxY(v95) + 5.0;
  v96.origin.x = v37;
  v96.origin.y = v39;
  v96.size.width = v41;
  v96.size.height = v43;
  v45 = CGRectGetWidth(v96);
  v97.origin.x = v37;
  v97.origin.y = v39;
  v97.size.width = v41;
  v97.size.height = v43;
  v98.size.height = CGRectGetHeight(v97);
  v98.origin.x = v35;
  v98.origin.y = v44;
  v98.size.width = v45;
  v99 = CGRectIntegral(v98);
  v80 = v99.origin.y;
  v81 = v99.origin.x;
  v78 = v99.size.height;
  v79 = v99.size.width;
  v46 = CGRectGetMaxY(v99) + 12.0;
  sub_1D78B4994();
  v100.origin.x = v47 + -20.0;
  v100.origin.y = v46 * 0.5 + -10.0;
  v100.size.width = 20.0;
  v100.size.height = 20.0;
  v101 = CGRectIntegral(v100);
  v76 = v101.origin.y;
  v77 = v101.origin.x;
  v74 = v101.size.height;
  v75 = v101.size.width;
  if (*(v73 + 8))
  {
    sub_1D78B5CE4();
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1D78BCB50;
    *(v48 + 32) = v89;
    v49 = v89;
    *(v48 + 40) = sub_1D78B61B4();
    *(v48 + 64) = v72;
    *(v48 + 72) = v87;
    v50 = v87;
    v51 = [v88 secondaryLabelColor];
    *(v48 + 104) = v11;
    *(v48 + 80) = v51;
    sub_1D77FED68(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    v52 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v53 = sub_1D78B5C44();

    v54 = sub_1D78B5BB4();

    v55 = [v52 initWithString:v53 attributes:v54];

    sub_1D78B49A4();
    [v55 boundingRectWithSize:3 options:0 context:?];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
  }

  else
  {
    v57 = 0.0;
    v59 = 0.0;
    v61 = 0.0;
    v63 = 0.0;
  }

  v102.origin.x = v57;
  v102.origin.y = v59;
  v102.size.width = v61;
  v102.size.height = v63;
  v64 = v35 + -16.0 - CGRectGetWidth(v102);
  v103.origin.x = v57;
  v103.origin.y = v59;
  v103.size.width = v61;
  v103.size.height = v63;
  v65 = v46 * 0.5 + CGRectGetHeight(v103) * -0.5;
  v104.origin.x = v57;
  v104.origin.y = v59;
  v104.size.width = v61;
  v104.size.height = v63;
  v66 = CGRectGetWidth(v104);
  v105.origin.x = v57;
  v105.origin.y = v59;
  v105.size.width = v61;
  v105.size.height = v63;
  v106.size.height = CGRectGetHeight(v105);
  v106.origin.x = v64;
  v106.origin.y = v65;
  v106.size.width = v66;
  v107 = CGRectIntegral(v106);
  v67 = v107.origin.x;
  v68 = v107.origin.y;
  v69 = v107.size.width;
  v70 = v107.size.height;

  *a2 = v46;
  a2[1] = v67;
  a2[2] = v68;
  a2[3] = v69;
  a2[4] = v70;
  a2[5] = v85;
  a2[6] = v83;
  a2[7] = rect;
  a2[8] = v82;
  a2[9] = v81;
  a2[10] = v80;
  a2[11] = v79;
  a2[12] = v78;
  a2[13] = v77;
  a2[14] = v76;
  a2[15] = v75;
  result = v74;
  a2[16] = v74;
  return result;
}

uint64_t AppleAccountSignInErrorAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleAccountSignInErrorAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleAccountSignInErrorAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppleAccountSignInErrorAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77D058C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77D0650()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AccountPageViewControllerFactory.__allocating_init(accountPageViewControllerFactory:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id AccountPageViewControllerFactory.createAccountPageViewController(for:with:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1D78B3214();
  v6 = [v4 createAccountPageViewControllerFor_];

  v7 = [a2 traitCollection];
  v8 = [v7 verticalSizeClass];

  v9 = [a2 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v8 != 1)
  {
    if (v8 != 2 || v10 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 4;
    goto LABEL_9;
  }

  if ((v10 - 1) < 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = 2;
LABEL_9:
  [v6 setModalPresentationStyle_];
  return v6;
}

uint64_t AccountPageViewControllerFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D77D0964(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  result = [*(v1 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      v8 = [v7 paidBundleConfig];
      swift_unknownObjectRelease();
      if (!v5)
      {
        swift_unknownObjectRetain();
        if ([v8 isNarrativeAudioEnabled] & 1) != 0 && (objc_msgSend(v3, sel_respondsToSelector_, sel_narrativeTrack))
        {
          v9 = [v3 narrativeTrack];
          if (v9)
          {

            v10 = [v8 audioChannelPaywallOverrideAllowedTagIDs];
            v11 = sub_1D78B5EB4();

            v19[2] = v3;
            v19[3] = v4;
            v20 = 0;
            v32 = *(a1 + 193);
            v33 = *(a1 + 209);
            *v34 = *(a1 + 225);
            *&v34[15] = *(a1 + 240);
            v28 = *(a1 + 129);
            v29 = *(a1 + 145);
            v30 = *(a1 + 161);
            v31 = *(a1 + 177);
            v24 = *(a1 + 65);
            v25 = *(a1 + 81);
            v26 = *(a1 + 97);
            v27 = *(a1 + 113);
            v21 = *(a1 + 17);
            v22 = *(a1 + 33);
            v23 = *(a1 + 49);
            v12 = [PaywallModel.tag.getter() identifier];
            swift_unknownObjectRelease();
            v13 = sub_1D78B5C74();
            v15 = v14;

            v19[0] = v13;
            v19[1] = v15;
            MEMORY[0x1EEE9AC00](v16);
            v18[2] = v19;
            v17 = sub_1D781DA18(sub_1D7782F40, v18, v11);

            swift_unknownObjectRelease();

            return (v17 & 1);
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v17 = 1;
    return (v17 & 1);
  }

  __break(1u);
  return result;
}

double sub_1D77D0C34@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v5 = v4;
  LODWORD(v214) = a3;
  v203 = a4;
  v8 = MEMORY[0x1E69E6720];
  sub_1D77403A8(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v227 = &v200 - v10;
  v11 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v226 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_1D78B3294();
  *&v229 = *(v230 - 8);
  v13 = MEMORY[0x1EEE9AC00](v230);
  v202 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v225 = &v200 - v15;
  sub_1D77403A8(0, &unk_1EE096460, MEMORY[0x1E6968FB0], v8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v213 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v224 = &v200 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v212 = &v200 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v200 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v216 = &v200 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v222 = &v200 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v215 = (&v200 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v200 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v200 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v219 = &v200 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v223 = &v200 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v221 = &v200 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v220 = &v200 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v218 = &v200 - v46;
  v47 = a2[13];
  v259 = a2[12];
  v260 = v47;
  v48 = a2[15];
  v261 = a2[14];
  v262 = v48;
  v49 = a2[9];
  v255 = a2[8];
  v256 = v49;
  v50 = a2[11];
  v257 = a2[10];
  v258 = v50;
  v51 = a2[5];
  v251 = a2[4];
  v252 = v51;
  v52 = a2[7];
  v253 = a2[6];
  v254 = v52;
  v53 = a2[1];
  v247 = *a2;
  v248 = v53;
  v54 = a2[3];
  v249 = a2[2];
  v250 = v54;
  v55 = *(v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerManager + 8);
  ObjectType = swift_getObjectType();
  sub_1D7873170(a1, &v231);
  v57 = (*(v55 + 24))(&v231, ObjectType, v55);
  v58 = 0;
  *&v228 = a1;
  if ((a1 - 6) >= 0xFFFFFFFFFFFFFFFDLL && (v57 & 1) == 0)
  {
    v59 = a2[13];
    v243 = a2[12];
    v244 = v59;
    v60 = a2[15];
    v245 = a2[14];
    v246 = v60;
    v61 = a2[9];
    v239 = a2[8];
    v240 = v61;
    v62 = a2[11];
    v241 = a2[10];
    v242 = v62;
    v63 = a2[5];
    v235 = a2[4];
    v236 = v63;
    v64 = a2[7];
    v237 = a2[6];
    v238 = v64;
    v65 = a2[1];
    v231 = *a2;
    v232 = v65;
    v66 = a2[3];
    v233 = a2[2];
    v234 = v66;
    v58 = sub_1D77D0964(&v231);
  }

  v67 = sub_1D77D224C(v58 & 1, &v247, v5, v228);
  sub_1D77D2698(v67, 0, sub_1D77D46E0, v218);
  sub_1D77D2698(v67, 2, sub_1D77D46E0, v220);
  sub_1D77D2698(v67, 0, sub_1D77D4788, v221);
  sub_1D77D2698(v67, 2, sub_1D77D4788, v223);
  if (!v67)
  {
    v78 = v229;
    v75 = *(v229 + 56);
    v76 = 1;
    v69 = v230;
    v75(v37, 1, 1, v230);
    v77 = 0;
LABEL_18:
    *&v217 = v77;
    v75(v219, 1, 1, v69);
    goto LABEL_22;
  }

  v68 = [v67 visualSpecConfig];
  v69 = v230;
  if (v68 && (v70 = v68, v71 = [v68 multiSizeVideo], v70, v71))
  {
    v72 = [v71 small];
    *&v217 = v71;
    if (v72)
    {
      v73 = v72;
      sub_1D78B3254();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v79 = v229;
    v75 = *(v229 + 56);
    v75(v34, v74, 1, v69);
    v80 = v34;
    v81 = v79;
    sub_1D77D49AC(v80, v37, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v82 = *(v79 + 48);
    if (v82(v37, 1, v69) != 1)
    {
      v89 = v37;
      v90 = v25;
      v91 = v5;
      v92 = v81;
      v93 = *(v81 + 32);
      v215 = v75;
      v94 = v219;
      v93(v219, v89, v69);
      v95 = v94;
      v75 = v215;
      v215(v95, 0, 1, v69);
      goto LABEL_28;
    }

    v76 = 0;
    v77 = v217;
  }

  else
  {
    v75 = *(v229 + 56);
    v76 = 1;
    v75(v37, 1, 1, v69);
    v77 = 0;
  }

  v83 = [v67 visualSpecConfig];
  if (!v83)
  {
    v78 = v229;
    goto LABEL_18;
  }

  v84 = v83;
  v85 = [v83 videoURL];

  if (v85)
  {
    v86 = v215;
    sub_1D78B3254();

    v87 = v86;
    v88 = 0;
    v69 = v230;
  }

  else
  {
    v88 = 1;
    v69 = v230;
    v87 = v215;
  }

  *&v217 = v77;
  v78 = v229;
  v96 = v87;
  v75(v87, v88, 1, v69);
  sub_1D77D49AC(v96, v219, &unk_1EE096460, MEMORY[0x1E6968FB0]);
LABEL_22:
  v82 = *(v78 + 48);
  if (v82(v37, 1, v69) != 1)
  {
    sub_1D77D4A34(v37, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  v97 = v216;
  if ((v76 & 1) == 0)
  {
    v90 = v25;
    v91 = v5;
    v92 = v229;
LABEL_28:
    v100 = [v217 large];
    *&v200 = v91;
    if (v100)
    {
      v101 = v90;
      v102 = v100;
      sub_1D78B3254();

      v103 = 0;
    }

    else
    {
      v103 = 1;
      v101 = v90;
    }

    v104 = v92;
    v75(v101, v103, 1, v69);
    v97 = v216;
    sub_1D77D49AC(v101, v216, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    if (v82(v97, 1, v69) != 1)
    {
      v111 = v222;
      (*(v92 + 32))(v222, v97, v69);
      v75(v111, 0, 1, v69);
      v108 = v200;
      v99 = v228;
      goto LABEL_42;
    }

    v5 = v200;
    v99 = v228;
    v98 = v104;
    if (!v67)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v98 = v229;
  v75(v216, 1, 1, v69);
  v99 = v228;
  if (!v67)
  {
    goto LABEL_36;
  }

LABEL_33:
  v105 = [v67 visualSpecConfig];
  if (!v105)
  {
LABEL_36:
    v108 = v5;
    v75(v222, 1, 1, v69);
    goto LABEL_40;
  }

  v106 = v105;
  v107 = [v105 videoURL];

  v108 = v5;
  if (v107)
  {
    v109 = v212;
    sub_1D78B3254();

    v110 = 0;
    v69 = v230;
    v97 = v216;
  }

  else
  {
    v110 = 1;
    v69 = v230;
    v97 = v216;
    v109 = v212;
  }

  v75(v109, v110, 1, v69);
  sub_1D77D49AC(v109, v222, &unk_1EE096460, MEMORY[0x1E6968FB0]);
LABEL_40:
  v92 = v98;
  if (v82(v97, 1, v69) != 1)
  {
    sub_1D77D4A34(v97, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

LABEL_42:
  v215 = v75;
  if (v67)
  {
    v112 = &selRef_isUserSignedIntoiTunes;
    v113 = [v67 visualSpecConfig];
    if (v113)
    {
      v114 = v113;
      v115 = [v113 backgroundColor];

      v116 = swift_allocObject();
      *(v116 + 16) = 0;
      v117 = (v116 + 16);
      *&v233 = sub_1D77D4BF0;
      *(&v233 + 1) = v116;
      *&v231 = MEMORY[0x1E69E9820];
      *(&v231 + 1) = 1107296256;
      *&v232 = sub_1D77DAD54;
      *(&v232 + 1) = &block_descriptor_8;
      v118 = _Block_copy(&v231);

      [v115 readDeconstructedRepresentationWithAcccessor_];

      v112 = &selRef_isUserSignedIntoiTunes;
      _Block_release(v118);
      swift_beginAccess();
      v216 = *v117;
      v119 = v216;
    }

    else
    {
      v216 = 0;
    }

    v121 = [v67 v112[178]];
    if (v121)
    {
      v122 = v121;
      v123 = [v121 darkStyleBackgroundColor];

      v124 = swift_allocObject();
      *(v124 + 16) = 0;
      v125 = (v124 + 16);
      *&v233 = sub_1D77D4A2C;
      *(&v233 + 1) = v124;
      *&v231 = MEMORY[0x1E69E9820];
      *(&v231 + 1) = 1107296256;
      *&v232 = sub_1D77DAD54;
      *(&v232 + 1) = &block_descriptor_13;
      v126 = _Block_copy(&v231);

      [v123 readDeconstructedRepresentationWithAcccessor_];

      v112 = &selRef_isUserSignedIntoiTunes;
      _Block_release(v126);
      swift_beginAccess();
      v212 = *v125;
      v127 = v212;
    }

    else
    {
      v212 = 0;
    }

    v120 = v229;
    v99 = v228;
    v128 = [v67 v112[178]];
    if (v128)
    {
      v129 = v128;
      v211 = [v128 textTopPadding];
    }

    else
    {
      v211 = 0;
    }

    v130 = [v67 v112[178]];
    if (v130)
    {
      v131 = v130;
      v210 = [v130 badgeVerticalOffset];
    }

    else
    {
      v210 = 0;
    }
  }

  else
  {
    v210 = 0;
    v211 = 0;
    v212 = 0;
    v216 = 0;
    v120 = v92;
  }

  v243 = v259;
  v244 = v260;
  v245 = v261;
  v246 = v262;
  v239 = v255;
  v240 = v256;
  v241 = v257;
  v242 = v258;
  v235 = v251;
  v236 = v252;
  v237 = v253;
  v238 = v254;
  v231 = v247;
  v232 = v248;
  v233 = v249;
  v234 = v250;
  v132 = PaywallModel.tag.getter();
  v133 = v214;
  v134 = sub_1D77D2AE8(v67, v99, v132, v214 & 1);
  v208 = v135;
  v209 = v134;
  swift_unknownObjectRelease();
  v243 = v259;
  v244 = v260;
  v245 = v261;
  v246 = v262;
  v239 = v255;
  v240 = v256;
  v241 = v257;
  v242 = v258;
  v235 = v251;
  v236 = v252;
  v237 = v253;
  v238 = v254;
  v231 = v247;
  v232 = v248;
  v233 = v249;
  v234 = v250;
  v136 = PaywallModel.tag.getter();
  v137 = sub_1D77D303C(v67, v99, v136, v133 & 1);
  v206 = v138;
  v207 = v137;
  v204 = v140;
  v205 = v139;
  swift_unknownObjectRelease();
  if (v67)
  {
    v141 = v67;
    v142 = [v141 learnMoreURL];
    v143 = v230;
    if (v142)
    {
      v144 = v202;
      v145 = v142;
      sub_1D78B3254();

      (*(v120 + 32))(v225, v144, v143);
    }

    else
    {

      (*(v120 + 16))(v225, v108 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultLearnMoreURL, v143);
    }
  }

  else
  {
    (*(v120 + 16))(v225, v108 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultLearnMoreURL, v230);
    v141 = 0;
  }

  v146 = [v141 subscriptionButtonConfig];
  v147 = *(v108 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v148 = *(v108 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v147);
  sub_1D7873170(v99, &v231);
  v149 = (*(v148 + 32))(&v231, v67, v147, v148);
  if (v150)
  {
    v202 = v150;
    v214 = v149;
    v151 = v230;
    v152 = v213;
    goto LABEL_71;
  }

  v152 = v213;
  if (!v146)
  {
    goto LABEL_69;
  }

  v153 = v146;
  v154 = v153;
  if ((v214 & 1) == 0)
  {
    v155 = [v153 nonTrialText];
    if (v155)
    {
      goto LABEL_66;
    }

    goto LABEL_68;
  }

  v155 = [v153 trialText];
  if (!v155)
  {
LABEL_68:

LABEL_69:
    v214 = 0;
    v202 = 0xE000000000000000;
    goto LABEL_70;
  }

LABEL_66:
  v156 = v155;
  v214 = sub_1D78B5C74();
  v202 = v157;

LABEL_70:
  v151 = v230;
LABEL_71:
  v243 = v259;
  v244 = v260;
  v245 = v261;
  v246 = v262;
  v239 = v255;
  v240 = v256;
  v241 = v257;
  v242 = v258;
  v235 = v251;
  v236 = v252;
  v237 = v253;
  v238 = v254;
  v231 = v247;
  v232 = v248;
  v233 = v249;
  v234 = v250;
  sub_1D77D3690(v146, v67, &v231, v99, v226);
  if (v67)
  {
    v158 = [v141 offersLinkTitle];
    if (v158)
    {
      v159 = v158;
      v213 = sub_1D78B5C74();
      v201 = v160;
    }

    else
    {
      v213 = 0;
      v201 = 0xE000000000000000;
    }

    v161 = [v141 offersLinkURL];
    if (v161)
    {
      v162 = v161;
      sub_1D78B3254();

      v163 = 0;
    }

    else
    {
      v163 = 1;
    }

    v215(v152, v163, 1, v151);
    sub_1D77D49AC(v152, v224, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v215(v224, 1, 1, v151);
    v213 = 0;
    v201 = 0xE000000000000000;
  }

  sub_1D77D42E4(v67, v99, v227);
  v243 = v259;
  v244 = v260;
  v245 = v261;
  v246 = v262;
  v239 = v255;
  v240 = v256;
  v241 = v257;
  v242 = v258;
  v235 = v251;
  v236 = v252;
  v237 = v253;
  v238 = v254;
  v231 = v247;
  v232 = v248;
  v233 = v249;
  v234 = v250;
  v164 = PaywallModel.tag.getter();
  v165 = sub_1D7792EAC(v99, v164, *(v108 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_purchaseProvider));
  swift_unknownObjectRelease();
  LODWORD(v215) = v165;
  if (v165)
  {
    sub_1D77403A8(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_1D78BCAB0;
    v243 = v259;
    v244 = v260;
    v245 = v261;
    v246 = v262;
    v239 = v255;
    v240 = v256;
    v241 = v257;
    v242 = v258;
    v235 = v251;
    v236 = v252;
    v237 = v253;
    v238 = v254;
    v231 = v247;
    v232 = v248;
    v233 = v249;
    v234 = v250;
    v167 = v146;
    v168 = [PaywallModel.tag.getter() name];
    swift_unknownObjectRelease();
    v169 = sub_1D78B5C74();
    v171 = v170;

    v146 = v167;
    *(v166 + 56) = MEMORY[0x1E69E6158];
    *(v166 + 64) = sub_1D775ABD4();
    *(v166 + 32) = v169;
    *(v166 + 40) = v171;
    v120 = v229;
    v172 = sub_1D78B5C94();
    v174 = v173;
    v175 = v217;
    if (v67)
    {
      goto LABEL_82;
    }

LABEL_85:

LABEL_87:
    v184 = 0uLL;
    v229 = 0u;
    v182 = 1;
    goto LABEL_88;
  }

  v172 = 0;
  v174 = 0xE000000000000000;
  v175 = v217;
  if (!v67)
  {
    goto LABEL_85;
  }

LABEL_82:
  v176 = [v141 paywallTopOffsetConfig];
  if (!v176)
  {

    goto LABEL_87;
  }

  v177 = v176;
  [v176 compactPortraitTopOffsetRatio];
  v229 = v178;
  [v177 compactLandscapeTopOffsetRatio];
  v217 = v179;
  [v177 regularPortraitTopOffsetRatio];
  v228 = v180;
  [v177 regularLandscapeTopOffsetRatio];
  v200 = v181;

  v182 = 0;
  *&v183 = v229;
  *(&v183 + 1) = v217;
  v229 = v183;
  *&v184 = v228;
  *(&v184 + 1) = v200;
LABEL_88:
  v228 = v184;
  v185 = type metadata accessor for BundlePaywallViewModel(0);
  v186 = MEMORY[0x1E6968FB0];
  v187 = v203;
  sub_1D77D49AC(v219, &v203[v185[21]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
  sub_1D77D49AC(v222, &v187[v185[22]], &unk_1EE096460, v186);
  v188 = v210;
  *v187 = v211;
  *(v187 + 1) = v188;
  sub_1D77D49AC(v218, &v187[v185[17]], &unk_1EE096460, v186);
  sub_1D77D49AC(v220, &v187[v185[18]], &unk_1EE096460, v186);
  sub_1D77D49AC(v221, &v187[v185[19]], &unk_1EE096460, v186);
  sub_1D77D49AC(v223, &v187[v185[20]], &unk_1EE096460, v186);
  *&v187[v185[23]] = v216;
  *&v187[v185[24]] = v212;
  v189 = v208;
  *(v187 + 2) = v209;
  *(v187 + 3) = v189;
  v190 = v206;
  *(v187 + 4) = v207;
  *(v187 + 5) = v190;
  v191 = v204;
  *(v187 + 6) = v205;
  *(v187 + 7) = v191;
  (*(v120 + 32))(&v187[v185[9]], v225, v230);
  v192 = &v187[v185[10]];
  v193 = v202;
  *v192 = v214;
  v192[1] = v193;
  sub_1D77D4944(v226, &v187[v185[11]], type metadata accessor for SubscribeButtonDestination);
  v194 = &v187[v185[12]];
  v195 = v201;
  *v194 = v213;
  *(v194 + 1) = v195;
  sub_1D77D49AC(v224, &v187[v185[13]], &unk_1EE096460, v186);
  sub_1D77D49AC(v227, &v187[v185[14]], qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  v196 = &v187[v185[15]];
  *v196 = v172;
  v196[1] = v174;
  v187[v185[25]] = v215 & 1;
  v197 = &v187[v185[16]];
  v199 = v228;
  result = *&v229;
  *v197 = v229;
  *(v197 + 1) = v199;
  v197[32] = v182;
  return result;
}

id sub_1D77D224C(char a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a2[13];
    v38 = a2[12];
    v39 = v5;
    v6 = a2[15];
    v40 = a2[14];
    v41 = v6;
    v7 = a2[9];
    v34 = a2[8];
    v35 = v7;
    v8 = a2[11];
    v36 = a2[10];
    v37 = v8;
    v9 = a2[5];
    v30 = a2[4];
    v31 = v9;
    v10 = a2[7];
    v32 = a2[6];
    v33 = v10;
    v11 = a2[1];
    v26 = *a2;
    v27 = v11;
    v12 = a2[3];
    v13 = a2;
    v14 = [PaywallModel.tag.getter() paidBundlePaywallConfiguration];
    swift_unknownObjectRelease();
    if (v14)
    {
      return v14;
    }

    a2 = v13;
  }

  v15 = a2[13];
  v38 = a2[12];
  v39 = v15;
  v16 = a2[15];
  v40 = a2[14];
  v41 = v16;
  v17 = a2[9];
  v34 = a2[8];
  v35 = v17;
  v18 = a2[11];
  v36 = a2[10];
  v37 = v18;
  v19 = a2[5];
  v30 = a2[4];
  v31 = v19;
  v20 = a2[7];
  v32 = a2[6];
  v33 = v20;
  v21 = a2[1];
  v26 = *a2;
  v27 = v21;
  v22 = a2[3];
  v28 = a2[2];
  v29 = v22;
  result = sub_1D77D239C(&v26, a4);
  if (!result)
  {
    return result;
  }

  v24 = result;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v14 = sub_1D789272C(v25, v24);

  return v14;
}

id sub_1D77D239C(_OWORD *a1, uint64_t a2)
{
  v4 = a1[13];
  v24[12] = a1[12];
  v24[13] = v4;
  v5 = a1[15];
  v24[14] = a1[14];
  v24[15] = v5;
  v6 = a1[9];
  v24[8] = a1[8];
  v24[9] = v6;
  v7 = a1[11];
  v24[10] = a1[10];
  v24[11] = v7;
  v8 = a1[5];
  v24[4] = a1[4];
  v24[5] = v8;
  v9 = a1[7];
  v24[6] = a1[6];
  v24[7] = v9;
  v10 = a1[1];
  v24[0] = *a1;
  v24[1] = v10;
  v11 = a1[3];
  v24[2] = a1[2];
  v24[3] = v11;
  result = [*(v2 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v13 = result;
    if (([result respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v14 = [v13 paidBundleConfig];
    swift_unknownObjectRelease();
    v15 = *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerManager + 8);
    ObjectType = swift_getObjectType();
    sub_1D7873170(a2, &v23);
    v17 = (*(v15 + 24))(&v23, ObjectType, v15);
    if ((sub_1D77D4634(v24, v14) & 1) == 0 && (a2 & 0xFFFFFFFFFFFFFFFCLL) != 0xC)
    {
      if (v17)
      {
        v18 = [v14 servicesBundlePaywallConfigurationsByType];
        if (!v18)
        {
LABEL_7:

          return 0;
        }
      }

      else
      {
        v18 = [v14 paywallConfigurationsByType];
        if (!v18)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_18;
    }

    if (v17)
    {
      v19 = [v14 audioServicesBundlePaywallConfigurationsByType];
      if (!v19)
      {
        v19 = [v14 servicesBundlePaywallConfigurationsByType];
        if (!v19)
        {
          v18 = [v14 paywallConfigurationsByType];
          if (!v18)
          {
            goto LABEL_7;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      v19 = [v14 audioPaywallConfigurationsByType];
      if (!v19)
      {
        v18 = [v14 paywallConfigurationsByType];
        if (!v18)
        {
          goto LABEL_7;
        }

LABEL_18:
        v22 = v18;
        sub_1D773F004(0, &qword_1EE08FBD0);
        sub_1D773F004(0, &qword_1EE08FD18);
        sub_1D778FD3C();
        v21 = sub_1D78B5BC4();

        return v21;
      }
    }

    v20 = v19;
    sub_1D773F004(0, &qword_1EE08FBD0);
    sub_1D773F004(0, &qword_1EE08FD18);
    sub_1D778FD3C();
    v21 = sub_1D78B5BC4();

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77D2698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  sub_1D77403A8(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = a3(a2, a1);
  v18 = [objc_opt_self() mainScreen];
  [v18 scale];
  v20 = v19;

  if (v20 < 0.0 || v20 > 1.0)
  {
    if (v20 < 1.0 || v20 > 2.0)
    {
      if (v17)
      {
        v23 = [v17 imageURL3x];
        if (v23)
        {
          v24 = v23;
          sub_1D78B3254();

          v25 = sub_1D78B3294();
          (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
        }

        else
        {

          v38 = sub_1D78B3294();
          (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
        }

        v36 = MEMORY[0x1E6968FB0];
        v37 = v11;
        return sub_1D77D49AC(v37, a4, &unk_1EE096460, v36);
      }
    }

    else if (v17)
    {
      v29 = [v17 imageURL2x];
      if (v29)
      {
        v30 = v29;
        sub_1D78B3254();

        v31 = sub_1D78B3294();
        (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
      }

      else
      {

        v39 = sub_1D78B3294();
        (*(*(v39 - 8) + 56))(v14, 1, 1, v39);
      }

      v36 = MEMORY[0x1E6968FB0];
      v37 = v14;
      return sub_1D77D49AC(v37, a4, &unk_1EE096460, v36);
    }
  }

  else if (v17)
  {
    v26 = [v17 imageURL1x];
    if (v26)
    {
      v27 = v26;
      sub_1D78B3254();

      v28 = sub_1D78B3294();
      (*(*(v28 - 8) + 56))(v16, 0, 1, v28);
    }

    else
    {

      v35 = sub_1D78B3294();
      (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
    }

    v36 = MEMORY[0x1E6968FB0];
    v37 = v16;
    return sub_1D77D49AC(v37, a4, &unk_1EE096460, v36);
  }

  v32 = sub_1D78B3294();
  v33 = *(*(v32 - 8) + 56);

  return v33(a4, 1, 1, v32);
}

id sub_1D77D2AE8(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = (v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider);
  v11 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v12 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v11);
  sub_1D7873170(a2, &v53);
  result = (*(v12 + 8))(&v53, a1, v11, v12);
  if (v14)
  {
    return result;
  }

  if (!a1)
  {
    if (a4)
    {
      v20 = *(v4 + 80);
    }

    else
    {
      v20 = *(v4 + 96);
    }

    return v20;
  }

  v51 = a1;
  v15 = [v51 title];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D78B5C74();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v53 = v17;
  v54 = v19;

  v21 = [a3 name];
  sub_1D78B5C74();

  v22 = sub_1D77BE06C();
  v50 = MEMORY[0x1E69E6158];
  v52 = sub_1D78B62D4();
  v24 = v23;

  v25 = [a3 magazineGenre];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1D78B5C74();
    v29 = v28;

    result = [*(v5 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = result;
    if ([result respondsToSelector_])
    {
      v31 = [v30 paidBundleConfig];
      swift_unknownObjectRelease();
      v32 = [v31 magazineGenresByGenre];

      if (v32)
      {
        sub_1D773F004(0, &qword_1EC9CA2D8);
        v33 = sub_1D78B5BC4();

        if (*(v33 + 16))
        {
          v34 = sub_1D777BBB4(v27, v29);
          v36 = v35;

          if (v36)
          {
            v37 = *(*(v33 + 56) + 8 * v34);

            v38 = [v37 localizedDescription];

            if (v38)
            {
              sub_1D78B5C74();

              v53 = v52;
              v54 = v24;
              v52 = sub_1D78B62D4();
              v40 = v39;

              v24 = v40;
            }

            goto LABEL_20;
          }
        }

        else
        {
        }
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

LABEL_20:
  v41 = v10[3];
  v42 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v41);
  sub_1D7873170(a2, &v53);
  (*(v42 + 56))(&v53, v41, v42);
  if (v43)
  {
    v53 = v52;
    v54 = v24;
    v52 = sub_1D78B62D4();
    v45 = v44;

    v24 = v45;
  }

  v46 = v10[3];
  v47 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v46);
  sub_1D7873170(a2, &v53);
  (*(v47 + 64))(&v53, v46, v47);
  if (v48)
  {
    v53 = v52;
    v54 = v24;

    v49 = sub_1D78B62D4();

    return v49;
  }

  else
  {

    return v52;
  }
}

id sub_1D77D303C(void *a1, uint64_t a2, void *a3, char a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider);
  v10 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v11 = *(v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v10);
  sub_1D7873170(a2, &v63);
  v12 = (*(v11 + 16))(&v63, a1, v10, v11);
  v14 = v13;
  v15 = v9[3];
  v16 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v15);
  sub_1D7873170(a2, &v63);
  v17 = (*(v16 + 24))(&v63, a1, v15, v16);
  if (v14)
  {
    if ((v17 & 1) == 0)
    {
      return v12;
    }

    goto LABEL_29;
  }

  if (!a1)
  {
    if (a4)
    {
      v12 = *(v61 + 144);
    }

    else
    {
      v12 = *(v61 + 160);
    }

LABEL_29:

    return v12;
  }

  v18 = a1;
  v19 = [v18 learnMoreTitle];
  if (v19)
  {
    v20 = v19;
    sub_1D78B5C74();
  }

  v60 = v18;
  if (a4)
  {
    v21 = [v18 descriptionTrial];
  }

  else
  {
    v21 = [v18 descriptionNonTrial];
  }

  v22 = v21;
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D78B5C74();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v63 = v24;
  v64 = v26;

  v27 = [a3 name];
  v28 = a3;
  sub_1D78B5C74();

  v29 = sub_1D77BE06C();
  v59 = MEMORY[0x1E69E6158];
  v30 = sub_1D78B62D4();
  v32 = v31;

  v33 = [v28 magazineGenre];
  if (!v33)
  {
    v12 = v30;
    goto LABEL_26;
  }

  v34 = v33;
  v35 = sub_1D78B5C74();
  v37 = v36;

  result = [*(v61 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v39 = result;
    v12 = v30;
    if ([result respondsToSelector_])
    {
      v62 = v35;
      v40 = [v39 paidBundleConfig];
      swift_unknownObjectRelease();
      v41 = [v40 magazineGenresByGenre];

      v42 = a2;
      if (v41)
      {
        sub_1D773F004(0, &qword_1EC9CA2D8);
        v43 = sub_1D78B5BC4();

        if (*(v43 + 16))
        {
          v44 = sub_1D777BBB4(v62, v37);
          v46 = v45;

          if (v46)
          {
            v47 = *(*(v43 + 56) + 8 * v44);

            v48 = [v47 localizedDescription];

            if (v48)
            {
              sub_1D78B5C74();

              v63 = v12;
              v64 = v32;
              v12 = sub_1D78B62D4();
              v50 = v49;

              v32 = v50;
            }

            goto LABEL_33;
          }
        }

        else
        {
        }
      }

LABEL_33:
      v51 = v9[3];
      v52 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v51);
      sub_1D7873170(v42, &v63);
      (*(v52 + 56))(&v63, v51, v52);
      if (v53)
      {
        v63 = v12;
        v64 = v32;
        v12 = sub_1D78B62D4();
        v55 = v54;

        v32 = v55;
      }

      v56 = v9[3];
      v57 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v56);
      sub_1D7873170(v42, &v63);
      (*(v57 + 64))(&v63, v56, v57);
      if (v58)
      {
        v63 = v12;
        v64 = v32;

        v12 = sub_1D78B62D4();
      }

      return v12;
    }

    swift_unknownObjectRelease();
LABEL_26:
    v42 = a2;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77D3690@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v121 = a4;
  v122 = a2;
  v8 = sub_1D78B3294();
  v124 = *(v8 - 8);
  v125 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v115 = &v104[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v116 = &v104[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v113 = &v104[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v104[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v111 = &v104[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v112 = &v104[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v109 = &v104[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v104[-v23];
  v24 = MEMORY[0x1E69E6720];
  sub_1D77403A8(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v104[-v26];
  sub_1D77403A8(0, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination, v24);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v104[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v104[-v32];
  v34 = type metadata accessor for SubscribeButtonDestination(0);
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v119 = &v104[-v38];
  MEMORY[0x1EEE9AC00](v37);
  v41 = *a3;
  v42 = *(a3 + 16);
  v43 = *(a3 + 193);
  v44 = *(a3 + 225);
  v144 = *(a3 + 209);
  v145[0] = v44;
  *(v145 + 15) = a3[15];
  v45 = *(a3 + 129);
  v46 = *(a3 + 161);
  v140 = *(a3 + 145);
  v141 = v46;
  v142 = *(a3 + 177);
  v143 = v43;
  v47 = *(a3 + 65);
  v48 = *(a3 + 97);
  v136 = *(a3 + 81);
  v137 = v48;
  v138 = *(a3 + 113);
  v139 = v45;
  v49 = *(a3 + 33);
  v132 = *(a3 + 17);
  v133 = v49;
  v134 = *(a3 + 49);
  v135 = v47;
  if (a1)
  {
    v105 = v42;
    v108 = v41;
    v106 = &v104[-v39];
    v107 = v40;
    v120 = v33;
    v50 = qword_1EE0955D8;
    v126 = a1;
    if (v50 != -1)
    {
      swift_once();
    }

    sub_1D77D4AA4();
    v51 = v123;
    result = sub_1D78B3574();
    v53 = v127;
    if ((v127 & 0x8000000000000000) == 0)
    {
      v117 = v34;
      v118 = a5;
      sub_1D774584C(v51 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider, &v127);
      v54 = *(v129 + 7);
      v55 = *(v129 + 15);
      __swift_project_boxed_opaque_existential_1(&v127, *(v129 + 7));
      sub_1D7873170(v121, &v131);
      v56 = v126;
      v57 = [v126 targetType];
      v58 = [v56 postPurchaseURL];
      if (v58)
      {
        v59 = v58;
        sub_1D78B3254();

        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      (*(v124 + 56))(v27, v60, 1, v125);
      v63 = v120;
      (*(v55 + 40))(&v131, v122, v57, v27, v54, v55);
      sub_1D77D4A34(v27, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      __swift_destroy_boxed_opaque_existential_1(&v127);
      sub_1D77D4AFC(v63, v31);
      if ((*(v35 + 48))(v31, 1, v117) == 1)
      {
        sub_1D77D4A34(v31, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
        v64 = v53;
        v65 = v118;
        v66 = v126;
        if (!v53)
        {
          v64 = [v126 targetType];
        }

        if (v64 <= 1)
        {
LABEL_15:
          if (!v64)
          {
            v84 = [v66 postPurchaseURL];
            if (!v84)
            {
              goto LABEL_35;
            }

            v80 = v113;
            v85 = v84;
            sub_1D78B3254();

            sub_1D77D4A34(v63, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
            v82 = *(v124 + 32);
            v83 = v114;
            goto LABEL_34;
          }

          if (v64 == 1)
          {
            v67 = sub_1D77D4830(v53, 0, v123, v66);
            if (v68)
            {
              v129[11] = v143;
              v129[12] = v144;
              v130[0] = v145[0];
              *(v130 + 15) = *(v145 + 15);
              v129[7] = v139;
              v129[8] = v140;
              v129[9] = v141;
              v129[10] = v142;
              v69 = v134;
              v129[3] = v135;
              v129[4] = v136;
              v129[5] = v137;
              v129[6] = v138;
              v129[0] = v132;
              v129[1] = v133;
              v70 = v107;
              *v107 = v67;
              *(v70 + 1) = v68;
              v127 = v108;
              v71 = v105;
              v128 = v105;
              v129[2] = v69;
              v72 = [PaywallModel.tag.getter() identifier];
              swift_unknownObjectRelease();
              v73 = sub_1D78B5C74();
              v75 = v74;

              *(v70 + 2) = v73;
              *(v70 + 3) = v75;
              if (v71)
              {
                sub_1D77D4A34(v120, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

                *(v70 + 4) = 0;
                *(v70 + 5) = 0;
              }

              else
              {
                v96 = [swift_unknownObjectRetain() identifier];
                swift_unknownObjectRelease();
                v97 = sub_1D78B5C74();
                v99 = v98;

                sub_1D77D4A34(v120, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
                *(v70 + 4) = v97;
                *(v70 + 5) = v99;
              }

              sub_1D7740094(0);
              v101 = *(v100 + 80);
              v102 = type metadata accessor for PostPurchaseDestination();
              (*(*(v102 - 8) + 56))(&v70[v101], 1, 1, v102);
              swift_storeEnumTagMultiPayload();
              v103 = v106;
              sub_1D77D4944(v70, v106, type metadata accessor for SubscribeButtonDestination);
              v77 = v103;
              v78 = v65;
              return sub_1D77D4944(v77, v78, type metadata accessor for SubscribeButtonDestination);
            }

            v88 = [v66 postPurchaseURL];
            if (v88)
            {
              v80 = v109;
              v89 = v88;
              sub_1D78B3254();

              sub_1D77D4A34(v63, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
              v82 = *(v124 + 32);
              v83 = v110;
              goto LABEL_34;
            }

LABEL_35:
            sub_1D77D4A34(v63, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

            v94 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
            v95 = type metadata accessor for PostPurchaseDestination();
            (*(*(v95 - 8) + 56))(&v65[v94], 1, 1, v95);
            goto LABEL_36;
          }

LABEL_26:
          v79 = [v66 postPurchaseURL];
          if (!v79)
          {
            goto LABEL_35;
          }

          v80 = v115;
          v81 = v79;
          sub_1D78B3254();

          sub_1D77D4A34(v63, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
          v82 = *(v124 + 32);
          v83 = v116;
LABEL_34:
          v90 = v80;
          v91 = v125;
          v82(v83, v90, v125);
          v92 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
          v82(&v65[v92], v83, v91);
          v93 = type metadata accessor for PostPurchaseDestination();
          swift_storeEnumTagMultiPayload();
          (*(*(v93 - 8) + 56))(&v65[v92], 0, 1, v93);
LABEL_36:
          *v65 = 0;
          *(v65 + 1) = 0;
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v76 = v119;
        sub_1D77D4944(v31, v119, type metadata accessor for SubscribeButtonDestination);
        v65 = v118;
        v66 = v126;
        if (!v53)
        {
          sub_1D77D4A34(v63, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

          v77 = v76;
          v78 = v65;
          return sub_1D77D4944(v77, v78, type metadata accessor for SubscribeButtonDestination);
        }

        sub_1D77D4B90(v76);
        v64 = v53;
        if (v53 <= 1)
        {
          goto LABEL_15;
        }
      }

      if (v64 == 2)
      {
        v86 = [v66 postPurchaseURL];
        if (!v86)
        {
          goto LABEL_35;
        }

        v80 = v111;
        v87 = v86;
        sub_1D78B3254();

        sub_1D77D4A34(v63, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);
        v82 = *(v124 + 32);
        v83 = v112;
        goto LABEL_34;
      }

      if (v64 == 3)
      {
        sub_1D77D4A34(v63, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination);

        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
    v61 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
    v62 = type metadata accessor for PostPurchaseDestination();
    (*(*(v62 - 8) + 56))(&a5[v61], 1, 1, v62);
    *a5 = 0;
    *(a5 + 1) = 0;

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1D77D42E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D77403A8(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 24);
  v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider), v10);
  sub_1D7873170(a2, &v17);
  (*(v11 + 48))(&v17, a1, v10, v11);
  v12 = type metadata accessor for OffersButtonDestination(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_1D77D4A34(v9, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
    v14 = 1;
  }

  else
  {
    sub_1D77D4944(v9, a3, type metadata accessor for OffersButtonDestination);
    v14 = 0;
  }

  return (*(v13 + 56))(a3, v14, 1, v12);
}

uint64_t sub_1D77D44B4()
{

  v1 = OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_defaultLearnMoreURL;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16NewsSubscription29BundlePaywallViewModelFactory_offerOverrideProvider);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D77D45D4()
{
  sub_1D77D44B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D77D4634(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = *a1;
  swift_unknownObjectRetain();
  if ([a2 isNarrativeAudioEnabled] && (objc_msgSend(v4, sel_respondsToSelector_, sel_narrativeTrack) & 1) != 0)
  {
    v5 = [v4 narrativeTrack];
    swift_unknownObjectRelease();
    if (v5)
    {

      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_1D77D46E0(uint64_t a1, id a2)
{
  if (a1 == 2)
  {
    if (a2)
    {
      result = [a2 visualSpecConfig];
      if (!result)
      {
        return result;
      }

      v3 = &selRef_darkStyleMultiResolutionImage;
LABEL_8:
      v4 = result;
      v5 = [result *v3];

      return v5;
    }
  }

  else if (a2)
  {
    result = [a2 visualSpecConfig];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_multiResolutionImage;
    goto LABEL_8;
  }

  return 0;
}

id sub_1D77D4788(uint64_t a1, id a2)
{
  if (a1 == 2)
  {
    if (a2)
    {
      result = [a2 visualSpecConfig];
      if (!result)
      {
        return result;
      }

      v3 = &selRef_darkStyleMultiResolutionBadgeImage;
LABEL_8:
      v4 = result;
      v5 = [result *v3];

      return v5;
    }
  }

  else if (a2)
  {
    result = [a2 visualSpecConfig];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_multiResolutionBadgeImage;
    goto LABEL_8;
  }

  return 0;
}

id sub_1D77D4830(uint64_t a1, char a2, int a3, id a4)
{
  if ((a2 & 1) != 0 || !a1)
  {
    result = [a4 landingPageArticleID];
    if (!result)
    {
      return result;
    }

LABEL_11:
    v7 = result;
    v8 = sub_1D78B5C74();

    return v8;
  }

  if (qword_1EC9C8668 != -1)
  {
    swift_once();
  }

  type metadata accessor for BundlePaywallViewModelFactory();
  sub_1D77D4AA4();
  sub_1D78B3574();
  result = v9;
  v6 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v6 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    result = [a4 landingPageArticleID];
    if (result)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_1D77D4944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D77D49AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D77403A8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D77D4A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D77403A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D77D4AA4()
{
  result = qword_1EE091A60;
  if (!qword_1EE091A60)
  {
    type metadata accessor for BundlePaywallViewModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE091A60);
  }

  return result;
}

uint64_t sub_1D77D4AFC(uint64_t a1, uint64_t a2)
{
  sub_1D77403A8(0, qword_1EE0922A8, type metadata accessor for SubscribeButtonDestination, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77D4B90(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeakPaywallLayoutOptionsProvider.__allocating_init(layoutOptionsProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t WeakPaywallLayoutOptionsProvider.init(layoutOptionsProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

__n128 sub_1D77D4CBC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v2 + 24);
    v7 = Strong;
    ObjectType = swift_getObjectType();
    *&v13[0] = v7;
    (*(v6 + 8))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D77D4D88(v13);
    v10 = v13[7];
    *(a2 + 96) = v13[6];
    *(a2 + 112) = v10;
    *(a2 + 128) = v14;
    v11 = v13[3];
    *(a2 + 32) = v13[2];
    *(a2 + 48) = v11;
    v12 = v13[5];
    *(a2 + 64) = v13[4];
    *(a2 + 80) = v12;
    result = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = result;
  }

  return result;
}

double sub_1D77D4D88(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t WeakPaywallLayoutOptionsProvider.__deallocating_deinit()
{
  sub_1D776ABA8(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 sub_1D77D4DFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(v5 + 24);
    v8 = Strong;
    ObjectType = swift_getObjectType();
    *&v14[0] = v8;
    (*(v7 + 8))(a1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D77D4D88(v14);
    v11 = v14[7];
    *(a2 + 96) = v14[6];
    *(a2 + 112) = v11;
    *(a2 + 128) = v15;
    v12 = v14[3];
    *(a2 + 32) = v14[2];
    *(a2 + 48) = v12;
    v13 = v14[5];
    *(a2 + 64) = v14[4];
    *(a2 + 80) = v13;
    result = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = result;
  }

  return result;
}

void Offer.buyParams(ignoreType:)(int a1)
{
  v14 = a1;
  v2 = type metadata accessor for OfferAction();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v8 < *(v6 + 16))
    {
      sub_1D778CF14(v9 + *(v3 + 72) * v8, v5);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8();

          v11 = sub_1D78B3294();
          (*(*(v11 - 8) + 8))(v5, v11);
        }
      }

      else
      {
        v12 = *(v5 + 2);
        v15 = *(v5 + 10);
        v16 = v5[90];

        if (v16 - 1) < 2 || (v14)
        {
          return;
        }
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t Offer.isCarrierLink.getter()
{
  if (!v0[11])
  {
    return AMSMarketingItem.isCIPOffer()();
  }

  if (v0[16] == 0xD000000000000019 && 0x80000001D78CF0C0 == v0[17])
  {
    return 1;
  }

  return sub_1D78B6724();
}

Swift::Bool __swiftcall Offer.trialEligible()()
{
  v1 = type metadata accessor for OfferAction();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v48[-v7];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48[-v9];
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  EnumCaseMultiPayload = NFInternalBuild();
  if (EnumCaseMultiPayload)
  {
    v14 = NewsCoreUserDefaults();
    v15 = sub_1D78B5C44();
    v16 = [v14 objectForKey_];

    if (v16)
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    v52 = v50;
    v53 = v51;
    if (*(&v51 + 1))
    {
      LOBYTE(EnumCaseMultiPayload) = swift_dynamicCast();
      if ((EnumCaseMultiPayload & 1) != 0 && v49)
      {
        if (v49 == 1)
        {
          LOBYTE(EnumCaseMultiPayload) = 1;
          return EnumCaseMultiPayload;
        }

        goto LABEL_39;
      }
    }

    else
    {
      LOBYTE(EnumCaseMultiPayload) = sub_1D7756B84(&v52);
    }
  }

  v17 = *(v11 + 16);
  if (!v12)
  {
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        if (i >= *(v11 + 16))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return EnumCaseMultiPayload;
        }

        sub_1D778CF14(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * i, v10);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8();
          v30 = &v10[*(v29 + 48)];
          v56 = *(v30 + 32);
          v31 = *(v30 + 3);
          v54 = *(v30 + 2);
          v55 = v31;
          v32 = *(v30 + 1);
          v52 = *v30;
          v53 = v32;
          sub_1D77D66B0(&v52);
          v33 = sub_1D78B3294();
          LOBYTE(EnumCaseMultiPayload) = (*(*(v33 - 8) + 8))(v10, v33);
        }

        else if (EnumCaseMultiPayload != 2)
        {
          v34 = *(v10 + 2);
          v35 = *(v10 + 40);
          v36 = *(v10 + 72);
          v54 = *(v10 + 56);
          v55 = v36;
          v56 = *(v10 + 44);
          v52 = *(v10 + 24);
          v53 = v35;

          sub_1D77D66B0(&v52);
          LOBYTE(EnumCaseMultiPayload) = v56;
          return EnumCaseMultiPayload;
        }
      }
    }

    goto LABEL_39;
  }

  if (v12 != 1)
  {
    if (v17)
    {
      for (j = 0; v17 != j; ++j)
      {
        if (j >= *(v11 + 16))
        {
          goto LABEL_42;
        }

        sub_1D778CF14(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * j, v5);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8();
          v39 = &v5[*(v38 + 48)];
          v56 = *(v39 + 32);
          v40 = *(v39 + 3);
          v54 = *(v39 + 2);
          v55 = v40;
          v41 = *(v39 + 1);
          v52 = *v39;
          v53 = v41;
          sub_1D77D66B0(&v52);
          v42 = sub_1D78B3294();
          LOBYTE(EnumCaseMultiPayload) = (*(*(v42 - 8) + 8))(v5, v42);
        }

        else if (EnumCaseMultiPayload != 2)
        {
          v43 = *(v5 + 2);
          v44 = *(v5 + 40);
          v45 = *(v5 + 72);
          v54 = *(v5 + 56);
          v55 = v45;
          v56 = *(v5 + 44);
          v52 = *(v5 + 24);
          v53 = v44;
          v46 = v5[90];

          sub_1D77D66B0(&v52);
          if (v46 == 2)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

LABEL_39:
    LOBYTE(EnumCaseMultiPayload) = 0;
    return EnumCaseMultiPayload;
  }

  if (!v17)
  {
    goto LABEL_39;
  }

  v18 = 0;
  while (1)
  {
    if (v18 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_1D778CF14(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    sub_1D77826E8();
    v20 = &v8[*(v19 + 48)];
    v56 = *(v20 + 32);
    v21 = *(v20 + 3);
    v54 = *(v20 + 2);
    v55 = v21;
    v22 = *(v20 + 1);
    v52 = *v20;
    v53 = v22;
    sub_1D77D66B0(&v52);
    v23 = sub_1D78B3294();
    LOBYTE(EnumCaseMultiPayload) = (*(*(v23 - 8) + 8))(v8, v23);
LABEL_16:
    if (v17 == ++v18)
    {
      goto LABEL_39;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_16;
  }

  v24 = *(v8 + 2);
  v25 = *(v8 + 40);
  v26 = *(v8 + 72);
  v54 = *(v8 + 56);
  v55 = v26;
  v56 = *(v8 + 44);
  v52 = *(v8 + 24);
  v53 = v25;
  v27 = v8[90];

  sub_1D77D66B0(&v52);
  if (v27 != 1)
  {
    goto LABEL_39;
  }

LABEL_38:
  LOBYTE(EnumCaseMultiPayload) = v56;
  return EnumCaseMultiPayload;
}

uint64_t Offer.isPaidBundleViaOffer.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  if (!*(v0 + 88))
  {
    return AMSMarketingItem.isBundleHardwareOffer()();
  }

  if (*(v0 + 128) == 0xD000000000000025 && 0x80000001D78CF100 == *(v0 + 136))
  {
    return 1;
  }

  return sub_1D78B6724();
}

uint64_t Offer.isLegacyOffer.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 88);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (!*(v0 + 40))
  {
    if (v2)
    {
      v6 = v3 == 0xD000000000000025 && 0x80000001D78CF100 == v4;
      if (v6 || (sub_1D78B6724() & 1) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

    if (AMSMarketingItem.isBundleHardwareOffer()() || AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_25;
    }

LABEL_27:
    v7 = Offer.isNewsPlus.getter();
    return v7 & 1;
  }

  if (!v2)
  {
    if (AMSMarketingItem.isCIPOffer()() || v1 == 1 && !AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

LABEL_3:
  v5 = v3 == 0xD000000000000019 && 0x80000001D78CF0C0 == v4;
  if (!v5 && (sub_1D78B6724() & 1) == 0 && (v3 != 0x7365636976726573 || v4 != 0xEF656C646E75622DLL) && (sub_1D78B6724() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  v7 = 1;
  return v7 & 1;
}

uint64_t static Offer.newsOffer.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D778C858(MEMORY[0x1E69E7CC8]);
  v2 = objc_allocWithZone(MEMORY[0x1E698C988]);
  sub_1D778CDF0();
  v3 = sub_1D78B5BB4();

  v4 = [v2 initWithDictionary_];

  if (qword_1EE093E80 != -1)
  {
    swift_once();
  }

  v5 = byte_1EE09C310;
  v7 = qword_1EE09C318;
  v6 = unk_1EE09C320;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = v4;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
}

Swift::String_optional __swiftcall Offer.purchaseID()()
{
  v1 = type metadata accessor for OfferAction();
  v2 = *(v1 - 8);
  EnumCaseMultiPayload = MEMORY[0x1EEE9AC00](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 32);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    HIDWORD(v17) = *(v0 + 40);
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v9 < *(v7 + 16))
    {
      sub_1D778CF14(v10 + *(v2 + 72) * v9, v6);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D77826E8();

          v15 = sub_1D78B3294();
          EnumCaseMultiPayload = (*(*(v15 - 8) + 8))(v6, v15);
        }
      }

      else
      {
        v12 = *v6;
        v11 = *(v6 + 1);
        v13 = *(v6 + 2);
        v14 = *(v6 + 10);
        v18 = *(v6 + 6);
        v19 = v14;
        v20 = v6[90];

        if (HIDWORD(v17) == v20)
        {
          EnumCaseMultiPayload = v12;
          goto LABEL_11;
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    EnumCaseMultiPayload = 0;
    v11 = 0;
LABEL_11:
    v4 = v11;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = EnumCaseMultiPayload;
  return result;
}

uint64_t OfferPlacement.pageContext.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    v7 = 0x6575737349666450;
    v8 = 0x2B7377654ELL;
    if (v1 != 4)
    {
      v8 = 0x6C656E6E616843;
    }

    if (v1 - 2 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x656C6369747241;
    }

    if (*v0)
    {
      v7 = 0x6F69647541;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v2 = 1685024582;
    if (v1 != 9)
    {
      v2 = 0x6E69776F6C6C6F46;
    }

    if (v1 - 10 >= 2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0x657069636552;
    }

    v4 = 0x50676E69646E614CLL;
    v5 = 0x50676E69646E614CLL;
    if (v1 != 7)
    {
      v5 = 0x656C7A7A7550;
    }

    if (v1 != 6)
    {
      v4 = v5;
    }

    if (*v0 <= 8u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t Offer.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Offer.tagline.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Offer.creationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t Offer.offerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 144);
  v10 = *(v1 + 128);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 160);
  v6 = *(v1 + 96);
  v9[0] = *(v1 + 80);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D77D7948(v9, v8);
}

uint64_t OfferActionData.callToActionLabel.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OfferActionData.price.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OfferActionData.priceDeltaString.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for OfferAction()
{
  result = qword_1EE094CB8;
  if (!qword_1EE094CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NewsSubscription::OfferPlacement_optional __swiftcall OfferPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D77D6058()
{
  v0 = OfferPlacement.rawValue.getter();
  v2 = v1;
  if (v0 == OfferPlacement.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D78B6724();
  }

  return v5 & 1;
}

uint64_t sub_1D77D60F4()
{
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D77D615C()
{
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();
}

uint64_t sub_1D77D61C0()
{
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

unint64_t sub_1D77D6230@<X0>(unint64_t *a1@<X8>)
{
  result = OfferPlacement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall OfferUpsellScenario.description()()
{
  v1 = 0xE400000000000000;
  v2 = *v0;
  v3 = 1701736302;
  v4 = 0xEE006E6F69746375;
  v5 = 0x6465726563697270;
  v6 = 0xE900000000000065;
  v7 = 0x756C617674736562;
  if (v2 != 3)
  {
    v7 = 0x6974736567677573;
    v6 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v0)
  {
    v3 = 0x73676E69766173;
    v1 = 0xE700000000000000;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static Offer.== infix(_:_:)()
{
  v0 = Offer.identifier.getter();
  v2 = v1;
  if (v0 == Offer.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D78B6724();
  }

  return v4 & 1;
}

unint64_t Offer.identifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = [v2 itemID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D78B5C74();
    v10 = v9;

    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v2 hash];
    v8 = sub_1D78B66E4();
    v10 = v12;
    if (v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_18:
      if (!AMSMarketingItem.isCIPOffer()())
      {
        goto LABEL_7;
      }

LABEL_19:
      v11 = 0x4C72656972726163;
      goto LABEL_20;
    }
  }

  if (!v3)
  {
    if (!AMSMarketingItem.isBundleHardwareOffer()())
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = 0xD000000000000013;
LABEL_23:
    v15 = v13;
    goto LABEL_24;
  }

  if (v4 == 0xD000000000000025 && 0x80000001D78CF100 == v5 || (sub_1D78B6724() & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v4 == 0xD000000000000019 && 0x80000001D78CF0C0 == v5 || (sub_1D78B6724() & 1) != 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (!v1)
  {
    v11 = 0x73756C507377656ELL;
    goto LABEL_20;
  }

  if (v1 != 1)
  {
    v13 = 0xD000000000000012;
    goto LABEL_23;
  }

  v11 = 0x7365636976726573;
LABEL_20:
  v15 = v11;
LABEL_24:
  MEMORY[0x1DA702FF0](v8, v10);

  return v15;
}

uint64_t sub_1D77D6620()
{
  v0 = Offer.identifier.getter();
  v2 = v1;
  if (v0 == Offer.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D78B6724();
  }

  return v4 & 1;
}

uint64_t Offer.isServicesBundle.getter()
{
  if (!*(v0 + 88))
  {
    return *(v0 + 40) == 1 && !AMSMarketingItem.isCIPOffer()();
  }

  if (*(v0 + 128) == 0x7365636976726573 && *(v0 + 136) == 0xEF656C646E75622DLL)
  {
    return 1;
  }

  return sub_1D78B6724();
}

uint64_t Offer.isNewsPlus.getter()
{
  if (!*(v0 + 88))
  {
    return !*(v0 + 40) && !AMSMarketingItem.isBundleHardwareOffer()();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  if (v1 == 0x756C702D7377656ELL && v2 == 0xE900000000000073)
  {
    return 1;
  }

  v4 = sub_1D78B6724();
  v6 = v1 == 0x756C702D7377656ELL && v2 == 0xEF6F72746E692D73;
  v7 = 1;
  if ((v4 & 1) != 0 || v6)
  {
    return v7;
  }

  return sub_1D78B6724();
}

Swift::String_optional __swiftcall Offer.callToActionLabel()()
{
  v1 = type metadata accessor for OfferAction();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v49 - v9;
  v11 = *(v0 + 32);
  v12 = *(v11 + 16);
  if (!*(v0 + 40))
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    sub_1D778CF14(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v49 - v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8();
        v23 = &v10[*(v22 + 48)];
        v53 = *(v23 + 32);
        v24 = *(v23 + 1);
        v49 = *v23;
        v50 = v24;
        v25 = *(v23 + 3);
        v51 = *(v23 + 2);
        v52 = v25;
        v18 = *(&v49 + 1);
        v19 = v49;

        sub_1D77D66B0(&v49);
        v26 = sub_1D78B3294();
        (*(*(v26 - 8) + 8))(v10, v26);
        goto LABEL_17;
      }

LABEL_20:
      v35 = 0;
      v34 = 0;
      goto LABEL_23;
    }

    v40 = *(v10 + 2);
    v41 = *(v10 + 40);
    v42 = *(v10 + 72);
    v51 = *(v10 + 56);
    v52 = v42;
    v53 = *(v10 + 44);
    v49 = *(v10 + 24);
    v50 = v41;
    v43 = v10[90];

    if (!v43)
    {
LABEL_16:
      v18 = *(&v49 + 1);
      v19 = v49;

      sub_1D77D66B0(&v49);
      goto LABEL_17;
    }

LABEL_19:
    sub_1D77D66B0(&v49);
    goto LABEL_20;
  }

  if (*(v0 + 40) == 1)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    sub_1D778CF14(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13)
    {
      if (v13 == 1)
      {
        sub_1D77826E8();
        v15 = &v7[*(v14 + 48)];
        v53 = *(v15 + 32);
        v16 = *(v15 + 1);
        v49 = *v15;
        v50 = v16;
        v17 = *(v15 + 3);
        v51 = *(v15 + 2);
        v52 = v17;
        v18 = *(&v49 + 1);
        v19 = v49;

        sub_1D77D66B0(&v49);
        v20 = sub_1D78B3294();
        (*(*(v20 - 8) + 8))(v7, v20);
LABEL_17:
        v34 = v18;
        v35 = v19;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v36 = *(v7 + 2);
    v37 = *(v7 + 40);
    v38 = *(v7 + 72);
    v51 = *(v7 + 56);
    v52 = v38;
    v53 = *(v7 + 44);
    v49 = *(v7 + 24);
    v50 = v37;
    v39 = v7[90];

    if (v39 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_20;
  }

  sub_1D778CF14(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v4);
  v27 = swift_getEnumCaseMultiPayload();
  if (!v27)
  {
    v44 = *(v4 + 2);
    v45 = *(v4 + 40);
    v46 = *(v4 + 72);
    v51 = *(v4 + 56);
    v52 = v46;
    v53 = *(v4 + 44);
    v49 = *(v4 + 24);
    v50 = v45;
    v47 = v4[90];

    if (v47 == 2)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v27 != 1)
  {
    goto LABEL_20;
  }

  sub_1D77826E8();
  v29 = &v4[*(v28 + 48)];
  v53 = *(v29 + 32);
  v30 = *(v29 + 1);
  v49 = *v29;
  v50 = v30;
  v31 = *(v29 + 3);
  v51 = *(v29 + 2);
  v52 = v31;
  v32 = v49;

  sub_1D77D66B0(&v49);
  v33 = sub_1D78B3294();
  (*(*(v33 - 8) + 8))(v4, v33);
  v34 = *(&v32 + 1);
  v35 = v32;
LABEL_23:
  result.value._object = v34;
  result.value._countAndFlagsBits = v35;
  return result;
}

Swift::String_optional __swiftcall Offer.price()()
{
  v1 = type metadata accessor for OfferAction();
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 32);
  if (*(v5 + 16))
  {
    sub_1D778CF14(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v10 = v4[2];
      v11 = v4[5];
      v12 = v4[6];

      v9 = v12;
      v8 = v11;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D77826E8();

      v7 = sub_1D78B3294();
      (*(*(v7 - 8) + 8))(v4, v7);
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_7:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::Double_optional __swiftcall Offer.priceDelta()()
{
  v1 = type metadata accessor for OfferAction();
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  if (*(v6 + 16))
  {
    sub_1D778CF14(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v10 = *(v5 + 2);
      v11 = *(v5 + 7);

      v9 = v11;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D77826E8();

      v8 = sub_1D78B3294();
      (*(*(v8 - 8) + 8))(v5, v8);
    }
  }

  v9 = 0;
LABEL_7:
  result.value = v4;
  result.is_nil = v9;
  return result;
}

Swift::String_optional __swiftcall Offer.priceDeltaString()()
{
  v1 = type metadata accessor for OfferAction();
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 32);
  if (*(v5 + 16))
  {
    sub_1D778CF14(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v10 = v4[2];
      v12 = v4[9];
      v11 = v4[10];

      v9 = v11;
      v8 = v12;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D77826E8();

      v7 = sub_1D78B3294();
      (*(*(v7 - 8) + 8))(v4, v7);
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_7:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

NewsSubscription::OfferUpsellScenario __swiftcall Offer.upsellScenario()()
{
  v2 = v0;
  v3 = type metadata accessor for OfferAction();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v47 - v9;
  LOBYTE(EnumCaseMultiPayload) = MEMORY[0x1EEE9AC00](v8);
  v13 = &v47 - v12;
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = *(v14 + 16);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_29;
    }

    v27 = 0;
    while (1)
    {
      if (v27 >= *(v14 + 16))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return EnumCaseMultiPayload;
      }

      sub_1D778CF14(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v13);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8();
        v29 = &v13[*(v28 + 48)];
        v51 = *(v29 + 32);
        v30 = *(v29 + 3);
        v49 = *(v29 + 2);
        v50 = v30;
        v31 = *(v29 + 1);
        v47 = *v29;
        v48 = v31;
        sub_1D77D66B0(&v47);
        v32 = sub_1D78B3294();
        LOBYTE(EnumCaseMultiPayload) = (*(*(v32 - 8) + 8))(v13, v32);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        v33 = *(v13 + 2);
        v34 = *(v13 + 40);
        v35 = *(v13 + 72);
        v49 = *(v13 + 56);
        v50 = v35;
        v51 = *(v13 + 44);
        v47 = *(v13 + 24);
        v48 = v34;

        LOBYTE(EnumCaseMultiPayload) = sub_1D77D66B0(&v47);
LABEL_28:
        *v2 = HIBYTE(v51);
        return EnumCaseMultiPayload;
      }

      if (v16 == ++v27)
      {
        goto LABEL_29;
      }
    }
  }

  if (v15 != 1)
  {
    if (!v16)
    {
      goto LABEL_29;
    }

    v36 = 0;
    while (1)
    {
      if (v36 >= *(v14 + 16))
      {
        goto LABEL_32;
      }

      sub_1D778CF14(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v7);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8();
        v38 = &v7[*(v37 + 48)];
        v51 = *(v38 + 32);
        v39 = *(v38 + 3);
        v49 = *(v38 + 2);
        v50 = v39;
        v40 = *(v38 + 1);
        v47 = *v38;
        v48 = v40;
        sub_1D77D66B0(&v47);
        v41 = sub_1D78B3294();
        LOBYTE(EnumCaseMultiPayload) = (*(*(v41 - 8) + 8))(v7, v41);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        v42 = *(v7 + 2);
        v43 = *(v7 + 40);
        v44 = *(v7 + 72);
        v49 = *(v7 + 56);
        v50 = v44;
        v51 = *(v7 + 44);
        v47 = *(v7 + 24);
        v48 = v43;
        v45 = v7[90];

        LOBYTE(EnumCaseMultiPayload) = sub_1D77D66B0(&v47);
        if (v45 != 2)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      if (v16 == ++v36)
      {
        goto LABEL_29;
      }
    }
  }

  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = 0;
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    sub_1D778CF14(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    sub_1D77826E8();
    v19 = &v10[*(v18 + 48)];
    v51 = *(v19 + 32);
    v20 = *(v19 + 3);
    v49 = *(v19 + 2);
    v50 = v20;
    v21 = *(v19 + 1);
    v47 = *v19;
    v48 = v21;
    sub_1D77D66B0(&v47);
    v22 = sub_1D78B3294();
    LOBYTE(EnumCaseMultiPayload) = (*(*(v22 - 8) + 8))(v10, v22);
LABEL_6:
    if (v16 == ++v17)
    {
      goto LABEL_29;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  v23 = *(v10 + 2);
  v24 = *(v10 + 40);
  v25 = *(v10 + 72);
  v49 = *(v10 + 56);
  v50 = v25;
  v51 = *(v10 + 44);
  v47 = *(v10 + 24);
  v48 = v24;
  v26 = v10[90];

  LOBYTE(EnumCaseMultiPayload) = sub_1D77D66B0(&v47);
  if (v26 == 1)
  {
    goto LABEL_28;
  }

LABEL_29:
  *v2 = 0;
  return EnumCaseMultiPayload;
}

char *Array<A>.purchaseIDs.getter(uint64_t a1)
{
  v2 = type metadata accessor for OfferAction();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = MEMORY[0x1E69E7CC0];
  v21 = v2;
  do
  {
    sub_1D778CF14(v10, v8);
    sub_1D778CF14(v8, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77D79D0(v8);
        sub_1D77826E8();

        v13 = sub_1D78B3294();
        (*(*(v13 - 8) + 8))(v5, v13);
      }

      else
      {
        sub_1D77D79D0(v8);
      }
    }

    else
    {
      v15 = *(v5 + 1);
      v22 = *v5;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D777AD14(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_1D777AD14((v16 > 1), v17 + 1, 1, v12);
      }

      v18 = v22;
      sub_1D77D79D0(v8);
      *(v12 + 2) = v17 + 1;
      v19 = &v12[16 * v17];
      *(v19 + 4) = v18;
      *(v19 + 5) = v15;
    }

    v10 += v11;
    --v9;
  }

  while (v9);
  return v12;
}

uint64_t Array<A>.hasBuyAction.getter(uint64_t a1)
{
  v2 = type metadata accessor for OfferAction();
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_1D778CF14(v7, v5);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D77826E8();

        v9 = sub_1D78B3294();
        (*(*(v9 - 8) + 8))(v5, v9);
      }

      else if (EnumCaseMultiPayload != 2)
      {
        sub_1D77D79D0(v5);
        return 1;
      }

      v7 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t sub_1D77D7948(uint64_t a1, uint64_t a2)
{
  sub_1D7756CF4(0, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77D79D0(uint64_t a1)
{
  v2 = type metadata accessor for OfferAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D77D7A30()
{
  result = qword_1EC9CA2E0;
  if (!qword_1EC9CA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA2E0);
  }

  return result;
}

unint64_t sub_1D77D7A88()
{
  result = qword_1EE094A18;
  if (!qword_1EE094A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094A18);
  }

  return result;
}

unint64_t sub_1D77D7AE0()
{
  result = qword_1EC9CA2E8;
  if (!qword_1EC9CA2E8)
  {
    sub_1D7756CF4(255, &qword_1EC9CA2F0, &type metadata for OfferPlacement, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA2E8);
  }

  return result;
}

unint64_t sub_1D77D7B60()
{
  result = qword_1EC9CA2F8;
  if (!qword_1EC9CA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA2F8);
  }

  return result;
}

void sub_1D77D7C04()
{
  sub_1D77D7C78(319);
  if (v0 <= 0x3F)
  {
    sub_1D77826E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D77D7C78(uint64_t a1)
{
  if (!qword_1EE090180)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D77C34AC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE090180);
    }
  }
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D77D7DC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D77D7E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferPlacement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OfferPlacement(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D77D7FDC()
{
  v0 = qword_1EC9CA300;

  return v0;
}

uint64_t sub_1D77D8014()
{
  v0 = *a100;

  return v0;
}

uint64_t sub_1D77D804C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D77456DC();
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

uint64_t sub_1D77D80DC()
{
  sub_1D78B3F24();
  sub_1D78B4344();

  sub_1D78B3F24();
  sub_1D78B43B4();

  v0 = sub_1D78B4014();
  sub_1D77D9108(0);
  v1 = sub_1D78B4094();

  return v1;
}

uint64_t sub_1D77D8348@<X0>(uint64_t result@<X0>, size_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v5;
    return result;
  }

  v5 = sub_1D77D8CE4(*(*result + 16), 0);
  v6 = *(type metadata accessor for SiwaCredentialUploadData() - 8);
  v7 = sub_1D77D8E04(&v8, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v3);

  result = sub_1D779D528();
  if (v7 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77D844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v18 = a1;
  v4 = type metadata accessor for SiwaCredentialUploadData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1D78B5264();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7788448();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F80], v7);
  v11 = sub_1D78B6134();
  (*(v8 + 8))(v10, v7);
  sub_1D78B3F24();
  sub_1D77D8ADC(v17, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  *(v13 + 24) = a2;
  sub_1D77D8B40(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1D77D8C14();
  sub_1D77456DC();

  sub_1D78B41E4();

  v14 = sub_1D78B4124();

  return v14;
}

uint64_t sub_1D77D86AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D77D90A4(0, &qword_1EC9CA328, sub_1D77D8C7C, MEMORY[0x1E69E6F90]);
  sub_1D77D8C7C();
  v8 = v7 - 8;
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCAB0;
  v11 = (v10 + v9);
  v12 = *(v8 + 56);
  *v11 = a2;
  v11[1] = a3;
  sub_1D77D8ADC(a4, v11 + v12);

  sub_1D77FF304(v10);
  swift_setDeallocating();
  sub_1D77D902C(v11);
  swift_deallocClassInstance();
  v13 = sub_1D78B4324();

  return v13;
}

uint64_t sub_1D77D8810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B5264();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7788448();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F80], v4);
  v8 = sub_1D78B6134();
  (*(v5 + 8))(v7, v4);
  sub_1D78B3F24();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
  sub_1D77456DC();

  sub_1D78B41E4();

  v10 = sub_1D78B4124();

  return v10;
}

uint64_t sub_1D77D89EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D77BD4B8(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  v6 = sub_1D78B4334();

  return v6;
}

uint64_t sub_1D77D8A94()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D77D8ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiwaCredentialUploadData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77D8B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiwaCredentialUploadData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D77D8C14()
{
  if (!qword_1EC9CA320)
  {
    type metadata accessor for SiwaCredentialUploadData();
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA320);
    }
  }
}

void sub_1D77D8C7C()
{
  if (!qword_1EC9CA330)
  {
    type metadata accessor for SiwaCredentialUploadData();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CA330);
    }
  }
}

size_t sub_1D77D8CE4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D77D90A4(0, &qword_1EC9CA340, type metadata accessor for SiwaCredentialUploadData, MEMORY[0x1E69E6F90]);
  v4 = *(type metadata accessor for SiwaCredentialUploadData() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77D8E04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SiwaCredentialUploadData();
  v32 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_1D77D8ADC(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_1D77D8B40(v11, v14);
      sub_1D77D8B40(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D77D902C(uint64_t a1)
{
  sub_1D77D8C7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D77D90A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OngoingPurchaseTransactionAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5C94();

  return v2;
}

uint64_t OngoingPurchaseTransactionAlert.message.getter()
{
  if (*v0)
  {
    v1 = [*v0 name];
    v2 = sub_1D78B5C74();
    v4 = v3;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
  }

  else
  {
    type metadata accessor for Localized();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();
  }

  v10 = sub_1D78B5C94();

  return v10;
}

uint64_t OngoingPurchaseTransactionAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t OngoingPurchaseTransactionAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

id sub_1D77D95C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D77D9894(0, v3, 0);
    v4 = v41;
    v6 = (a2 + 40);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = v7;
      v10 = sub_1D77DA218(v9, a1);
      v38 = v11;
      v39 = v10;
      v12 = v36[9];
      v13 = v36[10];
      __swift_project_boxed_opaque_existential_1(v36 + 6, v12);
      v14 = (*(v13 + 8))(v8, v12, v13);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v22 = v41[2];
      v21 = v41[3];
      if (v22 >= v21 >> 1)
      {
        sub_1D77D9894((v21 > 1), v22 + 1, 1);
      }

      v41[2] = v22 + 1;
      v23 = &v41[6 * v22];
      v23[4] = v39;
      v23[5] = v38;
      v23[6] = v14;
      v23[7] = v16;
      v23[8] = v18;
      v23[9] = v20;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  v24 = sub_1D77DA760(v4);
  v25 = v36[3];
  v40 = v36[2];
  sub_1D775B6EC(0, &qword_1EE08FA10, &qword_1EE08F9D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D78BCAB0;

  v27 = [a1 name];
  v28 = sub_1D78B5C74();
  v30 = v29;

  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1D775ABD4();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  v31 = sub_1D78B5C94();
  v33 = v32;
  result = [a1 isAuthenticationSetup];
  *a3 = v4;
  *(a3 + 8) = v24 & 1;
  *(a3 + 16) = v40;
  *(a3 + 24) = v25;
  *(a3 + 32) = v31;
  *(a3 + 40) = v33;
  *(a3 + 48) = result ^ 1;
  return result;
}

uint64_t sub_1D77D9808()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

char *sub_1D77D9874(char *a1, int64_t a2, char a3)
{
  result = sub_1D77D9A54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D77D9894(char *a1, int64_t a2, char a3)
{
  result = sub_1D77D9B64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D77D98B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D77D9C88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D77D98D4(void *a1, int64_t a2, char a3)
{
  result = sub_1D77D9DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D77D98F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EC9CA350, sub_1D77CF6F0, sub_1D77CF6F0);
  *v3 = result;
  return result;
}

size_t sub_1D77D9944(size_t a1, int64_t a2, char a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EC9CA358, sub_1D77DA840, sub_1D77DA840);
  *v3 = result;
  return result;
}

char *sub_1D77D9994(char *a1, int64_t a2, char a3)
{
  result = sub_1D77DA0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D77D99B4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EE08FA88, sub_1D77DA89C, sub_1D77DA89C);
  *v3 = result;
  return result;
}

size_t sub_1D77D9A04(size_t a1, int64_t a2, char a3)
{
  result = sub_1D77D9EF8(a1, a2, a3, *v3, &qword_1EE08FA60, MEMORY[0x1E69B5F80], MEMORY[0x1E69B5F80]);
  *v3 = result;
  return result;
}

char *sub_1D77D9A54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D77DA934(0, &qword_1EE08FA50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D77D9B64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D77DA934(0, &qword_1EC9CA348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D77D9C88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D77DA934(0, &qword_1EC9CA360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D77D9DA0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D775B6EC(0, &qword_1EC9CA160, &qword_1EC9CA168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D773C9B8(0, &qword_1EC9CA168);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D77D9EF8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D77DA8D0(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D77DA0EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D77DA934(0, &qword_1EE08E4C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D77DA218(void *a1, id a2)
{
  v3 = [a2 name];
  v4 = sub_1D78B5C74();
  v6 = v5;

  sub_1D78B5CD4();
  sub_1D78B5DD4();

  v7 = [a1 allowsPublisherPhoneApp];
  v8 = [a1 allowsPublisherPadApp];
  v9 = [a1 allowsPublisherWebsite];
  v10 = v9;
  if (v7 || (v8 & v9) == 1 || v8)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D775B6EC(0, &qword_1EE08FA10, &qword_1EE08F9D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D78BCAB0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D775ABD4();
    *(v15 + 32) = v4;
    *(v15 + 40) = v6;
    v16 = sub_1D78B5C94();

    return v16;
  }

  else
  {

    type metadata accessor for Localized();
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    if (v10)
    {
      sub_1D78B3134();

      return sub_1D78B5DF4();
    }

    else
    {
      v18 = sub_1D78B3134();

      return v18;
    }
  }
}

uint64_t sub_1D77DA760(void *a1)
{
  v1 = a1[2];
  if (v1 == 1)
  {
    return v1;
  }

  if (v1 == 3)
  {
    v3 = a1[4];
    v4 = a1[5];
    if (v3 != a1[10] || v4 != a1[11])
    {
      v6 = a1;
      v7 = sub_1D78B6724();
      a1 = v6;
      v1 = 0;
      if ((v7 & 1) == 0)
      {
        return v1;
      }
    }

    if (v3 != a1[16] || v4 != a1[17])
    {
      goto LABEL_18;
    }

    return 1;
  }

  if (v1 != 2)
  {
    return 0;
  }

  if (a1[4] == a1[10] && a1[5] == a1[11])
  {
    return 1;
  }

LABEL_18:

  return sub_1D78B6724();
}

void sub_1D77DA840()
{
  if (!qword_1EC9CA2B8)
  {
    sub_1D77CE1C8();
    v0 = sub_1D78B4914();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA2B8);
    }
  }
}

void sub_1D77DA8D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D77DA934(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D78B66F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t PaywallTrackerType.trackButtonTap(data:paywallModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = *a1;
  v4 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v4;
  return (*(a4 + 56))(v6, a3, a4);
}

uint64_t PaywallButtonTapData.purchaseID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PaywallButtonTapData.purchaseSessionID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall PaywallButtonTapData.init(target:purchaseID:purchaseSessionID:)(NewsSubscription::PaywallButtonTapData *__return_ptr retstr, NewsSubscription::SubscribeButtonTargetType_optional target, Swift::String_optional purchaseID, Swift::String_optional purchaseSessionID)
{
  retstr->target.value = *target.value;
  retstr->purchaseID = purchaseID;
  retstr->purchaseSessionID = purchaseSessionID;
}

id FCColor.nsu_color.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  v7[4] = sub_1D77D4A2C;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D77DAD54;
  v7[3] = &block_descriptor_14;
  v3 = _Block_copy(v7);

  [v0 readDeconstructedRepresentationWithAcccessor_];
  _Block_release(v3);
  swift_beginAccess();
  v4 = *v2;
  v5 = *v2;

  return v4;
}

void sub_1D77DACC0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  swift_beginAccess();
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
}

uint64_t sub_1D77DAD54(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);
}

uint64_t InAppSubscriptionExpiredAlert.title.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t InAppSubscriptionExpiredAlert.message.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t InAppSubscriptionExpiredAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t InAppSubscriptionExpiredAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t InAppSubscriptionExpiredAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77DB284()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77DB344()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77DB40C(uint64_t *a1, int a2)
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

uint64_t sub_1D77DB454(uint64_t result, int a2, int a3)
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

uint64_t sub_1D77DB4A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D78B6264();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  if (sub_1D78B5D34() < 2)
  {
LABEL_5:

    return 0;
  }

  v8 = sub_1D77DC06C(1uLL, a1, a2);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  MEMORY[0x1DA702F90](v8, v10, v12, v14);

  v15 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v16 = sub_1D78B5C44();
  v17 = [v15 initWithString_];

  (*(v5 + 104))(v7, *MEMORY[0x1E696A028], v4);
  v18 = sub_1D78B6274();
  LOBYTE(v14) = v19;
  (*(v5 + 8))(v7, v4);
  if (v14)
  {

    goto LABEL_5;
  }

  if (v18 == 1)
  {
    v21 = sub_1D77DB9E4();

    return v21;
  }

  else
  {
    v22 = sub_1D77DBD08();
    v24 = v23;

    if (v24)
    {
      sub_1D774FE1C();
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E6530];
      *(v25 + 16) = xmmword_1D78BCAB0;
      v27 = MEMORY[0x1E69E65A8];
      *(v25 + 56) = v26;
      *(v25 + 64) = v27;
      *(v25 + 32) = v18;
      v22 = sub_1D78B5C94();
    }

    else
    {
    }

    return v22;
  }
}

uint64_t sub_1D77DB738(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D78B6264();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  if (sub_1D78B5D34() < 2)
  {
LABEL_5:

    return 0;
  }

  v10 = sub_1D77DC06C(1uLL, a1, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  MEMORY[0x1DA702F90](v10, v12, v14, v16);

  v17 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v18 = sub_1D78B5C44();
  v19 = [v17 initWithString_];

  (*(v7 + 104))(v9, *MEMORY[0x1E696A028], v6);
  v20 = sub_1D78B6274();
  LOBYTE(v16) = v21;
  result = (*(v7 + 8))(v9, v6);
  if (v16)
  {

    goto LABEL_5;
  }

  v23 = a3 * v20;
  if ((a3 * v20) >> 64 == (a3 * v20) >> 63)
  {
    v24 = sub_1D77DBD08();
    v26 = v25;

    if (v26)
    {
      sub_1D774FE1C();
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E6530];
      *(v27 + 16) = xmmword_1D78BCAB0;
      v29 = MEMORY[0x1E69E65A8];
      *(v27 + 56) = v28;
      *(v27 + 64) = v29;
      *(v27 + 32) = v23;
      v24 = sub_1D78B5C94();
    }

    else
    {
    }

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77DB9E4()
{

  while (1)
  {
    v1 = sub_1D78B5D64();
    if (!v2)
    {
      break;
    }

    v3 = v1;
    v4 = v2;
    if (v1 == 89 && v2 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v3 == 77 && v4 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v3 == 87 && v4 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0)
    {

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      goto LABEL_18;
    }

    if (v3 == 68 && v4 == 0xE100000000000000)
    {

LABEL_16:
      type metadata accessor for Localized();
      v5 = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
LABEL_18:
      v8 = sub_1D78B3134();

      goto LABEL_19;
    }

    v0 = sub_1D78B6724();

    if (v0)
    {
      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_19:

  return v8;
}

uint64_t sub_1D77DBD08()
{

  while (1)
  {
    v1 = sub_1D78B5D64();
    if (!v2)
    {
      break;
    }

    v3 = v1;
    v4 = v2;
    if (v1 == 89 && v2 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v3 == 77 && v4 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0 || v3 == 87 && v4 == 0xE100000000000000 || (sub_1D78B6724() & 1) != 0)
    {

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      goto LABEL_18;
    }

    if (v3 == 68 && v4 == 0xE100000000000000)
    {

LABEL_16:
      type metadata accessor for Localized();
      v5 = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
LABEL_18:
      v8 = sub_1D78B3134();

      goto LABEL_19;
    }

    v0 = sub_1D78B6724();

    if (v0)
    {
      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_19:

  return v8;
}

unint64_t sub_1D77DC06C(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = sub_1D78B5D44();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D78B5E04();
}

uint64_t sub_1D77DC11C(void *a1)
{
  v2 = [a1 subscriptionPeriodInISO_8601];
  v3 = sub_1D78B5C74();
  v5 = v4;

  v6 = sub_1D77DB4A4(v3, v5);
  v8 = v7;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_1D78B3134();

  if (!v8)
  {
    return v12;
  }

  v84 = v6;

  v13 = [a1 introductoryOffer];
  if (!v13)
  {

    sub_1D774FE1C();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D78BCB50;
    v32 = [a1 subscriptionPriceFormatted];
    v33 = sub_1D78B5C74();
    v35 = v34;

    v36 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1D775ABD4();
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    *(v31 + 96) = v36;
    *(v31 + 104) = v37;
    *(v31 + 64) = v37;
    *(v31 + 72) = v84;
    *(v31 + 80) = v8;
    return sub_1D78B5C94();
  }

  v14 = [a1 introductoryOffer];
  if (!v14)
  {
LABEL_21:
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v15 = v14;
  v80 = v12;
  v16 = [v10 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D78BCB50;
  v18 = [a1 subscriptionPriceFormatted];
  v19 = sub_1D78B5C74();
  v20 = v15;
  v22 = v21;

  v23 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1D775ABD4();
  *(v17 + 32) = v19;
  *(v17 + 40) = v22;
  v25 = v20;
  *(v17 + 96) = v23;
  *(v17 + 104) = v24;
  v79 = v24;
  *(v17 + 64) = v24;
  *(v17 + 72) = v84;
  *(v17 + 80) = v8;

  sub_1D78B5C94();

  v26 = [v20 subscriptionPeriodInISO_8601];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D78B5C74();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  result = [v20 numOfPeriods];
  v12 = v80;
  if (result < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = sub_1D77DB738(v28, v30, result);
  v41 = v40;

  if (!v41)
  {

    goto LABEL_21;
  }

  v78 = v39;

  v42 = [v25 offerType];
  if (v42 != 1)
  {
    if (v42 != 2)
    {
      if (v42 == 3)
      {

        v81 = v41;
        v43 = [v10 bundleForClass_];
        sub_1D78B3134();

        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D78BCB50;
        v83 = v25;
        v45 = [a1 subscriptionPriceFormatted];
        v46 = sub_1D78B5C74();
        v48 = v47;

        v49 = MEMORY[0x1E69E6158];
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = v79;
        *(v44 + 32) = v46;
        *(v44 + 40) = v48;
        *(v44 + 96) = v49;
        *(v44 + 104) = v79;
        *(v44 + 72) = v84;
        *(v44 + 80) = v8;
        v50 = sub_1D78B5C94();

        v51 = [v10 bundleForClass_];
        sub_1D78B3134();

        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1D78BCAB0;
        *(v52 + 56) = v49;
        *(v52 + 64) = v79;
        v12 = v50;
        *(v52 + 32) = v78;
        *(v52 + 40) = v81;
        sub_1D78B5C94();

        return v12;
      }

      goto LABEL_20;
    }

    v82 = v41;
    v53 = [v10 bundleForClass_];
    sub_1D78B3134();

    v54 = v25;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1D78BCB50;
    result = [v54 priceFormatted];
    if (result)
    {
      v56 = result;
      swift_bridgeObjectRelease_n();

      v57 = sub_1D78B5C74();
      v59 = v58;

      v60 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = v79;
      *(v55 + 32) = v57;
      *(v55 + 40) = v59;
      *(v55 + 96) = v60;
      *(v55 + 104) = v79;
      *(v55 + 72) = v39;
      *(v55 + 80) = v82;
      v12 = sub_1D78B5C94();

      return v12;
    }

    goto LABEL_29;
  }

  v61 = [v25 subscriptionPeriodInISO_8601];
  if (v61)
  {
    v62 = v41;
    v63 = v61;
    v64 = sub_1D78B5C74();
    v66 = v65;

    v41 = v62;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = sub_1D77DB4A4(v64, v66);
  v69 = v68;

  if (!v69)
  {
LABEL_20:

    swift_bridgeObjectRelease_n();
    goto LABEL_21;
  }

  v85 = v67;
  v70 = v41;

  v71 = [v10 bundleForClass_];
  sub_1D78B3134();

  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1D78BF690;
  result = [v25 priceFormatted];
  if (result)
  {
    v73 = result;
    swift_bridgeObjectRelease_n();

    v74 = sub_1D78B5C74();
    v76 = v75;

    v77 = MEMORY[0x1E69E6158];
    *(v72 + 56) = MEMORY[0x1E69E6158];
    *(v72 + 64) = v79;
    *(v72 + 32) = v74;
    *(v72 + 40) = v76;
    *(v72 + 96) = v77;
    *(v72 + 104) = v79;
    *(v72 + 72) = v85;
    *(v72 + 80) = v69;
    *(v72 + 136) = v77;
    *(v72 + 144) = v79;
    *(v72 + 112) = v78;
    *(v72 + 120) = v70;
    v12 = sub_1D78B5C94();

    return v12;
  }

LABEL_30:
  __break(1u);
  return result;
}

NewsSubscription::OfferRefreshContext __swiftcall OfferRefreshContext.init(placement:hint:)(NewsSubscription::OfferPlacement placement, Swift::String_optional hint)
{
  *v2 = *placement;
  *(v2 + 8) = hint;
  result.hint = hint;
  result.placement = placement;
  return result;
}

uint64_t OfferRefreshContext.hash(into:)()
{
  v1 = *(v0 + 16);
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  if (!v1)
  {
    return sub_1D78B6834();
  }

  sub_1D78B6834();

  return sub_1D78B5D14();
}

uint64_t OfferRefreshContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  sub_1D78B6834();
  if (v1)
  {
    sub_1D78B5D14();
  }

  return sub_1D78B6844();
}

uint64_t sub_1D77DCC1C()
{
  v1 = *(v0 + 16);
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  if (!v1)
  {
    return sub_1D78B6834();
  }

  sub_1D78B6834();

  return sub_1D78B5D14();
}

uint64_t sub_1D77DCCCC()
{
  v1 = *(v0 + 16);
  sub_1D78B6814();
  OfferPlacement.rawValue.getter();
  sub_1D78B5D14();

  sub_1D78B6834();
  if (v1)
  {
    sub_1D78B5D14();
  }

  return sub_1D78B6844();
}

void sub_1D77DCD6C(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (v4 == 13)
  {
    goto LABEL_8;
  }

  v5 = [*(v2 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager) configuration];
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      v7 = [v6 paidBundleConfig];
      swift_unknownObjectRelease();
      v8 = [v7 paywallConfigsOfferType];
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          sub_1D77DD6A8(&v86);

          v105 = v94;
          v106 = v95;
          v107 = v96;
          v101 = v90;
          v102 = v91;
          v103 = v92;
          v104 = v93;
          v97 = v86;
          v98 = v87;
          v99 = v88;
          v100 = v89;
          sub_1D775F3CC(&v97);
          v15 = v95;
          *(a2 + 128) = v94;
          *(a2 + 144) = v15;
          *(a2 + 160) = v96;
          v16 = v91;
          *(a2 + 64) = v90;
          *(a2 + 80) = v16;
          v17 = v93;
          *(a2 + 96) = v92;
          *(a2 + 112) = v17;
          v18 = v87;
          *a2 = v86;
          *(a2 + 16) = v18;
          v14 = v88;
          v13 = v89;
          goto LABEL_9;
        }

        if (v8 == 4)
        {
          LOBYTE(v97) = v4;
          sub_1D77DD820(&v86);
          v105 = v94;
          v106 = v95;
          v107 = v96;
          v101 = v90;
          v102 = v91;
          v103 = v92;
          v104 = v93;
          v97 = v86;
          v98 = v87;
          v99 = v88;
          v100 = v89;
          if (sub_1D775F3CC(&v97) == 1)
          {
            LOBYTE(v64) = 4;
            sub_1D77DD820(&v75);
          }

          else
          {

            v83 = v94;
            v84 = v95;
            v85 = v96;
            v79 = v90;
            v80 = v91;
            v81 = v92;
            v82 = v93;
            v75 = v86;
            v76 = v87;
            v77 = v88;
            v78 = v89;
          }

          v72 = v83;
          v73 = v84;
          v74 = v85;
          v68 = v79;
          v69 = v80;
          v70 = v81;
          v71 = v82;
          v64 = v75;
          v65 = v76;
          v66 = v77;
          v67 = v78;
          sub_1D775F3CC(&v64);
          v23 = v84;
          *(a2 + 128) = v83;
          *(a2 + 144) = v23;
          *(a2 + 160) = v85;
          v24 = v80;
          *(a2 + 64) = v79;
          *(a2 + 80) = v24;
          v25 = v82;
          *(a2 + 96) = v81;
          *(a2 + 112) = v25;
          v26 = v76;
          *a2 = v75;
          *(a2 + 16) = v26;
          v14 = v77;
          v13 = v78;
          goto LABEL_9;
        }
      }

      else if (v8 == 2)
      {
        LOBYTE(v53) = v4;
        sub_1D77DD1F0(&v53, &v86);
        v105 = v94;
        v106 = v95;
        v107 = v96;
        v101 = v90;
        v102 = v91;
        v103 = v92;
        v104 = v93;
        v97 = v86;
        v98 = v87;
        v99 = v88;
        v100 = v89;
        if (sub_1D775F3CC(&v97) == 1)
        {
          LOBYTE(v53) = 4;
          sub_1D77DD1F0(&v53, &v64);
        }

        else
        {

          v72 = v94;
          v73 = v95;
          v74 = v96;
          v68 = v90;
          v69 = v91;
          v70 = v92;
          v71 = v93;
          v64 = v86;
          v65 = v87;
          v66 = v88;
          v67 = v89;
        }

        v50 = v72;
        v51 = v73;
        v46 = v68;
        v47 = v69;
        v48 = v70;
        v49 = v71;
        v42 = v64;
        v43 = v65;
        v44 = v66;
        v45 = v67;
        v61 = v72;
        v62 = v73;
        v57 = v68;
        v58 = v69;
        v59 = v70;
        v60 = v71;
        v53 = v64;
        v54 = v65;
        v52 = v74;
        v63 = v74;
        v55 = v66;
        v56 = v67;
        if (sub_1D775F3CC(&v53) == 1)
        {
          v19 = v51;
          *(a2 + 128) = v50;
          *(a2 + 144) = v19;
          *(a2 + 160) = v52;
          v20 = v47;
          *(a2 + 64) = v46;
          *(a2 + 80) = v20;
          v21 = v49;
          *(a2 + 96) = v48;
          *(a2 + 112) = v21;
          v22 = v43;
          *a2 = v42;
          *(a2 + 16) = v22;
          v14 = v44;
          v13 = v45;
        }

        else
        {
          if (BYTE8(v55) == 1)
          {
            v39 = v61;
            v40 = v62;
            v41 = v63;
            v35 = v57;
            v36 = v58;
            v37 = v59;
            v38 = v60;
            v31 = v53;
            v32 = v54;
            v33 = v55;
            v34 = v56;
            nullsub_1(&v31);
          }

          else
          {
            sub_1D77E5878(&v42, &qword_1EE090600, &type metadata for Offer);
            sub_1D775F3AC(&v31);
          }

          v27 = v40;
          *(a2 + 128) = v39;
          *(a2 + 144) = v27;
          *(a2 + 160) = v41;
          v28 = v36;
          *(a2 + 64) = v35;
          *(a2 + 80) = v28;
          v29 = v38;
          *(a2 + 96) = v37;
          *(a2 + 112) = v29;
          v30 = v32;
          *a2 = v31;
          *(a2 + 16) = v30;
          v14 = v33;
          v13 = v34;
        }

        goto LABEL_9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_8:
    sub_1D775F3AC(&v97);
    v9 = v106;
    *(a2 + 128) = v105;
    *(a2 + 144) = v9;
    *(a2 + 160) = v107;
    v10 = v102;
    *(a2 + 64) = v101;
    *(a2 + 80) = v10;
    v11 = v104;
    *(a2 + 96) = v103;
    *(a2 + 112) = v11;
    v12 = v98;
    *a2 = v97;
    *(a2 + 16) = v12;
    v14 = v99;
    v13 = v100;
LABEL_9:
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
    return;
  }

  __break(1u);
}

void sub_1D77DD1F0(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;

  sub_1D78B3FC4();

  v62 = v51;
  v63 = v52;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v61 = v50;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v73 = v51;
  v74 = v52;
  v69 = v47;
  v70 = v48;
  v71 = v49;
  v72 = v50;
  v65 = v43;
  v66 = v44;
  v64 = v53;
  v75 = v53;
  v67 = v45;
  v68 = v46;
  if (sub_1D775F3CC(&v65) == 1)
  {
    v6 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
    swift_beginAccess();
    v7 = *(v3 + v6);
    if (*(v7 + 16) && (v8 = sub_1D777BE68(v5, 0, 0), (v9 & 1) != 0))
    {
      v10 = *(v7 + 56) + 168 * v8;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v32 = *v10;
      v33 = v12;
      v34 = v11;
      v13 = *(v10 + 48);
      v14 = *(v10 + 64);
      v15 = *(v10 + 96);
      v37 = *(v10 + 80);
      v38 = v15;
      v35 = v13;
      v36 = v14;
      v16 = *(v10 + 112);
      v17 = *(v10 + 128);
      v18 = *(v10 + 144);
      v42 = *(v10 + 160);
      v40 = v17;
      v41 = v18;
      v39 = v16;
      swift_endAccess();
      sub_1D778CEAC(&v32, &v43);

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D774FE1C();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D78BCAB0;
      v51 = v40;
      v52 = v41;
      v53 = v42;
      v47 = v36;
      v48 = v37;
      v49 = v38;
      v50 = v39;
      v43 = v32;
      v44 = v33;
      v45 = v34;
      v46 = v35;
      sub_1D78B6504();
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1D775ABD4();
      *(v19 + 32) = 0;
      *(v19 + 40) = 0xE000000000000000;
      sub_1D78B60A4();
      sub_1D78B42C4();

      v51 = v40;
      v52 = v41;
      v53 = v42;
      v47 = v36;
      v48 = v37;
      v49 = v38;
      v50 = v39;
      v43 = v32;
      v44 = v33;
      v45 = v34;
      v46 = v35;
      nullsub_1(&v43);
    }

    else
    {
      swift_endAccess();

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D78B60A4();
      sub_1D78B42C4();
      sub_1D775F3AC(&v43);
    }

    v28 = v52;
    *(a2 + 128) = v51;
    *(a2 + 144) = v28;
    *(a2 + 160) = v53;
    v29 = v48;
    *(a2 + 64) = v47;
    *(a2 + 80) = v29;
    v30 = v50;
    *(a2 + 96) = v49;
    *(a2 + 112) = v30;
    v31 = v44;
    *a2 = v43;
    *(a2 + 16) = v31;
    v27 = v45;
    v26 = v46;
  }

  else
  {

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774FE1C();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D78BCAB0;
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    v51 = v73;
    v52 = v74;
    v53 = v75;
    v47 = v69;
    v48 = v70;
    v49 = v71;
    v50 = v72;
    v43 = v65;
    v44 = v66;
    v45 = v67;
    v46 = v68;
    sub_1D78B6504();
    v21 = v32;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1D775ABD4();
    *(v20 + 32) = v21;
    sub_1D78B60A4();
    sub_1D78B42C4();

    v22 = v63;
    *(a2 + 128) = v62;
    *(a2 + 144) = v22;
    *(a2 + 160) = v64;
    v23 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v23;
    v24 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v24;
    v25 = v55;
    *a2 = v54;
    *(a2 + 16) = v25;
    v27 = v56;
    v26 = v57;
  }

  *(a2 + 32) = v27;
  *(a2 + 48) = v26;
}

__n128 sub_1D77DD6A8@<Q0>(uint64_t a1@<X8>)
{

  sub_1D78B3FC4();

  v14[8] = v11;
  v14[9] = v12;
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v9;
  v14[7] = v10;
  v14[0] = v3;
  v14[1] = v4;
  v15 = v13;
  v14[2] = v5;
  v14[3] = v6;
  if (sub_1D775F3CC(v14) == 1)
  {

    sub_1D78B3FC4();
  }

  else
  {
    *(a1 + 128) = v11;
    *(a1 + 144) = v12;
    *(a1 + 160) = v13;
    *(a1 + 64) = v7;
    *(a1 + 80) = v8;
    *(a1 + 96) = v9;
    *(a1 + 112) = v10;
    *a1 = v3;
    *(a1 + 16) = v4;
    result = v6;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

void sub_1D77DD820(uint64_t a1@<X8>)
{
  v2 = v1;

  sub_1D78B3FC4();

  v43 = v32;
  v44 = v33;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v54 = v32;
  v55 = v33;
  v50 = v28;
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v46 = v24;
  v47 = v25;
  v45 = v34;
  v56 = v34;
  v48 = v26;
  v49 = v27;
  if (sub_1D775F3CC(&v46) == 1)
  {
    v4 = v44;
    *(a1 + 128) = v43;
    *(a1 + 144) = v4;
    *(a1 + 160) = v45;
    v5 = v40;
    *(a1 + 64) = v39;
    *(a1 + 80) = v5;
    v6 = v42;
    *(a1 + 96) = v41;
    *(a1 + 112) = v6;
    v7 = v36;
    *a1 = v35;
    *(a1 + 16) = v7;
    v9 = v37;
    v8 = v38;
LABEL_13:
    *(a1 + 32) = v9;
    *(a1 + 48) = v8;
    return;
  }

  v32 = v54;
  v33 = v55;
  v34 = v56;
  v28 = v50;
  v29 = v51;
  v30 = v52;
  v31 = v53;
  v24 = v46;
  v25 = v47;
  v26 = v48;
  v27 = v49;
  v57 = Offer.priceDelta()();
  if (v10)
  {
    goto LABEL_11;
  }

  v11 = *&v57.is_nil;
  v12 = [*(v2 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager) configuration];
  if (v12)
  {
    v13 = v12;
    if ([v12 respondsToSelector_])
    {
      v14 = [v13 paidBundleConfig];
      swift_unknownObjectRelease();
      [v14 maxPriceDeltaThreshold];
      v16 = v15;

      if (v16 > v11)
      {
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        sub_1D774FE1C();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D78BCB50;
        v18 = MEMORY[0x1E69E63B0];
        v19 = MEMORY[0x1E69E6438];
        *(v17 + 56) = MEMORY[0x1E69E63B0];
        *(v17 + 64) = v19;
        *(v17 + 32) = v11;
        *(v17 + 96) = v18;
        *(v17 + 104) = v19;
        *(v17 + 72) = v16;
        sub_1D78B60A4();
        sub_1D78B42C4();

        v32 = v54;
        v33 = v55;
        v34 = v56;
        v28 = v50;
        v29 = v51;
        v30 = v52;
        v31 = v53;
        v24 = v46;
        v25 = v47;
        v26 = v48;
        v27 = v49;
        nullsub_1(&v24);
        goto LABEL_12;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_11:
    sub_1D77E5878(&v35, &qword_1EE090600, &type metadata for Offer);
    sub_1D775F3AC(&v24);
LABEL_12:
    v20 = v33;
    *(a1 + 128) = v32;
    *(a1 + 144) = v20;
    *(a1 + 160) = v34;
    v21 = v29;
    *(a1 + 64) = v28;
    *(a1 + 80) = v21;
    v22 = v31;
    *(a1 + 96) = v30;
    *(a1 + 112) = v22;
    v23 = v25;
    *a1 = v24;
    *(a1 + 16) = v23;
    v9 = v26;
    v8 = v27;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1D77DDB4C(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 13)
  {
    sub_1D775F3AC(&v21);
    v3 = v30;
    *(a2 + 128) = v29;
    *(a2 + 144) = v3;
    *(a2 + 160) = v31;
    v4 = v26;
    *(a2 + 64) = v25;
    *(a2 + 80) = v4;
    v5 = v28;
    *(a2 + 96) = v27;
    *(a2 + 112) = v5;
    v6 = v22;
    *a2 = v21;
    *(a2 + 16) = v6;
    v8 = v23;
    v7 = v24;
LABEL_8:
    *(a2 + 32) = v8;
    *(a2 + 48) = v7;
    return;
  }

  sub_1D78B3FC4();

  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v21 = v10;
  v22 = v11;
  v31 = v20;
  v23 = v12;
  v24 = v13;
  if (sub_1D775F3CC(&v21) != 1)
  {
    *(a2 + 128) = v18;
    *(a2 + 144) = v19;
    *(a2 + 160) = v20;
    *(a2 + 64) = v14;
    *(a2 + 80) = v15;
    *(a2 + 96) = v16;
    *(a2 + 112) = v17;
    *a2 = v10;
    *(a2 + 16) = v11;
    v8 = v12;
    v7 = v13;
    goto LABEL_8;
  }

  v9 = qword_1EE093E80;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_1D78B3FC4();
}

uint64_t sub_1D77DDD40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1D78B52D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10);
  *v8 = sub_1D78B6104();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = sub_1D78B52F4();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for DisposableOfferObserver();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v10 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
  swift_beginAccess();

  MEMORY[0x1DA703120](v12);
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_1D78B5F04();
  }

  sub_1D78B5F24();
  swift_endAccess();
}

uint64_t sub_1D77DDF4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D78B52D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10);
  *v7 = sub_1D78B6104();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1D78B52F4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v8 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
    swift_beginAccess();
    v4 = *(v2 + v8);
    v16 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v9 = sub_1D78B6534();
LABEL_4:

  if (v9)
  {
    v14 = v8;
    v15 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v2, v4);
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = v15;
          v12 = v16;
          v8 = v14;
          goto LABEL_19;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v8 = Strong, swift_unknownObjectRelease(), v8 == a1))
      {
      }

      else
      {
        v8 = &v16;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      ++v2;
      if (v10 == v9)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v2 + v8) = v12;
}

uint64_t sub_1D77DE1C8@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  swift_getObjectType();
  sub_1D7744248(0, &unk_1EC9CA418, type metadata accessor for OfferAction, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66[-v11];
  v90 = type metadata accessor for OfferAction();
  v87 = *(v90 - 8);
  v13 = MEMORY[0x1EEE9AC00](v90);
  v15 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v69 = &v66[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v66[-v18];
  sub_1D7744248(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v74 = &v66[-v20];
  v76 = sub_1D78B3294();
  v89 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_1D78B2FF4();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v23 = &v66[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = *a1;
  v83 = *a2;
  v24 = *(a2 + 2);
  v82 = *(a2 + 1);
  v84 = v24;
  v81 = *a3;
  if (qword_1EC9C85A0 != -1)
  {
    swift_once();
  }

  sub_1D77465B4(&qword_1EC9CA428, type metadata accessor for OfferManager);
  sub_1D78B3574();
  v79 = *(&v95[0] + 1);
  v80 = *&v95[0];
  if (qword_1EC9C85A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v77 = *(&v95[0] + 1);
  v78 = *&v95[0];
  if (qword_1EC9C85B0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v92 = *(&v95[0] + 1);
  v86 = *&v95[0];
  if (qword_1EC9C85B8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v91 = *(&v95[0] + 1);
  v25 = *&v95[0];
  if (qword_1EC9C85C0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v72 = *(&v95[0] + 1);
  v73 = *&v95[0];
  if (qword_1EC9C85C8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v85 = LOBYTE(v95[0]);
  if (qword_1EC9C85D0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (*&v95[0] >= 5uLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = v95[0];
  }

  v27 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v88 = v12;
  v67 = v26;
  if (v27)
  {
    *&v95[0] = v25;
    *(&v95[0] + 1) = v91;
    v28 = v92;

    sub_1D78B2FE4();
    sub_1D77BE06C();
    sub_1D78B62E4();
    (*(v70 + 8))(v23, v71);
    v29 = objc_allocWithZone(MEMORY[0x1E698C818]);
    v30 = sub_1D78B5C44();

    v31 = [v29 initWithString_];

    v32 = AMSBuyParams.purchaseID.getter();
    v34 = 0x80000001D78D5AF0;
    v35 = 0xD000000000000013;
    if (v33)
    {
      v35 = v32;
      v34 = v33;
    }

    *v15 = v35;
    *(v15 + 1) = v34;
    v36 = v86;
    *(v15 + 2) = v31;
    *(v15 + 3) = v36;
    *(v15 + 4) = v28;
    *(v15 + 40) = xmmword_1D78C2280;
    *(v15 + 7) = 0x4013F5C28F5C28F6;
    v15[64] = 0;
    *(v15 + 72) = xmmword_1D78C2290;
    v15[88] = v85;
    v15[89] = v26;
    v15[90] = v93;
    swift_storeEnumTagMultiPayload();
    v37 = v31;
    v38 = sub_1D777AE6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1D777AE6C(v39 > 1, v40 + 1, 1, v38);
    }

    v38[2] = v40 + 1;
    sub_1D77E567C(v15, v38 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v40);
    v12 = v88;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v41 = v74;
  sub_1D78B3274();

  v42 = v89;
  v43 = v76;
  if ((*(v89 + 48))(v41, 1, v76) == 1)
  {
    sub_1D774FDC0(v41, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  }

  else
  {
    v44 = v75;
    (*(v42 + 32))(v75, v41, v43);
    sub_1D77826E8();
    v46 = v68;
    v47 = v42;
    v48 = &v68[*(v45 + 48)];
    v49 = *(v45 + 64);
    (*(v47 + 16))(v68, v44, v43);
    v50 = v92;
    *v48 = v86;
    *(v48 + 1) = v50;
    *(v48 + 1) = xmmword_1D78C2280;
    *(v48 + 4) = 0x4013F5C28F5C28F6;
    v48[40] = 0;
    *(v48 + 41) = v95[0];
    *(v48 + 11) = *(v95 + 3);
    *(v48 + 3) = xmmword_1D78C2290;
    v48[64] = v85;
    v48[65] = v67;
    *(v46 + v49) = v93;
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1D777AE6C(0, v38[2] + 1, 1, v38);
    }

    v52 = v38[2];
    v51 = v38[3];
    v12 = v88;
    if (v52 >= v51 >> 1)
    {
      v38 = sub_1D777AE6C(v51 > 1, v52 + 1, 1, v38);
    }

    (*(v89 + 8))(v75, v43);
    v38[2] = v52 + 1;
    sub_1D77E567C(v46, v38 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v52);
  }

  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (LOBYTE(v95[0]) == 1)
  {
    v53 = v69;
    swift_storeEnumTagMultiPayload();
    sub_1D77E567C(v53, v12);
    v54 = v38[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v38;
    if (!isUniquelyReferenced_nonNull_native || v54 >= v38[3] >> 1)
    {
      v38 = sub_1D777AE6C(isUniquelyReferenced_nonNull_native, v54 + 1, 1, v38);
      v97 = v38;
    }

    sub_1D77E5174(0, 0, 1, v12);
  }

  v56 = sub_1D77E3F28();
  v57 = (v5 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_offerConfigMatcher);
  v58 = *(v5 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_offerConfigMatcher + 24);
  v59 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v94 = v81;
  (*(v59 + 8))(v95, v56, &v94, v58, v59);
  v60 = v79;
  *a4 = v80;
  *(a4 + 8) = v60;
  v61 = v77;
  *(a4 + 16) = v78;
  *(a4 + 24) = v61;
  *(a4 + 32) = v38;
  *(a4 + 40) = v93;
  *(a4 + 48) = v83;
  v62 = v84;
  *(a4 + 56) = v82;
  *(a4 + 64) = v62;
  *(a4 + 72) = v56;
  v63 = v95[3];
  *(a4 + 112) = v95[2];
  *(a4 + 128) = v63;
  *(a4 + 144) = v95[4];
  *(a4 + 160) = v96;
  v64 = v95[1];
  *(a4 + 80) = v95[0];
  *(a4 + 96) = v64;
}

uint64_t sub_1D77DEDC4(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D78B5254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D78B52A4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[9];
  v37 = a1[8];
  v38 = v11;
  v39 = *(a1 + 20);
  v12 = a1[5];
  v33 = a1[4];
  v34 = v12;
  v13 = a1[7];
  v35 = a1[6];
  v36 = v13;
  v14 = a1[1];
  v29 = *a1;
  v30 = v14;
  v15 = a1[3];
  v31 = a1[2];
  v32 = v15;
  sub_1D773F004(0, &qword_1EE08FE10);
  v16 = sub_1D78B6104();
  v17 = swift_allocObject();
  v18 = v35;
  *(v17 + 136) = v36;
  v19 = v38;
  *(v17 + 152) = v37;
  *(v17 + 168) = v19;
  v20 = v31;
  *(v17 + 72) = v32;
  v21 = v34;
  *(v17 + 88) = v33;
  *(v17 + 104) = v21;
  *(v17 + 120) = v18;
  v22 = v30;
  *(v17 + 24) = v29;
  *(v17 + 40) = v22;
  *(v17 + 16) = v2;
  *(v17 + 184) = v39;
  *(v17 + 56) = v20;
  v28[4] = sub_1D77E5670;
  v28[5] = v17;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1D775FB6C;
  v28[3] = &block_descriptor_17_0;
  v23 = _Block_copy(v28);
  v24 = v2;
  sub_1D778CEAC(&v29, v27);

  sub_1D78B5274();
  v27[0] = MEMORY[0x1E69E7CC0];
  sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v10, v7, v23);
  _Block_release(v23);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

uint64_t sub_1D77DF138(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D78B5254();
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D78B52A4();
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[9];
  v87 = a1[8];
  v88 = v12;
  v89 = *(a1 + 20);
  v13 = a1[5];
  v83 = a1[4];
  v84 = v13;
  v14 = a1[7];
  v85 = a1[6];
  v86 = v14;
  v15 = a1[1];
  v79 = *a1;
  v80 = v15;
  v16 = a1[3];
  v81 = a1[2];
  v82 = v16;
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  v20 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_lastSeenBestOffers;
  swift_beginAccess();
  v21 = *&v3[v20];
  if (!*(v21 + 16))
  {
    return swift_endAccess();
  }

  v22 = sub_1D777BE68(v17, v18, v19);
  if ((v23 & 1) == 0)
  {
    return swift_endAccess();
  }

  v24 = *(v21 + 56) + 168 * v22;
  v26 = *(v24 + 16);
  v25 = *(v24 + 32);
  v68 = *v24;
  v69 = v26;
  v70 = v25;
  v27 = *(v24 + 48);
  v28 = *(v24 + 64);
  v29 = *(v24 + 96);
  v73 = *(v24 + 80);
  v74 = v29;
  v71 = v27;
  v72 = v28;
  v30 = *(v24 + 112);
  v31 = *(v24 + 128);
  v32 = *(v24 + 144);
  v78 = *(v24 + 160);
  v76 = v31;
  v77 = v32;
  v75 = v30;
  swift_endAccess();
  v66[8] = v76;
  v66[9] = v77;
  v67 = v78;
  v66[4] = v72;
  v66[5] = v73;
  v66[6] = v74;
  v66[7] = v75;
  v66[0] = v68;
  v66[1] = v69;
  v66[2] = v70;
  v66[3] = v71;
  sub_1D778CEAC(&v68, &v55);
  v33 = Offer.identifier.getter();
  v35 = v34;
  v63 = v87;
  v64 = v88;
  v65 = v89;
  v59 = v83;
  v60 = v84;
  v61 = v85;
  v62 = v86;
  v55 = v79;
  v56 = v80;
  v57 = v81;
  v58 = v82;
  if (v33 == Offer.identifier.getter() && v35 == v36)
  {

    return sub_1D778D0B0(&v68);
  }

  v38 = sub_1D78B6724();

  if (v38)
  {
    return sub_1D778D0B0(&v68);
  }

  sub_1D773F004(0, &qword_1EE08FE10);
  v39 = sub_1D78B6104();
  v40 = swift_allocObject();
  v41 = v74;
  *(v40 + 136) = v75;
  v42 = v77;
  *(v40 + 152) = v76;
  *(v40 + 168) = v42;
  v43 = v70;
  *(v40 + 72) = v71;
  v44 = v73;
  *(v40 + 88) = v72;
  *(v40 + 104) = v44;
  *(v40 + 120) = v41;
  v45 = v69;
  *(v40 + 24) = v68;
  *(v40 + 16) = v3;
  *(v40 + 184) = v78;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  v46 = v88;
  *(v40 + 320) = v87;
  *(v40 + 336) = v46;
  *(v40 + 352) = v89;
  v47 = v84;
  *(v40 + 256) = v83;
  *(v40 + 272) = v47;
  v48 = v86;
  *(v40 + 288) = v85;
  *(v40 + 304) = v48;
  v49 = v80;
  *(v40 + 192) = v79;
  *(v40 + 208) = v49;
  v50 = v82;
  *(v40 + 224) = v81;
  *(v40 + 240) = v50;
  *&v57 = sub_1D77E5660;
  *(&v57 + 1) = v40;
  *&v55 = MEMORY[0x1E69E9820];
  *(&v55 + 1) = 1107296256;
  *&v56 = sub_1D775FB6C;
  *(&v56 + 1) = &block_descriptor_11_0;
  v51 = _Block_copy(&v55);
  sub_1D778CEAC(&v68, v66);
  v52 = v3;
  sub_1D778CEAC(&v79, v66);

  sub_1D78B5274();
  *&v66[0] = MEMORY[0x1E69E7CC0];
  sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v11, v8, v51);
  _Block_release(v51);

  sub_1D778D0B0(&v68);
  (*(v54 + 8))(v8, v6);
  return (*(v53 + 8))(v11, v9);
}

void sub_1D77DF67C(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 88);
  v3 = *(a1 + 128);
  v4 = *(a1 + 136);
  v28 = *(a1 + 40);
  v5 = Offer.purchaseID()();
  if (v5.value._object)
  {
    countAndFlagsBits = v5.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  v7 = 0xE000000000000000;
  if (v5.value._object)
  {
    object = v5.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v27 = object;
  v9 = [v1 campaignID];
  if (v9)
  {
    v10 = v9;
    v29 = sub_1D78B5C74();
    v7 = v11;
  }

  else
  {
    v29 = 0;
  }

  v12 = sub_1D77E205C();
  v14 = v13;
  if (v2)
  {

    v15 = v3;
    v30 = v4;
  }

  else
  {
    v15 = 0;
    v30 = 0xE000000000000000;
  }

  v25 = v4;
  v24 = v3;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D78C22A0;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D775ABD4();
  *(v16 + 32) = countAndFlagsBits;
  *(v16 + 40) = v27;
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 64) = v18;
  *(v16 + 72) = v29;
  *(v16 + 80) = v7;
  *(v16 + 136) = v17;
  *(v16 + 144) = v18;
  *(v16 + 112) = v12;
  *(v16 + 120) = v14;
  *(v16 + 176) = v17;
  *(v16 + 184) = v18;
  *(v16 + 152) = v15;
  *(v16 + 160) = v30;

  sub_1D78B60A4();
  sub_1D78B42C4();

  v26 = [objc_opt_self() defaultCenter];
  v19 = sub_1D78B5C44();
  sub_1D7744248(0, &qword_1EE08FA28, sub_1D77E55FC, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C0D80;
  sub_1D78B63F4();
  *(inited + 96) = v17;
  *(inited + 72) = countAndFlagsBits;
  *(inited + 80) = v27;
  sub_1D78B63F4();
  *(inited + 168) = v17;
  *(inited + 144) = v29;
  *(inited + 152) = v7;
  sub_1D78B63F4();
  *(inited + 240) = v17;
  *(inited + 216) = v12;
  *(inited + 224) = v14;
  sub_1D78B63F4();
  if (v28)
  {
    v21 = 0;
LABEL_17:
    v22 = v15;
    goto LABEL_18;
  }

  if (!v2)
  {
    v21 = AMSMarketingItem.isBundleHardwareOffer()();
    goto LABEL_17;
  }

  v22 = v15;
  if (v24 == 0xD000000000000025 && 0x80000001D78CF100 == v25)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1D78B6724();
  }

LABEL_18:
  *(inited + 312) = MEMORY[0x1E69E6370];
  *(inited + 288) = v21 & 1;
  sub_1D78B63F4();
  *(inited + 384) = v17;
  *(inited + 360) = v22;
  *(inited + 368) = v30;
  sub_1D77FF518(inited);
  swift_setDeallocating();
  sub_1D77E55FC();
  swift_arrayDestroy();
  v23 = sub_1D78B5BB4();

  [v26 postNotificationName:v19 object:0 userInfo:v23];
}

uint64_t sub_1D77DFB74(void *a1, void *a2, char *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a7;
  v33 = a8;
  v30 = a10;
  v31 = a5;
  v34 = sub_1D78B5254();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D78B52A4();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *&a3[OBJC_IVAR____TtC16NewsSubscription12OfferManager_processQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a4;
  v21 = v32;
  *(v20 + 48) = v31;
  *(v20 + 56) = a6;
  v22 = v33;
  *(v20 + 64) = v21;
  *(v20 + 72) = v22;
  v23 = v30;
  *(v20 + 80) = a9;
  *(v20 + 88) = v23;
  *(v20 + 96) = a11;
  aBlock[4] = sub_1D77E57AC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_29_2;
  v24 = _Block_copy(aBlock);
  v25 = a3;
  v26 = a1;
  v27 = a2;

  sub_1D78B5274();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  v28 = v34;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v19, v17, v24);
  _Block_release(v24);
  (*(v38 + 8))(v17, v28);
  (*(v35 + 8))(v19, v37);
}

void sub_1D77DFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    a1 = sub_1D78B31B4();
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1D775DEFC(0, &unk_1EE095288, &type metadata for Offer, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();

  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 24) = a9;

  v13 = sub_1D78B4014();
  sub_1D78B4094();

  v14 = swift_allocObject();
  *(v14 + 16) = a10;
  *(v14 + 24) = a11;

  v15 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D77E00BC(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v27 = 0;
  v28 = 0xE000000000000000;
  v5 = a1[9];
  v24 = a1[8];
  v25 = v5;
  v26 = *(a1 + 20);
  v6 = a1[5];
  v20 = a1[4];
  v21 = v6;
  v7 = a1[7];
  v22 = a1[6];
  v23 = v7;
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  v9 = a1[3];
  v18 = a1[2];
  v19 = v9;
  sub_1D78B6504();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v10 = a1[9];
  v24 = a1[8];
  v25 = v10;
  v26 = *(a1 + 20);
  v11 = a1[5];
  v20 = a1[4];
  v21 = v11;
  v12 = a1[7];
  v22 = a1[6];
  v23 = v12;
  v13 = a1[1];
  v16 = *a1;
  v17 = v13;
  v14 = a1[3];
  v18 = a1[2];
  v19 = v14;
  return a2(&v16);
}

uint64_t sub_1D77E0258()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D775ABD4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D78B60A4();
  sub_1D78B42C4();
}

BOOL sub_1D77E0528(_BYTE *a1)
{
  LOBYTE(v5[0]) = *a1;
  sub_1D77DCD6C(v5, v3);
  v5[8] = v3[8];
  v5[9] = v3[9];
  v6 = v4;
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[6] = v3[6];
  v5[7] = v3[7];
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  v5[3] = v3[3];
  v1 = sub_1D775F3CC(v5);
  if (v1 != 1)
  {
    sub_1D77E5878(v3, &qword_1EE090600, &type metadata for Offer);
  }

  return v1 != 1;
}

BOOL sub_1D77E05E4()
{
  LOBYTE(v13[0]) = 4;
  sub_1D77DD1F0(v13, v15);
  if (sub_1D775F3CC(v15) == 1)
  {
    return 0;
  }

  else
  {
    v10 = v15[8];
    v11 = v15[9];
    v12 = v16;
    v6 = v15[4];
    v7 = v15[5];
    v8 = v15[6];
    v9 = v15[7];
    v2 = v15[0];
    v3 = v15[1];
    v4 = v15[2];
    v5 = v15[3];
    v0 = Offer.trialEligible()();
    v13[8] = v10;
    v13[9] = v11;
    v14 = v12;
    v13[4] = v6;
    v13[5] = v7;
    v13[6] = v8;
    v13[7] = v9;
    v13[0] = v2;
    v13[1] = v3;
    v13[2] = v4;
    v13[3] = v5;
    sub_1D778D0B0(v13);
  }

  return v0;
}

uint64_t sub_1D77E06B8()
{

  sub_1D78B3FC4();
}

void sub_1D77E072C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  if (a5)
  {
    v8 = qword_1EE08FB98;
    v9 = a5;
    if (v8 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D78BCB50;
    v11 = OfferPlacement.rawValue.getter();
    v13 = v12;
    v14 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D775ABD4();
    *(v10 + 64) = v15;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v16 = [v9 description];
    v17 = sub_1D78B5C74();
    v19 = v18;

    *(v10 + 96) = v14;
    *(v10 + 104) = v15;
    *(v10 + 72) = v17;
    *(v10 + 80) = v19;
    sub_1D78B42C4();

    v35 = v9;
    a3();

    v20 = v35;

LABEL_6:

    return;
  }

  if (!a7)
  {
LABEL_12:
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D78BCAB0;
    v23 = OfferPlacement.rawValue.getter();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D775ABD4();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_1D78B42C4();

    sub_1D77E55A8();
    v26 = swift_allocError();
    *v27 = 5;
    a3();
    v20 = v26;

    goto LABEL_6;
  }

  v21 = a7;
  if ([v21 count] <= 0)
  {

    goto LABEL_12;
  }

  [v21 copy];
  sub_1D78B6304();
  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EC9C8430);
  if (swift_dynamicCast())
  {
    sub_1D773F004(0, &unk_1EE08FE58);
    sub_1D78B5EA4();
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D774FE1C();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D78BCAB0;
  v29 = OfferPlacement.rawValue.getter();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1D775ABD4();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_1D78B42C4();

  sub_1D77E55A8();
  v32 = swift_allocError();
  *v33 = 4;
  a3();
}

id sub_1D77E1A58@<X0>(void *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  v10 = a3[3];
  v68 = a3[2];
  v69 = v10;
  v70 = a3[4];
  v71 = *(a3 + 10);
  v11 = a3[1];
  v66 = *a3;
  v67 = v11;
  v12 = [a1 itemActions];
  if (!v12)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D78BCAB0;
    LOBYTE(v55) = v7;
    v19 = OfferPlacement.rawValue.getter();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D775ABD4();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1D78B42C4();
    v22 = 1;
    goto LABEL_14;
  }

  v13 = v12;
  v53 = v8;
  v72 = v4;
  sub_1D773F004(0, &qword_1EE08FD28);
  v14 = sub_1D78B5EB4();

  v58 = v69;
  v59 = v70;
  *&v60 = v71;
  v55 = v66;
  v56 = v67;
  v57 = v68;
  v15 = sub_1D77E2830(a1, v14, &v55);

  if (!v15[2])
  {

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D774FE1C();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D78BCAB0;
    LOBYTE(v55) = v7;
    v24 = OfferPlacement.rawValue.getter();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D775ABD4();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1D78B42C4();
    v22 = 3;
    goto LABEL_14;
  }

  v52 = v15;
  if (!*(&v66 + 1))
  {
    if (AMSMarketingItem.isBundleHardwareOffer()())
    {
      v17 = 0;
      goto LABEL_18;
    }

    if (!AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v16 = v69;
  v55 = v66;
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  *&v60 = v71;
  if ((ConfigurableOfferConfig.isLegacyOffer.getter() & 1) == 0)
  {
    v17 = 2;
    goto LABEL_18;
  }

  if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) != v16 && (sub_1D78B6724() & 1) == 0)
  {
    if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v16)
    {
      v17 = 1;
      goto LABEL_18;
    }

    if ((sub_1D78B6724() & 1) == 0)
    {
LABEL_30:
      sub_1D77E3714(v15, v54);
      v17 = v54[0];
      if (v54[0] != 3)
      {
        goto LABEL_18;
      }

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D78B6094();
      sub_1D774FE1C();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1D78BCAB0;
      LOBYTE(v55) = v7;
      v47 = OfferPlacement.rawValue.getter();
      v49 = v48;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = sub_1D775ABD4();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      v22 = 2;
      sub_1D78B42C4();
LABEL_14:

      sub_1D77E55A8();
      swift_allocError();
      *v27 = v22;
      return swift_willThrow();
    }

LABEL_26:
    v17 = 1;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_18:
  v51 = v17;
  v29 = [a1 title];
  if (v29)
  {
    v30 = v29;
    v50 = sub_1D78B5C74();
    v32 = v31;
  }

  else
  {
    v50 = 0;
    v32 = 0;
  }

  v33 = v9;
  v34 = v7;
  v35 = [a1 subtitle];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D78B5C74();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v62 = v68;
  v63 = v69;
  v64 = v70;
  v60 = v66;
  v61 = v67;
  *&v55 = v50;
  *(&v55 + 1) = v32;
  *&v56 = v37;
  *(&v56 + 1) = v39;
  *&v57 = v52;
  BYTE8(v57) = v51;
  LOBYTE(v58) = v34;
  *(&v58 + 1) = v33;
  *&v59 = v53;
  *(&v59 + 1) = a1;
  v65 = v71;
  nullsub_1(&v55);
  v40 = v62;
  v41 = v64;
  *(a4 + 128) = v63;
  *(a4 + 144) = v41;
  v42 = v58;
  v43 = v60;
  v44 = v61;
  *(a4 + 64) = v59;
  *(a4 + 80) = v43;
  *(a4 + 160) = v65;
  *(a4 + 96) = v44;
  *(a4 + 112) = v40;
  v45 = v56;
  *a4 = v55;
  *(a4 + 16) = v45;
  *(a4 + 32) = v57;
  *(a4 + 48) = v42;

  sub_1D77E5A14(&v66, v54, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
  return a1;
}

id sub_1D77E205C()
{
  LOBYTE(v5[0]) = 4;
  sub_1D77DCD6C(v5, v3);
  v5[8] = v3[8];
  v5[9] = v3[9];
  v6 = v4;
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[6] = v3[6];
  v5[7] = v3[7];
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  v5[3] = v3[3];
  if (sub_1D775F3CC(v5) == 1)
  {
    result = sub_1D77E217C();
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v2 = Offer.purchaseID()();
    if (v2.value._object)
    {
      sub_1D77E5878(v3, &qword_1EE090600, &type metadata for Offer);
      return v2.value._countAndFlagsBits;
    }

    sub_1D77E5878(v3, &qword_1EE090600, &type metadata for Offer);
  }

  return 0;
}

id sub_1D77E217C()
{
  result = [*(v0 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager) configuration];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v2 paidBundleConfig];
      swift_unknownObjectRelease();
      if ([v3 areMagazinesEnabled])
      {
        v4 = [v3 offeredBundlePurchaseIDs];
        if (v4)
        {
          v5 = v4;
          v6 = sub_1D78B5EB4();

          if (*(v6 + 16))
          {
            v7 = *(v6 + 32);

            return v7;
          }
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77E2298(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
LABEL_32:
    result = sub_1D78B6534();
    v7 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA703700](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v10 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      v12 = *(a2 + 144);
      v20[8] = *(a2 + 128);
      v20[9] = v12;
      v21 = *(a2 + 160);
      v13 = *(a2 + 80);
      v20[4] = *(a2 + 64);
      v20[5] = v13;
      v14 = *(a2 + 112);
      v20[6] = *(a2 + 96);
      v20[7] = v14;
      v15 = *(a2 + 16);
      v20[0] = *a2;
      v20[1] = v15;
      v16 = *(a2 + 48);
      v20[2] = *(a2 + 32);
      v20[3] = v16;
      (*(v10 + 16))(v20, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_14:
  a2 = *(a1 + v4);
  *&v20[0] = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    v6 = sub_1D78B6534();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v19 = v4;
    v17 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v17, a2);
        v4 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v4 = v19;
          v18 = *&v20[0];
          goto LABEL_30;
        }
      }

      else
      {
        if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v4 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_27;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v17;
      if (v4 == v6)
      {
        goto LABEL_28;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_30:

  *(a1 + v4) = v18;
}

uint64_t sub_1D77E2544(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_observers;
  result = swift_beginAccess();
  v26 = v6;
  v8 = *(a1 + v6);
  if (v8 >> 62)
  {
LABEL_32:
    result = sub_1D78B6534();
    v9 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA703700](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v12 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      v14 = *(a2 + 144);
      v29[8] = *(a2 + 128);
      v29[9] = v14;
      v30 = *(a2 + 160);
      v15 = *(a2 + 80);
      v29[4] = *(a2 + 64);
      v29[5] = v15;
      v16 = *(a2 + 112);
      v29[6] = *(a2 + 96);
      v29[7] = v16;
      v17 = *(a2 + 16);
      v29[0] = *a2;
      v29[1] = v17;
      v18 = *(a2 + 48);
      v29[2] = *(a2 + 32);
      v29[3] = v18;
      v19 = *(a3 + 144);
      v27[8] = *(a3 + 128);
      v27[9] = v19;
      v28 = *(a3 + 160);
      v20 = *(a3 + 80);
      v27[4] = *(a3 + 64);
      v27[5] = v20;
      v21 = *(a3 + 112);
      v27[6] = *(a3 + 96);
      v27[7] = v21;
      v22 = *(a3 + 16);
      v27[0] = *a3;
      v27[1] = v22;
      v23 = *(a3 + 48);
      v27[2] = *(a3 + 32);
      v27[3] = v23;
      (*(v12 + 8))(v29, v27, ObjectType, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_14:
  a3 = *(a1 + v6);
  *&v29[0] = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    a2 = sub_1D78B6534();
  }

  else
  {
    a2 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2)
  {
    v8 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v8, a3);
        v24 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v25 = *&v29[0];
          goto LABEL_30;
        }
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v24 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_27;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v8;
      if (v24 == a2)
      {
        goto LABEL_28;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_30:

  *(a1 + v26) = v25;
}

void *sub_1D77E2830(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v112 = a1;
  v133 = type metadata accessor for OfferAction();
  v125 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B3294();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v105 - v11;
  sub_1D7744248(0, qword_1EE094C88, type metadata accessor for OfferAction, MEMORY[0x1E69E6720]);
  v123 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v105 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v105 - v19;
  v20 = *(a3 + 48);
  v145 = *(a3 + 32);
  v146 = v20;
  v147 = *(a3 + 64);
  v148 = *(a3 + 80);
  v21 = *(a3 + 16);
  v144[0] = *a3;
  v144[1] = v21;
  v154 = v148;
  v151 = v145;
  v152 = v20;
  v153 = v147;
  v149 = v144[0];
  v150 = v21;
  if (a2 >> 62)
  {
LABEL_79:
    v22 = sub_1D78B6534();
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  v124 = v15;
  if (v22)
  {
    v143 = MEMORY[0x1E69E7CC0];
    result = sub_1D77D99B4(0, v22 & ~(v22 >> 63), 0);
    if ((v22 & 0x8000000000000000) == 0)
    {
      v107 = v10;
      v108 = v6;
      v15 = 0;
      v134 = v143;
      v127 = OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager;
      v129 = a2 & 0xC000000000000001;
      v122 = a2 & 0xFFFFFFFFFFFFFF8;
      v111 = *MEMORY[0x1E698C640];
      v109 = *MEMORY[0x1E698C650];
      v10 = (v125 + 56);
      v105 = *MEMORY[0x1E698C648];
      v106 = (v7 + 32);
      v25 = v123;
      v120 = v22;
      v121 = a2;
      v126 = (v125 + 56);
      while (1)
      {
        v26 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (v129)
        {
          v27 = MEMORY[0x1DA703700](v15, a2);
        }

        else
        {
          if (v15 >= *(v122 + 16))
          {
            goto LABEL_78;
          }

          v27 = *(a2 + 8 * v15 + 32);
        }

        v28 = v27;
        v29 = [v27 type];
        if (v29)
        {
          v30 = v29;
          v132 = v15 + 1;
          v31 = v18;
          result = [*(v128 + v127) configuration];
          if (!result)
          {
            goto LABEL_81;
          }

          v32 = result;
          if (([result respondsToSelector_] & 1) == 0)
          {
            swift_unknownObjectRelease();

LABEL_23:
            v26 = v132;

            v18 = v31;
            v10 = v126;
            (*v126)(v18, 1, 1, v133);
            goto LABEL_24;
          }

          v33 = [v32 paidBundleConfig];
          swift_unknownObjectRelease();
          if (([v33 areMagazinesEnabled] & 1) == 0 || (v34 = objc_msgSend(v33, sel_offeredBundlePurchaseIDs)) == 0)
          {

LABEL_22:
            v25 = v123;
            goto LABEL_23;
          }

          v35 = v34;
          v36 = sub_1D78B5EB4();

          if (!v36[2])
          {

            v28 = v33;
            v22 = v120;
            a2 = v121;
            goto LABEL_22;
          }

          v38 = v36[4];
          v37 = v36[5];

          v39 = [v28 callToActionLabel];
          if (v39)
          {
            v40 = v39;
            v41 = sub_1D78B5C74();
            v118 = v42;
            v119 = v41;
          }

          else
          {
            v118 = 0;
            v119 = 0;
          }

          v46 = AMSMarketingItem.priceString(for:)(v28);
          v116 = v47;
          v117 = v46;
          v115 = AMSMarketingItem.priceDiff(for:)(v28);
          v49 = v48;
          v50 = AMSMarketingItem.priceDiffString(for:)(v28);
          v113 = v51;
          v114 = v50;
          v52 = AMSMarketingItem.trialEligible(for:)(v28);
          AMSMarketingItem.upsellScenario(for:)(v135);
          v142 = v49 & 1;
          *&v137 = v119;
          *(&v137 + 1) = v118;
          *&v138 = v117;
          *(&v138 + 1) = v116;
          *&v139 = v115;
          BYTE8(v139) = v49 & 1;
          *&v140 = v114;
          *(&v140 + 1) = v113;
          LOBYTE(v141) = v52;
          HIBYTE(v141) = v135[0];
          v53 = sub_1D78B5C74();
          v55 = v54;
          if (v53 == sub_1D78B5C74() && v55 == v56)
          {

LABEL_34:
            v58 = [v28 buyParams];
            if (v58)
            {
              v118 = v38;
              v119 = v58;
              v59 = AMSBuyParams.purchaseID.getter();
              v18 = v31;
              v22 = v120;
              v26 = v132;
              if (v60)
              {
                v61 = v59;
                v115 = v37;
                v116 = v59;
                a2 = v121;
                v10 = v126;
                v117 = v60;
                if (*(&v144[0] + 1) && (v135[2] = v151, v135[3] = v152, v135[4] = v153, v136 = v154, v135[0] = v149, v135[1] = v150, v62 = ConfigurableOfferConfig.isLegacyOffer.getter(), v61 = v116, v60 = v117, (v62 & 1) == 0))
                {
                  v63 = v116;

                  v64 = 2;
                }

                else if (v118 == v61 && v60 == v115)
                {

                  v63 = v116;

                  v64 = 0;
                }

                else
                {
                  LODWORD(v118) = sub_1D78B6724();

                  v63 = v116;

                  v64 = (v118 & 1) == 0;
                }

                v86 = v117;
                *v18 = v63;
                *(v18 + 1) = v86;
                *(v18 + 2) = v119;
                v87 = v137;
                *(v18 + 40) = v138;
                *(v18 + 56) = v139;
                *(v18 + 72) = v140;
                *(v18 + 44) = v141;
                *(v18 + 24) = v87;
                v18[90] = v64;
                v88 = v133;
                swift_storeEnumTagMultiPayload();
                (*v10)(v18, 0, 1, v88);
                goto LABEL_54;
              }

              sub_1D77D66B0(&v137);
              a2 = v121;
              v10 = v126;
              v65 = v133;
            }

            else
            {

              sub_1D77D66B0(&v137);
              v26 = v132;
              v65 = v133;
              v18 = v31;
              v22 = v120;
              a2 = v121;
              v10 = v126;
            }

            (*v10)(v18, 1, 1, v65);
LABEL_54:
            v25 = v123;
            goto LABEL_24;
          }

          v57 = sub_1D78B6724();

          if (v57)
          {
            goto LABEL_34;
          }

          v66 = sub_1D78B5C74();
          v68 = v67;
          if (v66 == sub_1D78B5C74() && v68 == v69)
          {

LABEL_48:
            v71 = [v28 url];
            if (v71)
            {
              v72 = v107;
              v73 = v71;
              sub_1D78B3254();

              v74 = v38;
              v75 = *v106;
              v76 = v72;
              v77 = v108;
              (*v106)(v110, v76, v108);
              sub_1D77E35B8(v144, v121, v74, v37, v135);

              v78 = v135[0];
              sub_1D77826E8();
              v80 = &v31[*(v79 + 48)];
              v81 = *(v79 + 64);
              v82 = v77;
              v18 = v31;
              v75(v31, v110, v82);
              v83 = v140;
              *(v80 + 2) = v139;
              *(v80 + 3) = v83;
              *(v80 + 32) = v141;
              v84 = v138;
              *v80 = v137;
              *(v80 + 1) = v84;
              v31[v81] = v78;
              a2 = v121;
              v85 = v133;
              swift_storeEnumTagMultiPayload();
              v10 = v126;
              (*v126)(v18, 0, 1, v85);
              v25 = v123;
              v22 = v120;
            }

            else
            {

              sub_1D77D66B0(&v137);
              v18 = v31;
              v10 = v126;
              (*v126)(v18, 1, 1, v133);
              v25 = v123;
              v22 = v120;
              a2 = v121;
            }

            v26 = v132;
            goto LABEL_24;
          }

          v70 = sub_1D78B6724();

          if (v70)
          {
            goto LABEL_48;
          }

          sub_1D77D66B0(&v137);
          v89 = sub_1D78B5C74();
          v91 = v90;
          if (v89 == sub_1D78B5C74() && v91 == v92)
          {

            v93 = *v126;
            v94 = v133;
            v18 = v31;
            v10 = v126;
            a2 = v121;
          }

          else
          {
            v95 = sub_1D78B6724();

            v96 = v126;
            v93 = *v126;
            v18 = v31;
            if ((v95 & 1) == 0)
            {
              v93(v31, 1, 1, v133);
              v25 = v123;
              v22 = v120;
              a2 = v121;
              v10 = v96;
              v26 = v132;
              goto LABEL_24;
            }

            v94 = v133;
            a2 = v121;
            v10 = v126;
          }

          v26 = v132;
          swift_storeEnumTagMultiPayload();
          v93(v18, 0, 1, v94);
          v25 = v123;
          v22 = v120;
        }

        else
        {

          (*v10)(v18, 1, 1, v133);
        }

LABEL_24:
        v43 = v134;
        v143 = v134;
        v6 = *(v134 + 16);
        v44 = *(v134 + 24);
        v7 = v6 + 1;
        if (v6 >= v44 >> 1)
        {
          sub_1D77D99B4(v44 > 1, v6 + 1, 1);
          v25 = v123;
          v43 = v143;
        }

        *(v43 + 16) = v7;
        v45 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v134 = v43;
        sub_1D77E5980(v18, v43 + v45 + *(v25 + 72) * v6);
        ++v15;
        if (v26 == v22)
        {
          v15 = v124;
          v23 = v134;
          v97 = *(v134 + 16);
          if (!v97)
          {
            goto LABEL_75;
          }

LABEL_64:
          v98 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
          v99 = *(v25 + 72);
          v100 = (v125 + 48);
          v101 = MEMORY[0x1E69E7CC0];
          do
          {
            v102 = v130;
            sub_1D774FD40(v98, v130, qword_1EE094C88, type metadata accessor for OfferAction);
            sub_1D77E5980(v102, v15);
            if ((*v100)(v15, 1, v133) == 1)
            {
              sub_1D774FDC0(v15, qword_1EE094C88, type metadata accessor for OfferAction, MEMORY[0x1E69E6720]);
            }

            else
            {
              sub_1D77E567C(v15, v131);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v101 = sub_1D777AE6C(0, v101[2] + 1, 1, v101);
              }

              v104 = v101[2];
              v103 = v101[3];
              if (v104 >= v103 >> 1)
              {
                v101 = sub_1D777AE6C(v103 > 1, v104 + 1, 1, v101);
              }

              v101[2] = v104 + 1;
              sub_1D77E567C(v131, v101 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v104);
              v15 = v124;
            }

            v98 += v99;
            --v97;
          }

          while (v97);

          return v101;
        }
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
  }

  else
  {
    v25 = v123;
    v97 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v97)
    {
      goto LABEL_64;
    }

LABEL_75:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D77E35B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  if (*(a1 + 8) && (result = ConfigurableOfferConfig.isLegacyOffer.getter(), (result & 1) == 0))
  {
    v16 = 2;
  }

  else
  {
    v10 = Array<A>.purchaseIDs.getter(a2);
    v11 = sub_1D77E58E8(v10);

    sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D78BCAB0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;

    v13 = sub_1D77ECE30(inited, v11);
    swift_setDeallocating();
    swift_arrayDestroy();
    v14 = *(v13 + 16);

    if (v14)
    {
      v15 = *(Array<A>.purchaseIDs.getter(a2) + 2);

      v16 = v15 != 0;
    }

    else
    {
      v16 = 0;
    }
  }

  *a5 = v16;
  return result;
}

uint64_t sub_1D77E3714@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1D77E217C();
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = *(Array<A>.purchaseIDs.getter(a1) + 2);

    if (v8)
    {
      v9 = Array<A>.purchaseIDs.getter(a1);
      v10 = sub_1D77E58E8(v9);

      sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D78BCAB0;
      *(inited + 32) = v6;
      *(inited + 40) = v7;
      v12 = sub_1D77ECE30(inited, v10);
      swift_setDeallocating();
      swift_arrayDestroy();
      v13 = *(v12 + 16);

      v14 = v13 != 0;
    }

    else
    {

      v14 = 0;
    }
  }

  else
  {
    v14 = 3;
  }

  *a2 = v14;
  return result;
}

void *sub_1D77E3840(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
  {
    v6 = 0;
    v7 = (a2 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_offerConfigMatcher);
    v46 = v4 & 0xC000000000000001;
    v41 = v4 & 0xFFFFFFFFFFFFFF8;
    v42 = v4;
    while (1)
    {
      if (v46)
      {
        v8 = MEMORY[0x1DA703700](v6, v4);
      }

      else
      {
        if (v6 >= *(v41 + 16))
        {
          goto LABEL_54;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 itemActions];
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = v11;
      sub_1D773F004(0, &qword_1EE08FD28);
      v13 = sub_1D78B5EB4();

      v14 = v7[3];
      v15 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v14);
      v47 = a3;
      (*(v15 + 8))(v48, v9, &v47, v14, v15);
      v50[0] = v48[0];
      v50[1] = v48[1];
      v53 = v49;
      v51 = v48[3];
      v52 = v48[4];
      v50[2] = v48[2];
      v16 = sub_1D77E2830(v9, v13, v48);

      if (!*(&v50[0] + 1))
      {
        if (!AMSMarketingItem.isBundleHardwareOffer()())
        {
          if (AMSMarketingItem.isCIPOffer()())
          {

            v18 = 1;
            goto LABEL_37;
          }

          v19 = sub_1D77E217C();
          if (!v20)
          {

            goto LABEL_5;
          }

          v21 = v19;
          v22 = v20;
          v23 = *(Array<A>.purchaseIDs.getter(v16) + 2);

          if (v23)
          {
            v24 = Array<A>.purchaseIDs.getter(v16);

            v39 = sub_1D77E58E8(v24);

            sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D78BCAB0;
            *(inited + 32) = v21;
            *(inited + 40) = v22;
            v26 = sub_1D77ECE30(inited, v39);
LABEL_36:
            swift_setDeallocating();
            swift_arrayDestroy();
            v34 = *(v26 + 16);

            v18 = v34 != 0;
            goto LABEL_37;
          }
        }

        goto LABEL_24;
      }

      v17 = v51;
      if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) != v51)
      {
        if ((sub_1D78B6724() & 1) == 0 && __PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) != v17 && (sub_1D78B6724() & 1) == 0 && v17 != __PAIR128__(0xEF656C646E75622DLL, 0x7365636976726573) && (sub_1D78B6724() & 1) == 0 && v17 != __PAIR128__(0xE900000000000073, 0x756C702D7377656ELL))
        {
          v35 = sub_1D78B6724();
          v36 = v17 == 0x756C702D7377656ELL && *(&v17 + 1) == 0xEF6F72746E692D73;
          v37 = v36;
          if ((v35 & 1) == 0 && !v37 && (sub_1D78B6724() & 1) == 0)
          {

            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
            v18 = 2;
            goto LABEL_37;
          }
        }

        if ((sub_1D78B6724() & 1) == 0)
        {
          if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v17 || (sub_1D78B6724() & 1) != 0)
          {

            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
            v18 = 1;
            goto LABEL_37;
          }

          v27 = sub_1D77E217C();
          if (!v28)
          {

            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
LABEL_5:
            v4 = v42;
            if (a4 == 3)
            {
              return v9;
            }

            goto LABEL_6;
          }

          v29 = v27;
          v30 = v28;
          v31 = *(Array<A>.purchaseIDs.getter(v16) + 2);

          if (v31)
          {
            v32 = Array<A>.purchaseIDs.getter(v16);

            v40 = sub_1D77E58E8(v32);

            sub_1D775DEFC(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            v33 = swift_initStackObject();
            *(v33 + 16) = xmmword_1D78BCAB0;
            *(v33 + 32) = v29;
            *(v33 + 40) = v30;
            v26 = sub_1D77ECE30(v33, v40);
            sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
            goto LABEL_36;
          }

          sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
LABEL_24:

          v18 = 0;
          goto LABEL_37;
        }
      }

      sub_1D77E5878(v50, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
      v18 = 0;
LABEL_37:
      v4 = v42;
      if (a4 != 3 && v18 == a4)
      {
        return v9;
      }

LABEL_6:

      ++v6;
      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  return 0;
}

uint64_t sub_1D77E3F28()
{
  v56 = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v0 = sub_1D78B5CB4();
  v1 = *(v0 - 1);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9C85D8 != -1)
  {
    swift_once();
  }

  sub_1D77465B4(&qword_1EC9CA428, type metadata accessor for OfferManager);
  sub_1D78B3574();
  if (v54 == 1)
  {
    v47 = v0;
    if (qword_1EC9C85E0 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v4 = v55;
    v46 = v54;
    if (qword_1EC9C85E8 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v52 = v54;
    v53 = v55;
    v50 = 91;
    v51 = 0xE100000000000000;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1D77BE06C();
    v5 = sub_1D78B62D4();
    v7 = v6;

    v54 = v5;
    v55 = v7;
    v52 = 93;
    v53 = 0xE100000000000000;
    v50 = 0;
    v51 = 0xE000000000000000;
    v8 = sub_1D78B62D4();
    v10 = v9;

    sub_1D77E4894(v8, v10, v46, v4);
    sub_1D78B5CA4();
    v11 = sub_1D78B5C84();
    v13 = v12;
    result = (*(v1 + 8))(v3, v47);
    if (v13 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v15 = objc_opt_self();
      v16 = sub_1D78B32B4();
      v54 = 0;
      v17 = [v15 JSONObjectWithData:v16 options:0 error:&v54];

      if (!v17)
      {
        v35 = v54;

        v36 = sub_1D78B31C4();

        swift_willThrow();
        sub_1D778C858(MEMORY[0x1E69E7CC8]);
        v37 = objc_allocWithZone(MEMORY[0x1E698C988]);
        sub_1D778CDF0();
        v38 = sub_1D78B5BB4();

        v21 = [v37 initWithDictionary_];

        goto LABEL_27;
      }

      v18 = v54;
      sub_1D78B6304();
      swift_unknownObjectRelease();
      sub_1D77E56F4();
      result = swift_dynamicCast();
      if (result)
      {

        sub_1D778C858(v52);

        v19 = objc_allocWithZone(MEMORY[0x1E698C988]);
        sub_1D778CDF0();
        v20 = sub_1D78B5BB4();

        v21 = [v19 initWithDictionary_];

LABEL_27:
        v39 = v11;
LABEL_30:
        sub_1D77E56E0(v39, v13);
        return v21;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v54 == 1)
  {
    sub_1D78B5CA4();
    v22 = sub_1D78B5C84();
    v13 = v23;
    v24 = *(v1 + 8);
    v1 += 8;
    result = v24(v3, v0);
    if (v13 >> 60 == 15)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v25 = objc_opt_self();
    v26 = sub_1D78B32B4();
    v54 = 0;
    v0 = [v25 JSONObjectWithData:v26 options:0 error:&v54];

    v3 = v54;
    if (!v0)
    {
      goto LABEL_28;
    }

    v27 = v54;
    sub_1D78B6304();
    swift_unknownObjectRelease();
    sub_1D77E56F4();
    if (swift_dynamicCast())
    {
LABEL_25:
      sub_1D778C858(v52);

      v33 = objc_allocWithZone(MEMORY[0x1E698C988]);
      sub_1D778CDF0();
      v34 = sub_1D78B5BB4();

      v21 = [v33 initWithDictionary_];

LABEL_29:
      v39 = v22;
      goto LABEL_30;
    }

    __break(1u);
  }

  if (qword_1EC9C85F8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v54 != 1)
  {
    sub_1D778C858(MEMORY[0x1E69E7CC8]);
    v44 = objc_allocWithZone(MEMORY[0x1E698C988]);
    sub_1D778CDF0();
    v45 = sub_1D78B5BB4();

    v21 = [v44 initWithDictionary_];

    return v21;
  }

  sub_1D78B5CA4();
  v22 = sub_1D78B5C84();
  v13 = v28;
  result = (*(v1 + 8))(v3, v0);
  if (v13 >> 60 == 15)
  {
    goto LABEL_36;
  }

  v29 = objc_opt_self();
  v30 = sub_1D78B32B4();
  v54 = 0;
  v31 = [v29 JSONObjectWithData:v30 options:0 error:&v54];

  v3 = v54;
  if (!v31)
  {
LABEL_28:
    v40 = v3;
    v41 = sub_1D78B31C4();

    swift_willThrow();
    sub_1D778C858(MEMORY[0x1E69E7CC8]);
    v42 = objc_allocWithZone(MEMORY[0x1E698C988]);
    sub_1D778CDF0();
    v43 = sub_1D78B5BB4();

    v21 = [v42 initWithDictionary_];

    goto LABEL_29;
  }

  v32 = v54;
  sub_1D78B6304();
  swift_unknownObjectRelease();
  sub_1D77E56F4();
  result = swift_dynamicCast();
  if (result)
  {
    goto LABEL_25;
  }

LABEL_37:
  __break(1u);
  return result;
}