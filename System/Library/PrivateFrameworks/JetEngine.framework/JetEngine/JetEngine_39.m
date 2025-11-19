void sub_1AB34F814(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = sub_1AB45F9B4();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v43 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v54 = a3;
  v15 = (a2 - a1) / v13;
  v58 = a1;
  v57 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v17;
    if (v17 >= 1)
    {
      v28 = -v13;
      v47 = (v8 + 8);
      v48 = (v8 + 16);
      v29 = a4 + v17;
      v30 = v54;
      v45 = a1;
      v46 = a4;
      v49 = v28;
      do
      {
        v43 = v27;
        v31 = a2 + v28;
        v32 = v27;
        v50 = a2;
        v51 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v58 = a2;
            v27 = v43;
            goto LABEL_59;
          }

          v34 = v30;
          v44 = v32;
          v54 = v30 + v28;
          v35 = v29 + v28;
          v36 = *v48;
          v37 = v52;
          v38 = v29 + v28;
          v39 = v29;
          v40 = v55;
          (*v48)(v52, v38, v55);
          v41 = v53;
          (v36)(v53, v31, v40);
          sub_1AB05D094();
          LOBYTE(v36) = sub_1AB460494();
          v42 = *v47;
          (*v47)(v41, v40);
          v42(v37, v40);
          if (v36)
          {
            break;
          }

          v32 = v35;
          v30 = v54;
          if (v34 < v39 || v54 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
            a1 = v45;
          }

          else
          {
            v31 = v51;
            a1 = v45;
            if (v34 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v35;
          v33 = v35 > v46;
          v28 = v49;
          a2 = v50;
          if (!v33)
          {
            v27 = v32;
            goto LABEL_58;
          }
        }

        v30 = v54;
        if (v34 < v50 || v54 >= v50)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v45;
          v29 = v39;
        }

        else
        {
          a2 = v51;
          a1 = v45;
          v29 = v39;
          if (v34 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v44;
        v28 = v49;
      }

      while (v29 > v46);
    }

LABEL_58:
    v58 = a2;
LABEL_59:
    v56 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v51 = a4 + v16;
    v56 = a4 + v16;
    if (v16 >= 1 && a2 < v54)
    {
      v49 = *(v8 + 16);
      v50 = v8 + 16;
      v47 = v13;
      v48 = (v8 + 8);
      do
      {
        v19 = v52;
        v20 = v55;
        v21 = v49;
        v49(v52, a2, v55);
        v22 = v53;
        v21(v53, a4, v20);
        sub_1AB05D094();
        v23 = sub_1AB460494();
        v24 = *v48;
        (*v48)(v22, v20);
        v24(v19, v20);
        if (v23)
        {
          v25 = v47;
          if (a1 < a2 || a1 >= v47 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v47;
          v26 = v47 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = v26;
          a4 += v25;
        }

        a1 += v25;
        v58 = a1;
      }

      while (a4 < v51 && a2 < v54);
    }
  }

  sub_1AB34FDA4(&v58, &v57, &v56);
}

uint64_t sub_1AB34FDA4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1AB45F9B4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1AB34FE88(uint64_t *a1)
{
  v2 = *a1;
  swift_getObjectType();

  sub_1AB08F65C(v2, v1);
}

uint64_t sub_1AB34FEF4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_1AB34FFB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB45F924();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AB34FFEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void JSONInitFailureObserver.tryingToEncode(_:didFailWith:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AB4616D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  sub_1AB462024();
  v12 = a2;
  sub_1AB461694();
  v13 = sub_1AB4616E4();
  v14 = swift_allocError();
  v16 = v15;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8) + 48);
  *(v16 + 3) = swift_getMetatypeMetadata();
  *v16 = a1;
  (*(v9 + 16))(&v16[v17], v11, v8);
  (*(*(v13 - 8) + 104))(v16, *MEMORY[0x1E69E6B30], v13);
  (*(a4 + 8))(a1, v14, a3, a4);
  (*(v9 + 8))(v11, v8);
}

uint64_t MetricsFieldExclusionRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_1AB01EC0C(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if (v8)
    {
      result = sub_1AB066D84(a1);
      *a2 = v6;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    sub_1AB18977C(v12);
  }

  sub_1AB163664();
  swift_allocError();
  v10 = MEMORY[0x1E69E7CC0];
  *v11 = &type metadata for MetricsFieldExclusionRequest;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

uint64_t MetricsFieldExclusionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
    v5 = sub_1AB461DB4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MetricsFieldExclusionRequest.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t MetricsFieldExclusionRequest.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void static MetricsFieldExclusionRequest.eventVersion.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "eventVersion");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static MetricsFieldExclusionRequest.xpSendMethod.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "xpSendMethod");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t static AnyActionTypes.makeInstance(byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1AB3D8F30(0xD00000000000001FLL, 0x80000001AB50A5F0, *a2, v19);
  v6 = *(&v19[0] + 1);
  if ((~*(&v19[0] + 1) & 0xF000000000000007) != 0)
  {
    v9 = *&v19[0];
    JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v19);
    sub_1AB014A58(v19, v16, &qword_1EB436BA0);
    v10 = v17;
    if (v17)
    {
      v11 = v18;
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v12 = (*(v11 + 24))(v10, v11);
      v14 = v13;
      sub_1AB066D84(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      if (v14)
      {
        *&v19[0] = v9;
        *(&v19[0] + 1) = v6;
        v16[0] = v5;
        AnyActionTypes.makeInstance(ofKind:byDeserializing:using:)(v12, v14, a1, v16, a3);

        return sub_1AB350AAC(v9, v6);
      }

      sub_1AB350AAC(v9, v6);
    }

    else
    {
      sub_1AB350AAC(v9, v6);
      sub_1AB066D84(v19);
      sub_1AB014AC0(v16, &qword_1EB436BA0);
    }

    v7 = 0x20000001F2008BE8uLL;
    sub_1AB163664();
    swift_allocError();
    *v8 = xmmword_1AB4E9720;
  }

  else
  {
    v7 = 0x20000001F1FFB098uLL;
    sub_1AB163664();
    swift_allocError();
    *v8 = 0xD00000000000001FLL;
    *(v8 + 8) = 0x80000001AB50A5F0;
  }

  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  return swift_willThrow();
}

uint64_t sub_1AB350AAC(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1AB350AC0(a1, a2);
  }

  return a1;
}

uint64_t sub_1AB350AC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t AnyActionTypes.init(types:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

void AnyActionTypes.makeInstance(ofKind:byDeserializing:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v74 = a5;
  v12 = sub_1AB4616B4();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v63 - v18;
  v20 = *a4;
  v22 = *v7;
  v21 = v7[1];
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (*(v22 + 16))
    {
      v23 = sub_1AB014DB4(a1, a2);
      if (v24)
      {
        v25 = *(v22 + 56) + 24 * v23;
        v26 = *(v25 + 16);
        v65 = *v25;
        sub_1AB0B9254(a3, v67);
        v66[0] = v20;
        v27 = *(v26 + 8);
        v71 = v65;
        v72 = v26;
        __swift_allocate_boxed_opaque_existential_0(v70);

        goto LABEL_9;
      }
    }

LABEL_12:
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488) | 0x6000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v39 = a1;
    v39[1] = a2;
    v39[2] = v38;
    v39[3] = 0;
    swift_willThrow();

    return;
  }

  v64 = v17;
  *&v65 = v16;
  v28 = (*(*((v21 & 0x7FFFFFFFFFFFFFFFLL) + 8) + 16))(v22);
  if (!*(v28 + 16) || (v29 = sub_1AB014DB4(a1, a2), (v30 & 1) == 0))
  {

    goto LABEL_12;
  }

  v31 = *(*(v28 + 56) + 8 * v29);

  v32 = dynamic_cast_existential_2_conditional(v31);
  if (v32)
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
    sub_1AB0B9254(a3, v67);
    v66[0] = v20;
    v27 = *(v37 + 8);
    *&v71 = v35;
    *(&v71 + 1) = v36;
    v72 = v37;
    __swift_allocate_boxed_opaque_existential_0(v70);

LABEL_9:
    v27(v67, v66);
    if (v6)
    {
      __swift_deallocate_boxed_opaque_existential_2(v70);
    }

    else
    {
      v65 = v71;
      v40 = v71;
      v41 = __swift_project_boxed_opaque_existential_1Tm(v70, v71);
      v42 = v74;
      *(v74 + 24) = v65;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
      (*(*(v40 - 8) + 16))(boxed_opaque_existential_0, v41, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
    }

    return;
  }

  v44 = dynamic_cast_existential_2_conditional(v31);
  if (v44)
  {
    v47 = v44;
    v48 = v45;
    v49 = v46;
    sub_1AB0B9254(a3, v70);
    v67[0] = v20;

    v72 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v67);
    v73 = MEMORY[0x1E69E7CC0];
    v66[3] = &type metadata for _JSONObjectDecoder;
    v66[4] = sub_1AB0BB6F8();
    v66[0] = swift_allocObject();
    sub_1AB0BB74C(v70, v66[0] + 16);
    *&v68 = v47;
    *(&v68 + 1) = v48;
    v69 = v49;
    __swift_allocate_boxed_opaque_existential_0(v67);
    sub_1AB460E14();
    if (v6)
    {
      sub_1AB0BCB6C(v70);
      __swift_deallocate_boxed_opaque_existential_2(v67);
      v70[0] = v6;
      v50 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
      if (swift_dynamicCast())
      {

        v51 = v64;
        v52 = v65;
        (*(v64 + 32))(v15, v19, v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1AB4D4720;
        *(v53 + 32) = swift_allocError();
        (*(v51 + 16))(v54, v15, v52);
        sub_1AB163664();
        swift_allocError();
        *v55 = v47;
        v55[1] = v53;
        v55[2] = 0;
        v55[3] = 0;
        swift_willThrow();
        (*(v51 + 8))(v15, v52);
      }
    }

    else
    {
      v65 = v68;
      v59 = v68;
      v60 = __swift_project_boxed_opaque_existential_1Tm(v67, v68);
      v61 = v74;
      *(v74 + 24) = v65;
      v62 = __swift_allocate_boxed_opaque_existential_0(v61);
      (*(*(v59 - 8) + 16))(v62, v60, v59);
      sub_1AB0BCB6C(v70);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
    }
  }

  else
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488);
    sub_1AB163664();
    swift_allocError();
    v57 = MEMORY[0x1E69E7CC0];
    *v58 = v56;
    v58[1] = v57;
    v58[2] = 0;
    v58[3] = 0;
    swift_willThrow();
  }
}

double static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1AB014A58(a1, v10, &qword_1EB436BA0);
  v6 = v11;
  if (v11)
  {
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = (*(v7 + 128))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    if ((v8 & 1) == 0)
    {
      v10[0] = v5;
      static AnyActionTypes.makeInstance(byDeserializing:using:)(a1, v10, a3);
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v10, &qword_1EB436BA0);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t static AnyActionTypes.makeInstances(byDeserializing:using:)(void *a1, void *a2)
{
  v7[2] = *a2;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  v4 = *(v3 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488);
  return v4(sub_1AB351878, v7, v5, v2, v3);
}

uint64_t static AnyActionTypes.tryToMakeInstances(byDeserializing:using:)(void *a1, void *a2)
{
  v7[2] = *a2;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  v4 = *(v3 + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488);
  return v4(sub_1AB3518A4, v7, v5, v2, v3);
}

uint64_t ActionTypes.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB43B378);
  swift_getTupleTypeMetadata2();
  v7 = sub_1AB4609A4();
  sub_1AB06D700(v7, a1, v6, a2);

  sub_1AB4603C4();
  v8 = sub_1AB02FFC0();

  *a3 = v8;
  return result;
}

uint64_t ActionTypes.registering(_:toKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = *v5;
  *a5 = v14;
  (*(v15 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v11, v12);
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[0] = v14;

  v18[0] = sub_1AB0CAEC4(a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB43B378);
  sub_1AB4603C4();
  sub_1AB460424();
  sub_1AB3518D8(v18[0], a4);
}

uint64_t ActionTypes.makeInstance(ofKind:byDeserializing:using:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v22[0] = *v4;
  sub_1AB0CAEC4(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43B378);
  sub_1AB460414();

  v9 = v23;
  if (v23)
  {
    v11 = v24;
    v10 = v25;
    sub_1AB0B9254(a1, v22);
    v21 = v8;
    v12 = *(v10 + 8);
    *&v26 = v9;
    *(&v26 + 1) = v11;
    v27 = v10;
    __swift_allocate_boxed_opaque_existential_0(&v23);

    v12(v22, &v21, v9, v10);
    if (v5)
    {
      return __swift_deallocate_boxed_opaque_existential_2(&v23);
    }

    else
    {
      v20 = v26;
      v17 = v26;
      v18 = __swift_project_boxed_opaque_existential_1Tm(&v23, v26);
      *(a4 + 24) = v20;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v23);
    }
  }

  else
  {
    sub_1AB4608B4();
    v14 = v24;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488) | 0x6000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v16 = 0;
    v16[1] = v14;
    v16[2] = v15;
    v16[3] = 0;
    return swift_willThrow();
  }
}

void sub_1AB3518D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB43B378);
  sub_1AB4603C4();
  sub_1AB01A1F0(sub_1AB351A74, v4, v3);
}

uint64_t sub_1AB351994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AB3519F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AB351A74(void *a1)
{
  v3 = *(v1 + 40);

  *a1 = v3;
}

uint64_t OpenIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v18);
  sub_1AB01EC0C(v18, v15);
  v7 = v16;
  if (!v16)
  {

    sub_1AB066D84(v18);
    sub_1AB014AC0(v15, &qword_1EB436BA0);
LABEL_7:
    v13 = type metadata accessor for OpenIntent() | 0x2000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v14 = xmmword_1AB4E9720;
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v8 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  v9 = (*(v8 + 24))(v7, v8);
  v11 = v10;
  sub_1AB066D84(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (!v11)
  {

    goto LABEL_7;
  }

  sub_1AB0B9254(a1, v18);
  v19 = v6;
  ScalarDictionary.init(deserializing:using:)(v18, v15);
  result = sub_1AB066D84(a1);
  if (v3)
  {
  }

  *a3 = v15[0];
  a3[1] = v9;
  a3[2] = v11;
  return result;
}

uint64_t OpenIntent.kind.getter()
{
  v0 = sub_1AB352414();

  return v0;
}

uint64_t sub_1AB351DB4()
{
  v0 = sub_1AB352414();

  return v0;
}

uint64_t OpenIntentModifier.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v16[0] = *(a2 - 8);
  v16[1] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v13;
  v12 = v19;

  sub_1AB09AE18(0xD000000000000027, 0x80000001AB4FFF70, v17);
  sub_1AB014AC0(v17, &unk_1EB437E60);
  sub_1AB0B9254(a1, v17);
  ScalarDictionary.init(tryDeserializing:using:)(v17, &v19, &v18);
  *a5 = v18;
  sub_1AB0B9254(a1, v17);
  v18 = v12;
  (*(a3 + 8))(v17, &v18, a2, a3);
  sub_1AB066D84(a1);
  if (v5)
  {
  }

  v15 = type metadata accessor for OpenIntentModifier();
  return (*(v16[0] + 32))(&a5[*(v15 + 44)], v11, a2);
}

uint64_t OpenIntentModifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC8];
  v6 = type metadata accessor for OpenIntentModifier();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 44);

  return v7(v8, a1, a2);
}

uint64_t OpenIntentModifier.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2 + *(v8 + 44), v3, v5);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

JSValue __swiftcall OpenIntentModifier.makeValue(in:)(JSContext in)
{
  v3 = v1;
  v5 = sub_1AB175808(in.super.isa, *v2);
  v6 = (*(*(*(v3 + 32) + 8) + 24))(in.super.isa, *(v3 + 16));
  result.super.isa = JSValue.propertyNames.getter();
  isa = result.super.isa;
  v9 = *(result.super.isa + 2);
  if (v9)
  {
    v10 = 0;
    v11 = result.super.isa + 40;
    while (v10 < *(isa + 2))
    {

      v12 = sub_1AB460514();
      v13 = [v5 valueForProperty_];

      if (!v13)
      {
        goto LABEL_8;
      }

      ++v10;
      v14 = v13;
      v15 = sub_1AB460514();

      [v6 setValue:v14 forProperty:v15];

      v11 += 16;
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_6:

    return v6;
  }

  return result;
}

uint64_t sub_1AB352454()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB352490()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AMSInMemoryMetricsEventRecorder.__allocating_init(metrics:maximumBatchSize:flushTimeInterval:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = sub_1AB353A68(a1, a2, a3, a4 & 1);

  return v8;
}

uint64_t AMSInMemoryMetricsEventRecorder.init(metrics:maximumBatchSize:flushTimeInterval:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1AB353A68(a1, a2, a3, a4 & 1);

  return v5;
}

uint64_t AMSInMemoryMetricsEventRecorder.__allocating_init(bag:topic:)(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 profile];
  sub_1AB460544();

  v7 = [v5 profileVersion];
  sub_1AB460544();

  v8 = objc_allocWithZone(MEMORY[0x1E698CA00]);
  swift_unknownObjectRetain();
  v9 = sub_1AB460514();

  v10 = [v8 initWithContainerID:v9 bag:v5];

  swift_unknownObjectRelease();
  v47 = AMSMetrics.withRemoteInspection.getter();

  v48 = a2;
  v11 = sub_1AB0D56EC(0x686374614278616DLL, 0xEC000000657A6953, a2, a3);
  v12 = *(v11 + 16);
  v13 = v11 + 32;
  result = swift_unknownObjectRetain_n();
  if (v12)
  {
    v44 = v11;
    v45 = a3;
    v15 = 0;
    while (1)
    {
      v16 = *(v13 + 8 * v15);
      v17 = [v5 integerForKey_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4386C0);
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = sub_1AB0D08A8;
      v18[4] = 0;
      sub_1AB163D2C();
      LOBYTE(v17) = v19;

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (v12 == ++v15)
      {
        goto LABEL_7;
      }
    }

    v12 = v15;
LABEL_7:
    v11 = v44;
    a3 = v45;
  }

  v20 = *(v11 + 16);
  if (v12 == v20)
  {

    swift_unknownObjectRelease_n();
    v46 = 1000;
  }

  else
  {
    if (v12 >= v20)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v21 = *(v13 + 8 * v12);
    v22 = [v5 integerForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4386C0);
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_1AB0D08A8;
    v23[4] = 0;
    v24 = sub_1AB163D2C();
    v26 = v25;

    result = swift_unknownObjectRelease_n();
    if (v26)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v46 = v24;
  }

  v27 = sub_1AB0D56EC(0x7165724674736F70, 0xED000079636E6575, v48, a3);

  v28 = *(v27 + 16);
  v49 = v27;
  v29 = v27 + 32;
  result = swift_unknownObjectRetain();
  if (v28)
  {
    v30 = 0;
    while (1)
    {
      v31 = *(v29 + 8 * v30);
      v32 = [v5 doubleForKey_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = sub_1AB07DCEC;
      v33[4] = 0;
      sub_1AB163D2C();
      LOBYTE(v32) = v34;

      if ((v32 & 1) == 0)
      {
        break;
      }

      if (v28 == ++v30)
      {
        goto LABEL_19;
      }
    }

    v28 = v30;
  }

LABEL_19:
  v35 = *(v49 + 16);
  if (v28 == v35)
  {
    swift_unknownObjectRelease();

    v36 = 60000.0;
LABEL_24:
    swift_unknownObjectRelease();
    swift_allocObject();
    v43 = sub_1AB353A68(v47, v46, COERCE__INT64(v36 / 1000.0), 0);

    return v43;
  }

  if (v28 >= v35)
  {
    goto LABEL_26;
  }

  v37 = *(v29 + 8 * v28);
  v38 = [v5 doubleForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_1AB07DCEC;
  v39[4] = 0;
  v40 = sub_1AB163D2C();
  v42 = v41;

  result = swift_unknownObjectRelease();
  if ((v42 & 1) == 0)
  {

    v36 = *&v40;
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

Swift::Void __swiftcall AMSInMemoryMetricsEventRecorder.record(_:on:)(JetEngine::LintedMetricsEvent _, Swift::String_optional on)
{
  v3 = v2;
  countAndFlagsBits = on.value._countAndFlagsBits;
  v5 = sub_1AB4601B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (countAndFlagsBits)
  {
    v26 = v11;
    v27 = v10;
    v28 = v6;
    v14 = objc_allocWithZone(MEMORY[0x1E698CA08]);
    v15 = sub_1AB460514();
    v16 = [v14 initWithTopic_];

    v17 = v3[6];
    v18 = v3[7];
    __swift_project_boxed_opaque_existential_1Tm(v3 + 3, v17);
    (*(v18 + 8))(&aBlock, v17, v18);
    v29 = aBlock;
    [v16 setAccount_];
    v19 = sub_1AB4602D4();
    [v16 addPropertiesWithDictionary_];

    v20 = v3[8];
    MEMORY[0x1EEE9AC00](v21);
    *(&v26 - 2) = v16;
    *(&v26 - 1) = v3;
    os_unfair_lock_lock((v20 + 24));
    sub_1AB353D7C((v20 + 16), &aBlock);
    os_unfair_lock_unlock((v20 + 24));
    v22 = aBlock;
    if (aBlock)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      *(v23 + 24) = v22;
      v35 = sub_1AB353D98;
      v36 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1AB01D528;
      v34 = &block_descriptor_33;
      v24 = _Block_copy(&aBlock);

      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      v30 = MEMORY[0x1E69E7CC0];
      sub_1AB0204F0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
      sub_1AB4614E4();
      MEMORY[0x1AC59C480](0, v13, v8, v24);

      _Block_release(v24);
      (*(v28 + 8))(v8, v5);
      (*(v26 + 8))(v13, v27);
    }

    else
    {
      v25 = v29;
      if (v32)
      {
        sub_1AB353280();
      }
    }
  }

  else
  {

    sub_1AB40658C("JetEngine/AMSInMemoryMetricsEventRecorder.swift", 0x2FuLL, 2, 0x44uLL);
  }
}

uint64_t sub_1AB352F10@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 >> 62)
  {
    v11 = a2;
    v12 = sub_1AB4618F4();
    a2 = v11;
    v7 = v12;
  }

  else
  {
    v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = a2;
  MEMORY[0x1AC59BC60]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AB460994();
  }

  sub_1AB4609E4();
  v9 = *a1;
  if (*a1 >> 62)
  {
    result = sub_1AB4618F4();
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= *(a3 + 88))
  {
    *a1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *(a4 + 8) = v7 == 0;
  return result;
}

uint64_t sub_1AB353030()
{
  v1 = *(v0 + 16);
  sub_1AB016760(0, &qword_1EB434E60);
  v2 = sub_1AB460934();
  v3 = [v1 flushEvents_];

  sub_1AB0D4408(v3);
  v18 = &type metadata for SyncTaskScheduler;
  v19 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8B8);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  v7 = swift_allocObject();
  v7[2] = sub_1AB2F37F4;
  v7[3] = 0;
  v7[4] = v4;
  v11 = sub_1AB2F3B3C;
  v12 = v7;
  v13 = sub_1AB353E24;
  v14 = v4;
  sub_1AB01494C(v17, v15);
  v16 = 0;
  swift_retain_n();

  sub_1AB0D482C(&v11);

  sub_1AB014AC0(&v11, &unk_1EB439860);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v8 = sub_1AB016760(0, &qword_1ED4D2060);
  v9 = sub_1AB461124();
  v18 = v8;
  v19 = &protocol witness table for OS_dispatch_queue;
  v17[0] = v9;
  v11 = sub_1AB3536C0;
  v12 = 0;
  v13 = sub_1AB2F35D0;
  v14 = 0;
  sub_1AB01494C(v17, v15);
  v16 = 0;
  sub_1AB19484C(&v11);
  sub_1AB014AC0(&v11, &unk_1EB4397F0);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v4;
}

void sub_1AB353280()
{
  v26 = sub_1AB4601B4();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB4601F4();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB460214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  if ((*(v0 + 80) & 1) == 0)
  {
    v23 = *(v0 + 96);
    sub_1AB460204();
    sub_1AB460234();
    v14 = *(v8 + 8);
    v24 = v8 + 8;
    v25 = v14;
    v14(v10, v7);
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1AB353E2C;
    aBlock[5] = v15;
    v22 = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB01D528;
    aBlock[3] = &block_descriptor_11_0;
    v21 = _Block_copy(aBlock);

    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1AB0204F0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    v20 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    v16 = v26;
    v17 = v27;
    v19 = v7;
    sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
    sub_1AB4614E4();
    v18 = v21;
    MEMORY[0x1AC59C430](v13, v6, v3, v21);
    _Block_release(v18);
    (*(v1 + 8))(v3, v16);
    (*(v17 + 8))(v6, v20);
    v25(v13, v19);
  }
}

uint64_t AMSInMemoryMetricsEventRecorder.flush()()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v1 + 24));
  v2 = sub_1AB353030();

  return v2;
}

uint64_t sub_1AB3536C0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v18 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0x2064656873756C46;
  v4._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v17[3] = MEMORY[0x1E69E6530];
  v17[0] = v1;
  sub_1AB01522C(v17, v13);
  v14 = 0u;
  v15 = 0u;
  sub_1AB0169C4(v13, &v14);
  v16 = 1;
  v5 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v9 = v14;
  v10 = v15;
  v8[64] = v16;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v18 = v5;
  sub_1AB014AC0(v17, &unk_1EB437E60);
  v11._countAndFlagsBits = 0x7363697274656D20;
  v11._object = 0xEF73746E65766520;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v3 + 32) = v18;
  *&v14 = v2;
  LOBYTE(v17[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v3, v17);
}

uint64_t sub_1AB3538BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 64);
    os_unfair_lock_lock((v1 + 24));
    *(v1 + 16) = MEMORY[0x1E69E7CC0];
    os_unfair_lock_unlock((v1 + 24));
    sub_1AB353030();
  }

  return result;
}

uint64_t AMSInMemoryMetricsEventRecorder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return v0;
}

uint64_t AMSInMemoryMetricsEventRecorder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB353A04()
{
  v1 = *(*v0 + 64);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v1 + 24));
  v2 = sub_1AB353030();

  return v2;
}

uint64_t sub_1AB353A68(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = a4;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v20 = sub_1AB461114();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B480);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 64) = v10;
  v12 = sub_1AB016760(0, &qword_1ED4D2060);
  v19[0] = "maximumBatchSize";
  v19[1] = v12;
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v25 = v11;
  sub_1AB0204F0(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v20);
  *(v4 + 96) = sub_1AB461154();
  v13 = v21;
  *(v4 + 16) = v21;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 ams_sharedAccountStore];
  *(v4 + 48) = sub_1AB016760(0, &qword_1ED4D1F60);
  *(v4 + 56) = &protocol witness table for ACAccountStore;
  *(v4 + 24) = v16;
  v17 = v23;
  *(v4 + 88) = v22;
  *(v4 + 72) = v17;
  *(v4 + 80) = v24 & 1;
  return v4;
}

uint64_t sub_1AB353D98()
{
  sub_1AB353030();
}

uint64_t sub_1AB353E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1AB353E94(a1, a2, a3);
  return v6;
}

uint64_t sub_1AB353E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB01494C(a1, v10);
  v11 = a2;
  v12 = a3;
  v7 = type metadata accessor for SingleUseClosureEventObserver.State();
  v8 = sub_1AB02FFC0();
  (*(*(v7 - 8) + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v3 + 16) = v8;
  return v3;
}

uint64_t sub_1AB353F54()
{
  v1 = v0[2];
  v3[2] = *(*v0 + 80);
  type metadata accessor for SingleUseClosureEventObserver.State();
  sub_1AB1AA5AC(sub_1AB354478, v3, v1);
  return v4;
}

uint64_t sub_1AB353FDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SingleUseClosureEventObserver.State();
  result = (*(*(v4 - 8) + 16))(v7, a1, v4);
  v6 = v8;
  if (v8)
  {

    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v6 = 1;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1AB354074(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - v5;
  v7 = v1[2];
  v23 = v3;
  v8 = type metadata accessor for SingleUseClosureEventObserver.State();
  sub_1AB01A1F0(sub_1AB35444C, v22, v7);
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v24, v31, v8);
  if (v25)
  {
    v10 = v27;
    v19 = v26;
    sub_1AB0149B0(&v24, v28);
    v11 = v30;
    v21 = v29;
    v20 = __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    (*(v4 + 16))(v6, a1, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    v14 = v19;
    *(v13 + 2) = v3;
    *(v13 + 3) = v14;
    *(v13 + 4) = v10;
    (*(v4 + 32))(&v13[v12], v6, v3);
    v15 = *(v11 + 8);

    v15(sub_1AB354494, v13, v21, v11);

    (*(v9 + 8))(v31, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    v17 = *(v9 + 8);
    v17(v31, v8);
    return v17(&v24, v8);
  }
}

uint64_t sub_1AB354320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB354370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1AB3543D0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

double sub_1AB35444C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

unint64_t sub_1AB354498()
{
  if (qword_1EB435DA0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB46C310;
  v1 = qword_1EB432590;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB432598;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0;
  sub_1AB355774(v2, sub_1AB355A18, 0, isUniquelyReferenced_nonNull_native, &v6);

  v4 = sub_1AB1583E4(v6);

  return v4;
}

unint64_t static ActionKindTable._table.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  if (qword_1EB432590 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB432598;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2;
  sub_1AB355774(v3, sub_1AB355A18, 0, isUniquelyReferenced_nonNull_native, &v7);

  v5 = sub_1AB1583E4(v7);

  return v5;
}

uint64_t sub_1AB3546B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = dynamic_cast_existential_2_conditional(a1);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v46 = a3;
    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    v15 = sub_1AB462214();
    JSONContext.init(userInfo:)(v15);
    v16 = v48[0];
    if (!sub_1AB3D9D18(0xD000000000000023, 0x80000001AB500830, v48[0]))
    {
      *&v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABD8);
      *&v50 = v3;
      *(&v50 + 1) = &off_1F200AB90;
      sub_1AB014B78(&v50, v49);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v48[0];
      sub_1AB01AE18(v49, 0xD000000000000023, 0x80000001AB500830, isUniquelyReferenced_nonNull_native);
      v18 = v53;

      v48[0] = v18;
      v16 = v18;
    }

    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v19);
    v53 = v16;

    v21 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v53);
    Decoder.withUserInfo(_:)(v21, v19, v20, v49);

    *&v51 = v12;
    *(&v51 + 1) = v13;
    v52 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v50);
    sub_1AB460E14();
    if (v4)
    {

      return __swift_deallocate_boxed_opaque_existential_2(&v50);
    }

    v44 = v51;
    v33 = v51;
    v34 = __swift_project_boxed_opaque_existential_1Tm(&v50, v51);
    *(v46 + 24) = v44;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
    (*(*(v33 - 8) + 16))(boxed_opaque_existential_0, v34, v33);
LABEL_12:

    return __swift_destroy_boxed_opaque_existential_1Tm(&v50);
  }

  v23 = dynamic_cast_existential_2_conditional(a1);
  if (v23)
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
    v47 = a3;
    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    v29 = sub_1AB462214();
    JSONContext.init(userInfo:)(v29);
    v30 = v53;
    sub_1AB3D8F30(0xD00000000000001FLL, 0x80000001AB50A5F0, v53, &v50);
    v31 = ~*(&v50 + 1) & 0xF000000000000007;
    sub_1AB350AAC(v50, *(&v50 + 1));
    if (!v31)
    {
      *&v51 = &type metadata for AnyActionTypes;
      *&v50 = v5;
      *(&v50 + 1) = 0x80000001F200AB90;
      sub_1AB014B78(&v50, v49);

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v30;
      sub_1AB01AE18(v49, 0xD00000000000001FLL, 0x80000001AB50A5F0, v32);

      v53 = v30;
    }

    sub_1AB01494C(a2, v48);
    JSONObject.init(from:)(v48, v49);
    if (v4)
    {
    }

    v48[0] = v30;
    v40 = *(v28 + 8);
    *&v51 = v26;
    *(&v51 + 1) = v27;
    v52 = v28;
    __swift_allocate_boxed_opaque_existential_0(&v50);

    v40(v49, v48, v26, v28);
    v45 = v51;
    v41 = v51;
    v42 = __swift_project_boxed_opaque_existential_1Tm(&v50, v51);
    *(v47 + 24) = v45;
    v43 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    goto LABEL_12;
  }

  v36 = sub_1AB4616B4();
  swift_allocError();
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
  *v38 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1AB4621E4();
  sub_1AB4615D4();

  *&v50 = 60;
  *(&v50 + 1) = 0xE100000000000000;
  v39 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v39);

  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB4FF3B0);
  sub_1AB461694();
  (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
  return swift_willThrow();
}

uint64_t static ActionKindTable._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = dynamic_cast_existential_2_conditional(a1);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v43 = a4;
    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    v15 = sub_1AB462214();
    JSONContext.init(userInfo:)(v15);
    v16 = v49[0];
    if (!sub_1AB3D9D18(0xD000000000000023, 0x80000001AB500830, v49[0]))
    {
      *&v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43ABD8);
      *&v51 = v46;
      *(&v51 + 1) = a3;
      sub_1AB014B78(&v51, v50);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v49[0];
      sub_1AB01AE18(v50, 0xD000000000000023, 0x80000001AB500830, isUniquelyReferenced_nonNull_native);
      v18 = v54;

      v49[0] = v18;
      v16 = v18;
    }

    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v19);
    v54 = v16;

    v21 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v54);
    Decoder.withUserInfo(_:)(v21, v19, v20, v50);

    *&v52 = v12;
    *(&v52 + 1) = v13;
    v53 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v51);
    sub_1AB460E14();
    if (v4)
    {

      return __swift_deallocate_boxed_opaque_existential_2(&v51);
    }

    v47 = v52;
    v32 = v52;
    v33 = __swift_project_boxed_opaque_existential_1Tm(&v51, v52);
    *(v43 + 24) = v47;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
    (*(*(v32 - 8) + 16))(boxed_opaque_existential_0, v33, v32);
LABEL_12:

    return __swift_destroy_boxed_opaque_existential_1Tm(&v51);
  }

  v23 = dynamic_cast_existential_2_conditional(a1);
  if (v23)
  {
    v26 = v23;
    v27 = v25;
    v44 = a4;
    v45 = v24;
    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    v28 = sub_1AB462214();
    JSONContext.init(userInfo:)(v28);
    v29 = v54;
    sub_1AB3D8F30(0xD00000000000001FLL, 0x80000001AB50A5F0, v54, &v51);
    v30 = *(&v51 + 1);
    sub_1AB350AAC(v51, *(&v51 + 1));
    if ((~v30 & 0xF000000000000007) == 0)
    {
      *&v52 = &type metadata for AnyActionTypes;
      *&v51 = v46;
      *(&v51 + 1) = a3 | 0x8000000000000000;
      sub_1AB014B78(&v51, v50);

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v29;
      sub_1AB01AE18(v50, 0xD00000000000001FLL, 0x80000001AB50A5F0, v31);

      v54 = v29;
    }

    sub_1AB01494C(a2, v49);
    JSONObject.init(from:)(v49, v50);
    if (v4)
    {
    }

    v49[0] = v29;
    v39 = *(v27 + 8);
    *&v52 = v26;
    *(&v52 + 1) = v45;
    v53 = v27;
    __swift_allocate_boxed_opaque_existential_0(&v51);

    v39(v50, v49, v26, v27);
    v48 = v52;
    v40 = v52;
    v41 = __swift_project_boxed_opaque_existential_1Tm(&v51, v52);
    *(v44 + 24) = v48;
    v42 = __swift_allocate_boxed_opaque_existential_0(v44);
    (*(*(v40 - 8) + 16))(v42, v41, v40);
    goto LABEL_12;
  }

  v35 = sub_1AB4616B4();
  swift_allocError();
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
  *v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1AB4621E4();
  sub_1AB4615D4();

  *&v51 = 60;
  *(&v51 + 1) = 0xE100000000000000;
  v38 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v38);

  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB4FF3B0);
  sub_1AB461694();
  (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
  return swift_willThrow();
}

unint64_t sub_1AB355194()
{
  result = sub_1AB3551B4();
  qword_1EB432598 = result;
  return result;
}

unint64_t sub_1AB3551B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4190;
  strcpy((inited + 32), "closureAction");
  *(inited + 46) = -4864;
  *(inited + 48) = &type metadata for ClosureAction;
  *(inited + 56) = &protocol witness table for ClosureAction;
  strcpy((inited + 64), "compoundAction");
  *(inited + 79) = -18;
  *(inited + 80) = &type metadata for CompoundAction;
  *(inited + 88) = &protocol witness table for CompoundAction;
  *(inited + 96) = 0x7463417974706D65;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = &type metadata for EmptyAction;
  *(inited + 120) = &protocol witness table for EmptyAction;
  v1 = sub_1AB1DA514(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B490);
  swift_arrayDestroy();
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1AB4DE170;
  *(v2 + 32) = 0x7463417472656C61;
  *(v2 + 40) = 0xEB000000006E6F69;
  *(v2 + 48) = &type metadata for Models.AlertAction;
  *(v2 + 56) = &protocol witness table for Models.AlertAction;
  *(v2 + 64) = 0xD000000000000011;
  *(v2 + 72) = 0x80000001AB50A6F0;
  *(v2 + 80) = type metadata accessor for Models.ExternalURLAction();
  *(v2 + 88) = &protocol witness table for Models.ExternalURLAction;
  *(v2 + 96) = 0x6974634170747468;
  *(v2 + 104) = 0xEA00000000006E6FLL;
  *(v2 + 112) = type metadata accessor for Models.HTTPAction();
  *(v2 + 120) = &protocol witness table for Models.HTTPAction;
  *(v2 + 128) = 0xD000000000000012;
  *(v2 + 136) = 0x80000001AB50A710;
  *(v2 + 144) = type metadata accessor for Models.HTTPTemplateAction();
  *(v2 + 152) = &protocol witness table for Models.HTTPTemplateAction;
  *(v2 + 160) = 0x7463417473616F74;
  *(v2 + 168) = 0xEB000000006E6F69;
  *(v2 + 176) = &type metadata for Models.ToastAction;
  *(v2 + 184) = &protocol witness table for Models.ToastAction;
  v3 = sub_1AB1DA514(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1;
  sub_1AB3554F4(v3, sub_1AB355A18, 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

uint64_t _defaultActionKindLookup.getter()
{
  if (qword_1EB432590 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AB3554D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

uint64_t sub_1AB3554F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v37 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v41[0] = *v16;
    v41[1] = v17;
    v42 = *(v15 + v14);

    a2(&v38, v41);

    v18 = v38;
    v19 = v39;
    v36 = v40;
    v20 = *v43;
    v22 = sub_1AB014DB4(v38, v39);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = v21;
    if (v20[3] >= v23 + v24)
    {
      if ((v37 & 1) == 0)
      {
        sub_1AB1DB6F0();
      }
    }

    else
    {
      sub_1AB1DB6F8();
      v26 = sub_1AB014DB4(v18, v19);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v22 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v43;
    if (v25)
    {

      *(v28[7] + 16 * v22) = v36;
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v29 = (v28[6] + 16 * v22);
      *v29 = v18;
      v29[1] = v19;
      *(v28[7] + 16 * v22) = v36;
      v30 = v28[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v28[2] = v32;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1AB0309A4();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v37 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB355774(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    a2(&v39, v42);

    v18 = v39;
    v19 = v40;
    v36 = v41;
    v20 = *v44;
    v22 = sub_1AB014DB4(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = v21;
    if (v20[3] >= v23 + v24)
    {
      if ((v38 & 1) == 0)
      {
        sub_1AB1DB6F0();
      }
    }

    else
    {
      sub_1AB1DB6F8();
      v26 = sub_1AB014DB4(v18, v19);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v22 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v44;
    if (v25)
    {
      v37 = *(v28[7] + 16 * v22);

      *(v28[7] + 16 * v22) = v37;
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v29 = (v28[6] + 16 * v22);
      *v29 = v18;
      v29[1] = v19;
      *(v28[7] + 16 * v22) = v36;
      v30 = v28[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v28[2] = v32;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1AB0309A4();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB355A38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = sub_1AB45F0A4();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1AB355B3C;

  return URLRequestEncoder.encodeRequest(fromContentsOf:)(v5, a2);
}

uint64_t sub_1AB355B3C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AB3252E0;
  }

  else
  {
    v2 = sub_1AB355C50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB355C50()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = objc_allocWithZone(MEMORY[0x1E698CB80]);
  v5 = sub_1AB45F024();
  (*(v2 + 8))(v1, v3);
  v6 = [v4 initWithRequest_];

  if (v6)
  {
    **(v0 + 16) = v6;

    v7 = *(v0 + 8);

    v7();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB355D28()
{
  sub_1AB01EC0C(v0, v9);
  v1 = v10;
  if (!v10)
  {
    sub_1AB18977C(v9);
LABEL_5:
    v3 = 0x40000001F201BED8uLL;
    sub_1AB163664();
    swift_allocError();
    *v6 = xmmword_1AB4EC9F0;
    v7 = MEMORY[0x1E69E7CC0];
    *(v6 + 16) = 0x40000001F201BED8uLL;
    *(v6 + 24) = v7;
    swift_willThrow();
    return v3;
  }

  v2 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  v3 = (*(v2 + 24))(v1, v2);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if (!v5)
  {
    goto LABEL_5;
  }

  return v3;
}

uint64_t sub_1AB355E14()
{
  sub_1AB01EC0C(v0, v9);
  v1 = v10;
  if (!v10)
  {
    sub_1AB18977C(v9);
LABEL_5:
    v3 = 0x40000001F200E610uLL;
    sub_1AB163664();
    swift_allocError();
    *v6 = xmmword_1AB4EC9F0;
    v7 = MEMORY[0x1E69E7CC0];
    *(v6 + 16) = 0x40000001F200E610uLL;
    *(v6 + 24) = v7;
    swift_willThrow();
    return v3;
  }

  v2 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  v3 = (*(v2 + 24))(v1, v2);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if (!v5)
  {
    goto LABEL_5;
  }

  return v3;
}

__n128 Models.FlowBackAction.init(actionMetrics:dismissal:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t Models.FlowBackAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 Models.FlowBackAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t Models.FlowBackAction.dismissal.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.FlowBackAction.dismissal.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1AB35619C()
{
  if (*v0)
  {
    return 0x617373696D736964;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1AB3561E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xE90000000000006CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AB3562D4(uint64_t a1)
{
  v2 = sub_1AB356514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB356310(uint64_t a1)
{
  v2 = sub_1AB356514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.FlowBackAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B498);
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB356514();

  sub_1AB462274();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  sub_1AB24CA70();
  sub_1AB461BF4();

  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_1AB356568();
    sub_1AB461BF4();
  }

  return (*(v14 + 8))(v6, v4);
}

unint64_t sub_1AB356514()
{
  result = qword_1EB43B4A0;
  if (!qword_1EB43B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B4A0);
  }

  return result;
}

unint64_t sub_1AB356568()
{
  result = qword_1EB43B4A8;
  if (!qword_1EB43B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B4A8);
  }

  return result;
}

uint64_t Models.FlowBackAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B4B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB356514();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  sub_1AB24CE74();
  sub_1AB461AC4();
  v9 = v14;
  v10 = v15;
  v16 = 1;
  sub_1AB3567D8();
  sub_1AB461AC4();
  (*(v6 + 8))(v8, v5);
  v11 = v14;
  v12 = v15;
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB3567D8()
{
  result = qword_1EB43B4B8;
  if (!qword_1EB43B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B4B8);
  }

  return result;
}

uint64_t Models.FlowBackAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v16);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v15);

  v7 = sub_1AB37F7F4(v15, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v15);
  v14 = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v15, &v14, &v17);
  sub_1AB066D84(v16);
  v8 = v17;
  JSONObject.subscript.getter(0x617373696D736964, 0xE90000000000006CLL, v16);
  v9 = sub_1AB355E14();
  if (v3)
  {

    sub_1AB066D84(a1);
    return sub_1AB066D84(v16);
  }

  else
  {
    v12 = v9;
    v13 = v10;
    sub_1AB066D84(a1);
    result = sub_1AB066D84(v16);
    *a3 = v7;
    a3[1] = v8;
    a3[2] = v12;
    a3[3] = v13;
  }

  return result;
}

unint64_t sub_1AB3569C4()
{
  result = qword_1EB43B4C0;
  if (!qword_1EB43B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B4C0);
  }

  return result;
}

unint64_t sub_1AB356A4C()
{
  result = qword_1EB43B4C8;
  if (!qword_1EB43B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B4C8);
  }

  return result;
}

unint64_t sub_1AB356AA4()
{
  result = qword_1EB43B4D0;
  if (!qword_1EB43B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B4D0);
  }

  return result;
}

unint64_t sub_1AB356AFC()
{
  result = qword_1EB43B4D8;
  if (!qword_1EB43B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B4D8);
  }

  return result;
}

unint64_t sub_1AB356B50()
{
  result = qword_1EB43B4E0[0];
  if (!qword_1EB43B4E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB43B4E0);
  }

  return result;
}

uint64_t sub_1AB356BA4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_1AB0149B0(a1, a3);
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a3 + 48) = a2;
  return result;
}

uint64_t sub_1AB356C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = v2[3];
    v11 = v2[4];
    __swift_project_boxed_opaque_existential_1Tm(v2, v10);
    v12 = v2[6];
    (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = v4;
    *(v14 + 3) = v9;
    *(v14 + 4) = v12;
    (*(v5 + 32))(&v14[v13], v7, v4);
    v15 = *(v11 + 8);
    swift_unknownObjectRetain();
    v15(sub_1AB356F7C, v14, v10, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1AB356D9C(void *a1, uint64_t a2)
{
  v4 = sub_1AB461D84();
  [swift_unknownObjectRetain() performSelector:a2 withObject:v4];
  swift_unknownObjectRelease();
  return a1;
}

uint64_t EventEmitter.addObserver(on:target:selector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AB01494C(a1, v12);
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  sub_1AB356BA4(v12, a3, v13);
  v8 = *(a5 + 24);
  v9 = type metadata accessor for NSObjectEventObserver();
  WitnessTable = swift_getWitnessTable();
  v8(v13, v9, WitnessTable, a4, a5);
  return (*(*(v9 - 8) + 8))(v13, v9);
}

uint64_t sub_1AB356F40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB356FBC()
{
  if ([v0 isString])
  {
    return 0;
  }

  if ([v0 isNumber])
  {
    return 1;
  }

  if ([v0 isArray])
  {
    return 3;
  }

  if ([v0 isBoolean])
  {
    return 4;
  }

  if ([v0 isNull])
  {
    return 5;
  }

  if (JSValue.isJSONObject.getter())
  {
    return 2;
  }

  return 6;
}

id static JSValue.deserializedJSON(_:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AB08C510(a1, a2);
  v5 = JSValueMakeFromJSONString([a3 JSGlobalContextRef], v4);
  if (v5)
  {
    v6 = [objc_opt_self() valueWithJSValueRef:v5 inContext:a3];
  }

  else
  {
    v6 = 0;
  }

  JSStringRelease(v4);
  return v6;
}

Swift::String_optional __swiftcall JSValue.serializedJSON(indent:)(Swift::UInt32 indent)
{
  v3 = [v1 context];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v3;
  v6 = [(__CFString *)v3 JSGlobalContextRef];

  JSONString = JSValueCreateJSONString(v6, [v1 JSValueRef], indent, 0);
  if (!JSONString)
  {
    v10 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v8 = JSONString;
  v3 = JSStringCopyCFString(*MEMORY[0x1E695E480], JSONString);
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v3;
  v10 = sub_1AB460544();
  v12 = v11;

  JSStringRelease(v8);
LABEL_6:
  v3 = v10;
  v4 = v12;
LABEL_9:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_1AB357214()
{
  result = qword_1EB43B568;
  if (!qword_1EB43B568)
  {
    sub_1AB45FBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B568);
  }

  return result;
}

uint64_t sub_1AB35726C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v43 = a1;
  v3 = sub_1AB4601B4();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1AB4601F4();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB461114();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB015664();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8098], v9);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  v37 = v8;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = sub_1AB461154();
  v15 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B5B0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439788);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  v18[2] = v43;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AB35A038;
  *(v19 + 24) = v18;
  v49 = sub_1AB0ACE50;
  v50 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1AB0C2388;
  v48 = &block_descriptor_71;
  v20 = _Block_copy(&aBlock);

  v21 = v15;

  v22 = v14;

  dispatch_sync(v22, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8B8);
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v24 + 16) = v25;
    v26 = MEMORY[0x1E69E7CC0];
    *(v24 + 24) = MEMORY[0x1E69E7CC0];
    *(v24 + 32) = 0;
    v27 = swift_allocObject();
    v28 = v35;
    v27[2] = v24;
    v27[3] = v28;
    v43 = v22;
    v27[4] = v36;
    v27[5] = v16;
    v27[6] = v17;
    v49 = sub_1AB35A050;
    v50 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1AB01D528;
    v48 = &block_descriptor_77;
    v29 = _Block_copy(&aBlock);

    v36 = v16;
    v30 = v21;
    v31 = v37;
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v44 = v26;
    sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
    v32 = v40;
    v33 = v42;
    sub_1AB4614E4();
    v34 = v43;
    sub_1AB4610C4();
    _Block_release(v29);

    (*(v41 + 8))(v32, v33);
    (*(v38 + 8))(v31, v39);

    return v24;
  }

  return result;
}

uint64_t sub_1AB357974(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v43 = a1;
  v3 = sub_1AB4601B4();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1AB4601F4();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB461114();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB015664();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8098], v9);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  v37 = v8;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = sub_1AB461154();
  v15 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B580);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439788);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  v18[2] = v43;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1AB359ED4;
  *(v19 + 24) = v18;
  v49 = sub_1AB0ACE50;
  v50 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1AB0C2388;
  v48 = &block_descriptor_21_2;
  v20 = _Block_copy(&aBlock);

  v21 = v15;

  v22 = v14;

  dispatch_sync(v22, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B588);
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v24 + 16) = v25;
    v26 = MEMORY[0x1E69E7CC0];
    *(v24 + 24) = MEMORY[0x1E69E7CC0];
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    v27 = swift_allocObject();
    v28 = v35;
    v27[2] = v24;
    v27[3] = v28;
    v43 = v22;
    v27[4] = v36;
    v27[5] = v16;
    v27[6] = v17;
    v49 = sub_1AB359EEC;
    v50 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1AB01D528;
    v48 = &block_descriptor_27_1;
    v29 = _Block_copy(&aBlock);

    v36 = v16;
    v30 = v21;
    v31 = v37;
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v44 = v26;
    sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
    sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
    v32 = v40;
    v33 = v42;
    sub_1AB4614E4();
    v34 = v43;
    sub_1AB4610C4();
    _Block_release(v29);

    (*(v41 + 8))(v32, v33);
    (*(v38 + 8))(v31, v39);

    return v24;
  }

  return result;
}

uint64_t sub_1AB358080(uint64_t a1)
{
  v2 = sub_1AB4614F4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1AB359FC0(v2, *(a1 + 36), 0, a1);

  return v4;
}

unint64_t sub_1AB3580FC(unint64_t result, NSObject *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = result;
  if (result >> 62)
  {
    result = sub_1AB4618F4();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v17 = v9 & 0xC000000000000001;
    v12 = v9;
    do
    {
      if (v17)
      {
        MEMORY[0x1AC59C990](v11, v9);
      }

      else
      {
      }

      ++v11;
      dispatch_group_enter(a2);
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a2;
      v14 = swift_allocObject();
      *(v14 + 16) = a4;
      *(v14 + 24) = a2;
      v20[3] = sub_1AB015664();
      v20[4] = &protocol witness table for OS_dispatch_queue;
      v20[0] = a5;
      v18[0] = sub_1AB35A068;
      v18[1] = v13;
      v18[2] = sub_1AB2AB3D0;
      v18[3] = v14;
      sub_1AB01494C(v20, v19);
      v19[40] = 0;
      v15 = a2;

      v16 = a5;

      sub_1AB19484C(v18);

      sub_1AB014AC0(v18, &unk_1EB4397F0);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v9 = v12;
    }

    while (v10 != v11);
  }

  return result;
}

unint64_t sub_1AB3582DC(unint64_t result, NSObject *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = result;
  if (result >> 62)
  {
    result = sub_1AB4618F4();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v17 = v9 & 0xC000000000000001;
    v12 = v9;
    do
    {
      if (v17)
      {
        MEMORY[0x1AC59C990](v11, v9);
      }

      else
      {
      }

      ++v11;
      dispatch_group_enter(a2);
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a2;
      v14 = swift_allocObject();
      *(v14 + 16) = a4;
      *(v14 + 24) = a2;
      v20[3] = sub_1AB015664();
      v20[4] = &protocol witness table for OS_dispatch_queue;
      v20[0] = a5;
      v18[0] = sub_1AB359FB8;
      v18[1] = v13;
      v18[2] = sub_1AB2AB050;
      v18[3] = v14;
      sub_1AB01494C(v20, v19);
      v19[40] = 0;
      v15 = a2;

      v16 = a5;

      sub_1AB198C28(v18);

      sub_1AB014AC0(v18, &unk_1EB4376D0);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v9 = v12;
    }

    while (v10 != v11);
  }

  return result;
}

void sub_1AB3584BC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock((a4 + 24));
  v8 = *(a4 + 16);

  os_unfair_lock_unlock((a4 + 24));
  os_unfair_lock_lock((a5 + 24));
  v9 = *(a5 + 16);

  os_unfair_lock_unlock((a5 + 24));
  a2(v8, v9);

  sub_1AB42EC48();
}

void sub_1AB3585B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock((a4 + 24));
  v8 = *(a4 + 16);

  os_unfair_lock_unlock((a4 + 24));
  os_unfair_lock_lock((a5 + 24));
  v9 = *(a5 + 16);

  os_unfair_lock_unlock((a5 + 24));
  a2(&v10, v8, v9);

  sub_1AB42EE80(v10);
}

uint64_t sub_1AB3586B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock((a4 + 24));
  v8 = *(a4 + 16);

  os_unfair_lock_unlock((a4 + 24));
  os_unfair_lock_lock((a5 + 24));
  v9 = *(a5 + 16);

  os_unfair_lock_unlock((a5 + 24));
  a2(v11, v8, v9);

  sub_1AB435740(v11[0], v11[1], v11[2]);
}

uint64_t CompoundMetricsEventRecorder.__allocating_init(recorders:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CompoundMetricsEventRecorder.init(recorders:)(a1);
  return v2;
}

uint64_t CompoundMetricsEventRecorder.init(recorders:)(uint64_t a1)
{
  v12 = sub_1AB461114();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v7);
  *(v1 + 16) = a1;
  v8 = sub_1AB015664();
  v11[0] = "httpTemplateAction";
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437660);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  sub_1AB4610D4();
  v13 = v9;
  sub_1AB01CA90(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v12);
  *(v1 + 24) = sub_1AB461154();
  return v1;
}

uint64_t CompoundMetricsEventRecorder.add(_:)(uint64_t a1)
{
  v2 = v1;
  v14[0] = a1;
  v15 = sub_1AB4601F4();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB4601B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  sub_1AB4601A4();
  aBlock[0] = v10;
  sub_1AB01CA90(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
  sub_1AB4614E4();
  sub_1AB01494C(v14[0], v17);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  sub_1AB0149B0(v17, v11 + 24);
  aBlock[4] = sub_1AB358F34;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_34;
  v12 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  MEMORY[0x1AC59C480](0, v5, v9, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v15);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AB358E54(uint64_t a1, uint64_t a2)
{
  sub_1AB01494C(a2, v8);
  swift_beginAccess();
  v3 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1AB2B1698(0, v3[2] + 1, 1, v3);
    *(a1 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1AB2B1698((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  sub_1AB0149B0(v8, &v3[5 * v6 + 4]);
  *(a1 + 16) = v3;
  return swift_endAccess();
}

Swift::Void __swiftcall CompoundMetricsEventRecorder.record(_:on:)(JetEngine::LintedMetricsEvent _, Swift::String_optional on)
{
  v3 = v2;
  countAndFlagsBits = on.value._countAndFlagsBits;
  rawValue = _.issues._rawValue;
  v7 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  v8 = *(v2 + 24);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = rawValue;
  v9[6] = countAndFlagsBits;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AB3591BC;
  *(v10 + 24) = v9;
  v12[4] = sub_1AB021144;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1AB0C2388;
  v12[3] = &block_descriptor_9_2;
  v11 = _Block_copy(v12);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

uint64_t sub_1AB3590D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;

    do
    {
      sub_1AB01494C(v13, v17);
      v14 = v18;
      v15 = v19;
      __swift_project_boxed_opaque_existential_1Tm(v17, v18);
      v16[0] = a2;
      v16[1] = a3;
      (*(v15 + 8))(v16, a4, a5, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t CompoundMetricsEventRecorder._recordAsync(_:on:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B570);
  sub_1AB461134();
  v0 = sub_1AB0AD2F4(v2, sub_1AB3593F0, 0);

  return v0;
}

uint64_t sub_1AB359288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v19 = a6;
    v24 = MEMORY[0x1E69E7CC0];

    sub_1AB461754();
    v16 = v13 + 32;
    do
    {
      sub_1AB01494C(v16, v21);
      v17 = v22;
      v18 = v23;
      __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      v20[0] = a2;
      v20[1] = a3;
      (*(v18 + 16))(v20, a4, a5, v17, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      sub_1AB461724();
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      v16 += 40;
      --v14;
    }

    while (v14);

    v15 = v24;
    a6 = v19;
  }

  *a6 = v15;
  return result;
}

void sub_1AB3593F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1AB1BA4A4();
    swift_allocError();
    *v3 = a2;
    swift_willThrow();
  }
}

uint64_t CompoundMetricsEventRecorder.flush()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B578);
  sub_1AB461134();
  v0 = sub_1AB35726C(v2, sub_1AB35963C, 0);

  return v0;
}

uint64_t sub_1AB3594F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];

    sub_1AB461754();
    v8 = v5 + 32;
    do
    {
      sub_1AB01494C(v8, v11);
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_1Tm(v11, v12);
      (*(v10 + 24))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      sub_1AB461724();
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      v8 += 40;
      --v6;
    }

    while (v6);

    v7 = v14;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1AB35963C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    sub_1AB1BA4A4();
    swift_allocError();
    *v4 = a2;
    swift_willThrow();
  }

  else
  {
    v5 = *(result + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (result + 32);
      while (1)
      {
        v8 = *v7++;
        v9 = __OFADD__(v6, v8);
        v6 += v8;
        if (v9)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
      v6 = 0;
LABEL_9:
      *a3 = v6;
    }
  }

  return result;
}

uint64_t CompoundMetricsEventRecorder.deinit()
{

  return v0;
}

uint64_t sub_1AB35974C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B570);
  sub_1AB461134();
  v0 = sub_1AB0AD2F4(v2, sub_1AB3593F0, 0);

  return v0;
}

uint64_t sub_1AB359800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B578);
  sub_1AB461134();
  v0 = sub_1AB35726C(v2, sub_1AB35963C, 0);

  return v0;
}

uint64_t sub_1AB3598A4()
{
  v1 = MEMORY[0x1E69E7CD0];
  v31 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_1AB01494C(v4, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439C90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B5A0);
      if (swift_dynamicCast())
      {
        sub_1AB0149B0(v23, &v26);
        v6 = v29;
        v5 = v30;
        __swift_project_boxed_opaque_existential_1Tm(&v26, v29);
        v7 = (*(v5 + 8))(v6, v5);
        if (v8)
        {
          sub_1AB248C34(&v25, v7, v8);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v26);
      }

      else
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        sub_1AB014AC0(v23, &qword_1EB43B5A8);
      }

      v4 += 40;
      --v3;
    }

    while (v3);

    v1 = v31;
  }

  if (*(v1 + 16) >= 2uLL)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v12 = MEMORY[0x1E69E6158];
    v29 = MEMORY[0x1E69E6158];
    v26 = 0xD000000000000053;
    v27 = 0x80000001AB50A7A0;
    *(v11 + 48) = 0u;
    *(v11 + 32) = 0u;
    sub_1AB0169C4(&v26, v11 + 32);
    *(v11 + 64) = 0;
    *(v10 + 32) = v11;
    v13 = sub_1AB461094();
    if (os_log_type_enabled(v9, v13))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v14 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v14[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v14 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v16 = swift_allocObject();
      *(v16 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v26 = v10;
      v27 = sub_1AB01A8D8;
      v28 = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v17 = sub_1AB460484();
      v19 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      *(v20 + 56) = v12;
      *(v20 + 64) = sub_1AB016854();
      *(v20 + 32) = v17;
      *(v20 + 40) = v19;
      sub_1AB45FF14();
    }
  }

  v21 = sub_1AB358080(v1);

  return v21;
}

void sub_1AB359D40(uint64_t a1, uint64_t a2, NSObject *a3)
{
  os_unfair_lock_lock((a2 + 24));
  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1AB2B03EC(0, *(v5 + 2) + 1, 1, v5);
    *(a2 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1AB2B03EC((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v9;
  *(a2 + 16) = v5;
  os_unfair_lock_unlock((a2 + 24));

  dispatch_group_leave(a3);
}

void sub_1AB359E00(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  os_unfair_lock_lock((a2 + 24));
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1AB2B0528(0, *(v6 + 2) + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1AB2B0528((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  *&v6[8 * v9 + 32] = v5;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock((a2 + 24));

  dispatch_group_leave(a3);
}

void sub_1AB359F04(void **a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  os_unfair_lock_lock((a2 + 24));
  v6 = v5;
  MEMORY[0x1AC59BC60]();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AB460994();
  }

  sub_1AB4609E4();
  os_unfair_lock_unlock((a2 + 24));

  dispatch_group_leave(a3);
}

uint64_t sub_1AB359FC0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t ClickLocationTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1AB1DB1D4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B5C0);
  swift_allocObject();
  *(v0 + 24) = sub_1AB03356C();
  return v0;
}

uint64_t ClickLocationTracker.init()()
{
  *(v0 + 16) = sub_1AB1DB1D4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B5C0);
  swift_allocObject();
  *(v0 + 24) = sub_1AB03356C();
  return v0;
}

Swift::Void __swiftcall ClickLocationTracker.save(data:)(JetEngine::ClickLocationData *data)
{
  v2 = *&data->position;
  v8[0] = data->id;
  v8[1] = v2;
  uniqueID = data->_uniqueID;
  v8[2] = data->parentUniqueID;
  v9 = uniqueID;
  if (uniqueID.value._object)
  {
    countAndFlagsBits = v9.value._countAndFlagsBits;
    object = uniqueID.value._object;
  }

  else
  {
    object = *(&v8[0] + 1);
    countAndFlagsBits = *&v8[0];
  }

  swift_beginAccess();

  sub_1AB1DB634(v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[0] = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_1AB1D67E0(v8, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v7[0];
  swift_endAccess();
}

uint64_t ClickLocationData.uniqueID.getter()
{
  if (v0[7])
  {
    v1 = v0[6];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

Swift::Void __swiftcall ClickLocationTracker.remove(data:)(JetEngine::ClickLocationData *data)
{
  if (data->_uniqueID.value._object)
  {
    countAndFlagsBits = data->_uniqueID.value._countAndFlagsBits;
    object = data->_uniqueID.value._object;
  }

  else
  {
    countAndFlagsBits = data->id._countAndFlagsBits;
    object = data->id._object;
  }

  swift_beginAccess();

  sub_1AB177658(countAndFlagsBits, object, v4);
  swift_endAccess();

  v3[0] = v4[0];
  v3[1] = v4[1];
  v3[2] = v4[2];
  v3[3] = v4[3];
  sub_1AB014AC0(v3, &qword_1EB43B5C8);
}

uint64_t sub_1AB35A3B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 16);

  v7 = sub_1AB35A968(a1, a2, v6);

  v8 = *(v7 + 2);
  if (!v8)
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v57 = sub_1AB0CED94(v10);
    sub_1AB35AAA8(v57);

    v58 = sub_1AB0CED94(v10);

    return v58;
  }

  v74 = MEMORY[0x1E69E7CC0];
  sub_1AB1778DC(0, v8, 0);
  v9 = 0;
  v10 = v74;
  v62 = v7 + 2;
  v60 = v8;
  v61 = v7;
LABEL_3:
  if (v9 >= *(v7 + 2))
  {
    goto LABEL_44;
  }

  v63 = v9 + 1;
  v64 = v10;
  v11 = &v62[4 * v9];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v10 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = 0xD000000000000010;
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 88) = 0x80000001AB50A840;
  *(inited + 96) = v14;

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v16 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v16;
  v73 = v16;
  v19 = v10 + 64;
  v20 = 1 << *(v10 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v10 + 64);
  v23 = (v20 + 63) >> 6;
  v65 = v10;

  v24 = 0;
  while (1)
  {
    if (!v22)
    {
      if (v23 <= v24 + 1)
      {
        v28 = v24 + 1;
      }

      else
      {
        v28 = v23;
      }

      v29 = v28 - 1;
      while (1)
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v27 >= v23)
        {
          v22 = 0;
          v69 = 0u;
          v70 = 0u;
          v24 = v29;
          v68 = 0u;
          goto LABEL_21;
        }

        v22 = *(v19 + 8 * v27);
        ++v24;
        if (v22)
        {
          v24 = v27;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_40:

      goto LABEL_41;
    }

    v27 = v24;
LABEL_20:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v27 << 6);
    v32 = (*(v65 + 48) + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    sub_1AB0165C4(*(v65 + 56) + 32 * v31, &v66);
    *&v68 = v34;
    *(&v68 + 1) = v33;
    sub_1AB014B78(&v66, &v69);

LABEL_21:
    v66 = v68;
    v67[0] = v69;
    v67[1] = v70;
    v35 = *(&v68 + 1);
    if (!*(&v68 + 1))
    {
      memset(v72, 0, sizeof(v72));
      v71 = 0u;
LABEL_34:

      swift_bridgeObjectRelease_n();
      v10 = v64;
      v74 = v64;
      v56 = *(v64 + 16);
      v55 = *(v64 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1AB1778DC((v55 > 1), v56 + 1, 1);
        v10 = v74;
      }

      *(v10 + 16) = v56 + 1;
      *(v10 + 8 * v56 + 32) = v18;
      v9 = v63;
      v7 = v61;
      if (v63 == v60)
      {
        goto LABEL_40;
      }

      goto LABEL_3;
    }

    v10 = v23;
    v36 = v19;
    v37 = isUniquelyReferenced_nonNull_native;
    v38 = v66;
    sub_1AB0165C4(v67, v72);
    *&v71 = v38;
    *(&v71 + 1) = v35;

    sub_1AB014AC0(&v66, &qword_1EB43A620);
    v39 = *(&v71 + 1);
    if (!*(&v71 + 1))
    {
      goto LABEL_34;
    }

    v40 = v71;
    sub_1AB014B78(v72, &v68);
    v41 = v18;
    v43 = sub_1AB014DB4(v40, v39);
    v44 = v18[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    v47 = v42;
    if (v41[3] >= v46)
    {
      if ((v37 & 1) == 0)
      {
        sub_1AB0676CC();
      }
    }

    else
    {
      sub_1AB01AF68(v46, v37 & 1);
      v48 = sub_1AB014DB4(v40, v39);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_45;
      }

      v43 = v48;
    }

    v19 = v36;
    v23 = v10;
    if (v47)
    {
      v25 = v73;
      sub_1AB0165C4(v73[7] + 32 * v43, &v66);
      __swift_destroy_boxed_opaque_existential_1Tm(&v68);

      v18 = v25;
      v26 = v25[7];
      __swift_destroy_boxed_opaque_existential_1Tm(v26 + 32 * v43);
      sub_1AB014B78(&v66, (v26 + 32 * v43));
    }

    else
    {
      v50 = v73;
      v73[(v43 >> 6) + 8] |= 1 << v43;
      v51 = (v50[6] + 16 * v43);
      *v51 = v40;
      v51[1] = v39;
      sub_1AB014B78(&v68, (v50[7] + 32 * v43));
      v52 = v50[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_43;
      }

      v18 = v50;
      v50[2] = v54;
    }

    isUniquelyReferenced_nonNull_native = 1;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

_OWORD *sub_1AB35A968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1AB014DB4(a1, a2);
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = (*(a3 + 56) + (v6 << 6));
  v9 = v8[3];
  v11 = *v8;
  v10 = v8[1];
  v28 = v8[2];
  v29 = v9;
  v26 = v11;
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A138);
  v12 = swift_allocObject();
  v13 = v26;
  v14 = v27;
  v12[1] = xmmword_1AB4D4720;
  v12[2] = v13;
  v15 = v28;
  v16 = v29;
  v12[3] = v14;
  v12[4] = v15;
  v17 = v12;
  v12[5] = v16;
  if (*(a3 + 16))
  {
    sub_1AB1DB634(&v26, v25);
    v18 = sub_1AB014DB4(a1, a2);
    if (v19)
    {
      v20 = *(a3 + 56) + (v18 << 6);
      v21 = *(v20 + 40);
      if (v21)
      {
        v22 = *(v20 + 32);

        v23 = sub_1AB35A968(v22, v21, a3);

        v25[0] = v17;
        sub_1AB164B24(v23);
        return v25[0];
      }
    }
  }

  else
  {
    sub_1AB1DB634(&v26, v25);
  }

  return v17;
}

void sub_1AB35AAA8(uint64_t a1)
{
  v18[8] = *MEMORY[0x1E69E9840];
  v2 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v3 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      return;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    return;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434958 != -1)
  {
    swift_once();
  }

  v5 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
  if (v5 != 2 && (v5 & 1) != 0)
  {
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = 0x6E6F697461636F6CLL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = a1;

    sub_1AB1DA7A4(inited);
    swift_setDeallocating();
    sub_1AB014AC0(inited + 32, &qword_1EB4383F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
    v8 = sub_1AB4602D4();

    v18[0] = 0;
    v9 = [v6 dataWithJSONObject:v8 options:3 error:v18];

    v10 = v18[0];
    if (v9)
    {
      v11 = sub_1AB45F854();
      v13 = v12;

      sub_1AB460594();
      v14 = sub_1AB460564();
      if (v15)
      {
        sub_1AB38565C(v14, v15);
        sub_1AB017254(v11, v13);
      }

      else
      {
        sub_1AB017254(v11, v13);
      }
    }

    else
    {
      v16 = v10;
      v17 = sub_1AB45F594();

      swift_willThrow();
    }
  }
}

uint64_t ClickLocationTracker.deinit()
{

  return v0;
}

uint64_t ClickLocationTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ClickLocationData.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClickLocationData.parentUniqueID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall ClickLocationData.init(id:clickLocationFields:position:parentUniqueID:uniqueID:)(JetEngine::ClickLocationData *__return_ptr retstr, Swift::String id, Swift::OpaquePointer clickLocationFields, Swift::Int position, Swift::String_optional parentUniqueID, Swift::String_optional uniqueID)
{
  retstr->id = id;
  retstr->position = position;
  retstr->clickLocationFields = clickLocationFields;
  retstr->parentUniqueID = parentUniqueID;
  retstr->_uniqueID = uniqueID;
}

double ClickLocationData.init(impressionMetrics:position:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a1[4];
  v15 = a1[3];
  v16 = v5;
  v6 = a1[2];
  v13 = a1[1];
  v14 = v6;
  v12 = *a1;
  v7 = *(&v13 + 1);
  if (!*(&v13 + 1))
  {
    goto LABEL_4;
  }

  if (a3)
  {
    sub_1AB014AC0(&v12, qword_1EB43B5D0);
LABEL_4:
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v9 = v13;
  v10 = *(&v16 + 1);

  sub_1AB014AC0(&v12, qword_1EB43B5D0);
  *a4 = v9;
  *(a4 + 8) = v7;
  *(a4 + 16) = a2;
  *(a4 + 24) = v10;
  result = 0.0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  return result;
}

void __swiftcall ClickLocationData.withParentUniqueID(_:)(JetEngine::ClickLocationData *__return_ptr retstr, Swift::String a2)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[6];
  v6 = v2[7];
  retstr->id._countAndFlagsBits = *v2;
  retstr->id._object = v3;
  retstr->position = v4;
  retstr->clickLocationFields._rawValue = v5;
  retstr->parentUniqueID.value = a2;
  retstr->_uniqueID.value._countAndFlagsBits = v7;
  retstr->_uniqueID.value._object = v6;
}

void __swiftcall ClickLocationData.withUniqueID(_:)(JetEngine::ClickLocationData *__return_ptr retstr, Swift::String a2)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  retstr->id._countAndFlagsBits = *v2;
  retstr->id._object = v3;
  retstr->position = v4;
  retstr->clickLocationFields._rawValue = v5;
  retstr->parentUniqueID.value._countAndFlagsBits = v7;
  retstr->parentUniqueID.value._object = v6;
  retstr->_uniqueID.value = a2;
}

uint64_t ExponentialPipelineBackoff.__allocating_init(baseWaitInterval:maxWaitInterval:)(double a1, double a2)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v4 + 32) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

Swift::Double __swiftcall ExponentialPipelineBackoff.nextWaitInterval()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB35B2AC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

Swift::Void __swiftcall ExponentialPipelineBackoff.reset()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t ExponentialPipelineBackoff.init(baseWaitInterval:maxWaitInterval:)(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v2 + 32) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_1AB35B228(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  if (*a1 < 1)
  {
    *a3 = 0.0;
    v8 = v5 + 1;
LABEL_7:
    *a1 = v8;
    return;
  }

  v7 = exp2((*a1 - 1)) * *(a2 + 16);
  if (v7 >= *(a2 + 24))
  {
    v7 = *(a2 + 24);
  }

  *a3 = v7;
  v8 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t ExponentialPipelineBackoff.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1AB35B31C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB35B478((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_1AB35B370()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1AB35B400(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v5 = *a1;
  if (*a1 < 1)
  {
    *a2 = 0.0;
    v7 = v5 + 1;
LABEL_7:
    *a1 = v7;
    return;
  }

  v6 = exp2((*a1 - 1)) * *(v2 + 16);
  if (v6 >= *(v2 + 24))
  {
    v6 = *(v2 + 24);
  }

  *a2 = v6;
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t CodeByExpressibleByJSON.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v9;
  v10 = type metadata accessor for CodeByExpressibleByJSON();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  sub_1AB462204();
  if (v4)
  {
    v25 = v38;
    v46 = v4;
    v15 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {

      v42 = v44;
      v43 = v45;
      v16 = sub_1AB4616B4();
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
      sub_1AB4621E4();
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50A8C0);
      v19 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v19);

      MEMORY[0x1AC59BA20](8250, 0xE200000000000000);
      sub_1AB461824();
      sub_1AB163664();
      swift_allocError();
      v20 = v42;
      v21 = *(&v42 + 1);
      v22 = v43;
      *v23 = v42;
      *(v23 + 8) = v21;
      *(v23 + 16) = v22;
      sub_1AB35BA78(v20, v21, v22);
      sub_1AB461694();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
      swift_willThrow();
      sub_1AB35BB28(v42, *(&v42 + 1), v43);
    }
  }

  else
  {
    v32 = v13;
    v33 = v11;
    v35 = v8;
    v34 = v10;
    __swift_project_boxed_opaque_existential_1Tm(&v44, *(&v45 + 1));
    sub_1AB1BF694();
    sub_1AB461DF4();
    v25 = v38;
    __swift_project_boxed_opaque_existential_1Tm(v38, v38[3]);
    v26 = sub_1AB462214();
    JSONContext.init(userInfo:)(v26);
    sub_1AB0B9254(&v42, v41);
    v40 = v46;
    v27 = a3;
    v28 = *(a3 + 8);

    v29 = v35;
    v30 = v39;
    v28(v41, &v40, v39, v27);

    sub_1AB066D84(&v42);
    v31 = v32;
    (*(v36 + 32))(v32, v29, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    (*(v33 + 32))(v37, v31, v34);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

id sub_1AB35BA78(int a1, id a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 3)
  {
    if (v4 <= 1)
    {
    }

    if (v4 == 2)
    {
    }

LABEL_16:
  }

  if (v4 > 5)
  {
    if (v4 == 6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_16;
    }

    return a2;
  }

  return result;
}

void sub_1AB35BB28(int a1, id a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 3)
  {
    if (v4 <= 1)
    {

LABEL_5:

      return;
    }

    if (v4 == 2)
    {

      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_5;
  }

  if (v4 > 5)
  {
    if (v4 == 6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_16;
    }
  }
}

uint64_t CodeByExpressibleByJSON<>.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460454();
  return sub_1AB462104();
}

uint64_t sub_1AB35BCCC()
{
  sub_1AB4620A4();
  CodeByExpressibleByJSON<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t CodeByExpressibleByJSON<>.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v16 = a4;
  v15 = type metadata accessor for CodeByExpressibleByJSON();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = sub_1AB462214();
  JSONContext.init(userInfo:)(v10);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
  sub_1AB1BF694();
  sub_1AB461DF4();
  v20[0] = v17[0];
  v20[1] = v17[1];
  v21 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v13 = v22;
  sub_1AB0B9254(v20, v19);
  *&v17[0] = v13;
  v11 = *(a3 + 8);

  v11(v19, v17, a2, a3);
  sub_1AB066D84(v20);

  (*(v7 + 32))(v16, v9, v15);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t static NativeIntentDispatcher.Builder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = (a2 + 40);
  sub_1AB014AC0(a2 + 40, &qword_1EB439168);
  *v4 = 0u;
  *(v3 + 7) = 0u;
  v3[9] = 0;
  *v3 = sub_1AB033DC8(MEMORY[0x1E69E7CC0]);
  v5 = type metadata accessor for NoOpIntentCache();
  result = swift_allocObject();
  v3[4] = v5;
  v3[1] = result;
  v43 = *(a1 + 16);
  if (!v43)
  {
    return result;
  }

  v7 = 0;
  v44 = a1 + 32;
  v42 = v3;
LABEL_5:
  v45 = v7;
  sub_1AB039F94(v44 + 80 * v7, v57);
  v8 = v57[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v56 = *v3;
  v11 = 1 << *(v8 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  while (v13)
  {
    v18 = v15;
LABEL_21:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v8 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_1AB01494C(*(v8 + 56) + 40 * v22, &v46);
    *&v49 = v25;
    *(&v49 + 1) = v24;
    sub_1AB1580C0(&v46, &v50);

LABEL_22:
    v46 = v49;
    v47[0] = v50;
    v47[1] = v51;
    v48 = v52;
    v26 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {
      v55 = 0;
      memset(v54, 0, sizeof(v54));
      v53 = 0u;
LABEL_4:

      v7 = v45 + 1;
      v3 = v42;
      *v42 = v10;
      result = sub_1AB35CB90(v57);
      if (v45 + 1 == v43)
      {
        return result;
      }

      goto LABEL_5;
    }

    v27 = v46;
    sub_1AB01494C(v47, v54);
    *&v53 = v27;
    *(&v53 + 1) = v26;

    sub_1AB014AC0(&v46, &qword_1EB43B658);
    v28 = *(&v53 + 1);
    if (!*(&v53 + 1))
    {
      goto LABEL_4;
    }

    v29 = v53;
    sub_1AB1580C0(v54, &v49);
    v30 = sub_1AB014DB4(v29, v28);
    v32 = v10[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_37;
    }

    v36 = v31;
    if (v10[3] < v35)
    {
      sub_1AB03AAF0(v35, isUniquelyReferenced_nonNull_native & 1);
      v30 = sub_1AB014DB4(v29, v28);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      v10 = v56;
      if (v36)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v41 = v30;
    sub_1AB1D9A30();
    v30 = v41;
    v10 = v56;
    if (v36)
    {
LABEL_9:
      v16 = v30;

      v17 = v10[7] + 40 * v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      sub_1AB1580C0(&v49, v17);
      goto LABEL_10;
    }

LABEL_30:
    v10[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v10[6] + 16 * v30);
    *v38 = v29;
    v38[1] = v28;
    sub_1AB1580C0(&v49, v10[7] + 40 * v30);
    v39 = v10[2];
    v34 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v34)
    {
      goto LABEL_38;
    }

    v10[2] = v40;
LABEL_10:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v14 <= v15 + 1)
  {
    v19 = v15 + 1;
  }

  else
  {
    v19 = v14;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      v13 = 0;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v15 = v20;
      v49 = 0u;
      goto LABEL_22;
    }

    v13 = *(v8 + 64 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t static NativeIntentDispatcher.Builder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v11 = 0u;
  v10 = 0u;
  sub_1AB014AC0(&v10, &qword_1EB439168);
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v9[0] = sub_1AB033DC8(MEMORY[0x1E69E7CC0]);
  v9[4] = type metadata accessor for NoOpIntentCache();
  v9[1] = swift_allocObject();
  NativeIntentDispatcher.registering<A>(_:)(a1, a2, a3, a4);
  return sub_1AB35CB90(v9);
}

uint64_t static NativeIntentDispatcher.Builder.buildOptional(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AB35CBE4(a1, v7);
  if (*&v7[0])
  {
    v4 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v4;
    *(a2 + 64) = v7[4];
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 72) = 0;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    sub_1AB014AC0(a2 + 40, &qword_1EB439168);
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0;
    *a2 = sub_1AB033DC8(MEMORY[0x1E69E7CC0]);
    v6 = type metadata accessor for NoOpIntentCache();
    result = swift_allocObject();
    *(a2 + 32) = v6;
    *(a2 + 8) = result;
    if (*&v7[0])
    {
      return sub_1AB014AC0(v7, &qword_1EB43B660);
    }
  }

  return result;
}

uint64_t sub_1AB35C628@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438028);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v38 - v4;
  v5 = sub_1AB461864();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438020);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = a1;
  v41 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v25, v5);
    sub_1AB0165C4(*(v15 + 56) + 32 * v25, v44);
    v26 = *(v40 + 48);
    v27 = v5;
    v28 = v40;
    (*(v6 + 32))(v14, v8, v27);
    sub_1AB014B78(v44, &v14[v26]);
    v29 = v39;
    (*(v39 + 56))(v14, 0, 1, v28);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v41;
    v1[3] = v23;
    v1[4] = v24;
    v30 = v1[5];
    v31 = v42;
    sub_1AB017FB8(v14, v42, &qword_1EB438020);
    v32 = 1;
    v33 = (*(v29 + 48))(v31, 1, v28);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v31;
      v36 = v38;
      sub_1AB017FB8(v35, v38, &qword_1EB438028);
      v30(v36);
      sub_1AB014AC0(v36, &qword_1EB438028);
      v32 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438110);
    return (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v29 = v39;
        v28 = v40;
        (*(v39 + 56))(&v38 - v13, 1, 1, v40);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1AB35CA08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1AB02B4BC(*(v3 + 48) + 40 * v13, &v17);
    sub_1AB0165C4(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_1AB014B78(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_1AB014AC0(&v17, &qword_1EB438C58);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB35CBE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of JetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB2231A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB35CDF0(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (*(v8 + 8 * v7) != a2)
    {
      if (v6 == ++v7)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1AB3C1C18(v7, &v9);
    swift_endAccess();
  }

  return result;
}

uint64_t PageMetricsPresenter.__allocating_init(appMetrics:pipeline:context:data:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = *a3;
  v10 = *a4;
  v11 = a4[1];
  v13 = a4[2];
  v12 = a4[3];
  *(v8 + 224) = 0;
  *(v8 + 16) = a1;
  sub_1AB0560F8(a2, v8 + 24);
  *(v8 + 232) = 0;
  *(v8 + 248) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B670);
  v14 = swift_allocObject();
  *(v14 + 48) = 0;
  sub_1AB0CADDC(v10);
  sub_1AB056154(a2);
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  sub_1AB0CAE64(v10);
  *(v8 + 240) = v14;
  return v8;
}

uint64_t PageMetricsPresenter.init(appMetrics:pipeline:context:data:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  *(v4 + 224) = 0;
  *(v4 + 16) = a1;
  sub_1AB0560F8(a2, v4 + 24);
  *(v4 + 232) = 0;
  *(v4 + 248) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B670);
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  sub_1AB0CADDC(v7);
  sub_1AB056154(a2);
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_1AB0CAE64(v7);
  *(v4 + 240) = v11;
  return v4;
}

uint64_t sub_1AB35D054(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 224);
    if (v4)
    {
      v5 = *(v3 + 224);
      v6 = *(v5 + 16);

      [v6 lock];
      sub_1AB35CDF0(v5, v4);
      [v6 unlock];
    }
  }

  *(v1 + 224) = v2;
}

uint64_t sub_1AB35D12C(uint64_t result)
{
  if (*(v1 + 232) != (result & 1))
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v2 + 224);
      if (*(v1 + 232))
      {
        swift_weakInit();
        swift_weakAssign();
        sub_1AB0C92D8(&v7, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B678);
        v4 = swift_allocObject();
        sub_1AB0C9310(v6, v4 + 16);
        v5 = *(v3 + 16);

        [v5 lock];
        sub_1AB02ECC0(v3, v4, sub_1AB2B16BC);
        [v5 unlock];
        sub_1AB35DC48(&v7);
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      sub_1AB35D054(&v7);
    }
  }

  return result;
}

uint64_t PageMetricsPresenter.context.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 248);
}

uint64_t PageMetricsPresenter.context.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 248) = v2;
}

void PageMetricsPresenter.data.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 240);
  os_unfair_lock_lock((v3 + 48));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  sub_1AB0CADDC(v4);

  os_unfair_lock_unlock((v3 + 48));
}

void sub_1AB35D3B4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 240);
  os_unfair_lock_lock((v3 + 48));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  sub_1AB0CADDC(v4);
  os_unfair_lock_unlock((v3 + 48));
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
}

void sub_1AB35D420(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v4[3] = v3;
  sub_1AB0CADDC(v4[0]);
  PageMetricsPresenter.data.setter(v4);
}

void PageMetricsPresenter.data.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 240);
  os_unfair_lock_lock((v3 + 48));
  sub_1AB35D534((v3 + 16));
  os_unfair_lock_unlock((v3 + 48));
  if (v2)
  {
    sub_1AB0CAE64(v2);
    if (*(v1 + 232) == 1)
    {
      v4[0] = 0x65746E4565676170;
      v4[1] = 0xE900000000000072;
      _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(v4);
    }
  }
}

void (*PageMetricsPresenter.data.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 240);
  *(v3 + 40) = v5;
  os_unfair_lock_lock((v5 + 48));
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  sub_1AB0CADDC(v6);
  os_unfair_lock_unlock((v5 + 48));
  return sub_1AB35D5EC;
}

void sub_1AB35D5EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[5];
  if (a2)
  {
    sub_1AB0CADDC(v3);
    os_unfair_lock_lock((v4 + 48));
    sub_1AB35DC88((v4 + 16));
    os_unfair_lock_unlock((v4 + 48));
    if (v3)
    {
      v5 = v2[4];
      sub_1AB0CAE64(v3);
      if (*(v5 + 232) == 1)
      {
        v7 = 0x65746E4565676170;
        v8 = 0xE900000000000072;
        _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(&v7);
      }
    }

    sub_1AB0CAE64(*v2);
  }

  else
  {
    os_unfair_lock_lock((v4 + 48));
    sub_1AB35DC88((v4 + 16));
    os_unfair_lock_unlock((v4 + 48));
    if (v3)
    {
      v6 = v2[4];
      sub_1AB0CAE64(v3);
      if (*(v6 + 232) == 1)
      {
        v7 = 0x65746E4565676170;
        v8 = 0xE900000000000072;
        _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(&v7);
      }
    }
  }

  free(v2);
}

Swift::Void __swiftcall PageMetricsPresenter.viewDidAppear()()
{
  v1 = v0;
  v2 = sub_1AB460224();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AB015664();
  *v5 = sub_1AB461124();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1AB460244();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + 232);
    *(v1 + 232) = 1;
    sub_1AB35D12C(v7);
    v8 = *(v1 + 240);
    os_unfair_lock_lock((v8 + 48));
    v9 = *(v8 + 16);
    sub_1AB0CADDC(v9);
    os_unfair_lock_unlock((v8 + 48));
    if (v9)
    {
      sub_1AB0CAE64(v9);
      v10[0] = 0x65746E4565676170;
      v10[1] = 0xE900000000000072;
      _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PageMetricsPresenter.viewWillDisappear(forReason:)(JetEngine::ViewWillDisappearReason forReason)
{
  v2 = v1;
  countAndFlagsBits = forReason.rawValue._countAndFlagsBits;
  v4 = sub_1AB460224();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *countAndFlagsBits;
  v9 = *(countAndFlagsBits + 8);
  sub_1AB015664();
  *v7 = sub_1AB461124();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(countAndFlagsBits) = sub_1AB460244();
  (*(v5 + 8))(v7, v4);
  if (countAndFlagsBits)
  {
    if (v8 == 0xD000000000000019 && 0x80000001AB502AB0 == v9 || (sub_1AB461DA4() & 1) != 0)
    {
      v11 = 0x747475426B636162;
      v12 = 0xEA00000000006E6FLL;
      _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(&v11);
    }

    v11 = 0x7469784565676170;
    v12 = 0xE800000000000000;
    _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(&v11);

    v10 = *(v2 + 232);
    *(v2 + 232) = 0;
    sub_1AB35D12C(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t PageMetricsPresenter.deinit()
{

  sub_1AB056154(v0 + 24);

  return v0;
}

uint64_t PageMetricsPresenter.__deallocating_deinit()
{

  sub_1AB056154(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB35DB8C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  sub_1AB0CAE64(*a1);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_1AB0CADDC(v3);
}

Swift::Int static MonotonicTime.- infix(_:_:)(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (qword_1ED4D1F88 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = v3 / *&qword_1ED4D1F90 + v2 - a2;

  return MonotonicTime.init(timeInterval:)(v4).seconds;
}

Swift::Int static MonotonicTime.+ infix(_:_:)(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (qword_1ED4D1F88 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = v3 / *&qword_1ED4D1F90 + v2 + a2;

  return MonotonicTime.init(timeInterval:)(v4).seconds;
}

Swift::Double __swiftcall MonotonicTime.timeIntervalSince(_:)(JetEngine::MonotonicTime a1)
{
  v2 = *a1.seconds;
  v3 = *(a1.seconds + 8);
  v5 = *v1;
  v4 = v1[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  return v4 / *&qword_1ED4D1F90 + v5 - (v3 / *&qword_1ED4D1F90 + v2);
}

void sub_1AB35DE9C()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 < 0 || v2 < 0)
  {
    sub_1AB41C4F4("JetEngine/MonotonicTime.swift", 29, 2, 111, sub_1AB35E52C);
    v1 &= ~(v1 >> 63);
  }

  if (is_mul_ok(v1, 0x3B9ACA00uLL))
  {
    v3 = 1000000000 * v1;
    v4 = v2 & ~(v2 >> 63);
    v1 = 1000000000 * v1 + v4;
    if (!__CFADD__(v3, v4))
    {
      if (qword_1EB434BC0 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_7:
  if (!is_mul_ok(v1, HIDWORD(qword_1EB434BC8)))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!qword_1EB434BC8)
  {
LABEL_14:
    __break(1u);
  }
}

double MonotonicTime.timeInterval.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  return v2 / *&qword_1ED4D1F90 + v1;
}

double static MonotonicTime.nanosecondsPerSecond.getter()
{
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  return *&qword_1ED4D1F90;
}

uint64_t sub_1AB35E058()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000002BLL, 0x80000001AB50AA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A28);
  sub_1AB461824();
  return 0;
}

double sub_1AB35E104()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  mach_timebase_info(v1);
  result = *v1;
  qword_1EB434BC8 = v1[0];
  return result;
}

double static MonotonicTime.timeIntervalSinceNow(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  static MonotonicTime.now.getter(&v6);
  tv_sec = v6.tv_sec;
  tv_nsec = v6.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  return tv_nsec / *&qword_1ED4D1F90 + tv_sec - (v2 / *&qword_1ED4D1F90 + v1);
}

double static MonotonicTime.+= infix(_:_:)(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1ED4D1F88 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  MonotonicTime.init(timeInterval:)(v4 / *&qword_1ED4D1F90 + v3 + a2);
  result = *&v7;
  *a1 = v7;
  return result;
}

double static MonotonicTime.-= infix(_:_:)(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1ED4D1F88 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  MonotonicTime.init(timeInterval:)(v4 / *&qword_1ED4D1F90 + v3 - a2);
  result = *&v7;
  *a1 = v7;
  return result;
}

uint64_t MonotonicTime.description.getter()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x696E6F746F6E6F4DLL, 0xEE0028656D695463);
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  sub_1AB460E04();
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1AB35E4D8()
{
  result = qword_1EB43B680;
  if (!qword_1EB43B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B680);
  }

  return result;
}

id ArrayFilterTreatmentAction.__allocating_init(field:configuration:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1AB460514();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(v2);
  v5 = sub_1AB4602D4();

  v6 = [v4 initWithField:v3 configuration:v5];

  return v6;
}

id ArrayFilterTreatmentAction.init(field:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v16 = 0x737265746C6966;
  v17 = 0xE700000000000000;
  sub_1AB461564();
  if (!*(a3 + 16) || (v8 = sub_1AB02B1D8(v18), (v9 & 1) == 0))
  {

    sub_1AB02B2E4(v18);
LABEL_7:
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1AB0165C4(*(a3 + 56) + 32 * v8, v19);
  sub_1AB02B2E4(v18);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_1AB35EC0C();
  v10 = sub_1AB461004();

  *&v4[OBJC_IVAR____TtC9JetEngine26ArrayFilterTreatmentAction_filtersPredicate] = v10;
  if (a2)
  {
    v11 = sub_1AB460514();
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_1AB4602D4();

  v15.receiver = v4;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, sel_initWithField_configuration_, v11, v13);

  if (v14)
  {

    return v14;
  }

  return 0;
}

uint64_t ArrayFilterTreatmentAction.perform(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AB01522C(a1, &v20);
  if (!v21)
  {
    result = sub_1AB0167A8(&v20);
    goto LABEL_15;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_15:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v17 = v5;
  v7 = *&v18[0];
  v8 = *(*&v18[0] + 16);
  if (v8)
  {
    v9 = 0;
    v10 = OBJC_IVAR____TtC9JetEngine26ArrayFilterTreatmentAction_filtersPredicate;
    v11 = *&v18[0] + 32;
    v12 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v7 + 16))
    {
      sub_1AB0165C4(v11, &v20);
      v13 = *(v3 + v10);
      __swift_project_boxed_opaque_existential_1Tm(&v20, v21);
      LODWORD(v13) = [v13 evaluateWithObject_];
      swift_unknownObjectRelease();
      if (v13)
      {
        sub_1AB014B78(&v20, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AB17783C(0, *(v12 + 16) + 1, 1);
          v12 = v19;
        }

        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1AB17783C((v15 > 1), v16 + 1, 1);
          v12 = v19;
        }

        *(v12 + 16) = v16 + 1;
        result = sub_1AB014B78(v18, (v12 + 32 * v16 + 32));
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      }

      ++v9;
      v11 += 32;
      if (v8 == v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_17:

    *(a2 + 24) = v17;
    *a2 = v12;
  }

  return result;
}

id ArrayFilterTreatmentAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AB35EC0C()
{
  result = qword_1EB43B688;
  if (!qword_1EB43B688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB43B688);
  }

  return result;
}

uint64_t sub_1AB35ED00(unsigned __int8 a1)
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](a1);
  return sub_1AB462104();
}

uint64_t sub_1AB35ED64()
{
  sub_1AB4620A4();
  sub_1AB35ECD8(v2, *v0);
  return sub_1AB462104();
}

unint64_t sub_1AB35EE04()
{
  result = qword_1EB43B718[0];
  if (!qword_1EB43B718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB43B718);
  }

  return result;
}

uint64_t OpaqueIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = xmmword_1AB4CE300;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v16);
  sub_1AB014A58(v16, v13, &qword_1EB436BA0);
  v4 = v14;
  if (v14)
  {
    v5 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    sub_1AB066D84(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    if (v8)
    {
      result = sub_1AB014AC0(a2 + 16, &qword_1EB43BDB0);
      v10 = *(a1 + 16);
      *(a2 + 16) = *a1;
      *(a2 + 32) = v10;
      *(a2 + 48) = *(a1 + 32);
      *a2 = v6;
      *(a2 + 8) = v8;
      return result;
    }
  }

  else
  {
    sub_1AB066D84(v16);
    sub_1AB014AC0(v13, &qword_1EB436BA0);
  }

  v11 = type metadata accessor for OpaqueIntent() | 0x2000000000000000;
  sub_1AB163664();
  swift_allocError();
  *v12 = xmmword_1AB4E9720;
  *(v12 + 16) = v11;
  *(v12 + 24) = 0;
  swift_willThrow();
  sub_1AB066D84(a1);
  return sub_1AB014AC0(a2 + 16, &qword_1EB43BDB0);
}

uint64_t OpaqueIntent.kind.getter()
{
  v0 = sub_1AB026CF8();

  return v0;
}

JSValue_optional __swiftcall OpaqueIntent.makeOptionalValue(in:)(JSContext in)
{
  sub_1AB014A58(v1 + 16, &v11, &qword_1EB43BDB0);
  if (v12 == 1)
  {
    sub_1AB014AC0(&v11, &qword_1EB43BDB0);
    v7 = 0;
  }

  else
  {
    sub_1AB014A58(&v11, v8, &qword_1EB436BA0);
    v4 = v9;
    if (v9)
    {
      v5 = v10;
      __swift_project_boxed_opaque_existential_1Tm(v8, v9);
      v6 = (*(v5 + 184))(in.super.isa, v4, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }

    else
    {
      sub_1AB014AC0(v8, &qword_1EB436BA0);
      v6 = 0;
    }

    sub_1AB066D84(&v11);
    v7 = v6;
  }

  result.value.super.isa = v7;
  result.is_nil = v3;
  return result;
}

JSValue __swiftcall OpaqueIntent.makeValue(in:)(JSContext in)
{
  result.super.isa = OpaqueIntent.makeOptionalValue(in:)(in);
  if (!result.super.isa)
  {
    v4 = objc_opt_self();
    result.super.isa = [v4 valueWithNewObjectInContext_];
    if (result.super.isa)
    {
      isa = result.super.isa;
      v9 = *v1;
      v10 = v1[1];

      v6 = [v4 valueWithObject:sub_1AB461F94() inContext:{in.super.isa, v9, v10}];
      result.super.isa = swift_unknownObjectRelease();
      if (v6)
      {
        v7 = v6;
        v8 = sub_1AB460514();
        [(objc_class *)isa setValue:v7 forProperty:v8];

        return isa;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB35F4EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine10JSONObjectVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t CompoundLogger.addLogger(_:)(uint64_t a1)
{
  sub_1AB01494C(a1, v7);
  v2 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AB2B16E0(0, v2[2] + 1, 1, v2);
    *v1 = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1AB2B16E0((v4 > 1), v5 + 1, 1, v2);
    *v1 = v2;
  }

  v2[2] = v5 + 1;
  result = sub_1AB0149B0(v7, &v2[5 * v5 + 4]);
  *v1 = v2;
  return result;
}

uint64_t CompoundLogger.addingLogger(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  sub_1AB01494C(a1, v9);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1AB2B16E0(0, v4[2] + 1, 1, v4);
    *a2 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB2B16E0((v6 > 1), v7 + 1, 1, v4);
    *a2 = v4;
  }

  v4[2] = v7 + 1;
  result = sub_1AB0149B0(v9, &v4[5 * v7 + 4]);
  *a2 = v4;
  return result;
}

Swift::Void __swiftcall CompoundLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = *withLevel;
    v6 = *v2 + 32;
    do
    {
      sub_1AB01494C(v6, v10);
      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_1Tm(v10, v11);
      v9 = v5;
      (*(v8 + 8))(contentsOf._rawValue, &v9, v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      v6 += 40;
      --v3;
    }

    while (v3);
  }
}

uint64_t DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 728) = v4;
  *(v5 + 153) = a4;
  *(v5 + 720) = a3;
  *(v5 + 712) = a2;
  *(v5 + 704) = a1;
  type metadata accessor for DiskJetPackResourceBundle();
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437860);
  *(v5 + 752) = swift_task_alloc();
  v6 = sub_1AB45F764();
  *(v5 + 760) = v6;
  v7 = *(v6 - 8);
  *(v5 + 768) = v7;
  *(v5 + 776) = *(v7 + 64);
  *(v5 + 784) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB35F8C0, 0, 0);
}

uint64_t sub_1AB35F8C0()
{
  v25 = (v0 + 536);
  *(v0 + 400) = &type metadata for SyncTaskScheduler;
  *(v0 + 408) = &protocol witness table for SyncTaskScheduler;
  type metadata accessor for BaseObjectGraph();
  v1 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    v20 = v1;
    swift_once();
    v1 = v20;
  }

  v2 = *(v0 + 784);
  v22 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v24 = *(v0 + 752);
  v5 = *(v0 + 728);
  v23 = *(v0 + 153);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  *(v0 + 696) = v1;

  swift_task_localValuePush();
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  (*(v9 + 8))(v8, v9);
  sub_1AB01494C(v7, v0 + 416);
  (*(v3 + 16))(v2, v6, v4);
  sub_1AB03FFF8(v5, v0 + 320);
  v10 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1AB0149B0((v0 + 416), v11 + 16);
  (*(v3 + 32))(v11 + v10, v2, v4);
  *(v11 + v10 + v22) = v23;
  v12 = v11 + ((v10 + v22) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 56) = *(v0 + 368);
  v13 = *(v0 + 336);
  *(v12 + 40) = *(v0 + 352);
  v14 = *(v0 + 320);
  *(v12 + 24) = v13;
  *(v12 + 8) = v14;
  *v24 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394E8);
  v15 = swift_allocObject();
  *(v0 + 792) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v15[2] = v16;
  sub_1AB040054(v24, v15 + *(*v15 + 96));
  v17 = swift_allocObject();
  v17[2] = sub_1AB04D71C;
  v17[3] = v11;
  v17[4] = v15;
  *(v0 + 80) = sub_1AB04D65C;
  *(v0 + 88) = v17;
  *(v0 + 96) = sub_1AB360558;
  *(v0 + 104) = v15;
  sub_1AB01494C(v0 + 376, v0 + 112);
  *(v0 + 152) = 0;
  swift_retain_n();

  sub_1AB017894(v0 + 80);

  sub_1AB014AC0(v0 + 80, &unk_1EB437870);
  sub_1AB01494C(v7, v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4394F0);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(v25, v0 + 456);
    sub_1AB01494C(v0 + 456, v0 + 576);
    v18 = swift_allocObject();
    sub_1AB0149B0((v0 + 576), v18 + 16);
    sub_1AB01494C(v0 + 456, v0 + 616);
    v19 = swift_allocObject();
    sub_1AB0149B0((v0 + 616), v19 + 16);
    *(v0 + 680) = &type metadata for SyncTaskScheduler;
    *(v0 + 688) = &protocol witness table for SyncTaskScheduler;
    *(v0 + 240) = sub_1AB04F7D0;
    *(v0 + 248) = v18;
    *(v0 + 256) = sub_1AB28DAE8;
    *(v0 + 264) = v19;
    sub_1AB01494C(v0 + 656, v0 + 272);
    *(v0 + 312) = 0;

    sub_1AB03EBC4(v0 + 240);

    sub_1AB014AC0(v0 + 240, &unk_1EB4398C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 656);
  }

  else
  {
    *(v0 + 568) = 0;
    *v25 = 0u;
    *(v0 + 552) = 0u;
    sub_1AB014AC0(v25, &qword_1EB4394F8);
  }

  swift_task_localValuePop();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1AB35FDDC, 0, 0);
}

uint64_t sub_1AB35FDDC()
{
  v1 = v0 + 2;
  v2 = v0[92];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB35FEA8;
  v0[20] = swift_continuation_init();
  v3 = (v0 + 20);
  *(v3 + 72) = 1;
  sub_1AB03EBC4(v3);
  sub_1AB014AC0(v3, &unk_1EB4398C0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB35FEA8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 800) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB360038, 0, 0);
  }

  else
  {
    v4 = *(v1 + 736);
    v5 = *(v1 + 704);

    sub_1AB360560(v4, v5);

    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1AB360038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3600C8()
{
  v0 = sub_1AB461114();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1AB015664();
  sub_1AB4601E4();
  sub_1AB4610D4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1AB461154();
  qword_1EB4343D0 = result;
  return result;
}

__n128 DiskJetPackLoader.init(signingPolicy:keyProviders:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  a3[2].n128_u64[1] = &type metadata for JetPackCompoundKeyProvider;
  a3[3].n128_u64[0] = &off_1F1FFFAB8;
  a3[1].n128_u64[0] = a2;
  result = *a1;
  *a3 = *a1;
  return result;
}

uint64_t sub_1AB36029C(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_1AB3602F0(uint64_t a1, void *a2)
{
  if (qword_1ED4D1D90 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED4D1D98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v24 = sub_1AB0168A8(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB50AB70;
  v5._countAndFlagsBits = 0xD00000000000003ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v23[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
  sub_1AB014A58(v23, v17, &unk_1EB437E60);
  v18 = 0u;
  v19 = 0u;
  sub_1AB0169C4(v17, &v18);
  v20 = 0;
  v7 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    v24 = v7;
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = v18;
  v12 = v19;
  v10[64] = v20;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v24 = v7;
  sub_1AB014AC0(v23, &unk_1EB437E60);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v24;
  *&v18 = v3;
  LOBYTE(v23[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v4, v23);

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v14);
  return (*(v15 + 8))(v14, v15);
}

uint64_t sub_1AB360560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB3605C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1AB360620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t JoinPipelineTask.__allocating_init(_:_:)(void *a1, uint64_t *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = *a1;
  *(result + 24) = v5;
  return result;
}

uint64_t PipelineEntryTask.run()()
{
  sub_1AB03DB08();
}

void *MapPipelineTask.init(previous:body:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = *a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t MapPipelineTask.deinit()
{

  return v0;
}

uint64_t JoinPipelineTask.init(_:_:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  return v2;
}

char *sub_1AB3607E8()
{
  v1 = MEMORY[0x1AC59DDE0]();
  sub_1AB360838(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1AB360838@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = *(**(a1 + 16) + 88);

  v4(v5);

  v6 = *(**(a1 + 24) + 88);

  v8 = v6(v7);

  v9 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  v11 = Promise.join<A>(with:)(v8, v9, WitnessTable);

  *a2 = v11;
  return result;
}

uint64_t JoinPipelineTask.deinit()
{

  return v0;
}

uint64_t JoinPipelineTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t SQLiteError.errorDescription.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    sub_1AB4615D4();

    v7 = 0xD000000000000015;
    MEMORY[0x1AC59BA20](v1, v2);
  }

  else
  {
    sub_1AB4615D4();

    v7 = 0xD00000000000001ELL;
    if (sqlite3_errstr(v1))
    {
      v3 = sub_1AB460704();
      v5 = v4;
    }

    else
    {
      v5 = 0xE900000000000029;
      v3 = 0x6E776F6E6B6E7528;
    }

    MEMORY[0x1AC59BA20](v3, v5);
  }

  return v7;
}

uint64_t SQLiteError.errorCode.getter()
{
  if (v0[16])
  {
    return 999;
  }

  else
  {
    return *v0;
  }
}

unint64_t SQLiteError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v1;
  v2 = SQLiteError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  v4 = 0x206E776F6E6B6E55;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xED0000726F727265;
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB1BA43C(inited + 32);
  return v6;
}

uint64_t sub_1AB360CE8()
{
  if (v0[16])
  {
    return 999;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1AB360D04(uint64_t a1)
{
  v2 = sub_1AB360EAC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB360D40(uint64_t a1)
{
  v2 = sub_1AB360EAC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t SQLiteResult.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB4620D4();
  return sub_1AB462104();
}

uint64_t sub_1AB360E04()
{
  sub_1AB4620A4();
  sub_1AB4620D4();
  return sub_1AB462104();
}

uint64_t sub_1AB360E4C()
{
  sub_1AB4620A4();
  sub_1AB4620D4();
  return sub_1AB462104();
}

unint64_t sub_1AB360EAC()
{
  result = qword_1EB43B7B8;
  if (!qword_1EB43B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43B7B8);
  }

  return result;
}

uint64_t static JetEarlyBootstrap.begin<A>(lazyObjectGraph:eagerlyLoadedTypes:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v8 = sub_1AB461604();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = sub_1AB461804();
  v12 = MEMORY[0x1EEE9AC00](v11);
  a1(v12);
  v19 = sub_1AB014B20();
  v22 = MEMORY[0x1AC59B670](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v19);
  sub_1AB014B88(MEMORY[0x1E69E7CC0]);
  v13 = v22;
  type metadata accessor for BaseObjectGraph();
  inited = swift_initStackObject();
  inited[3] = 0;
  inited[4] = 0xE000000000000000;
  inited[2] = v13;
  v15 = sub_1AB0303EC(inited);

  swift_setDeallocating();

  MEMORY[0x1AC59BB90](a4, a5);
  swift_getWitnessTable();
  sub_1AB461984();
  (*(v21 + 8))(v10, v8);
  swift_getWitnessTable();
  v16 = sub_1AB460E94();
  sub_1AB361B54(v15, v16);
  sub_1AB361C70(v15, v16);

  return v15;
}

uint64_t sub_1AB3611A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1AB460BE4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1AB3B2A60(0, 0, v6, &unk_1AB4EDCF0, v8);
}

uint64_t sub_1AB3612B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1AB027460;

  return sub_1AB38EE40(a5);
}

uint64_t sub_1AB361354(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1AB461DA4() & 1;
  }
}

unint64_t *sub_1AB3613AC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1AB361550(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1AB361448(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1AB15FA20(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1AB361550(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
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
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(a4 + 16);
    if (*(v16 + 16) && (v17 = sub_1AB016558(*(*(a3 + 48) + 8 * v15)), (v18 & 1) != 0))
    {
      sub_1AB0165C4(*(v16 + 56) + 32 * v17, v22);
      sub_1AB014B78(v22, v24);
      sub_1AB014B78(v24, v23);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439690);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439698), swift_dynamicCast()))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        goto LABEL_19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v23);

        *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
LABEL_23:

          sub_1AB22805C(a1, a2, v25, a3);
          return;
        }
      }
    }

    else
    {
      sub_1AB410BA0("JetEngine/JetEarlyBootstrap.swift", 33, 2, 95);
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
      goto LABEL_23;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1AB3617C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v26 = v8;
    v27 = v3;
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](v10);
    v28 = v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v9);
    v29 = 0;
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(a1 + 56);
    v14 = (v12 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_13:
      v18 = v15 | (v11 << 6);
      v9 = *(a2 + 16);
      if (*(v9 + 16) && (v19 = sub_1AB016558(*(*(a1 + 48) + 8 * v18)), (v20 & 1) != 0))
      {
        sub_1AB0165C4(*(v9 + 56) + 32 * v19, v30);
        sub_1AB014B78(v30, v32);
        sub_1AB014B78(v32, v31);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439690);
        if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439698), swift_dynamicCast()))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
LABEL_20:
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v31);

          *&v28[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          if (__OFADD__(v29++, 1))
          {
            __break(1u);
LABEL_24:
            v22 = sub_1AB22805C(v28, v26, v29, a1);

            return v22;
          }
        }
      }

      else
      {
        sub_1AB410BA0("JetEngine/JetEarlyBootstrap.swift", 33, 2, 95);
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

      if (v11 >= v14)
      {
        goto LABEL_24;
      }

      v17 = *(v3 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v24 = swift_slowAlloc();

  v22 = sub_1AB3613AC(v24, v8, a1, a2);

  MEMORY[0x1AC59F020](v24, -1, -1);

  return v22;
}

uint64_t sub_1AB361B54(uint64_t a1, uint64_t a2)
{

  v5 = sub_1AB1BBE18(v4);
  if (*(v5 + 16) <= *(a2 + 16) >> 3)
  {

    sub_1AB361448(v5);
    if (!*(a2 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a2 = sub_1AB226D80(v5, a2);
  if (*(a2 + 16))
  {
LABEL_5:
    sub_1AB426934("JetEngine/JetEarlyBootstrap.swift", 33, 2, 86, a2);
  }

LABEL_6:

  v6 = sub_1AB3617C0(v5, a1);

  if (*(v6 + 16))
  {
    sub_1AB427338("JetEngine/JetEarlyBootstrap.swift", 33, 2, 106, v6);
  }
}

uint64_t sub_1AB361C70(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_1AB4601B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AB4601F4();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB4601C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB015664();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F88], v9);
  v13 = sub_1AB461164();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = v18;
  *(v14 + 24) = v15;
  aBlock[4] = sub_1AB361FCC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_36;
  v16 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v8, v5, v16);
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v20);
}

uint64_t sub_1AB361FD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AB027460;

  return sub_1AB3612B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1AB3620A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sqlite3_stmt **a4@<X3>, unsigned int *a5@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *zSql = a1;
    v15 = a2 & 0xFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = zSql;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_1AB4615C4();
  }

  v8 = a2 & 0xFFFFFFFFFFFFFFFLL;
  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = (v8 + 32);
LABEL_6:
  v11 = sqlite3_prepare_v2(v9, v10, -1, a4, 0);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  if (sub_1AB15AA44(v11, qword_1ED4D3ED8))
  {
    *a5 = v11;
  }

  else
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1AB362220(void (*a1)(uint64_t))
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EB4359C0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EB435998)
  {
    sub_1AB362790(v3, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1AB02B560((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1AB362790(v3, a1);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v15 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          v13 = *(v5 + 16);
          v14 = *(v5 + 24);
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
          sub_1AB05D770(v13, v14);
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1AB3623F0(void (*a1)(uint64_t))
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EB4359C0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EB435998)
  {
    sub_1AB3628A4(v3, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1AB2EF31C((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1AB3628A4(v3, a1);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v13 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          sub_1AB05D770(*(v5 + 16), *(v5 + 24));
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1AB3625C0(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_keepAlive);
  v6 = qword_1EB4359C0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  if (byte_1EB435998)
  {
    sub_1AB3629B8(v3, a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v5 + 40));
    sub_1AB2EF31C((v5 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v5 + 40));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v5 + 40));
      sub_1AB3629B8(v3, a1);
      os_unfair_lock_lock((v5 + 40));
      v8 = *(v5 + 16);
      if (v8)
      {
        v9 = *(v5 + 24);
        v13 = *(v5 + 16);
        v10 = v8;
        v11 = v9;

        v12 = ProcessAssertion.invalidate()();

        if (v12)
        {
          sub_1AB05D770(*(v5 + 16), *(v5 + 24));
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
        }
      }

      os_unfair_lock_unlock((v5 + 40));
    }
  }
}

void sub_1AB362790(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1AB02F230((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1AB05B000((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1AB3628A4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1AB02F0EC((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1AB05B000((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_1AB3629B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v4 + 24));
  sub_1AB02F0EC((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2(&v6, v5);
    os_unfair_lock_lock((v4 + 24));
    sub_1AB05B000((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

uint64_t AssetPushSubscriptionSQLiteStore.init(database:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[4] = &type metadata for SystemDateProvider;
  a2[5] = &protocol witness table for SystemDateProvider;
  return result;
}

void sub_1AB362AF4()
{
  qword_1EB43B7C0 = 0xD0000000000001FALL;
  *algn_1EB43B7C8 = 0x80000001AB50B580;
  qword_1EB43B7D0 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AB362BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x1AC59B990](102);
  MEMORY[0x1AC59BA20](0xD000000000000053, 0x80000001AB50B400);
  v61 = *(a2 + 8);
  if (*(&v61 + 1))
  {
    v7 = &off_1F2000A10;
    v8 = MEMORY[0x1E69E6158];
    v9 = v61;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v55 = 0;
  }

  v53 = v9;
  v54 = *(&v61 + 1);
  v56 = v8;
  v57 = v7;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v61, v49, &qword_1EB439AC0);
  v10 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB05A334((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v50;
  v15 = v51;
  v13[8] = v52;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](8236, 0xE200000000000000);
  v60 = *(a2 + 24);
  if (*(&v60 + 1))
  {
    v16 = &off_1F2000A10;
    v17 = MEMORY[0x1E69E6158];
    v18 = v60;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v55 = 0;
  }

  v53 = v18;
  v54 = *(&v60 + 1);
  v56 = v17;
  v57 = v16;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v60, v49, &qword_1EB439AC0);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1AB05A334((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v50;
  v23 = v51;
  v21[8] = v52;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](8236, 0xE200000000000000);
  v59 = *(a2 + 40);
  if (*(&v59 + 1))
  {
    v24 = &off_1F2000A10;
    v25 = MEMORY[0x1E69E6158];
    v26 = v59;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v55 = 0;
  }

  v53 = v26;
  v54 = *(&v59 + 1);
  v56 = v25;
  v57 = v24;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v59, v49, &qword_1EB439AC0);
  v28 = v10[2];
  v27 = v10[3];
  if (v28 >= v27 >> 1)
  {
    v10 = sub_1AB05A334((v27 > 1), v28 + 1, 1, v10);
  }

  v10[2] = v28 + 1;
  v29 = &v10[5 * v28];
  v30 = v50;
  v31 = v51;
  v29[8] = v52;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](8236, 0xE200000000000000);
  v58 = *(a2 + 56);
  if (*(&v58 + 1))
  {
    v32 = &off_1F2000A10;
    v33 = MEMORY[0x1E69E6158];
    v34 = v58;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v55 = 0;
  }

  v53 = v34;
  v54 = *(&v58 + 1);
  v56 = v33;
  v57 = v32;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v58, v49, &qword_1EB439AC0);
  v36 = v10[2];
  v35 = v10[3];
  if (v36 >= v35 >> 1)
  {
    v10 = sub_1AB05A334((v35 > 1), v36 + 1, 1, v10);
  }

  v10[2] = v36 + 1;
  v37 = &v10[5 * v36];
  v38 = v50;
  v39 = v51;
  v37[8] = v52;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x4E52555445522029, 0xED00002A20474E49);
  v53 = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, &v53, &v50);
  if (v3)
  {
  }

  v41 = v53;
  if (v53)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 24) = 0;
    sub_1AB02E720(v10);

    v44 = *(inited + 16);
    v45 = sqlite3_step(v44);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (sub_1AB15AA44(v45, qword_1ED4D3ED8) && (v46 = sub_1AB064540(&unk_1F1FF4198), v47 = sub_1AB15AA44(v45, v46), , v47))
    {
      sub_1AB363228(inited, a3);
      swift_setDeallocating();
      v43 = *(inited + 16);
    }

    else
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v48 = v45;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v43 = v44;
    }

    sqlite3_finalize(v43);
  }

  __break(1u);
  return result;
}

sqlite3_int64 sub_1AB363228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB05AB54();
  if (!*(v4 + 16))
  {
    v67 = 0;
    v68 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v65 = 0;
    v66 = 0;
    v71 = 1;
    goto LABEL_22;
  }

  v5 = sub_1AB014DB4(25705, 0xE200000000000000);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 4 * v5);
    if (sqlite3_column_type(*(a1 + 16), v7) != 5)
    {
      v72 = sqlite3_column_int(*(a1 + 16), v7);
      v71 = 0;
      if (*(v4 + 16))
      {
        goto LABEL_5;
      }

LABEL_20:
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      goto LABEL_21;
    }
  }

  v72 = 0;
  v71 = 1;
  if (!*(v4 + 16))
  {
    goto LABEL_20;
  }

LABEL_5:
  v8 = sub_1AB014DB4(0x72755F7465737361, 0xE90000000000006CLL);
  if ((v9 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v8)))
  {
    v10 = sub_1AB460714();
    v69 = v11;
    v70 = v10;
    if (!*(v4 + 16))
    {
LABEL_8:
      v67 = 0;
      v68 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_8;
    }
  }

  v12 = sub_1AB014DB4(0x5F6C656E6E616863, 0xEA00000000006469);
  if ((v13 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v12)))
  {
    v67 = sub_1AB460714();
    v68 = v14;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  v15 = sub_1AB014DB4(0x695F656C646E7562, 0xE900000000000064);
  if ((v16 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v15)))
  {
    v17 = sub_1AB460714();
    v65 = v18;
    v66 = v17;
    goto LABEL_22;
  }

LABEL_21:
  v65 = 0;
  v66 = 0;
LABEL_22:
  if (!*(v4 + 16))
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    goto LABEL_35;
  }

  v19 = sub_1AB014DB4(0x64695F6567617375, 0xE800000000000000);
  if ((v20 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v19)))
  {
    v21 = sub_1AB460714();
    v63 = v22;
    v64 = v21;
    if (!*(v4 + 16))
    {
LABEL_26:
      v62 = 0;
LABEL_35:
      v26 = 0;
      v60 = 0;
      v61 = 1;
      v27 = 1;
      goto LABEL_36;
    }
  }

  else
  {
    v63 = 0;
    v64 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_26;
    }
  }

  v23 = sub_1AB014DB4(0x656C756465686373, 0xED00006D6F72665FLL);
  if ((v24 & 1) == 0 || (v25 = *(*(v4 + 56) + 4 * v23), sqlite3_column_type(*(a1 + 16), v25) == 5))
  {
    v26 = 0;
    v27 = 1;
    if (*(v4 + 16))
    {
      goto LABEL_31;
    }

LABEL_56:
    v62 = 0;
    v60 = 0;
    v61 = 1;
LABEL_36:
    v59 = 1;
    if (*(v4 + 16))
    {
      goto LABEL_37;
    }

LABEL_66:
    v46 = 0;
    v37 = 0;
    v42 = 0;
    v47 = 1;
    v38 = 1;
LABEL_73:

    result = 0;
    v57 = 1;
    goto LABEL_74;
  }

  v26 = sqlite3_column_int64(*(a1 + 16), v25);
  v27 = 0;
  if (!*(v4 + 16))
  {
    goto LABEL_56;
  }

LABEL_31:
  v28 = sub_1AB014DB4(0x656C756465686373, 0xEB000000006F745FLL);
  if (v29)
  {
    v30 = v27;
    v31 = v26;
    v32 = *(*(v4 + 56) + 4 * v28);
    if (sqlite3_column_type(*(a1 + 16), v32) == 5)
    {
      v62 = 0;
      v61 = 1;
    }

    else
    {
      v62 = sqlite3_column_int64(*(a1 + 16), v32);
      v61 = 0;
    }

    v26 = v31;
    v27 = v30;
    if (!*(v4 + 16))
    {
      goto LABEL_65;
    }
  }

  else
  {
    v62 = 0;
    v61 = 1;
    if (!*(v4 + 16))
    {
      goto LABEL_65;
    }
  }

  v48 = sub_1AB014DB4(0x797469726F697270, 0xE800000000000000);
  if (v49)
  {
    v50 = v27;
    v51 = v26;
    v52 = *(*(v4 + 56) + 4 * v48);
    if (sqlite3_column_type(*(a1 + 16), v52) == 5)
    {
      v59 = 1;
      v60 = 0;
    }

    else
    {
      v59 = 0;
      v60 = sqlite3_column_int(*(a1 + 16), v52);
    }

    v26 = v51;
    v27 = v50;
    if (!*(v4 + 16))
    {
      goto LABEL_66;
    }

    goto LABEL_37;
  }

LABEL_65:
  v59 = 1;
  v60 = 0;
  if (!*(v4 + 16))
  {
    goto LABEL_66;
  }

LABEL_37:
  v58 = v27;
  v33 = sub_1AB014DB4(0xD000000000000010, 0x80000001AB50AEC0);
  v34 = v26;
  if (v35)
  {
    v36 = *(*(v4 + 56) + 4 * v33);
    if (sqlite3_column_type(*(a1 + 16), v36) == 5)
    {
      v37 = 0;
      v38 = 1;
    }

    else
    {
      v37 = sqlite3_column_int64(*(a1 + 16), v36);
      v38 = 0;
    }

    v26 = v34;
    if (!*(v4 + 16))
    {
      goto LABEL_50;
    }
  }

  else
  {
    v37 = 0;
    v38 = 1;
    if (!*(v4 + 16))
    {
LABEL_50:
      v46 = 0;
      v42 = 0;
      v47 = 1;
LABEL_72:
      v27 = v58;
      goto LABEL_73;
    }
  }

  v39 = sub_1AB014DB4(0x676E69646E6570, 0xE700000000000000);
  if (v40)
  {
    v41 = *(*(v4 + 56) + 4 * v39);
    v42 = sqlite3_column_type(*(a1 + 16), v41) != 5 && sqlite3_column_int(*(a1 + 16), v41) == 1;
    v26 = v34;
    if (!*(v4 + 16))
    {
      goto LABEL_59;
    }
  }

  else
  {
    v42 = 0;
    if (!*(v4 + 16))
    {
LABEL_59:
      v46 = 0;
      v47 = 1;
      goto LABEL_72;
    }
  }

  v43 = sub_1AB014DB4(0xD000000000000011, 0x80000001AB50AEE0);
  if (v44)
  {
    v45 = *(*(v4 + 56) + 4 * v43);
    if (sqlite3_column_type(*(a1 + 16), v45) == 5)
    {
      v46 = 0;
      v47 = 1;
    }

    else
    {
      v46 = sqlite3_column_int(*(a1 + 16), v45);
      v47 = 0;
    }

    v26 = v34;
    if (!*(v4 + 16))
    {
      goto LABEL_72;
    }
  }

  else
  {
    v46 = 0;
    v47 = 1;
    if (!*(v4 + 16))
    {
      goto LABEL_72;
    }
  }

  v53 = sub_1AB014DB4(0x6465696669646F6DLL, 0xEB0000000074615FLL);
  if (v54)
  {
    v55 = *(*(v4 + 56) + 4 * v53);

    if (sqlite3_column_type(*(a1 + 16), v55) == 5)
    {
      result = 0;
      v57 = 1;
    }

    else
    {
      result = sqlite3_column_int64(*(a1 + 16), v55);
      v57 = 0;
    }

    v26 = v34;
  }

  else
  {

    result = 0;
    v57 = 1;
  }

  v27 = v58;
LABEL_74:
  *a2 = v72;
  *(a2 + 4) = v71;
  *(a2 + 8) = v70;
  *(a2 + 16) = v69;
  *(a2 + 24) = v67;
  *(a2 + 32) = v68;
  *(a2 + 40) = v66;
  *(a2 + 48) = v65;
  *(a2 + 56) = v64;
  *(a2 + 64) = v63;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v62;
  *(a2 + 96) = v61;
  *(a2 + 100) = v60;
  *(a2 + 104) = v59;
  *(a2 + 112) = v37;
  *(a2 + 120) = v38;
  *(a2 + 121) = v42;
  *(a2 + 124) = v46;
  *(a2 + 128) = v47;
  *(a2 + 136) = result;
  *(a2 + 144) = v57;
  return result;
}

uint64_t sub_1AB3638D0(uint64_t a1, unsigned int a2)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v21[1] = 0xE000000000000000;
  MEMORY[0x1AC59B990](41);
  MEMORY[0x1AC59BA20](0xD000000000000029, 0x80000001AB50B3D0);
  v21[3] = MEMORY[0x1E69E72F0];
  v21[4] = &off_1F2000A30;
  v21[0] = a2;
  sub_1AB014A58(v21, v19, &qword_1EB439C50);
  v5 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB05A334((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[5 * v7];
  v9 = v19[0];
  v10 = v19[1];
  v8[8] = v20;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(v21, &qword_1EB439C50);
  v21[0] = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, v21, v19);

  if (v2)
  {
  }

  v12 = v21[0];
  if (v21[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    sub_1AB02E720(v5);

    v14 = *(inited + 16);
    v15 = sqlite3_step(v14);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (!sub_1AB15AA44(v15, qword_1ED4D3ED8) || (v16 = sub_1AB064540(&unk_1F1FF4070), v17 = sub_1AB15AA44(v15, v16), , !v17))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB363BF0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;

  result = sub_1AB3620A8(0xD000000000000039, 0x80000001AB50B390, a1, v24, v22);
  if (!v2)
  {
    v6 = v24[0];
    if (v24[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1AB02E720(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *(inited + 16);
        v10 = sqlite3_step(v9);
        if (qword_1ED4D0C30 != -1)
        {
          swift_once();
        }

        if (!sub_1AB15AA44(v10, qword_1ED4D3ED8))
        {
          sub_1AB1F60B4();
          swift_allocError();
          *v21 = v10;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v9);
        }

        if (v10 != 100)
        {
          break;
        }

        sub_1AB363228(inited, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB2B1704(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_1AB2B1704((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[152 * v12];
        v14 = v22[1];
        *(v13 + 2) = v22[0];
        *(v13 + 3) = v14;
        v15 = v22[2];
        v16 = v22[3];
        v17 = v22[5];
        *(v13 + 6) = v22[4];
        *(v13 + 7) = v17;
        *(v13 + 4) = v15;
        *(v13 + 5) = v16;
        v18 = v22[6];
        v19 = v22[7];
        v20 = v22[8];
        v13[176] = v23;
        *(v13 + 9) = v19;
        *(v13 + 10) = v20;
        *(v13 + 8) = v18;
      }

      swift_setDeallocating();
      sqlite3_finalize(v9);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AB363ED8@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;

  result = sub_1AB3620A8(0xD00000000000004BLL, 0x80000001AB50B340, a1, v24, v22);
  if (!v2)
  {
    v6 = v24[0];
    if (v24[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1AB02E720(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *(inited + 16);
        v10 = sqlite3_step(v9);
        if (qword_1ED4D0C30 != -1)
        {
          swift_once();
        }

        if (!sub_1AB15AA44(v10, qword_1ED4D3ED8))
        {
          sub_1AB1F60B4();
          swift_allocError();
          *v21 = v10;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v9);
        }

        if (v10 != 100)
        {
          break;
        }

        sub_1AB363228(inited, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB2B1704(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_1AB2B1704((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[152 * v12];
        v14 = v22[1];
        *(v13 + 2) = v22[0];
        *(v13 + 3) = v14;
        v15 = v22[2];
        v16 = v22[3];
        v17 = v22[5];
        *(v13 + 6) = v22[4];
        *(v13 + 7) = v17;
        *(v13 + 4) = v15;
        *(v13 + 5) = v16;
        v18 = v22[6];
        v19 = v22[7];
        v20 = v22[8];
        v13[176] = v23;
        *(v13 + 9) = v19;
        *(v13 + 10) = v20;
        *(v13 + 8) = v18;
      }

      swift_setDeallocating();
      sqlite3_finalize(v9);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AB3641C0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;

  result = sub_1AB3620A8(0xD000000000000065, 0x80000001AB50B2D0, a1, v24, v22);
  if (!v2)
  {
    v6 = v24[0];
    if (v24[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1AB02E720(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *(inited + 16);
        v10 = sqlite3_step(v9);
        if (qword_1ED4D0C30 != -1)
        {
          swift_once();
        }

        if (!sub_1AB15AA44(v10, qword_1ED4D3ED8))
        {
          sub_1AB1F60B4();
          swift_allocError();
          *v21 = v10;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v9);
        }

        if (v10 != 100)
        {
          break;
        }

        sub_1AB363228(inited, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB2B1704(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_1AB2B1704((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[152 * v12];
        v14 = v22[1];
        *(v13 + 2) = v22[0];
        *(v13 + 3) = v14;
        v15 = v22[2];
        v16 = v22[3];
        v17 = v22[5];
        *(v13 + 6) = v22[4];
        *(v13 + 7) = v17;
        *(v13 + 4) = v15;
        *(v13 + 5) = v16;
        v18 = v22[6];
        v19 = v22[7];
        v20 = v22[8];
        v13[176] = v23;
        *(v13 + 9) = v19;
        *(v13 + 10) = v20;
        *(v13 + 8) = v18;
      }

      swift_setDeallocating();
      sqlite3_finalize(v9);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1AB3644A8(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = *MEMORY[0x1E69E9840];
  *(&v35 + 1) = 0xE000000000000000;
  MEMORY[0x1AC59B990](43);
  v45 = 0;
  v46 = 0xE000000000000000;
  MEMORY[0x1AC59BA20](0xD00000000000002BLL, 0x80000001AB50B2A0);
  *(&v36 + 1) = MEMORY[0x1E69E72F0];
  *&v37 = &off_1F2000A30;
  *&v35 = a2;
  sub_1AB014A58(&v35, &v25, &qword_1EB439C50);
  v8 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB05A334((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[5 * v10];
  v12 = v25;
  v13 = v26;
  v11[8] = v27;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v35, &qword_1EB439C50);
  v15 = v45;
  v14 = v46;
  v45 = 0;

  sub_1AB3620A8(v15, v14, a1, &v45, &v35);

  if (v4)
  {
    goto LABEL_11;
  }

  v16 = v45;
  if (!v45)
  {
    __break(1u);
    return;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v16;
  *(inited + 24) = 0;
  sub_1AB02E720(v8);

  v18 = *(inited + 16);
  v19 = sqlite3_step(v18);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  if (!sub_1AB15AA44(v19, qword_1ED4D3ED8))
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v18);
LABEL_11:

    return;
  }

  if (v19 == 100)
  {
    sub_1AB363228(inited, &v25);
    swift_setDeallocating();
    sqlite3_finalize(*(inited + 16));

    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v35 = v25;
    v36 = v26;
    nullsub_1(&v35);
  }

  else
  {
    swift_setDeallocating();
    sqlite3_finalize(v18);

    sub_1AB36901C(&v35);
  }

  v21 = v42;
  *(a3 + 96) = v41;
  *(a3 + 112) = v21;
  *(a3 + 128) = v43;
  *(a3 + 144) = v44;
  v22 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v22;
  v23 = v40;
  *(a3 + 64) = v39;
  *(a3 + 80) = v23;
  v24 = v36;
  *a3 = v35;
  *(a3 + 16) = v24;
}

void sub_1AB36488C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  MEMORY[0x1AC59B990](92);
  v57 = 0;
  v58 = 0xE000000000000000;
  MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB50B240);
  v11 = MEMORY[0x1E69E6158];
  *(&v48 + 1) = MEMORY[0x1E69E6158];
  *&v49 = &off_1F2000A10;
  *&v47 = a2;
  *(&v47 + 1) = a3;
  sub_1AB014A58(&v47, &v37, &qword_1EB439C50);

  v12 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB05A334((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = &v12[5 * v14];
  v16 = v37;
  v17 = v38;
  v15[8] = v39;
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v47, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB50B1C0);
  *(&v48 + 1) = v11;
  *&v49 = &off_1F2000A10;
  *&v47 = a4;
  *(&v47 + 1) = a5;
  sub_1AB014A58(&v47, &v37, &qword_1EB439C50);
  v18 = v12[2];
  v19 = v12[3];

  if (v18 >= v19 >> 1)
  {
    v12 = sub_1AB05A334((v19 > 1), v18 + 1, 1, v12);
  }

  v12[2] = v18 + 1;
  v20 = &v12[5 * v18];
  v21 = v37;
  v22 = v38;
  v20[8] = v39;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v47, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB50B280);
  v24 = v57;
  v23 = v58;
  v57 = 0;

  sub_1AB3620A8(v24, v23, a1, &v57, &v47);
  if (v36)
  {

LABEL_15:

    return;
  }

  v25 = v57;
  if (v57)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    *(inited + 24) = 0;
    sub_1AB02E720(v12);

    v27 = *(inited + 16);
    v28 = sqlite3_step(v27);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    v29 = qword_1ED4D3ED8;
    if (!sub_1AB15AA44(v28, qword_1ED4D3ED8) || !sub_1AB15AA44(v28, v29))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v30 = v28;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      sqlite3_finalize(v27);
      goto LABEL_15;
    }

    if (v28 == 100)
    {
      sub_1AB363228(inited, &v37);
      swift_setDeallocating();
      sqlite3_finalize(*(inited + 16));

      v53 = v43;
      v54 = v44;
      v55 = v45;
      v56 = v46;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v52 = v42;
      v47 = v37;
      v48 = v38;
      nullsub_1(&v47);
    }

    else
    {
      swift_setDeallocating();
      sqlite3_finalize(v27);

      sub_1AB36901C(&v47);
    }

    v31 = v54;
    *(a6 + 96) = v53;
    *(a6 + 112) = v31;
    *(a6 + 128) = v55;
    *(a6 + 144) = v56;
    v32 = v50;
    *(a6 + 32) = v49;
    *(a6 + 48) = v32;
    v33 = v52;
    *(a6 + 64) = v51;
    *(a6 + 80) = v33;
    v34 = v48;
    *a6 = v47;
    *(a6 + 16) = v34;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB364D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  MEMORY[0x1AC59B990](63);
  v33 = v34;
  MEMORY[0x1AC59BA20](0xD000000000000033, 0x80000001AB50B200);
  *(&v35 + 1) = MEMORY[0x1E69E6158];
  *&v36 = &off_1F2000A10;
  *&v34 = a2;
  *(&v34 + 1) = a3;
  sub_1AB014A58(&v34, v44, &qword_1EB439C50);

  v9 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB05A334((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v44[0];
  v14 = v44[1];
  v12[8] = v45;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v34, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x4220524544524F20, 0xEC00000064692059);
  *&v44[0] = 0;

  sub_1AB3620A8(v33, *(&v33 + 1), a1, v44, &v34);

  if (v4)
  {
  }

  v16 = *&v44[0];
  if (*&v44[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1AB02E720(v9);
    v32 = a4;

    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v19 = *(inited + 16);
      v20 = sqlite3_step(v19);
      if (qword_1ED4D0C30 != -1)
      {
        swift_once();
      }

      if (!sub_1AB15AA44(v20, qword_1ED4D3ED8))
      {
        sub_1AB1F60B4();
        swift_allocError();
        *v31 = v20;
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v19);
      }

      if (v20 != 100)
      {
        break;
      }

      sub_1AB363228(inited, &v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AB2B1704(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1AB2B1704((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v23 = &v18[152 * v22];
      v24 = v35;
      *(v23 + 2) = v34;
      *(v23 + 3) = v24;
      v25 = v36;
      v26 = v37;
      v27 = v39;
      *(v23 + 6) = v38;
      *(v23 + 7) = v27;
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      v23[176] = v43;
      *(v23 + 9) = v29;
      *(v23 + 10) = v30;
      *(v23 + 8) = v28;
    }

    swift_setDeallocating();
    sqlite3_finalize(v19);

    *v32 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AssetPushSubscriptionSQLiteStore.has(matching:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *v1;
  sub_1AB180CB4(v11, v10);
  sub_1AB2EE8E0(v6, v11);
  v8 = v7;
  sub_1AB180CEC(v11);
  return v8 & 1;
}

uint64_t sub_1AB365218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0xE000000000000000;
  MEMORY[0x1AC59B990](108);
  MEMORY[0x1AC59BA20](0xD000000000000039, 0x80000001AB50B160);
  v61 = *(a2 + 8);
  if (*(&v61 + 1))
  {
    v7 = &off_1F2000A10;
    v8 = MEMORY[0x1E69E6158];
    v9 = v61;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v55 = 0;
  }

  v53 = v9;
  v54 = *(&v61 + 1);
  v56 = v8;
  v57 = v7;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v61, v49, &qword_1EB439AC0);
  v10 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB05A334((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v50;
  v15 = v51;
  v13[8] = v52;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000011, 0x80000001AB50B1A0);
  v60 = *(a2 + 40);
  if (*(&v60 + 1))
  {
    v16 = &off_1F2000A10;
    v17 = MEMORY[0x1E69E6158];
    v18 = v60;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v55 = 0;
  }

  v53 = v18;
  v54 = *(&v60 + 1);
  v56 = v17;
  v57 = v16;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v60, v49, &qword_1EB439AC0);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1AB05A334((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v50;
  v23 = v51;
  v21[8] = v52;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB50B1C0);
  v59 = *(a2 + 56);
  if (*(&v59 + 1))
  {
    v24 = &off_1F2000A10;
    v25 = MEMORY[0x1E69E6158];
    v26 = v59;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v55 = 0;
  }

  v53 = v26;
  v54 = *(&v59 + 1);
  v56 = v25;
  v57 = v24;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v59, v49, &qword_1EB439AC0);
  v28 = v10[2];
  v27 = v10[3];
  if (v28 >= v27 >> 1)
  {
    v10 = sub_1AB05A334((v27 > 1), v28 + 1, 1, v10);
  }

  v10[2] = v28 + 1;
  v29 = &v10[5 * v28];
  v30 = v50;
  v31 = v51;
  v29[8] = v52;
  *(v29 + 2) = v30;
  *(v29 + 3) = v31;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50B1E0);
  v58 = *(a2 + 24);
  if (*(&v58 + 1))
  {
    v32 = &off_1F2000A10;
    v33 = MEMORY[0x1E69E6158];
    v34 = v58;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v55 = 0;
  }

  v53 = v34;
  v54 = *(&v58 + 1);
  v56 = v33;
  v57 = v32;
  sub_1AB014A58(&v53, &v50, &qword_1EB439C50);
  sub_1AB014A58(&v58, v49, &qword_1EB439AC0);
  v36 = v10[2];
  v35 = v10[3];
  if (v36 >= v35 >> 1)
  {
    v10 = sub_1AB05A334((v35 > 1), v36 + 1, 1, v10);
  }

  v10[2] = v36 + 1;
  v37 = &v10[5 * v36];
  v38 = v50;
  v39 = v51;
  v37[8] = v52;
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v53, &qword_1EB439C50);
  v53 = 0;

  sub_1AB3620A8(0, 0xE000000000000000, a1, &v53, &v50);
  if (v3)
  {
  }

  v41 = v53;
  if (v53)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v41;
    *(inited + 24) = 0;
    sub_1AB02E720(v10);

    v43 = *(inited + 16);
    v44 = sqlite3_step(v43);
    if (qword_1ED4D0C30 != -1)
    {
      swift_once();
    }

    if (!sub_1AB15AA44(v44, qword_1ED4D3ED8) || (v45 = sub_1AB064540(&unk_1F1FF4098), v46 = sub_1AB15AA44(v44, v45), , !v46))
    {
      sub_1AB1F60B4();
      swift_allocError();
      *v47 = v44;
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      sqlite3_finalize(v43);
    }

    if (sqlite3_column_type(v43, 0) == 5)
    {
      swift_setDeallocating();
      sqlite3_finalize(v43);
    }

    else
    {
      v48 = sqlite3_column_int(v43, 0);
      swift_setDeallocating();
      sqlite3_finalize(v43);

      if (v48 == 1)
      {
        *a3 = 1;
        return result;
      }
    }

    *a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB365934@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _UNKNOWN **a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v79 = a6;
  v78 = a5;
  v80 = a1;
  v91 = *MEMORY[0x1E69E9840];
  v15 = sub_1AB45F9B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[4];
  v20 = a2[5];
  __swift_project_boxed_opaque_existential_1Tm(a2 + 1, v19);
  (*(v20 + 8))(v19, v20);
  sub_1AB45F964();
  v22 = v21;
  v23 = *&v21;
  v25 = *(v16 + 8);
  v24 = (v16 + 8);
  v25(v18, v15);
  v26 = v23 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_48;
  }

  v26 = 0xC3E0000000000001;
  if (v22 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v26 = 0x43E0000000000000;
  if (v22 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v26 = 0xC3E0000000000001;
  if (a8 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = 0x43E0000000000000;
  if (a8 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v15 = v22;
  v26 = a8;
  v18 = v22 + a8;
  if (__OFADD__(v22, a8))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v26 = (*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_53;
  }

  v26 = 0xC3E0000000000001;
  if (a9 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = 0x43E0000000000000;
  if (a9 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v26 = a9;
  v20 = v15 + a9;
  if (__OFADD__(v15, a9))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v26 = 0xFFFFFFFF80000000;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v26 = 0x7FFFFFFFLL;
  if (a3 > 0x7FFFFFFF)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v23 = a4;
  sub_1AB45F964();
  a9 = v27;
  v26 = *&v27 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v26 = 0xC3E0000000000001;
  if (v27 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = 0x43E0000000000000;
  if (v27 < 9.22337204e18)
  {
    v77 = a7;
    v24 = &v88;
    v84 = 0;
    v85 = 0xE000000000000000;
    MEMORY[0x1AC59B990](179);
    v82 = v84;
    v83 = v85;
    MEMORY[0x1AC59BA20](0xD000000000000051, 0x80000001AB50B0A0);
    a7 = &off_1F2000A40;
    v86 = MEMORY[0x1E69E7360];
    v87 = &off_1F2000A40;
    v84 = v22 + a8;
    sub_1AB014A58(&v84, &v88, &qword_1EB439C50);
    a4 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = a4[2];
    v26 = a4[3];
    v23 = v18 + 1;
    if (v18 < v26 >> 1)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  a4 = sub_1AB05A334((v26 > 1), v23, 1, a4);
LABEL_18:
  a4[2] = v23;
  v28 = &a4[5 * v18];
  v29 = v88;
  v30 = v24[1];
  v28[8] = v90;
  *(v28 + 2) = v29;
  *(v28 + 3) = v30;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v84, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB50B100);
  v87 = a7;
  v86 = MEMORY[0x1E69E7360];
  v84 = v20;
  sub_1AB014A58(&v84, &v88, &qword_1EB439C50);
  v32 = a4[2];
  v31 = a4[3];
  if (v32 >= v31 >> 1)
  {
    a4 = sub_1AB05A334((v31 > 1), v32 + 1, 1, a4);
  }

  a4[2] = v32 + 1;
  v33 = &a4[5 * v32];
  v34 = v88;
  v35 = v24[1];
  v33[8] = v90;
  *(v33 + 2) = v34;
  *(v33 + 3) = v35;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v84, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x69726F697270202CLL, 0xED0000203D207974);
  v86 = MEMORY[0x1E69E72F0];
  v87 = &off_1F2000A30;
  LODWORD(v84) = a3;
  sub_1AB014A58(&v84, &v88, &qword_1EB439C50);
  v37 = a4[2];
  v36 = a4[3];
  if (v37 >= v36 >> 1)
  {
    a4 = sub_1AB05A334((v36 > 1), v37 + 1, 1, a4);
  }

  v38 = MEMORY[0x1E69E7360];
  a4[2] = v37 + 1;
  v39 = &a4[5 * v37];
  v40 = v88;
  v41 = v89;
  v39[8] = v90;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v84, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB50B120);
  v86 = v38;
  v87 = a7;
  v84 = a9;
  sub_1AB014A58(&v84, &v88, &qword_1EB439C50);
  v43 = a4[2];
  v42 = a4[3];
  if (v43 >= v42 >> 1)
  {
    a4 = sub_1AB05A334((v42 > 1), v43 + 1, 1, a4);
  }

  v44 = v78;
  a4[2] = v43 + 1;
  v45 = &a4[5 * v43];
  v46 = v88;
  v47 = v89;
  v45[8] = v90;
  *(v45 + 2) = v46;
  *(v45 + 3) = v47;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v84, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB50B140);
  v86 = v38;
  v87 = a7;
  v84 = v15;
  sub_1AB014A58(&v84, &v88, &qword_1EB439C50);
  v49 = a4[2];
  v48 = a4[3];
  if (v49 >= v48 >> 1)
  {
    a4 = sub_1AB05A334((v48 > 1), v49 + 1, 1, a4);
  }

  v50 = v80;
  v51 = v79;
  a4[2] = v49 + 1;
  v52 = &a4[5 * v49];
  v53 = v88;
  v54 = v89;
  v52[8] = v90;
  *(v52 + 2) = v53;
  *(v52 + 3) = v54;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v84, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50B080);
  v86 = MEMORY[0x1E69E6158];
  v87 = &off_1F2000A10;
  v84 = v44;
  v85 = v51;
  sub_1AB014A58(&v84, &v88, &qword_1EB439C50);
  v55 = a4[2];
  v56 = a4[3];

  if (v55 >= v56 >> 1)
  {
    a4 = sub_1AB05A334((v56 > 1), v55 + 1, 1, a4);
  }

  v57 = v81;
  a4[2] = v55 + 1;
  v58 = &a4[5 * v55];
  v59 = v88;
  v60 = v89;
  v58[8] = v90;
  *(v58 + 2) = v59;
  *(v58 + 3) = v60;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB014AC0(&v84, &qword_1EB439C50);
  MEMORY[0x1AC59BA20](0x494E525554455220, 0xEC0000002A20474ELL);
  v61 = v82;
  v62 = v83;
  *&v88 = 0;

  sub_1AB3620A8(v61, v62, v50, &v88, &v84);
  if (v57)
  {
  }

  else
  {

    v64 = v88;
    if (v88)
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v64;
      *(inited + 24) = 0;
      sub_1AB02E720(a4);

      for (i = 0; ; ++i)
      {
        v67 = *(inited + 16);
        v68 = sqlite3_step(v67);
        if (qword_1ED4D0C30 != -1)
        {
          swift_once();
        }

        v69 = qword_1ED4D3ED8;
        if (!*(qword_1ED4D3ED8 + 16) || (sub_1AB4620A4(), sub_1AB4620D4(), v70 = sub_1AB462104(), v71 = -1 << *(v69 + 32), v72 = v70 & ~v71, ((*(v69 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0))
        {
LABEL_44:
          sub_1AB1F60B4();
          swift_allocError();
          *v75 = v68;
          *(v75 + 8) = 0;
          *(v75 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v67);
        }

        v73 = ~v71;
        while (*(*(v69 + 48) + 4 * v72) != v68)
        {
          v72 = (v72 + 1) & v73;
          if (((*(v69 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        if (v68 != 100)
        {
          break;
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
        }
      }

      swift_setDeallocating();
      sqlite3_finalize(v67);

      *v77 = i;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}