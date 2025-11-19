unint64_t sub_1AB37EDD4()
{
  result = qword_1EB43BA48;
  if (!qword_1EB43BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA48);
  }

  return result;
}

unint64_t sub_1AB37EE28()
{
  result = qword_1EB43BA50;
  if (!qword_1EB43BA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB43BA50);
  }

  return result;
}

unint64_t sub_1AB37EE74()
{
  result = qword_1EB43BA58;
  if (!qword_1EB43BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BA58);
  }

  return result;
}

uint64_t sub_1AB37EEF0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E08);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v60 - v13;
  v15 = *a2;
  result = sub_1AB1A7450(0xD000000000000028, 0x80000001AB505E90, *a2);
  if (result)
  {
    v65 = a6;
    sub_1AB1A6028(0xD000000000000029, 0x80000001AB505EC0, v15, v14);
    v17 = sub_1AB45F9E4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {

      return sub_1AB014AC0(v14, &qword_1EB437E08);
    }

    v64 = v6;
    v63 = sub_1AB45F9C4();
    v20 = v19;
    (*(v18 + 8))(v14, v17);
    v66 = a3;
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v21);
    v23 = v66;
    v24 = (*(v22 + 24))(v21, v22);
    if (*(v24 + 16) && (v25 = sub_1AB014DB4(v23, a4), (v26 & 1) != 0))
    {
      v62 = a4;
      sub_1AB0165C4(*(v24 + 56) + 32 * v25, &v68);

      sub_1AB014AC0(&v68, &unk_1EB437E60);
      if (qword_1EB435768 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v27 = *(&v69 + 1);
      v61 = v70;
      __swift_project_boxed_opaque_existential_1Tm(&v68, *(&v69 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v28 = swift_allocObject();
      v60 = xmmword_1AB4D4720;
      *(v28 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v29 = swift_allocObject();
      *(v29 + 16) = v60;
      v72 = MEMORY[0x1E69E6158];
      *&v71 = 0xD00000000000006ELL;
      *(&v71 + 1) = 0x80000001AB50BD10;
      *(v29 + 48) = 0u;
      *(v29 + 32) = 0u;
      sub_1AB0169C4(&v71, v29 + 32);
      *(v29 + 64) = 0;
      *(v28 + 32) = v29;
      Logger.warning(_:)(v28, v27, v61);

      __swift_destroy_boxed_opaque_existential_1Tm(&v68);
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v30 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v30[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v30 + 5);
      v32 = v20;
      if (os_unfair_lock_opaque_low == 2)
      {
        has_internal_content = os_variant_has_internal_content();
        a4 = v62;
        v34 = v64;
        if ((has_internal_content & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        a4 = v62;
        v34 = v64;
        if ((os_unfair_lock_opaque_low & 1) == 0)
        {
LABEL_45:
        }
      }

      if (qword_1ED4D1D40 != -1)
      {
        swift_once();
      }

      if (qword_1EB434958 != -1)
      {
        swift_once();
      }

      v53 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
      if (v53 == 2 || (v53 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {

      v68 = 0u;
      v69 = 0u;
      sub_1AB014AC0(&v68, &unk_1EB437E60);
      v32 = v20;
      v34 = v64;
    }

    v35 = sub_1AB35A3B4(v63, v32);
    if (!*(v35 + 16))
    {
    }

    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v36 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    v37 = LOBYTE(v36[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v36 + 5);
    if (v37 == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if ((v37 & 1) == 0)
    {
LABEL_32:

      goto LABEL_33;
    }

    if (qword_1ED4D1D40 != -1)
    {
      swift_once();
    }

    if (qword_1EB434958 != -1)
    {
      swift_once();
    }

    v38 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
    if (v38 == 2 || (v38 & 1) == 0)
    {
      goto LABEL_32;
    }

    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v39);
    v41 = (*(v40 + 24))(v39, v40);
    if (*(v41 + 16) && (v42 = sub_1AB014DB4(v67, v65), (v43 & 1) != 0))
    {
      sub_1AB0165C4(*(v41 + 56) + 32 * v42, &v68);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
      if (swift_dynamicCast())
      {
        v44 = v71;
LABEL_50:
        *(&v69 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
        *&v68 = v35;
        sub_1AB014B78(&v68, &v71);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v44;
        sub_1AB01AE18(&v71, v66, a4, isUniquelyReferenced_nonNull_native);
        v55 = v73;
        *(&v69 + 1) = MEMORY[0x1E69E6158];
        *&v68 = v63;
        *(&v68 + 1) = v32;
        sub_1AB014B78(&v68, &v71);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v55;
        sub_1AB01AE18(&v71, 0xD000000000000015, 0x80000001AB50BCF0, v56);
        v57 = v73;
        *(&v69 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
        *&v68 = v57;
        v58 = a1[3];
        v59 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, v58);
        (*(v59 + 16))(&v68, v67, v65, v58, v59);
        if (v34)
        {

LABEL_37:

          return __swift_destroy_boxed_opaque_existential_1Tm(&v68);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v68);
LABEL_33:
        v45 = a1[3];
        v46 = a1[4];
        __swift_project_boxed_opaque_existential_1Tm(a1, v45);
        v47 = (*(v46 + 24))(v45, v46);
        if (*(v47 + 16))
        {
          v48 = sub_1AB014DB4(v66, a4);
          if (v49)
          {
            v50 = v48;

            sub_1AB0165C4(*(v47 + 56) + 32 * v50, &v68);

            return sub_1AB014AC0(&v68, &unk_1EB437E60);
          }
        }

        v68 = 0u;
        v69 = 0u;
        sub_1AB014AC0(&v68, &unk_1EB437E60);
        *(&v69 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
        *&v68 = v35;
        v51 = a1[3];
        v52 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, v51);
        (*(v52 + 16))(&v68, v66, a4, v51, v52);
        goto LABEL_37;
      }
    }

    else
    {
    }

    v44 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    goto LABEL_50;
  }

  return result;
}

uint64_t static JSNetworkPerformanceMetrics.metrics(fromJson:)()
{
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB5043D0, v2);
  v0 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  return sub_1AB07C664(v2, v0, sub_1AB384AF4, &type metadata for JSNetworkPerformanceMetrics, &qword_1EB43BA78);
}

void sub_1AB37FA04(uint64_t a1)
{
  v3 = sub_1AB45F9B4();
  v203 = *(v3 - 8);
  v204 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  LODWORD(v182) = *(v1 + 40);
  v9 = *(v1 + 48);
  v183 = *(v1 + 56);
  v184 = *(v1 + 72);
  v185 = *(v1 + 73);
  v186 = *(v1 + 88);
  v187 = *(v1 + 104);
  v175[1] = *(v1 + 112);
  v188 = *(v1 + 120);
  v175[2] = *(v1 + 128);
  v189 = *(v1 + 136);
  v175[3] = *(v1 + 144);
  v190 = *(v1 + 152);
  v175[4] = *(v1 + 160);
  v191 = *(v1 + 168);
  v175[5] = *(v1 + 176);
  v192 = *(v1 + 184);
  v175[6] = *(v1 + 192);
  v193 = *(v1 + 200);
  v194 = *(v1 + 216);
  v195 = *(v1 + 232);
  v196 = *(v1 + 233);
  v176 = *(v1 + 240);
  v197 = *(v1 + 248);
  v177 = *(v1 + 256);
  v198 = *(v1 + 264);
  v10 = *(v1 + 280);
  v178 = *(v1 + 272);
  v201 = v10;
  v11 = *(v1 + 296);
  v179 = *(v1 + 288);
  v202 = v11;
  v12 = *(v1 + 312);
  v180 = *(v1 + 304);
  v181 = v12;
  v199 = *(v1 + 320);
  v13 = *(v1 + 328);
  v200 = *(v1 + 336);
  if (v6)
  {
    v14 = a1;
    v15 = v7;
    v16 = v13;
    v17 = *v1;
    if (qword_1EB4338D0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BFA0;
    v208 = byte_1EB46BFB0;
    v209 = qword_1EB46BFB8;
    v210 = byte_1EB46BFC0;
    v18 = (v14 + *(type metadata accessor for PageRenderEvent() + 24));
    v19 = *v18;
    v20 = v18[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v17, v6, v19, v20, &v205);
    v13 = v16;
    v7 = v15;
    a1 = v14;
  }

  if (v8)
  {
    if (qword_1EB433908 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C068;
    v208 = byte_1EB46C078;
    v209 = qword_1EB46C080;
    v210 = byte_1EB46C088;
    v21 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v22 = *v21;
    v23 = v21[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v7, v8, v22, v23, &v205);
  }

  v24 = v181;
  if ((v182 & 1) == 0)
  {
    v182 = v9;
    sub_1AB45F954();
    sub_1AB45F8F4();
    v26 = v25;
    v27 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v28 = *v27;
    v29 = v27[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v26 + v29 / *&qword_1ED4D1F90 + v28);
    (*(v203 + 8))(v5, v204);
    v30 = v207;
    if (qword_1EB433E48 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C188;
    v208 = byte_1EB46C198;
    v209 = qword_1EB46C1A0;
    v210 = byte_1EB46C1A8;
    v31 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v32 = *v31;
    v33 = v31[1];
    v206 = v30;
    PageRenderField<>.callAsFunction(for:at:)(v32, v33, &v206);
  }

  if ((v183 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v35 = v34;
    v36 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v37 = *v36;
    v38 = v36[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v35 + v38 / *&qword_1ED4D1F90 + v37);
    (*(v203 + 8))(v5, v204);
    v39 = v207;
    if (qword_1EB433E30 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C138;
    v208 = byte_1EB46C148;
    v209 = qword_1EB46C150;
    v210 = byte_1EB46C158;
    v40 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v41 = *v40;
    v42 = v40[1];
    v206 = v39;
    PageRenderField<>.startTime(for:at:)(v41, v42, &v206);
  }

  if ((v184 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v44 = v43;
    v45 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v46 = *v45;
    v47 = v45[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v44 + v47 / *&qword_1ED4D1F90 + v46);
    (*(v203 + 8))(v5, v204);
    v48 = v207;
    if (qword_1EB433E30 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C138;
    v208 = byte_1EB46C148;
    v209 = qword_1EB46C150;
    v210 = byte_1EB46C158;
    v49 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v50 = *v49;
    v51 = v49[1];
    v206 = v48;
    PageRenderField<>.endTime(for:at:)(v50, v51, &v206);
  }

  v52 = v185;
  if (v185 != 2)
  {
    if (qword_1EB4338C0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BF50;
    v208 = byte_1EB46BF60;
    v209 = qword_1EB46BF68;
    v210 = byte_1EB46BF70;
    v53 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v54 = *v53;
    v55 = v53[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v52 & 1, v54, v55, &v205);
  }

  if ((v186 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v57 = v56;
    v58 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v59 = *v58;
    v60 = v58[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v57 + v60 / *&qword_1ED4D1F90 + v59);
    (*(v203 + 8))(v5, v204);
    v61 = v207;
    if (qword_1EB433E38 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C160;
    v208 = byte_1EB46C170;
    v209 = qword_1EB46C178;
    v210 = byte_1EB46C180;
    v62 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v63 = *v62;
    v64 = v62[1];
    v206 = v61;
    PageRenderField<>.startTime(for:at:)(v63, v64, &v206);
  }

  if ((v187 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v66 = v65;
    v67 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v68 = *v67;
    v69 = v67[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v66 + v69 / *&qword_1ED4D1F90 + v68);
    (*(v203 + 8))(v5, v204);
    v70 = v207;
    if (qword_1EB433E38 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C160;
    v208 = byte_1EB46C170;
    v209 = qword_1EB46C178;
    v210 = byte_1EB46C180;
    v71 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v72 = *v71;
    v73 = v71[1];
    v206 = v70;
    PageRenderField<>.endTime(for:at:)(v72, v73, &v206);
  }

  if ((v188 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v75 = v74;
    v76 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v77 = *v76;
    v78 = v76[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v75 + v78 / *&qword_1ED4D1F90 + v77);
    (*(v203 + 8))(v5, v204);
    v79 = v207;
    if (qword_1EB433920 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C0B8;
    v208 = byte_1EB46C0C8;
    v209 = qword_1EB46C0D0;
    v210 = byte_1EB46C0D8;
    v80 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v81 = *v80;
    v82 = v80[1];
    v206 = v79;
    PageRenderField<>.startTime(for:at:)(v81, v82, &v206);
  }

  if ((v189 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v84 = v83;
    v85 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v86 = *v85;
    v87 = v85[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v84 + v87 / *&qword_1ED4D1F90 + v86);
    (*(v203 + 8))(v5, v204);
    v88 = v207;
    if (qword_1EB433920 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C0B8;
    v208 = byte_1EB46C0C8;
    v209 = qword_1EB46C0D0;
    v210 = byte_1EB46C0D8;
    v89 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v90 = *v89;
    v91 = v89[1];
    v206 = v88;
    PageRenderField<>.endTime(for:at:)(v90, v91, &v206);
  }

  if ((v190 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v93 = v92;
    v94 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v95 = *v94;
    v96 = v94[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v93 + v96 / *&qword_1ED4D1F90 + v95);
    (*(v203 + 8))(v5, v204);
    v97 = v207;
    if (qword_1EB433090 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BE78;
    v208 = byte_1EB46BE88;
    v209 = qword_1EB46BE90;
    v210 = byte_1EB46BE98;
    v98 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v99 = *v98;
    v100 = v98[1];
    v206 = v97;
    PageRenderField<>.startTime(for:at:)(v99, v100, &v206);
  }

  if ((v191 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v102 = v101;
    v103 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v104 = *v103;
    v105 = v103[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v102 + v105 / *&qword_1ED4D1F90 + v104);
    (*(v203 + 8))(v5, v204);
    v106 = v207;
    if (qword_1EB433090 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BE78;
    v208 = byte_1EB46BE88;
    v209 = qword_1EB46BE90;
    v210 = byte_1EB46BE98;
    v107 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v108 = *v107;
    v109 = v107[1];
    v206 = v106;
    PageRenderField<>.endTime(for:at:)(v108, v109, &v206);
  }

  if ((v192 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v111 = v110;
    v112 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v113 = *v112;
    v114 = v112[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v111 + v114 / *&qword_1ED4D1F90 + v113);
    (*(v203 + 8))(v5, v204);
    v115 = v207;
    if (qword_1EB433088 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BE50;
    v208 = byte_1EB46BE60;
    v209 = qword_1EB46BE68;
    v210 = byte_1EB46BE70;
    v116 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v117 = *v116;
    v118 = v116[1];
    v206 = v115;
    PageRenderField<>.startTime(for:at:)(v117, v118, &v206);
  }

  if ((v193 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v120 = v119;
    v121 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v122 = *v121;
    v123 = v121[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v120 + v123 / *&qword_1ED4D1F90 + v122);
    (*(v203 + 8))(v5, v204);
    v124 = v207;
    if (qword_1EB433088 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BE50;
    v208 = byte_1EB46BE60;
    v209 = qword_1EB46BE68;
    v210 = byte_1EB46BE70;
    v125 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v126 = *v125;
    v127 = v125[1];
    v206 = v124;
    PageRenderField<>.endTime(for:at:)(v126, v127, &v206);
  }

  if ((v194 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v129 = v128;
    v130 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v131 = *v130;
    v132 = v130[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v129 + v132 / *&qword_1ED4D1F90 + v131);
    (*(v203 + 8))(v5, v204);
    v133 = v207;
    if (qword_1EB433E58 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C1B0;
    v208 = byte_1EB46C1C0;
    v209 = qword_1EB46C1C8;
    v210 = byte_1EB46C1D0;
    v134 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v135 = *v134;
    v136 = v134[1];
    v206 = v133;
    PageRenderField<>.callAsFunction(for:at:)(v135, v136, &v206);
  }

  if ((v195 & 1) == 0)
  {
    sub_1AB45F954();
    sub_1AB45F8F4();
    v138 = v137;
    v139 = (a1 + *(type metadata accessor for MonotonicTimeReference() + 20));
    v140 = *v139;
    v141 = v139[1];
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v138 + v141 / *&qword_1ED4D1F90 + v140);
    (*(v203 + 8))(v5, v204);
    v142 = v207;
    if (qword_1EB4330A0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BEC8;
    v208 = byte_1EB46BED8;
    v209 = qword_1EB46BEE0;
    v210 = byte_1EB46BEE8;
    v143 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v144 = *v143;
    v145 = v143[1];
    v206 = v142;
    PageRenderField<>.callAsFunction(for:at:)(v144, v145, &v206);
  }

  v146 = v196;
  v147 = v200;
  if (v196 != 2)
  {
    if (qword_1EB4338B0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BF28;
    v208 = byte_1EB46BF38;
    v209 = qword_1EB46BF40;
    v210 = byte_1EB46BF48;
    v148 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v149 = *v148;
    v150 = v148[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v146 & 1, v149, v150, &v205);
  }

  if ((v197 & 1) == 0)
  {
    if (qword_1EB433080 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BE28;
    v208 = byte_1EB46BE38;
    v209 = qword_1EB46BE40;
    v210 = byte_1EB46BE48;
    v151 = v176;
    v152 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v153 = *v152;
    v154 = v152[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v153, v154, &v205, v151);
  }

  if ((v198 & 1) == 0)
  {
    if (qword_1EB433078 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BE00;
    v208 = byte_1EB46BE10;
    v209 = qword_1EB46BE18;
    v210 = byte_1EB46BE20;
    v155 = v177;
    v156 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v157 = *v156;
    v158 = v156[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v157, v158, &v205, v155);
  }

  if (v201)
  {
    if (qword_1EB4338F0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C018;
    v208 = byte_1EB46C028;
    v209 = qword_1EB46C030;
    v210 = byte_1EB46C038;
    v159 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v160 = *v159;
    v161 = v159[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v178, v201, v160, v161, &v205);
  }

  if (v202)
  {
    if (qword_1EB4338D8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BFC8;
    v208 = byte_1EB46BFD8;
    v209 = qword_1EB46BFE0;
    v210 = byte_1EB46BFE8;
    v162 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v163 = *v162;
    v164 = v162[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v179, v202, v163, v164, &v205);
  }

  if (v24)
  {
    if (qword_1EB433900 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46C040;
    v208 = byte_1EB46C050;
    v209 = qword_1EB46C058;
    v210 = byte_1EB46C060;
    v165 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v166 = *v165;
    v167 = v165[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v180, v24, v166, v167, &v205);
  }

  v168 = v199;
  if (v199 != 2)
  {
    if (qword_1EB4338C8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BF78;
    v208 = byte_1EB46BF88;
    v209 = qword_1EB46BF90;
    v210 = byte_1EB46BF98;
    v169 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v170 = *v169;
    v171 = v169[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v168 & 1, v170, v171, &v205);
  }

  if (v147)
  {
    if (qword_1EB4338E8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1EB46BFF0;
    v208 = byte_1EB46C000;
    v209 = qword_1EB46C008;
    v210 = byte_1EB46C010;
    v172 = (a1 + *(type metadata accessor for PageRenderEvent() + 24));
    v173 = *v172;
    v174 = v172[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v13, v147, v173, v174, &v205);
  }
}

uint64_t sub_1AB381264@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1AB0B9254(a1, v11);
  sub_1AB014A58(v11, v8, &qword_1EB436BA0);
  v3 = v9;
  if (!v9)
  {
    sub_1AB066D84(v11);
    result = sub_1AB014AC0(v8, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v4 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v5 = (*(v4 + 128))(v3, v4);
  sub_1AB066D84(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v8);
  if (v5)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  *a2 = v7;
  return result;
}

uint64_t sub_1AB381348(uint64_t a1, uint64_t a2)
{
  sub_1AB0B9254(a1, v4);

  return sub_1AB3D3FA4(v4, a2);
}

double sub_1AB3813AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AB0B9254(a1, v4);

  return sub_1AB3D44E8(v4, a2);
}

void *sub_1AB381410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB0B9254(a1, v10);
  sub_1AB014A58(v10, __src, &qword_1EB436BA0);
  v3 = __src[3];
  if (!__src[3])
  {
    sub_1AB066D84(v10);
    sub_1AB014AC0(__src, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v4 = __src[4];
  __swift_project_boxed_opaque_existential_1Tm(__src, __src[3]);
  v5 = *(v4 + 128);

  v6 = v5(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  if (v6)
  {
    sub_1AB066D84(v10);

LABEL_5:
    sub_1AB384B10(__src);
    return memcpy(a2, __src, 0x158uLL);
  }

  sub_1AB0B9254(v10, v8);
  JSNetworkPerformanceMetrics.init(deserializing:using:)(v8, __src);
  sub_1AB066D84(v10);
  memcpy(a2, __src, 0x158uLL);
  return nullsub_1(a2);
}

double sub_1AB38155C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB0B9254(a1, v6);

  return sub_1AB3D5228(v6, a2, a3);
}

uint64_t sub_1AB3815C0()
{
  v0 = sub_1AB0B5B34();
  v1 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v2 = 6;
  for (i = &off_1F1FF3630; ; i += 2)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_3;
    }

    v5 = *(i - 1);
    v4 = *i;

    v6 = sub_1AB014DB4(v5, v4);
    if ((v7 & 1) == 0)
    {

      goto LABEL_3;
    }

    sub_1AB0165C4(*(v0 + 56) + 32 * v6, v25);
    sub_1AB014B78(v25, v26);
    sub_1AB0165C4(v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1;
    v9 = sub_1AB014DB4(v5, v4);
    v11 = *(v1 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (*(v1 + 24) >= v14)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = v9;
        sub_1AB0676CC();
        v9 = v19;
        if (v15)
        {
LABEL_12:
          v17 = v9;

          v1 = v24;
          v18 = (v24[7] + 32 * v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          sub_1AB014B78(v25, v18);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_1AB01AF68(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_1AB014DB4(v5, v4);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }
    }

    if (v15)
    {
      goto LABEL_12;
    }

LABEL_14:
    v1 = v24;
    v24[(v9 >> 6) + 8] |= 1 << v9;
    v20 = (v24[6] + 16 * v9);
    *v20 = v5;
    v20[1] = v4;
    sub_1AB014B78(v25, (v24[7] + 32 * v9));
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v21 = v24[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v13)
    {
      goto LABEL_18;
    }

    v24[2] = v22;
LABEL_3:
    if (!--v2)
    {

      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:connectionStartTime:connectionEndTime:domainLookupStartTime:domainLookupEndTime:fetchStartTime:secureConnectionStartTime:connectionReused:requestMessageSize:responseMessageSize:statusCode:edgeNodeCacheStatus:environmentDataCenter:isLowDataMode:appleTimingApp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  *(a9 + 328) = a43;
  *(a9 + 336) = a44;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  JSONObject.subscript.getter(0xD000000000000014, 0x80000001AB4FE670, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v4 = v127;
  if (v127)
  {
    v5 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v6 = (*(v5 + 24))(v4, v5);
    v4 = v7;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  JSONObject.subscript.getter(0x4C525565676170, 0xE700000000000000, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v8 = v127;
  if (v127)
  {
    v9 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v10 = (*(v9 + 24))(v8, v9);
    v8 = v11;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v10 = 0;
  }

  *(a2 + 16) = v10;
  *(a2 + 24) = v8;
  JSONObject.subscript.getter(0xD000000000000010, 0x80000001AB4FEC20, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v12 = v127;
  if (v127)
  {
    v13 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v14 = COERCE_DOUBLE((*(v13 + 80))(v12, v13));
    v16 = v15;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v16 & 1) == 0)
    {
      v17 = 0;
      v14 = v14 / 1000.0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v14 = 0.0;
  }

  v17 = 1;
LABEL_12:
  *(a2 + 32) = v14;
  *(a2 + 40) = v17;
  JSONObject.subscript.getter(0xD000000000000011, 0x80000001AB4FEC40, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v18 = v127;
  if (v127)
  {
    v19 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v20 = COERCE_DOUBLE((*(v19 + 80))(v18, v19));
    v22 = v21;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v22 & 1) == 0)
    {
      v23 = 0;
      v20 = v20 / 1000.0;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v20 = 0.0;
  }

  v23 = 1;
LABEL_17:
  *(a2 + 48) = v20;
  *(a2 + 56) = v23;
  JSONObject.subscript.getter(0x65736E6F70736572, 0xEF656D6954646E45, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v24 = v127;
  if (v127)
  {
    v25 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v26 = COERCE_DOUBLE((*(v25 + 80))(v24, v25));
    v28 = v27;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v28 & 1) == 0)
    {
      v29 = 0;
      v26 = v26 / 1000.0;
      goto LABEL_22;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v26 = 0.0;
  }

  v29 = 1;
LABEL_22:
  *(a2 + 64) = v26;
  *(a2 + 72) = v29;
  JSONObject.subscript.getter(0xD000000000000011, 0x80000001AB4FEC60, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v30 = v127;
  if (v127)
  {
    v31 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v32 = (*(v31 + 88))(v30, v31);
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v32 = 2;
  }

  *(a2 + 73) = v32;
  JSONObject.subscript.getter(0x6174536573726170, 0xEE00656D69547472, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v33 = v127;
  if (v127)
  {
    v34 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v35 = COERCE_DOUBLE((*(v34 + 80))(v33, v34));
    v37 = v36;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v37 & 1) == 0)
    {
      v38 = 0;
      v35 = v35 / 1000.0;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v35 = 0.0;
  }

  v38 = 1;
LABEL_30:
  *(a2 + 80) = v35;
  *(a2 + 88) = v38;
  JSONObject.subscript.getter(0x646E456573726170, 0xEC000000656D6954, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v39 = v127;
  if (v127)
  {
    v40 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v41 = COERCE_DOUBLE((*(v40 + 80))(v39, v40));
    v43 = v42;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v43 & 1) == 0)
    {
      v44 = 0;
      v41 = v41 / 1000.0;
      goto LABEL_35;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v41 = 0.0;
  }

  v44 = 1;
LABEL_35:
  *(a2 + 96) = v41;
  *(a2 + 104) = v44;
  JSONObject.subscript.getter(0xD00000000000001ALL, 0x80000001AB4FE6F0, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v45 = v127;
  if (v127)
  {
    v46 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v47 = COERCE_DOUBLE((*(v46 + 80))(v45, v46));
    v49 = v48;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v49 & 1) == 0)
    {
      v50 = 0;
      v47 = v47 / 1000.0;
      goto LABEL_40;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v47 = 0.0;
  }

  v50 = 1;
LABEL_40:
  *(a2 + 112) = v47;
  *(a2 + 120) = v50;
  JSONObject.subscript.getter(0xD000000000000018, 0x80000001AB4FE6D0, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v51 = v127;
  if (v127)
  {
    v52 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v53 = COERCE_DOUBLE((*(v52 + 80))(v51, v52));
    v55 = v54;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v55 & 1) == 0)
    {
      v56 = 0;
      v53 = v53 / 1000.0;
      goto LABEL_45;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v53 = 0.0;
  }

  v56 = 1;
LABEL_45:
  *(a2 + 128) = v53;
  *(a2 + 136) = v56;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB50BD80, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v57 = v127;
  if (v127)
  {
    v58 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v59 = COERCE_DOUBLE((*(v58 + 80))(v57, v58));
    v61 = v60;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v61 & 1) == 0)
    {
      v62 = 0;
      v59 = v59 / 1000.0;
      goto LABEL_50;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v59 = 0.0;
  }

  v62 = 1;
LABEL_50:
  *(a2 + 144) = v59;
  *(a2 + 152) = v62;
  JSONObject.subscript.getter(0xD000000000000011, 0x80000001AB50BDA0, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v63 = v127;
  if (v127)
  {
    v64 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v65 = COERCE_DOUBLE((*(v64 + 80))(v63, v64));
    v67 = v66;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v67 & 1) == 0)
    {
      v68 = 0;
      v65 = v65 / 1000.0;
      goto LABEL_55;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v65 = 0.0;
  }

  v68 = 1;
LABEL_55:
  *(a2 + 160) = v65;
  *(a2 + 168) = v68;
  JSONObject.subscript.getter(0xD000000000000015, 0x80000001AB50BDC0, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v69 = v127;
  if (v127)
  {
    v70 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v71 = COERCE_DOUBLE((*(v70 + 80))(v69, v70));
    v73 = v72;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v73 & 1) == 0)
    {
      v74 = 0;
      v71 = v71 / 1000.0;
      goto LABEL_60;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v71 = 0.0;
  }

  v74 = 1;
LABEL_60:
  *(a2 + 176) = v71;
  *(a2 + 184) = v74;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB50BDE0, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v75 = v127;
  if (v127)
  {
    v76 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v77 = COERCE_DOUBLE((*(v76 + 80))(v75, v76));
    v79 = v78;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v79 & 1) == 0)
    {
      v80 = 0;
      v77 = v77 / 1000.0;
      goto LABEL_65;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v77 = 0.0;
  }

  v80 = 1;
LABEL_65:
  *(a2 + 192) = v77;
  *(a2 + 200) = v80;
  JSONObject.subscript.getter(0x6174536863746566, 0xEE00656D69547472, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v81 = v127;
  if (v127)
  {
    v82 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v83 = COERCE_DOUBLE((*(v82 + 80))(v81, v82));
    v85 = v84;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v85 & 1) == 0)
    {
      v86 = 0;
      v83 = v83 / 1000.0;
      goto LABEL_70;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v83 = 0.0;
  }

  v86 = 1;
LABEL_70:
  *(a2 + 208) = v83;
  *(a2 + 216) = v86;
  JSONObject.subscript.getter(0xD000000000000019, 0x80000001AB50BE00, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v87 = v127;
  if (v127)
  {
    v88 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v89 = COERCE_DOUBLE((*(v88 + 80))(v87, v88));
    v91 = v90;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    if ((v91 & 1) == 0)
    {
      v92 = 0;
      v89 = v89 / 1000.0;
      goto LABEL_75;
    }
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v89 = 0.0;
  }

  v92 = 1;
LABEL_75:
  *(a2 + 224) = v89;
  *(a2 + 232) = v92;
  JSONObject.subscript.getter(0xD000000000000010, 0x80000001AB50BE20, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v93 = v127;
  if (v127)
  {
    v94 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v95 = (*(v94 + 88))(v93, v94);
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v95 = 2;
  }

  *(a2 + 233) = v95;
  JSONObject.subscript.getter(0xD000000000000012, 0x80000001AB50BE40, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v96 = v127;
  if (v127)
  {
    v97 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v98 = (*(v97 + 56))(v96, v97);
    v100 = v99;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v98 = 0;
    v100 = 1;
  }

  *(a2 + 240) = v98;
  *(a2 + 248) = v100 & 1;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB50BE60, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v101 = v127;
  if (v127)
  {
    v102 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v103 = (*(v102 + 56))(v101, v102);
    v105 = v104;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v103 = 0;
    v105 = 1;
  }

  *(a2 + 256) = v103;
  *(a2 + 264) = v105 & 1;
  JSONObject.subscript.getter(0x6F43737574617473, 0xEA00000000006564, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v106 = v127;
  if (v127)
  {
    v107 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v108 = (*(v107 + 24))(v106, v107);
    v106 = v109;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v108 = 0;
  }

  *(a2 + 272) = v108;
  *(a2 + 280) = v106;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001AB50BE80, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v110 = v127;
  if (v127)
  {
    v111 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v112 = (*(v111 + 24))(v110, v111);
    v110 = v113;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v112 = 0;
  }

  *(a2 + 288) = v112;
  *(a2 + 296) = v110;
  JSONObject.subscript.getter(0xD000000000000015, 0x80000001AB50BEA0, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v114 = v127;
  if (v127)
  {
    v115 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v116 = (*(v115 + 24))(v114, v115);
    v114 = v117;
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v116 = 0;
  }

  *(a2 + 304) = v116;
  *(a2 + 312) = v114;
  JSONObject.subscript.getter(0x746144776F4C7369, 0xED000065646F4D61, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v118 = v127;
  if (v127)
  {
    v119 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v120 = (*(v119 + 88))(v118, v119);
    sub_1AB066D84(v129);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(v129);
    sub_1AB014AC0(v126, &qword_1EB436BA0);
    v120 = 2;
  }

  *(a2 + 320) = v120;
  JSONObject.subscript.getter(0x6D6954656C707061, 0xEE00707041676E69, v129);
  sub_1AB014A58(v129, v126, &qword_1EB436BA0);
  v121 = v127;
  if (v127)
  {
    v122 = v128;
    __swift_project_boxed_opaque_existential_1Tm(v126, v127);
    v123 = (*(v122 + 24))(v121, v122);
    v121 = v124;
    sub_1AB066D84(a1);
    sub_1AB066D84(v129);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    sub_1AB066D84(a1);
    sub_1AB066D84(v129);
    result = sub_1AB014AC0(v126, &qword_1EB436BA0);
    v123 = 0;
  }

  *(a2 + 328) = v123;
  *(a2 + 336) = v121;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.clientCorrelationKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.clientCorrelationKey.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.pageURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.pageURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.fetchStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.secureConnectionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestMessageSize.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseMessageSize.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.statusCode.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.statusCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.edgeNodeCacheStatus.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.edgeNodeCacheStatus.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.environmentDataCenter.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.environmentDataCenter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.appleTimingApp.getter()
{
  v1 = *(v0 + 328);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.appleTimingApp.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.instrumentModelParsing<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1AB45F9B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  sub_1AB45F964();
  v8 = v7;
  v9 = *(v4 + 8);
  v10 = v9(v6, v3);
  *(v1 + 80) = v8;
  *(v1 + 88) = 0;
  v11 = v15[1];
  result = a1(v10);
  if (!v11)
  {
    _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
    sub_1AB45F964();
    v14 = v13;
    result = v9(v6, v3);
    *(v1 + 96) = v14;
    *(v1 + 104) = 0;
  }

  return result;
}

unint64_t JSNetworkPerformanceMetrics.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB0B5B34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v4 = sub_1AB461F94();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_1AB3836DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB0B5B34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v4 = sub_1AB461F94();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v5;
  return result;
}

uint64_t sub_1AB38379C(uint64_t a1)
{
  sub_1AB0B5B34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v2 = sub_1AB461F94();
  v3 = [objc_opt_self() valueWithObject:v2 inContext:a1];
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return v3;
  }

  __break(1u);
  return result;
}

JSValue __swiftcall JSNetworkPerformanceMetrics.makeValue(in:)(JSContext in)
{
  sub_1AB0B5B34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v2 = sub_1AB461F94();
  v3 = [objc_opt_self() valueWithObject:v2 inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v3)
  {
    return v3;
  }

  __break(1u);
  return result;
}

void *JSNetworkPerformanceMetrics.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB0B9254(a1, v5);
  sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  JSNetworkPerformanceMetrics.init(deserializing:using:)(v5, __src);
  sub_1AB066D84(a1);
  return memcpy(a2, __src, 0x158uLL);
}

double JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v30[0] = a6 & 1;
  v29[0] = a8 & 1;
  v28[0] = a11 & 1;
  v27[0] = a14 & 1;
  v26[0] = a16 & 1;
  v25[0] = 1;
  v24[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v19[0] = 1;
  v18[0] = 1;
  v17[0] = 1;
  LOBYTE(v31) = 1;
  LOBYTE(v20) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v31;
  *(a9 + 78) = v32;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v30[3];
  *(a9 + 89) = *v30;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v29[3];
  *(a9 + 105) = *v29;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 124) = *&v28[3];
  *(a9 + 121) = *v28;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 140) = *&v27[3];
  *(a9 + 137) = *v27;
  *(a9 + 144) = 0;
  *(a9 + 152) = 1;
  *(a9 + 156) = *&v26[3];
  *(a9 + 153) = *v26;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  *(a9 + 172) = *&v25[3];
  *(a9 + 169) = *v25;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 188) = *&v24[3];
  *(a9 + 185) = *v24;
  *(a9 + 192) = 0;
  *(a9 + 200) = 1;
  *(a9 + 204) = *&v23[3];
  *(a9 + 201) = *v23;
  *(a9 + 208) = 0;
  *(a9 + 216) = 1;
  *(a9 + 220) = *&v22[3];
  *(a9 + 217) = *v22;
  *(a9 + 224) = 0;
  *(a9 + 232) = 1;
  *(a9 + 233) = 2;
  *(a9 + 238) = v21;
  *(a9 + 234) = v20;
  *(a9 + 240) = 0;
  *(a9 + 248) = 1;
  *(a9 + 252) = *&v19[3];
  *(a9 + 249) = *v19;
  *(a9 + 256) = 0;
  *(a9 + 264) = 1;
  *(a9 + 268) = *&v18[3];
  *(a9 + 265) = *v18;
  result = 0.0;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 320) = 2;
  *(a9 + 324) = *&v17[3];
  *(a9 + 321) = *v17;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

double JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v34[0] = a6 & 1;
  v33[0] = a8 & 1;
  v32[0] = a11 & 1;
  v31[0] = a14 & 1;
  v30[0] = a16 & 1;
  v29[0] = a18 & 1;
  v28[0] = a20 & 1;
  v27[0] = 1;
  v26[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v21[0] = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v24) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v35;
  *(a9 + 78) = v36;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v34[3];
  *(a9 + 89) = *v34;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v33[3];
  *(a9 + 105) = *v33;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v32[3];
  *(a9 + 121) = *v32;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v31[3];
  *(a9 + 137) = *v31;
  *(a9 + 144) = 0;
  *(a9 + 152) = 1;
  *(a9 + 156) = *&v30[3];
  *(a9 + 153) = *v30;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  *(a9 + 172) = *&v29[3];
  *(a9 + 169) = *v29;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 188) = *&v28[3];
  *(a9 + 185) = *v28;
  *(a9 + 192) = 0;
  *(a9 + 200) = 1;
  *(a9 + 204) = *&v27[3];
  *(a9 + 201) = *v27;
  *(a9 + 208) = 0;
  *(a9 + 216) = 1;
  *(a9 + 220) = *&v26[3];
  *(a9 + 217) = *v26;
  *(a9 + 224) = 0;
  *(a9 + 232) = 1;
  *(a9 + 233) = 2;
  *(a9 + 238) = v25;
  *(a9 + 234) = v24;
  *(a9 + 240) = 0;
  *(a9 + 248) = 1;
  *(a9 + 252) = *&v23[3];
  *(a9 + 249) = *v23;
  *(a9 + 256) = 0;
  *(a9 + 264) = 1;
  *(a9 + 268) = *&v22[3];
  *(a9 + 265) = *v22;
  result = 0.0;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 320) = 2;
  *(a9 + 324) = *&v21[3];
  *(a9 + 321) = *v21;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:primaryDataConnectionStartTime:primaryDataConnectionEndTime:primaryDataDomainLookupStartTime:primaryDataDomainLookupEndTime:primaryDataFetchStartTime:primaryDataSecureConnectionStartTime:primaryDataConnectionReused:primaryDataRequestMessageSize:primaryDataResponseMessageSize:primaryDataStatusCode:primaryDataEdgeNodeCacheStatus:primaryDataEnvironmentDataCenter:isLowDataMode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42)
{
  v55[0] = a8 & 1;
  v54[0] = a11 & 1;
  v53[0] = a14 & 1;
  v52[0] = a16 & 1;
  v51[0] = a18 & 1;
  v50[0] = a20 & 1;
  v49[0] = a22 & 1;
  v48[0] = a24 & 1;
  v45[0] = a26 & 1;
  v44[0] = a28 & 1;
  v43[0] = a30 & 1;
  LOBYTE(v57) = a32 & 1;
  LOBYTE(v46) = a35 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v56[0] = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v57;
  *(a9 + 78) = v58;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v56[3];
  *(a9 + 89) = *v56;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v55[3];
  *(a9 + 105) = *v55;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v54[3];
  *(a9 + 121) = *v54;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v53[3];
  *(a9 + 137) = *v53;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 156) = *&v52[3];
  *(a9 + 153) = *v52;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 172) = *&v51[3];
  *(a9 + 169) = *v51;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 188) = *&v50[3];
  *(a9 + 185) = *v50;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 204) = *&v49[3];
  *(a9 + 201) = *v49;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 220) = *&v48[3];
  *(a9 + 217) = *v48;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 238) = v47;
  *(a9 + 234) = v46;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 252) = *&v45[3];
  *(a9 + 249) = *v45;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 268) = *&v44[3];
  *(a9 + 265) = *v44;
  *(a9 + 324) = *&v43[3];
  *(a9 + 321) = *v43;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:primaryDataConnectionStartTime:primaryDataConnectionEndTime:primaryDataDomainLookupStartTime:primaryDataDomainLookupEndTime:primaryDataFetchStartTime:primaryDataSecureConnectionStartTime:primaryDataConnectionReused:primaryDataRequestMessageSize:primaryDataResponseMessageSize:primaryDataStatusCode:primaryDataEdgeNodeCacheStatus:primaryDataEnvironmentDataCenter:isLowDataMode:primaryDataAppleTimingApp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  v57[0] = a8 & 1;
  v56[0] = a11 & 1;
  v55[0] = a14 & 1;
  v54[0] = a16 & 1;
  v53[0] = a18 & 1;
  v52[0] = a20 & 1;
  v51[0] = a22 & 1;
  v50[0] = a24 & 1;
  v47[0] = a26 & 1;
  v46[0] = a28 & 1;
  v45[0] = a30 & 1;
  LOBYTE(v59) = a32 & 1;
  LOBYTE(v48) = a35 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v58[0] = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v59;
  *(a9 + 78) = v60;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v58[3];
  *(a9 + 89) = *v58;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v57[3];
  *(a9 + 105) = *v57;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v56[3];
  *(a9 + 121) = *v56;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v55[3];
  *(a9 + 137) = *v55;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 156) = *&v54[3];
  *(a9 + 153) = *v54;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 172) = *&v53[3];
  *(a9 + 169) = *v53;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 188) = *&v52[3];
  *(a9 + 185) = *v52;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 204) = *&v51[3];
  *(a9 + 201) = *v51;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 220) = *&v50[3];
  *(a9 + 217) = *v50;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 238) = v49;
  *(a9 + 234) = v48;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 252) = *&v47[3];
  *(a9 + 249) = *v47;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 268) = *&v46[3];
  *(a9 + 265) = *v46;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  *(a9 + 324) = *&v45[3];
  *(a9 + 321) = *v45;
  *(a9 + 328) = a43;
  *(a9 + 336) = a44;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  return result;
}

char *sub_1AB384480(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v2 *a2];
  v6 = __OFADD__(v4, v5);
  result = &v5[v4];
  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t AMSURLResult.clientCorrelationKey.getter()
{
  v1 = [v0 responseCorrelationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AB460544();

  return v3;
}

void *AMSURLResult.transactionMetrics.getter()
{
  v1 = [v0 taskMetrics];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transactionMetrics];

    sub_1AB3845D4();
    v4 = sub_1AB460954();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1AB0B4CE4(v4);

  return v5;
}

unint64_t sub_1AB3845D4()
{
  result = qword_1ED4D1390;
  if (!qword_1ED4D1390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D1390);
  }

  return result;
}

uint64_t sub_1AB384628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 344))
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

uint64_t sub_1AB384684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 344) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 344) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1AB384980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1AB0B9254(a1, v6);

  return sub_1AB3D3474(v6, v4, a2);
}

uint64_t sub_1AB384A34(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  v4 = *(v2 + 16);
  sub_1AB0B9254(a1, v6);

  return a2(v6, v4);
}

double sub_1AB384A98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1AB0B9254(a1, v6);

  return sub_1AB3D2F38(v6, v4, a2);
}

double sub_1AB384B10(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1AB465FA0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  return result;
}

uint64_t sub_1AB384B50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1AB0B9254(a1, v6);

  result = sub_1AB3D36C0(v6, v4);
  *a2 = result;
  return result;
}

uint64_t JSONArray.count.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t JSONArray.subscript.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t JSONArray.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v7);
  return (*(v8 + 48))(a1, a2, a3, v7, v8);
}

_OWORD *sub_1AB384CF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB0165C4(a1, v5);
  a2[3] = &type metadata for FoundationValue;
  a2[4] = &off_1F1FFB5A8;
  v3 = swift_allocObject();
  *a2 = v3;
  return sub_1AB014B78(v5, (v3 + 16));
}

id sub_1AB384D5C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AB1DF338(*a1);
  *(a2 + 24) = &type metadata for DirectValue;
  *(a2 + 32) = &off_1F1FFB710;
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t JSONArray.isEmpty.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t JSONArray.objects.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t JSONArray.bridgedPrimitiveValues<A>()(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t JSONArray.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v7);
  return (*(v8 + 56))(a1, a2, a3, v7, v8);
}

uint64_t JSONArray.filter(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 64))(a1, a2, v5, v6);
}

uint64_t JSONArray.reduce<A>(_:nextResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v9);
  return (*(v10 + 72))(a1, a2, a3, a4, v9, v10);
}

uint64_t JSONArray.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t JSONArray.contains(where:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 88))(a1, a2, v5, v6) & 1;
}

uint64_t sub_1AB38512C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AB4601B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AB4601F4();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_1AB38893C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_1AB3853CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AB4601B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB4601F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(v4 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  aBlock[4] = sub_1AB388B34;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_62;
  v17 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v19[1] = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v15, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_1AB38565C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1AB4601B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB4601F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1AB388BC0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_74;
  v15 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_1AB3858E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB4601B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1AB3888F0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_40;
  v13 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v11, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AB385B5C(uint64_t a1)
{
  v3 = sub_1AB4601B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1AB4601F4();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438548);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v18 - v12;
  v18[1] = *(v1 + 16);
  sub_1AB3889B4(a1, v18 - v12);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  sub_1AB388A24(v13, v15 + v14);
  aBlock[4] = sub_1AB388A94;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_50;
  v16 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v9, v6, v16);
  _Block_release(v16);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v19);
}

uint64_t sub_1AB385E74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB4601B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1AB38897C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_38;
  v13 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v15[1] = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v11, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AB3860F0(char a1)
{
  v3 = sub_1AB4601B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4601F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1 & 1;
  aBlock[4] = sub_1AB388928;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_14;
  v12 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AB386368(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    result = swift_beginAccess();
    for (i = 0; i != v3; ++i)
    {
      v8 = *(a2 + 24);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = 0;
        while (*(v8 + 8 * v10 + 32) != *(v6 + 8 * i))
        {
          if (v9 == ++v10)
          {
            goto LABEL_3;
          }
        }

        swift_beginAccess();

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 24) = v8;
        if ((result & 1) == 0)
        {
          result = a3(v8);
          v8 = result;
          *(a2 + 24) = result;
        }

        v11 = *(v8 + 16);
        if (v11 <= v10)
        {
          __break(1u);
          return result;
        }

        v12 = v11 - 1;
        memmove((v8 + 8 * v10 + 32), (v8 + 8 * v10 + 40), 8 * (v11 - v10) - 8);
        *(v8 + 16) = v12;
        *(a2 + 24) = v8;
        swift_endAccess();
      }

LABEL_3:
      ;
    }
  }

  return result;
}

uint64_t sub_1AB3864B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 32;
    result = swift_beginAccess();
    for (i = 0; i != v2; ++i)
    {
      v6 = *(a2 + 24);
      v7 = v6[2];
      if (v7)
      {
        v8 = 0;
        while (v6[v8 + 4] != *(v4 + 8 * i))
        {
          if (v7 == ++v8)
          {
            goto LABEL_3;
          }
        }

        swift_beginAccess();

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 24) = v6;
        if ((result & 1) == 0)
        {
          result = sub_1AB3C4BC0(v6);
          v6 = result;
          *(a2 + 24) = result;
        }

        v9 = v6[2];
        if (v9 <= v8)
        {
          __break(1u);
          return result;
        }

        v10 = v9 - 1;
        memmove(&v6[v8 + 4], &v6[v8 + 5], 8 * (v9 - v8) - 8);
        v6[2] = v10;
        *(a2 + 24) = v6;
        swift_endAccess();
      }

LABEL_3:
      ;
    }
  }

  return result;
}

uint64_t sub_1AB3865E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5)
{
  v39 = a5;
  v9 = sub_1AB4601F4();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1AB4601B4();
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v35 = a1;
  v12 = *(a1 + 24);
  v13 = *(v12 + 16);
  if (v13)
  {

    v14 = MEMORY[0x1E69E7CC0];
    v15 = 32;
    do
    {
      v16 = *(v12 + v15);
      v17 = *(*v16 + 88);

      if (v17(v18) & 1) != 0 && (aBlock = a2, v41 = a3, v42 = a4, v43 = v39, v19 = (*(*v16 + 104))(&aBlock), (v17(v19)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1AB2AFAA0(0, v14[2] + 1, 1, v14);
        }

        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          v14 = sub_1AB2AFAA0((v20 > 1), v21 + 1, 1, v14);
        }

        v14[2] = v21 + 1;
        v14[v21 + 4] = v16;
      }

      v15 += 8;
      --v13;
    }

    while (v13);

    if (v14[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      v22 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
      v23 = v33;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      sub_1AB4601A4();
      aBlock = v24;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01649C();
      v25 = v32;
      v26 = v36;
      sub_1AB4614E4();
      v27 = swift_allocObject();
      *(v27 + 16) = v14;
      *(v27 + 24) = v22;
      v44 = sub_1AB38894C;
      v45 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1AB01D528;
      v43 = &block_descriptor_32;
      v28 = _Block_copy(&aBlock);

      v29 = v34;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1AC59C480](0, v29, v25, v28);
      _Block_release(v28);
      (*(v37 + 8))(v29, v38);
      (*(v23 + 8))(v25, v26);
    }
  }
}

uint64_t sub_1AB386A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1AB4601F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1AB4601B4();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v37 = a1;
  v12 = *(a1 + 24);
  v13 = *(v12 + 16);
  if (v13)
  {
    v32 = v9;
    v33 = v8;
    v14 = a4 & 1;

    v15 = MEMORY[0x1E69E7CC0];
    v16 = 32;
    do
    {
      v17 = *(v12 + v16);
      v18 = *(*v17 + 88);

      if (v18(v19) & 1) != 0 && (aBlock = a2, v40 = a3, LOBYTE(v41) = v14, v20 = (*(*v17 + 104))(&aBlock), (v18(v20)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1AB2B00B8(0, v15[2] + 1, 1, v15);
        }

        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          v15 = sub_1AB2B00B8((v21 > 1), v22 + 1, 1, v15);
        }

        v15[2] = v22 + 1;
        v15[v22 + 4] = v17;
      }

      v16 += 8;
      --v13;
    }

    while (v13);

    v9 = v32;
    v8 = v33;
    if (v15[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      v23 = v37;
      v33 = *(v37 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
      v24 = v35;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      sub_1AB4601A4();
      aBlock = v25;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01649C();
      v26 = v34;
      v27 = v38;
      sub_1AB4614E4();
      v28 = swift_allocObject();
      *(v28 + 16) = v15;
      *(v28 + 24) = v23;
      v43 = sub_1AB388B44;
      v44 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_1AB01D528;
      v42 = &block_descriptor_68;
      v29 = _Block_copy(&aBlock);

      v30 = v36;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1AC59C480](0, v30, v26, v29);
      _Block_release(v29);
      (*(v9 + 8))(v30, v8);
      (*(v24 + 8))(v26, v27);
    }
  }
}

uint64_t sub_1AB386E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB4601F4();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1AB4601B4();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = *(v9 + 16);
  if (v10)
  {
    v28 = v6;

    v11 = MEMORY[0x1E69E7CC0];
    v12 = 32;
    do
    {
      v13 = *(v9 + v12);
      v14 = *(*v13 + 88);

      if (v14(v15) & 1) != 0 && (aBlock = a2, v35 = a3, v16 = (*(*v13 + 104))(&aBlock), (v14(v16)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1AB2B035C(0, v11[2] + 1, 1, v11);
        }

        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          v11 = sub_1AB2B035C((v17 > 1), v18 + 1, 1, v11);
        }

        v11[2] = v18 + 1;
        v11[v18 + 4] = v13;
      }

      v12 += 8;
      --v10;
    }

    while (v10);

    v6 = v28;
    if (v11[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
      v19 = v30;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      sub_1AB4601A4();
      aBlock = v20;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01649C();
      v21 = v29;
      v22 = v32;
      sub_1AB4614E4();
      v23 = swift_allocObject();
      *(v23 + 16) = v11;
      *(v23 + 24) = a1;
      v38 = sub_1AB388BCC;
      v39 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_1AB01D528;
      v37 = &block_descriptor_80;
      v24 = _Block_copy(&aBlock);

      v25 = v31;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1AC59C480](0, v25, v21, v24);
      _Block_release(v24);
      (*(v33 + 8))(v25, v6);
      (*(v19 + 8))(v21, v22);
    }
  }
}

uint64_t sub_1AB3872D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB4601F4();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1AB4601B4();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = v4;

    v10 = MEMORY[0x1E69E7CC0];
    v11 = 32;
    do
    {
      v12 = *(v8 + v11);
      v13 = *(*v12 + 88);

      if (v13(v14) & 1) != 0 && (aBlock[0] = a2, v15 = (*(*v12 + 104))(aBlock), (v13(v15)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AB2B0380(0, v10[2] + 1, 1, v10);
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          v10 = sub_1AB2B0380((v16 > 1), v17 + 1, 1, v10);
        }

        v10[2] = v17 + 1;
        v10[v17 + 4] = v12;
      }

      v11 += 8;
      --v9;
    }

    while (v9);

    v4 = v25;
    if (v10[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      sub_1AB4601A4();
      aBlock[0] = v18;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01649C();
      v19 = v26;
      v20 = v28;
      sub_1AB4614E4();
      v21 = swift_allocObject();
      *(v21 + 16) = v10;
      *(v21 + 24) = a1;
      aBlock[4] = sub_1AB3888F8;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AB01D528;
      aBlock[3] = &block_descriptor_8;
      v22 = _Block_copy(aBlock);

      v23 = v27;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1AC59C480](0, v23, v19, v22);
      _Block_release(v22);
      (*(v29 + 8))(v23, v4);
      (*(v6 + 8))(v19, v20);
    }
  }
}

uint64_t sub_1AB38770C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB4601F4();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1AB4601B4();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = v4;

    v10 = MEMORY[0x1E69E7CC0];
    v11 = 32;
    do
    {
      v12 = *(v8 + v11);
      v13 = *(*v12 + 88);

      if (v13(v14) & 1) != 0 && (v15 = (*(*v12 + 104))(a2), (v13(v15)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AB2B0D54(0, v10[2] + 1, 1, v10);
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          v10 = sub_1AB2B0D54((v16 > 1), v17 + 1, 1, v10);
        }

        v10[2] = v17 + 1;
        v10[v17 + 4] = v12;
      }

      v11 += 8;
      --v9;
    }

    while (v9);

    v4 = v25;
    if (v10[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      sub_1AB4601A4();
      aBlock[0] = v18;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01649C();
      v19 = v26;
      v20 = v28;
      sub_1AB4614E4();
      v21 = swift_allocObject();
      *(v21 + 16) = v10;
      *(v21 + 24) = a1;
      aBlock[4] = sub_1AB388B04;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AB01D528;
      aBlock[3] = &block_descriptor_56;
      v22 = _Block_copy(aBlock);

      v23 = v27;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1AC59C480](0, v23, v19, v22);
      _Block_release(v22);
      (*(v29 + 8))(v23, v4);
      (*(v6 + 8))(v19, v20);
    }
  }
}

uint64_t sub_1AB387B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB4601F4();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1AB4601B4();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = v4;

    v10 = MEMORY[0x1E69E7CC0];
    v11 = 32;
    do
    {
      v12 = *(v8 + v11);
      v13 = *(*v12 + 88);

      if (v13(v14) & 1) != 0 && (aBlock[0] = a2, v15 = (*(*v12 + 104))(aBlock), (v13(v15)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AB2B13B4(0, v10[2] + 1, 1, v10);
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          v10 = sub_1AB2B13B4((v16 > 1), v17 + 1, 1, v10);
        }

        v10[2] = v17 + 1;
        v10[v17 + 4] = v12;
      }

      v11 += 8;
      --v9;
    }

    while (v9);

    v4 = v25;
    if (v10[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      sub_1AB4601A4();
      aBlock[0] = v18;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01649C();
      v19 = v26;
      v20 = v28;
      sub_1AB4614E4();
      v21 = swift_allocObject();
      *(v21 + 16) = v10;
      *(v21 + 24) = a1;
      aBlock[4] = sub_1AB388984;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AB01D528;
      aBlock[3] = &block_descriptor_44;
      v22 = _Block_copy(aBlock);

      v23 = v27;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1AC59C480](0, v23, v19, v22);
      _Block_release(v22);
      (*(v29 + 8))(v23, v4);
      (*(v6 + 8))(v19, v20);
    }
  }
}

uint64_t sub_1AB387F80(uint64_t a1, char a2)
{
  v4 = sub_1AB4601F4();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1AB4601B4();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v26 = v4;
    v10 = a2 & 1;

    v11 = MEMORY[0x1E69E7CC0];
    v12 = 32;
    do
    {
      v13 = *(v8 + v12);
      v14 = *(*v13 + 88);

      if (v14(v15) & 1) != 0 && (LOBYTE(aBlock[0]) = v10, v16 = (*(*v13 + 104))(aBlock), (v14(v16)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1AB2B1C1C(0, v11[2] + 1, 1, v11);
        }

        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          v11 = sub_1AB2B1C1C((v17 > 1), v18 + 1, 1, v11);
        }

        v11[2] = v18 + 1;
        v11[v18 + 4] = v13;
      }

      v12 += 8;
      --v9;
    }

    while (v9);

    v4 = v26;
    if (v11[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439700);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      sub_1AB4601A4();
      aBlock[0] = v19;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
      sub_1AB01649C();
      v20 = v27;
      v21 = v29;
      sub_1AB4614E4();
      v22 = swift_allocObject();
      *(v22 + 16) = v11;
      *(v22 + 24) = a1;
      aBlock[4] = sub_1AB388934;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AB01D528;
      aBlock[3] = &block_descriptor_20_1;
      v23 = _Block_copy(aBlock);

      v24 = v28;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1AC59C480](0, v24, v20, v23);
      _Block_release(v23);
      (*(v30 + 8))(v24, v4);
      (*(v6 + 8))(v20, v21);
    }
  }
}

void *InMemoryMetricsEventRecorder.__allocating_init(historySize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BA88);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v2[2] = a1;
  v2[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BA90);
  swift_allocObject();
  v2[4] = sub_1AB03356C();
  return v2;
}

void *InMemoryMetricsEventRecorder.init(historySize:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BA88);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v2[2] = a1;
  v2[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BA90);
  swift_allocObject();
  v2[4] = sub_1AB03356C();
  return v2;
}

uint64_t InMemoryMetricsEventRecorder.eventsSnapshot.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

Swift::Void __swiftcall InMemoryMetricsEventRecorder.record(_:on:)(JetEngine::LintedMetricsEvent _, Swift::String_optional on)
{
  countAndFlagsBits = on.value._countAndFlagsBits;
  rawValue = _.issues._rawValue;
  v5 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  v7 = *(v2 + 24);
  os_unfair_lock_lock((v7 + 24));
  sub_1AB388708((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  sub_1AB38512C(rawValue, countAndFlagsBits, v5, v6);
}

uint64_t sub_1AB3885F4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AB2B1850(0, v12[2] + 1, 1, v12);
    v12 = result;
  }

  v15 = v12[2];
  v14 = v12[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    result = sub_1AB2B1850((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  v12[2] = v16;
  v17 = &v12[4 * v15];
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  *a1 = v12;
  v18 = *(a6 + 16);
  v19 = v16 - v18;
  if (__OFSUB__(v16, v18))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v19 < 1)
  {
    return result;
  }

  if (v16 < v19)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_1AB3BE57C(0, v19);
}

uint64_t InMemoryMetricsEventRecorder.flush()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8B8);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t InMemoryMetricsEventRecorder.deinit()
{

  return v0;
}

uint64_t InMemoryMetricsEventRecorder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB38882C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8B8);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t sub_1AB3889B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB388A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB388A94()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438548) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1AB38770C(v2, v3);
}

uint64_t objectdestroy_58Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AB388C54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 >> 62)
  {
    v11 = a1;
    v12 = sub_1AB4618F4();
    a1 = v11;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v7 = a1;

    sub_1AB1688CC(a3, v15);
    result = sub_1AB228264(v7, a3);
    *a4 = result;
    a4[1] = v9;
    a4[2] = v10;
    return result;
  }

  sub_1AB1BA4A4();
  swift_allocError();
  v14 = v13;
  if (!*(a2 + 16))
  {
    sub_1AB40BED8("JetEngine/CompoundError.swift", 0x1DuLL, 2, 0x15uLL);
  }

  *v14 = a2;
  swift_willThrow();
}

uint64_t sub_1AB388D58(void *a1)
{
  v3 = [objc_opt_self() currentContext];
  if (v3)
  {
    v4 = v3;
    sub_1AB388EC0(v3, a1, v1);
    v6 = v5;

    return v6;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

void sub_1AB388EC0(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1AB087FF4();
  if (v7)
  {
    v8 = v7;
    sub_1AB167B50(a2, v17);
    if (v3)
    {
    }

    else
    {
      v16.super.isa = *(a3 + OBJC_IVAR____TtC9JetEngine16JSPlatformObject_bag);
      v10 = *(a3 + OBJC_IVAR____TtC9JetEngine16JSPlatformObject_process);
      swift_unknownObjectRetain();
      v11 = sub_1AB1672E4(&v16, v10);
      swift_unknownObjectRelease();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v13 = v17[0];
      *(v12 + 40) = v17[1];
      v14 = v17[3];
      *(v12 + 56) = v17[2];
      *(v12 + 72) = v14;
      v15 = v18;
      *(v12 + 24) = v13;
      *(v12 + 88) = v15;
      *(v12 + 96) = v8;
      JSPromise.init(in:executor:)(a1, sub_1AB389B94, v12, &v16);
    }
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(v16.super.isa) = 1;
    v19 = 1;
    *v9 = 0xD00000000000002CLL;
    *(v9 + 8) = 0x80000001AB50BFE0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1AB389068(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *(a5 + 48);
  *(v12 + 48) = *(a5 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a5 + 64);
  v14 = *(a5 + 16);
  *(v12 + 16) = *a5;
  *(v12 + 32) = v14;
  sub_1AB1688CC(a5, &v21);
  sub_1AB357974(a4, sub_1AB389BB8, v12);

  sub_1AB1A9DF4(a2, &v21);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v21;
  *(v15 + 32) = v16;
  *(v15 + 48) = v23[0];
  *(v15 + 56) = a1;
  sub_1AB1A9DF4(a3, v26);
  v17 = swift_allocObject();
  v18 = v26[1];
  *(v17 + 16) = v26[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v27;
  *(v17 + 56) = a1;
  v25[3] = type metadata accessor for RunLoopWorkerThread();
  v25[4] = &protocol witness table for RunLoopWorkerThread;
  v25[0] = a6;
  *&v21 = sub_1AB389BD4;
  *(&v21 + 1) = v15;
  *&v22 = sub_1AB389C20;
  *(&v22 + 1) = v17;
  sub_1AB01494C(v25, v23);
  v24 = 0;
  v19 = a1;

  sub_1AB198DDC(&v21);

  sub_1AB014AC0(&v21, &qword_1EB4376C8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

void sub_1AB389250(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  sub_1AB225AAC(a3, v4, v5, v6, v22);
  v8 = v23;
  v9 = v24;
  __swift_project_boxed_opaque_existential_1Tm(v22, v23);
  v15 = (*(v9 + 16))(a3, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  *(v7 + 56) = sub_1AB054C38();
  *(v7 + 32) = v15;
  v16.super.isa = JSCallable.call(withArguments:)(v7).super.isa;
  if (v17.super.isa)
  {

    if (qword_1EB433A58 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB46C108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    v23 = MEMORY[0x1E69E6158];
    v22[0] = 0xD00000000000002DLL;
    v22[1] = 0x80000001AB50C040;
    *(v12 + 48) = 0u;
    *(v12 + 32) = 0u;
    sub_1AB0169C4(v22, v12 + 32);
    *(v12 + 64) = 0;
    *(v11 + 32) = v12;
    swift_getErrorValue();
    v23 = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D4720;
    sub_1AB01522C(v22, v19);
    *(v14 + 48) = 0u;
    *(v14 + 32) = 0u;
    sub_1AB0169C4(v19, v14 + 32);
    *(v14 + 64) = 0;
    *(v11 + 40) = v14;
    sub_1AB014AC0(v22, &unk_1EB437E60);
    v22[0] = v10;
    v19[0] = 0;
    OSLogger.log(contentsOf:withLevel:)(v11, v19);
  }

  else
  {
    isa = v16.super.isa;
  }
}

void sub_1AB38953C(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v6 = a1;
  sub_1AB1E1568(a1, v29);
  v26 = v29[4];
  v27 = v29[5];
  v28 = v30;
  v22 = v29[0];
  v23 = v29[1];
  v24 = v29[2];
  v25 = v29[3];
  JSError.jsRepresentation(in:)(a3, v19);
  v7 = v20;
  v8 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v14 = (*(v8 + 16))(a3, v7, v8);
  sub_1AB1A9E68(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  *(v5 + 56) = sub_1AB054C38();
  *(v5 + 32) = v14;
  v15.super.isa = JSCallable.call(withArguments:)(v5).super.isa;
  if (v16.super.isa)
  {

    if (qword_1EB433A58 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB46C108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    *(&v23 + 1) = MEMORY[0x1E69E6158];
    *&v22 = 0xD00000000000002CLL;
    *(&v22 + 1) = 0x80000001AB50C010;
    *(v11 + 48) = 0u;
    *(v11 + 32) = 0u;
    sub_1AB0169C4(&v22, v11 + 32);
    *(v11 + 64) = 0;
    *(v10 + 32) = v11;
    swift_getErrorValue();
    *(&v23 + 1) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    sub_1AB01522C(&v22, v19);
    *(v13 + 48) = 0u;
    *(v13 + 32) = 0u;
    sub_1AB0169C4(v19, v13 + 32);
    *(v13 + 64) = 0;
    *(v10 + 40) = v13;
    sub_1AB014AC0(&v22, &unk_1EB437E60);
    *&v22 = v9;
    LOBYTE(v19[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v10, v19);
  }

  else
  {
    isa = v15.super.isa;
  }
}

uint64_t sub_1AB3899E0()
{
  v0 = [objc_opt_self() currentContext];
  if (v0)
  {
    v1 = v0;
    sub_1AB0C3EF0();
    v2 = swift_allocError();
    *v3 = 0xD000000000000024;
    *(v3 + 8) = 0x80000001AB50BF90;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0;
    swift_willThrow();
    v4 = v2;
    v5 = [v1 exceptionHandler];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1AB23E418(v2, v1);
      (v6)[2](v6, v1, v7);
      _Block_release(v6);
    }

    v8 = [objc_opt_self() valueWithUndefinedInContext_];
    if (v8)
    {
      v9 = v8;

      return v9;
    }

    __break(1u);
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t objectdestroy_12Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB389C30(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v2 + OBJC_IVAR____TtC9JetEngine14JSLazyProvider_lazyDependencies);
    if (*(v7 + 16))
    {
      v8 = sub_1AB014DB4(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 16 * v8);

        v10(v16, v11);
        v12 = v17;
        v13 = v18;
        __swift_project_boxed_opaque_existential_1Tm(v16, v17);
        v14 = (*(v13 + 16))(v6, v12, v13);

        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        return v14;
      }
    }
  }

  sub_1AB428538("JetEngine/JSLazyProvider.swift", 30, 2, 62, a1, a2);

  return 0;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AB389ED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB389F1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AB389F88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1AB389FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1160) = a8;
  *(v8 + 1152) = a7;
  *(v8 + 1144) = a6;
  *(v8 + 217) = a5;
  *(v8 + 1136) = a4;
  *(v8 + 1128) = a3;
  *(v8 + 1120) = a2;
  *(v8 + 1112) = a1;
  v9 = type metadata accessor for MTMetricsIdentifier();
  *(v8 + 1168) = v9;
  *(v8 + 1176) = *(v9 - 8);
  *(v8 + 1184) = swift_task_alloc();
  *(v8 + 1192) = swift_task_alloc();
  *(v8 + 1200) = swift_task_alloc();
  *(v8 + 1208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  *(v8 + 1216) = swift_task_alloc();
  *(v8 + 1224) = swift_task_alloc();
  v10 = sub_1AB45F9B4();
  *(v8 + 1232) = v10;
  *(v8 + 1240) = *(v10 - 8);
  *(v8 + 1248) = swift_task_alloc();
  *(v8 + 1256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB09E364, 0, 0);
}

uint64_t sub_1AB38A1A0()
{
  v1 = v0 + 10;
  v0[10] = v0;
  v0[15] = v0 + 135;
  v0[11] = sub_1AB38A26C;
  v0[28] = swift_continuation_init();
  v2 = (v0 + 28);
  *(v2 + 72) = 1;
  sub_1AB1942DC(v2);
  sub_1AB014AC0(v2, &unk_1EB4377E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB38A26C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1296) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB38A398;
  }

  else
  {

    *(v1 + 1304) = *(v1 + 1080);
    v3 = sub_1AB0B08B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB38A398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38A490()
{
  v11 = v0;

  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  v0[118] = MEMORY[0x1E69E6158];
  v0[115] = 0xD000000000000022;
  v0[116] = 0x80000001AB50A320;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_1AB0169C4((v0 + 115), v6 + 32);
  *(v6 + 64) = 0;
  *(v5 + 32) = v6;
  v10 = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, &v10);

  v7 = v0[163];

  v8 = v0[1];

  return v8(v7);
}

void *sub_1AB38A6A8(void *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for MTStandardIDServiceWrapper();
    v4 = swift_allocObject();
    v4[2] = [objc_allocWithZone(JESoftLinkedMTStandardIDService) initWithAMSBag_];
    v4[3] = a2;
    v4[4] = 0;
    swift_beginAccess();
    *a1 = v4;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1AB38A764(uint64_t a1)
{
  *(*v1 + 72) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AB38A884, 0, 0);
}

uint64_t sub_1AB38A884()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = *(v2 + 40);
    v5 = *(v2 + 104);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1AB0AED5C;
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[5];
    v10 = v0[3];

    return sub_1AB389FF4(v1, v7, v4, v8, v5, v9, v10, v3);
  }

  else
  {
    sub_1AB255CA8();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1AB38A9D0(uint64_t a1)
{
  *(v2 + 1568) = v1;
  *(v2 + 1560) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB38A9F4, 0, 0);
}

uint64_t sub_1AB38A9F4()
{
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1560);
  sub_1AB38C134(v1, v0 + 1336);
  v3 = swift_allocObject();
  v4 = *(v0 + 1416);
  *(v3 + 80) = *(v0 + 1400);
  *(v3 + 96) = v4;
  *(v3 + 105) = *(v0 + 1425);
  v5 = *(v0 + 1352);
  *(v3 + 16) = *(v0 + 1336);
  *(v3 + 32) = v5;
  v6 = *(v0 + 1384);
  *(v3 + 48) = *(v0 + 1368);
  *(v3 + 64) = v6;
  *(v3 + 128) = v2;
  v7 = swift_allocObject();
  *(v0 + 1576) = v7;
  *(v7 + 16) = &unk_1AB4EFD00;
  *(v7 + 24) = v3;

  swift_asyncLet_begin();
  sub_1AB38C134(v1, v0 + 1448);
  v8 = swift_allocObject();
  v9 = *(v0 + 1528);
  *(v8 + 80) = *(v0 + 1512);
  *(v8 + 96) = v9;
  *(v8 + 105) = *(v0 + 1537);
  v10 = *(v0 + 1464);
  *(v8 + 16) = *(v0 + 1448);
  *(v8 + 32) = v10;
  v11 = *(v0 + 1496);
  *(v8 + 48) = *(v0 + 1480);
  *(v8 + 64) = v11;
  *(v8 + 128) = v2;
  v12 = swift_allocObject();
  *(v0 + 1584) = v12;
  *(v12 + 16) = &unk_1AB4EFD18;
  *(v12 + 24) = v8;

  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 16, v13, sub_1AB38ABCC, v0 + 1296);
}

uint64_t sub_1AB38ABCC(uint64_t a1, uint64_t a2)
{
  *(v3 + 1592) = v2;
  if (v2)
  {
    return MEMORY[0x1EEE6DEB0](v3 + 656, a2, sub_1AB38AD04, v3 + 1296);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v3 + 656, a2, sub_1AB38AC0C, v3 + 1296);
  }
}

uint64_t sub_1AB38AC0C(uint64_t a1, uint64_t a2)
{
  *(v3 + 1600) = v2;
  if (v2)
  {
    v4 = sub_1AB38ADC8;
  }

  else
  {
    v4 = sub_1AB38AC40;
  }

  return MEMORY[0x1EEE6DEB0](v3 + 656, a2, v4, v3 + 1296);
}

uint64_t sub_1AB38AC94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38AD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38AE1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38AE8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB38AEAC, 0, 0);
}

uint64_t sub_1AB38AEAC()
{
  v10 = v0;
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2 && (v3 = sub_1AB1AFEFC(v2, 0), v4 = sub_1AB1AF80C(&v9, v3 + 4, v2, v1), , v5 = sub_1AB2241F0(), v4 != v2))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 176) = sub_1AB18A7D0();

    v5 = sub_1AB38AFC4;
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AB38AFC4()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_1AB38B088;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB1946AC(v2);
  sub_1AB014AC0(v2, &unk_1EB4378E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB38B088()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB38B1D8, 0, 0);
  }

  else
  {

    v3 = *(v1 + 8);

    return v3();
  }
}

uint64_t sub_1AB38B1D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38B23C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1AB027554;

  return v5();
}

uint64_t sub_1AB38B324(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB38B344, 0, 0);
}

uint64_t sub_1AB38B344()
{
  v1 = v0[2];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 7, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1AB091FE4;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1AB38B494()
{
  v1 = *(v0 + 1560);
  sub_1AB38C134(v1, v0 + 1336);
  v2 = swift_allocObject();
  v3 = *(v0 + 1416);
  v2[5] = *(v0 + 1400);
  v2[6] = v3;
  *(v2 + 105) = *(v0 + 1425);
  v4 = *(v0 + 1352);
  v2[1] = *(v0 + 1336);
  v2[2] = v4;
  v5 = *(v0 + 1384);
  v2[3] = *(v0 + 1368);
  v2[4] = v5;
  v6 = swift_allocObject();
  *(v0 + 1568) = v6;
  *(v6 + 16) = &unk_1AB4EFCB8;
  *(v6 + 24) = v2;
  swift_asyncLet_begin();
  sub_1AB38C134(v1, v0 + 1448);
  v7 = swift_allocObject();
  v8 = *(v0 + 1528);
  v7[5] = *(v0 + 1512);
  v7[6] = v8;
  *(v7 + 105) = *(v0 + 1537);
  v9 = *(v0 + 1464);
  v7[1] = *(v0 + 1448);
  v7[2] = v9;
  v10 = *(v0 + 1496);
  v7[3] = *(v0 + 1480);
  v7[4] = v10;
  v11 = swift_allocObject();
  *(v0 + 1576) = v11;
  *(v11 + 16) = &unk_1AB4EFCD8;
  *(v11 + 24) = v7;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 16, v12, sub_1AB38B640, v0 + 1296);
}

uint64_t sub_1AB38B640(uint64_t a1, uint64_t a2)
{
  *(v3 + 1584) = v2;
  if (v2)
  {
    return MEMORY[0x1EEE6DEB0](v3 + 656, a2, sub_1AB38B778, v3 + 1296);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v3 + 656, a2, sub_1AB38B680, v3 + 1296);
  }
}

uint64_t sub_1AB38B680(uint64_t a1, uint64_t a2)
{
  *(v3 + 1592) = v2;
  if (v2)
  {
    v4 = sub_1AB38B83C;
  }

  else
  {
    v4 = sub_1AB38B6B4;
  }

  return MEMORY[0x1EEE6DEB0](v3 + 656, a2, v4, v3 + 1296);
}

uint64_t sub_1AB38B708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38B7CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38B890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38B920()
{
  v1 = *(v0[20] + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
  v2 = swift_allocObject();
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v5 = *(v1 + 16);
  v0[14] = sub_1AB1821EC;
  v0[15] = v2;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AB389F88;
  v0[13] = &block_descriptor_41;
  v6 = _Block_copy(v0 + 10);

  [v5 performMaintenanceWithCompletion_];
  _Block_release(v6);

  return MEMORY[0x1EEE6DFA0](sub_1AB38BA84, 0, 0);
}

uint64_t sub_1AB38BA84()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_1AB38BB48;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB1946AC(v2);
  sub_1AB014AC0(v2, &unk_1EB4378E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB38BB48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1AB38BCC8;
  }

  else
  {
    v2 = sub_1AB38BC64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB38BC64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38BCC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38BD4C()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 7, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1AB38BE74;

  return v6(v2, v3);
}

uint64_t sub_1AB38BE74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB38BF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB200878;

  return sub_1AB09C538(a1, a2, a3);
}

uint64_t sub_1AB38C014(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return sub_1AB38A9D0(a1);
}

uint64_t sub_1AB38C0A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027460;

  return sub_1AB38B474();
}

uint64_t sub_1AB38C16C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1AB027554;

  return sub_1AB38B900(v0 + 16);
}

uint64_t sub_1AB38C200(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB38B23C(a1, v4);
}

uint64_t sub_1AB38C2B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1AB027460;

  return sub_1AB38BD2C(v0 + 16);
}

uint64_t sub_1AB38C34C()
{
  v2 = *(v0 + 128);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return sub_1AB38AE8C(v0 + 16, v2);
}

uint64_t objectdestroy_34Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1AB38C448()
{
  v2 = *(v0 + 128);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027554;

  return sub_1AB38B324(v0 + 16, v2);
}

uint64_t sub_1AB38C4EC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1AB181984;
  }

  else
  {
    v2 = sub_1AB3275C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t BaseObjectGraph._hasDependency<A>(_:)(uint64_t a1, uint64_t a2)
{

  LOBYTE(a2) = sub_1AB01D3AC(a1, a2);

  return a2 & 1;
}

uint64_t sub_1AB38C660()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[86];
  (*(v0[98] + 8))(v0[99], v0[97]);

  sub_1AB38DE5C(v1, v5);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB38C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[87] = a4;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439670);
  v4[88] = swift_task_alloc();
  v5 = type metadata accessor for _ResolvedDependency();
  v4[89] = v5;
  v4[90] = *(v5 - 8);
  v4[91] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v4[92] = v6;
  v4[93] = *(v6 - 8);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439680);
  v4[96] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439688);
  v4[97] = v7;
  v4[98] = *(v7 - 8);
  v4[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v8 = sub_1AB45FF84();
  v4[106] = v8;
  v4[107] = *(v8 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB38CAF4, 0, 0);
}

uint64_t sub_1AB38CAF4()
{
  v89 = v0;
  if (qword_1EB434BA8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1AB45FFC4();
    __swift_project_value_buffer(v1, qword_1EB46C230);
    sub_1AB45FFA4();
    sub_1AB45FF54();
    v2 = sub_1AB45FFA4();
    v3 = sub_1AB461234();
    if (sub_1AB461314())
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "ResolveDependencies", "", v4, 2u);
      MEMORY[0x1AC59F020](v4, -1, -1);
    }

    v6 = *(v0 + 872);
    v7 = *(v0 + 864);
    v8 = *(v0 + 856);
    v9 = *(v0 + 848);
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);

    (*(v8 + 16))(v7, v6, v9);
    sub_1AB460014();
    swift_allocObject();
    v12 = v10;
    v13 = v0 + 632;
    *(v0 + 880) = sub_1AB460004();
    v14 = v10 + 64;
    v15 = -1 << *(v10 + 32);
    v16 = -v15 < 64 ? ~(-1 << -v15) : -1;
    v17 = v16 & *(v10 + 64);
    v18 = (63 - v15) >> 6;
    v87 = v11;
    v19 = v11 + 56;

    v20 = 0;
    v86 = v12;
    if (v17)
    {
      break;
    }

LABEL_11:
    if (v18 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v18;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
        v21 = v13;
        v17 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v20 = v24;
        *(v0 + 56) = 0u;
        goto LABEL_20;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v21 = v13;
        v20 = v22;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v21 = v13;
    v22 = v20;
LABEL_19:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v22 << 6);
    v27 = *(*(v86 + 48) + 8 * v26);
    sub_1AB0165C4(*(v86 + 56) + 32 * v26, v0 + 336);
    *(v0 + 56) = v27;
    sub_1AB014B78((v0 + 336), (v0 + 64));
LABEL_20:
    v28 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v28;
    *(v0 + 48) = *(v0 + 88);
    v29 = *(v0 + 16);
    if (!v29)
    {
      break;
    }

    sub_1AB014B78((v0 + 24), (v0 + 400));
    if (*(v87 + 16) && (sub_1AB4620A4(), MEMORY[0x1AC59D3F0](v29), v30 = sub_1AB462104(), v31 = -1 << *(v87 + 32), v32 = v30 & ~v31, ((*(v19 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (*(*(v87 + 48) + 8 * v32) != v29)
      {
        v32 = (v32 + 1) & v33;
        if (((*(v19 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      sub_1AB0165C4(v0 + 400, v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439690);
      if (swift_dynamicCast())
      {
        v34 = *(v0 + 840);
        v82 = *(v0 + 832);
        sub_1AB0149B0((v0 + 96), v0 + 256);
        v35 = sub_1AB460BE4();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v34, 1, 1, v35);
        sub_1AB01494C(v0 + 256, v0 + 296);
        v37 = swift_allocObject();
        v37[2] = 0;
        v78 = v37 + 2;
        v37[3] = 0;
        v37[4] = v29;
        sub_1AB0149B0((v0 + 296), (v37 + 5));
        sub_1AB014A58(v34, v82, &qword_1EB4384A0);
        v38 = (*(v36 + 48))(v82, 1, v35);
        v39 = *(v0 + 832);
        if (v38 == 1)
        {
          sub_1AB014AC0(*(v0 + 832), &qword_1EB4384A0);
        }

        else
        {
          sub_1AB460BD4();
          (*(v36 + 8))(v39, v35);
        }

        if (*v78)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v46 = sub_1AB460AE4();
          v48 = v47;
          swift_unknownObjectRelease();
        }

        else
        {
          v46 = 0;
          v48 = 0;
        }

        v54 = **(v0 + 680);

        if (v48 | v46)
        {
          v55 = v0 + 528;
          *(v0 + 528) = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v46;
          *(v0 + 552) = v48;
        }

        else
        {
          v55 = 0;
        }

        v56 = *(v0 + 840);
        *(v0 + 608) = 1;
        *(v0 + 616) = v55;
        *(v0 + 624) = v54;
        swift_task_create();

        sub_1AB014AC0(v56, &qword_1EB4384A0);
        v57 = v0 + 256;
        goto LABEL_54;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439698);
      if (swift_dynamicCast())
      {
        v40 = *(v0 + 824);
        v83 = *(v0 + 816);
        sub_1AB0149B0((v0 + 136), v0 + 176);
        v41 = sub_1AB460BE4();
        v42 = *(v41 - 8);
        (*(v42 + 56))(v40, 1, 1, v41);
        sub_1AB01494C(v0 + 176, v0 + 216);
        v43 = swift_allocObject();
        v43[2] = 0;
        v79 = v43 + 2;
        v43[3] = 0;
        v43[4] = v29;
        sub_1AB0149B0((v0 + 216), (v43 + 5));
        sub_1AB014A58(v40, v83, &qword_1EB4384A0);
        v44 = (*(v42 + 48))(v83, 1, v41);
        v45 = *(v0 + 816);
        if (v44 == 1)
        {
          sub_1AB014AC0(*(v0 + 816), &qword_1EB4384A0);
        }

        else
        {
          sub_1AB460BD4();
          (*(v42 + 8))(v45, v41);
        }

        if (*v79)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v58 = sub_1AB460AE4();
          v60 = v59;
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = 0;
          v60 = 0;
        }

        v61 = **(v0 + 680);

        if (v60 | v58)
        {
          v62 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v58;
          *(v0 + 520) = v60;
        }

        else
        {
          v62 = 0;
        }

        v63 = *(v0 + 824);
        *(v0 + 584) = 1;
        *(v0 + 592) = v62;
        *(v0 + 600) = v61;
        swift_task_create();

        sub_1AB014AC0(v63, &qword_1EB4384A0);
        v57 = v0 + 176;
LABEL_54:
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
LABEL_55:
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
        v13 = v0 + 632;
        goto LABEL_56;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
      v13 = v21;
      if (swift_dynamicCast())
      {
        v49 = *(v0 + 808);
        v77 = *(v0 + 800);
        v50 = sub_1AB460BE4();
        v84 = *(v50 - 8);
        v85 = *(v0 + 632);
        (*(v84 + 56))(v49, 1, 1, v50);
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        v80 = (v51 + 16);
        *(v51 + 24) = 0;
        *(v51 + 32) = v29;
        *(v51 + 40) = v85;
        sub_1AB014A58(v49, v77, &qword_1EB4384A0);
        v52 = v50;
        LODWORD(v50) = (*(v84 + 48))(v77, 1, v50);
        swift_unknownObjectRetain();
        v53 = *(v0 + 800);
        if (v50 == 1)
        {
          sub_1AB014AC0(*(v0 + 800), &qword_1EB4384A0);
        }

        else
        {
          sub_1AB460BD4();
          (*(v84 + 8))(v53, v52);
        }

        if (*v80)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v64 = sub_1AB460AE4();
          v66 = v65;
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0;
          v66 = 0;
        }

        v81 = **(v0 + 680);

        if (v66 | v64)
        {
          v67 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v64;
          *(v0 + 488) = v66;
        }

        else
        {
          v67 = 0;
        }

        v68 = *(v0 + 808);
        *(v0 + 560) = 1;
        *(v0 + 568) = v67;
        *(v0 + 576) = v81;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1AB014AC0(v68, &qword_1EB4384A0);
        goto LABEL_55;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
LABEL_56:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 432);
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
      v13 = v21;
      if (!v17)
      {
        goto LABEL_11;
      }
    }
  }

  v69 = *(v0 + 696);

  *(v0 + 648) = v69;

  sub_1AB01CBBC(v70, v88);
  v71 = MEMORY[0x1E69E7CC0];
  if (v88[0])
  {
    v72 = v88[0];
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  sub_1AB460D04();
  *(v0 + 904) = v72;
  *(v0 + 888) = v71;
  v73 = swift_task_alloc();
  *(v0 + 896) = v73;
  *v73 = v0;
  v73[1] = sub_1AB38D704;
  v74 = *(v0 + 776);
  v75 = *(v0 + 768);

  return MEMORY[0x1EEE6DAD8](v75, 0, 0, v74, v0 + 656);
}

uint64_t sub_1AB38D704()
{

  if (v0)
  {

    v1 = sub_1AB3920C4;
  }

  else
  {
    v1 = sub_1AB38D828;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AB38D828()
{
  v61 = v0;
  v2 = *(v0 + 768);
  if ((*(*(v0 + 744) + 48))(v2, 1, *(v0 + 736)) == 1)
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 888);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 856);
    v59 = *(v0 + 848);
    v8 = *(v0 + 688);
    v9 = *(v0 + 672);
    (*(*(v0 + 784) + 8))(*(v0 + 792), *(v0 + 776));
    v60[3] = &type metadata for AsyncObjectGraphMetrics;
    v60[0] = v3;
    sub_1AB1CE624(v60, &type metadata for AsyncObjectGraphMetrics);
    sub_1AB2B5ED0(v4, (v0 + 648), v9);

    sub_1AB38DE5C(v5, v8);

    (*(v7 + 8))(v6, v59);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  sub_1AB066990(v2, v12);
  sub_1AB014A58(v12, v13, &qword_1EB439678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = **(v0 + 752);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 888);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1AB2B0EE8(0, v16[2] + 1, 1, *(v0 + 888));
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB2B0EE8((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v16[v18 + 4] = v14;
    v19 = 1;
  }

  else
  {
    sub_1AB0637F8(*(v0 + 752), *(v0 + 704));
    v19 = 0;
    v16 = *(v0 + 888);
  }

  v20 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  (*(v20 + 56))(v22, v19, 1, v21);
  v24 = *(v20 + 48);
  v23 = v20 + 48;
  if (v24(v22, 1, v21) == 1)
  {
    v25 = *(v0 + 704);
    sub_1AB014AC0(*(v0 + 760), &qword_1EB439678);
    sub_1AB014AC0(v25, &qword_1EB439670);
LABEL_32:
    *(v0 + 888) = v16;
    v58 = swift_task_alloc();
    *(v0 + 896) = v58;
    *v58 = v0;
    v58[1] = sub_1AB38D704;
    v43 = *(v0 + 776);
    v40 = *(v0 + 768);
    v44 = v0 + 656;
    v41 = 0;
    v42 = 0;

    return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
  }

  v26 = *(v0 + 728);
  sub_1AB0637F8(*(v0 + 704), v26);
  v27 = *v26;
  sub_1AB0165C4((v26 + 1), v0 + 368);
  v28 = *(v0 + 648);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 664) = v28;
  v30 = sub_1AB016558(v27);
  v32 = *(v28 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = v31;
  v1 = (v0 + 664);
  if (*(v28 + 24) >= v35)
  {
    if (v29)
    {
LABEL_21:
      v37 = *v1;
      if (v23)
      {
LABEL_22:
        v38 = (v37[7] + 32 * v30);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        sub_1AB014B78((v0 + 368), v38);
LABEL_27:
        *(v0 + 648) = v37;
        v47 = sub_1AB462314();
        v49 = v48;
        sub_1AB45F234();
        v51 = v50;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(v0 + 904);
        if ((v52 & 1) == 0)
        {
          v53 = sub_1AB01E858(0, *(v53 + 2) + 1, 1, *(v0 + 904));
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1AB01E858((v54 > 1), v55 + 1, 1, v53);
        }

        v56 = *(v0 + 760);
        sub_1AB066D28(*(v0 + 728));
        sub_1AB014AC0(v56, &qword_1EB439678);
        *(v53 + 2) = v55 + 1;
        v57 = &v53[24 * v55];
        *(v57 + 4) = v47;
        *(v57 + 5) = v49;
        *(v57 + 6) = v51;
        *(v0 + 904) = v53;
        goto LABEL_32;
      }

LABEL_25:
      v37[(v30 >> 6) + 8] |= 1 << v30;
      *(v37[6] + 8 * v30) = v27;
      v40 = sub_1AB014B78((v0 + 368), (v37[7] + 32 * v30));
      v45 = v37[2];
      v34 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v34)
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
      }

      v37[2] = v46;
      goto LABEL_27;
    }

LABEL_24:
    v39 = v30;
    sub_1AB01A034();
    v30 = v39;
    v37 = *v1;
    if (v23)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  sub_1AB01A340(v35, v29);
  v30 = sub_1AB016558(v27);
  if ((v23 & 1) == (v36 & 1))
  {
    goto LABEL_21;
  }

  return sub_1AB461FC4();
}

uint64_t sub_1AB38DE5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AB45FFD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1AB45FF84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v11 = sub_1AB45FFC4();
  __swift_project_value_buffer(v11, qword_1EB46C230);

  v12 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v19 = sub_1AB461224();
  if (sub_1AB461314())
  {

    sub_1AB460024();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = 0;
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "count=%ld";
      v13 = 1;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v13;
    *(v15 + 2) = 2048;
    *(v15 + 4) = *(a2 + 16);

    v16 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v12, v19, v16, "ResolveDependencies", v14, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AB38E130(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v20 - v9;
  (*(v4 + 16))(v6, a1, a2, v8);
  sub_1AB4607F4();
  swift_getAssociatedConformanceWitness();
  sub_1AB4613F4();
  if (v26)
  {
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v24[0] = v26;
      v24[1] = v27;
      v25 = v28;
      v22 = 60;
      v23 = 0xE100000000000000;
      v12 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v12);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v13 = v22;
      v14 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1AB020904(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_1AB020904((v15 > 1), v16 + 1, 1, v11);
      }

      sub_1AB01667C(v24);
      *(v11 + 2) = v16 + 1;
      v17 = &v11[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
      sub_1AB4613F4();
    }

    while (v26);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  (*(v21 + 8))(v10, AssociatedTypeWitness);
  *&v26 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB019D78(&qword_1ED4D21F0, &qword_1EB4366C8);
  v18 = sub_1AB460484();

  return v18;
}

uint64_t sub_1AB38E474(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1AB38E4D4()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void *sub_1AB38E570()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1AB1AFE78(*(v1 + 16), 0);
  v4 = sub_1AB1AF5B8(&v6, v3 + 4, v2, v1);

  sub_1AB0309A4();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AB38E62C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v10 = v2[2];

  DependencyDictionary.replace<A>(dependencies:)(a1, a2);
  swift_beginAccess();
  v8 = v2[3];
  v9 = v2[4];

  MEMORY[0x1AC59BA20](1528834848, 0xE400000000000000);
  v6 = sub_1AB38E130(a1, a2);
  MEMORY[0x1AC59BA20](v6);

  MEMORY[0x1AC59BA20](93, 0xE100000000000000);
  return (*(v5 + 96))(v8, v9, &v10);
}

unint64_t sub_1AB38E790(uint64_t a1, uint64_t a2)
{
  sub_1AB4615D4();

  v30[0] = 0xD000000000000015;
  v30[1] = 0x80000001AB4FF330;
  v5 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v5);

  MEMORY[0x1AC59BA20](0x20646E756F66203ELL, 0xEC00000022206E69);
  swift_beginAccess();
  v6 = v2[3];
  v7 = v2[4];

  MEMORY[0x1AC59BA20](v6, v7);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v31 = 0xD000000000000015;
  v32 = 0x80000001AB4FF330;
  v8 = v2[2];
  v30[0] = v8;

  v9 = DependencyDictionary.types<A>(compatibleWith:)(a1, a2);

  if (*(v9 + 2))
  {
    v30[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v10 = sub_1AB460484();
    v12 = v11;

    sub_1AB4615D4();

    strcpy(v30, " Did you mean ");
    HIBYTE(v30[1]) = -18;
    MEMORY[0x1AC59BA20](v10, v12);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v30[0], v30[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v31;
  }

  v13 = *(v8 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    goto LABEL_6;
  }

  v15 = sub_1AB1AFE78(*(v8 + 16), 0);
  v16 = sub_1AB1AF5B8(v30, v15 + 4, v13, v8);

  sub_1AB0309A4();
  if (v16 != v13)
  {
    __break(1u);
LABEL_6:
    v15 = v14;
  }

  v30[0] = v15;

  sub_1AB390A78(v30);

  v17 = *(v30[0] + 2);
  if (v17)
  {
    sub_1AB03BD38(0, v17, 0);
    v18 = 32;
    v19 = v14;
    do
    {
      v30[0] = 60;
      v30[1] = 0xE100000000000000;
      v20 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v20);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v21 = v30[0];
      v22 = v30[1];
      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_1AB03BD38((v23 > 1), v24 + 1, 1);
      }

      *(v19 + 2) = v24 + 1;
      v25 = &v19[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v30[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB019D78(&qword_1ED4D21F0, &qword_1EB4366C8);
  v26 = sub_1AB460484();
  v28 = v27;

  strcpy(v30, " Candidates: ");
  HIWORD(v30[1]) = -4864;
  MEMORY[0x1AC59BA20](v26, v28);

  MEMORY[0x1AC59BA20](v30[0], v30[1]);

  return v31;
}

uint64_t sub_1AB38EC3C@<X0>(void *a1@<X8>)
{
  v2 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v2);

  result = MEMORY[0x1AC59BA20](62, 0xE100000000000000);
  *a1 = 60;
  a1[1] = 0xE100000000000000;
  return result;
}

void sub_1AB38ECB0(uint64_t a1, uint64_t a2)
{
  sub_1AB38E790(a1, a2);
  sub_1AB461884();
  __break(1u);
}

uint64_t sub_1AB38ED4C()
{
  v4 = sub_1AB462314();
  MEMORY[0x1AC59BA20](8744, 0xE200000000000000);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  MEMORY[0x1AC59BA20](v2, v1);

  MEMORY[0x1AC59BA20](2112290, 0xE300000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB50C170);
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v4;
}

uint64_t sub_1AB38EE40(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB38EE60, 0, 0);
}

uint64_t sub_1AB38EE60()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1AB38EFAC;

  return MEMORY[0x1EEE6DE98](v2, v0 + 16, &unk_1AB4EFE48, v1, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB38EFAC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AB3252E0;
  }

  else
  {

    v2 = sub_1AB034560;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB38F0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB38F0E8, 0, 0);
}

uint64_t sub_1AB38F0E8()
{
  v1 = v0[5];
  v2 = *(v0[4] + 16);
  v0[6] = v2;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BAC0);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1AB38F214;

  return MEMORY[0x1EEE6DD58](v0 + 2, v3, v5, 0, 0, &unk_1AB4EFE50, v4, v3);
}

uint64_t sub_1AB38F214()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AB38F3C8;
  }

  else
  {

    v2 = sub_1AB38F330;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB38F330()
{
  if (*(v0 + 24))
  {
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38F3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BaseObjectGraph._dependencyPersonality<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{

  sub_1AB292C54(a1, a2, a3);
}

uint64_t BaseObjectGraph.dependencies<A>(compatibleWith:)()
{

  v0 = sub_1AB293558();

  return v0;
}

uint64_t BaseObjectGraph._withDependenciesResolved<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  v5 = sub_1AB461604();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1AB461804();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB38F670, 0, 0);
}

uint64_t sub_1AB38F670()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  MEMORY[0x1AC59BB90](v0[4], v0[5]);
  swift_getWitnessTable();
  sub_1AB461984();
  (*(v2 + 8))(v1, v4);
  sub_1AB014B20();
  swift_getWitnessTable();
  v6 = sub_1AB460E94();
  v0[13] = v6;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1AB38F824;

  return sub_1AB0407C0((v0 + 2), &unk_1AB4EFD98, v7, v3);
}

uint64_t sub_1AB38F824()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1AB38F9C0;
  }

  else
  {

    v2 = sub_1AB38F948;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB38F948()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB38F9C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB38FA4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB38FA98, 0, 0);
}

uint64_t sub_1AB38FA98()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_beginAccess();
  v0[12] = v2[3];
  v0[13] = v2[4];
  v3 = v2[2];
  v0[7] = v1;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v0 + 7;
  *(v5 + 24) = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396B8);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1AB38FBE8;

  return MEMORY[0x1EEE6DD58](v0 + 5, v4, v6, 0, 0, &unk_1AB4EFE68, v5, v4);
}

uint64_t sub_1AB38FBE8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1AB38FDF0;
  }

  else
  {

    v2 = sub_1AB38FD30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB38FD30()
{
  v8 = v0;
  v1 = *(v0 + 104);
  if (*(v0 + 48))
  {

    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    *v5 = (*(v4 + 96))(v3, v1, &v7);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB38FE08()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_1AB38FFB4;
  }

  else
  {
    v2 = sub_1AB38FF24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB38FF24()
{
  v8 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v7 = v0[6];
  *v4 = (*(v3 + 96))(v1, v2, &v7);
  v5 = v0[1];

  return v5();
}

uint64_t _s9JetEngine15BaseObjectGraphC10injectSyncyxxmAA0G10DependencyRzlF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  v13[1] = *(v3 + 16);
  DependencyDictionary.subscript.getter(a1, a2, (v13 - v9));
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1AB38ECB0(a1, a2);
  }

  return (*(v11 + 32))(a3, v10, a2);
}

uint64_t BaseObjectGraph.injectSyncThrowing<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1AB3901F8(a1, a2, a3);
}

{
  return sub_1AB3901F8(a1, a2, a3);
}

uint64_t BaseObjectGraph.injectIfAvailableSyncThrowing<A>(_:)()
{
  return sub_1AB3903BC();
}

{
  return sub_1AB3903BC();
}

uint64_t sub_1AB3901F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-v10];
  v15 = a2;
  v16 = v3;
  v17 = a1;
  result = sub_1AB01D92C();
  if (!v4)
  {
    v13 = *(a2 - 8);
    if ((*(v13 + 48))(v11, 1, a2) == 1)
    {
      (*(v9 + 8))(v11, v8);
      sub_1AB38ECB0(a1, a2);
    }

    return (*(v13 + 32))(a3, v11, a2);
  }

  return result;
}

uint64_t BaseObjectGraph.injectAsyncThrowing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_1AB461354();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[8] = v8;
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = sub_1AB390534;

  return BaseObjectGraph.injectIfAvailableAsyncThrowing<A>(_:)(v8, a2, a3);
}

uint64_t sub_1AB390534()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AB2FE764;
  }

  else
  {
    v2 = sub_1AB061954;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t BaseObjectGraph.injectIfAvailableAsyncThrowing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB39066C, 0, 0);
}

uint64_t sub_1AB39066C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1AB461354();
  *v3 = v0;
  v3[1] = sub_1AB39075C;
  v5 = *(v0 + 16);

  return sub_1AB0407C0(v5, &unk_1AB4EFDB8, v2, v4);
}

uint64_t sub_1AB39075C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3920E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB390898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3908BC, 0, 0);
}

uint64_t sub_1AB3908BC()
{
  v0[2] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1AB390964;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  return sub_1AB0612E0(v4, v2, v3);
}

uint64_t sub_1AB390964()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1AB3920BC;
  }

  else
  {
    v2 = sub_1AB085118;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB390A78(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AB234EC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AB390AE4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AB390AE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AB461C24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1AB4609B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1AB390CF4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AB390BDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AB390BDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      v10 = sub_1AB462314();
      v12 = v11;
      if (v10 == sub_1AB462314() && v12 == v13)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = sub_1AB461DA4();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v9;
      result = v9[1];
      *v9 = result;
      v9[1] = v16;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB390CF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v103 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v7 = *v103;
    if (!*v103)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v94 = *(v9 + 2);
      if (v94 >= 2)
      {
        while (1)
        {
          v95 = *v6;
          if (!*v6)
          {
            goto LABEL_141;
          }

          v6 = (v94 - 1);
          v96 = *&v9[16 * v94];
          v97 = *&v9[16 * v94 + 24];
          sub_1AB3913D0((v95 + 8 * v96), (v95 + 8 * *&v9[16 * v94 + 16]), (v95 + 8 * v97), v7);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AB391760(v9);
          }

          if (v94 - 2 >= *(v9 + 2))
          {
            goto LABEL_131;
          }

          v98 = &v9[16 * v94];
          *v98 = v96;
          *(v98 + 1) = v97;
          result = sub_1AB3916D4(v94 - 1);
          v94 = *(v9 + 2);
          v6 = a3;
          if (v94 <= 1)
          {
          }
        }
      }
    }

LABEL_137:
    result = sub_1AB391760(v9);
    v9 = result;
    goto LABEL_107;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_32;
    }

    v12 = *v6;
    v13 = sub_1AB462314();
    v15 = v14;
    v17 = 0;
    if (v13 != sub_1AB462314() || v15 != v16)
    {
      v17 = sub_1AB461DA4();
    }

    v11 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_24;
    }

    v19 = v5;
    v100 = v10;
    v20 = v12 + 8 * v10 + 16;
    while (1)
    {
      v22 = v11;
      v23 = sub_1AB462314();
      v25 = v24;
      if (v23 == sub_1AB462314() && v25 == v26)
      {

        if (v17)
        {
          v5 = v19;
          v6 = a3;
          v11 = v22;
          v10 = v100;
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      v21 = sub_1AB461DA4();

      if ((v17 ^ v21))
      {
        break;
      }

LABEL_13:
      v11 = (v22 + 1);
      v20 += 8;
      if (v7 == v22 + 1)
      {
        v11 = v7;
        v5 = v19;
        v6 = a3;
        goto LABEL_23;
      }
    }

    v5 = v19;
    v6 = a3;
    v11 = v22;
LABEL_23:
    v10 = v100;
LABEL_24:
    if (v17)
    {
LABEL_25:
      if (v11 < v10)
      {
        goto LABEL_134;
      }

      if (v10 < v11)
      {
        v28 = 8 * v11 - 8;
        v29 = 8 * v10;
        v30 = v11;
        v31 = v10;
        do
        {
          if (v31 != --v30)
          {
            v32 = *v6;
            if (!*v6)
            {
              goto LABEL_140;
            }

            v33 = *(v32 + v29);
            *(v32 + v29) = *(v32 + v28);
            *(v32 + v28) = v33;
          }

          ++v31;
          v28 -= 8;
          v29 += 8;
        }

        while (v31 < v30);
      }
    }

LABEL_32:
    v34 = v6[1];
    if (v11 >= v34)
    {
      goto LABEL_54;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_133;
    }

    if (v11 - v10 >= a4)
    {
LABEL_54:
      if (v11 < v10)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v107 = v11;
      if ((result & 1) == 0)
      {
        result = sub_1AB2AFBEC(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v49 = *(v9 + 2);
      v48 = *(v9 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = sub_1AB2AFBEC((v48 > 1), v49 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v50;
      v51 = &v9[16 * v49];
      *(v51 + 4) = v10;
      *(v51 + 5) = v11;
      v52 = *v103;
      if (!*v103)
      {
        goto LABEL_142;
      }

      if (!v49)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v107;
        if (v107 >= v7)
        {
          goto LABEL_105;
        }

        continue;
      }

      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v9 + 4);
          v55 = *(v9 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v9[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v9[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v80 = &v9[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_88:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v9[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_95:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v6)
        {
          goto LABEL_139;
        }

        v92 = *&v9[16 * v91 + 32];
        v7 = *&v9[16 * v53 + 40];
        sub_1AB3913D0((*v6 + 8 * v92), (*v6 + 8 * *&v9[16 * v53 + 32]), (*v6 + 8 * v7), v52);
        if (v5)
        {
        }

        if (v7 < v92)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB391760(v9);
        }

        if (v91 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v9[16 * v91];
        *(v93 + 4) = v92;
        *(v93 + 5) = v7;
        result = sub_1AB3916D4(v53);
        v50 = *(v9 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v9[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v9[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v9[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

    break;
  }

  v35 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_135;
  }

  if (v35 >= v34)
  {
    v35 = v6[1];
  }

  if (v35 < v10)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v11 == v35)
  {
    goto LABEL_54;
  }

  v99 = v5;
  v101 = v10;
  v36 = *v6;
  v37 = *v6 + 8 * v11 - 8;
  v38 = (v10 - v11);
  v105 = v35;
LABEL_43:
  v106 = v11;
  v7 = v38;
  v39 = v37;
  while (1)
  {
    v40 = sub_1AB462314();
    v42 = v41;
    if (v40 == sub_1AB462314() && v42 == v43)
    {

LABEL_42:
      ++v11;
      v37 += 8;
      --v38;
      if ((v106 + 1) == v105)
      {
        v11 = v105;
        v5 = v99;
        v10 = v101;
        v6 = a3;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v45 = sub_1AB461DA4();

    if ((v45 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v36)
    {
      break;
    }

    v46 = *v39;
    *v39 = v39[1];
    v39[1] = v46;
    --v39;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1AB3913D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = sub_1AB462314();
      v18 = v17;
      v20 = v16 == sub_1AB462314() && v18 == v19;
      if (v20)
      {
        break;
      }

      v21 = sub_1AB461DA4();

      if ((v21 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v20 = v7 == v6;
      v6 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v20 = v7 == v4;
    v4 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v31 = v6;
    v22 = v6 - 8;
    v5 -= 8;
    v23 = v14;
    while (1)
    {
      v23 -= 8;
      v6 = v22;
      v24 = sub_1AB462314();
      v26 = v25;
      if (v24 == sub_1AB462314() && v26 == v27)
      {
      }

      else
      {
        v29 = sub_1AB461DA4();

        if (v29)
        {
          if (v5 + 8 != v31)
          {
            *v5 = *v6;
          }

          if (v14 <= v4 || v6 <= v7)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v22 = v6;
      if (v5 + 8 != v14)
      {
        *v5 = *v23;
      }

      v5 -= 8;
      v14 = v23;
      if (v23 <= v4)
      {
        v14 = v23;
        v6 = v31;
        break;
      }
    }
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1AB3916D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AB391760(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1AB391774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return sub_1AB38C800(a1, a2, v8, a4);
}

uint64_t sub_1AB39182C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB38FA4C(a1, v5, v4);
}

uint64_t sub_1AB391924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB390898(a1, v5, v6, v4);
}

uint64_t dispatch thunk of BaseObjectGraph.performAsCurrent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 112) + **(*v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1AB027460;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1AB391D0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB38F0C8(a1, v5, v4);
}

uint64_t sub_1AB391DB8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AB027554;

  return sub_1AB295784(a1, a2, v7, v6);
}

uint64_t sub_1AB391E6C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AB027554;

  return sub_1AB391774(a1, a2, v7, v6);
}

uint64_t sub_1AB391F34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB294BB0(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1AB391FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB2949B4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t OpenIntentModel.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC8];
  v6 = type metadata accessor for OpenIntentModel();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t OpenIntentModel.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2 + *(v8 + 36), v3, v5);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

uint64_t OpenIntentModel<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v16[0] = *(a2 - 8);
  v16[1] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v13;
  v12 = v19;

  sub_1AB09AE18(0xD000000000000027, 0x80000001AB4FFF70, v17);
  sub_1AB0167A8(v17);
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

  v15 = type metadata accessor for OpenIntentModel();
  return (*(v16[0] + 32))(&a5[*(v15 + 36)], v11, a2);
}

void OpenIntentModel<>.jsRepresentation(in:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v27 = *v4;
  ScalarDictionary.jsRepresentation(in:)(a1, v24);
  if (!v5)
  {
    v10 = v25;
    v11 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    v12 = (*(v11 + 16))(a1, v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v13 = (*(*(a3 + 8) + 16))(a1, *(a2 + 16));
    v23 = a4;
    v14 = JSValue.propertyNames.getter();
    v15 = v14;
    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = v14 + 40;
      while (v17 < *(v15 + 16))
      {

        v19 = sub_1AB460514();
        v20 = [v12 valueForProperty_];

        if (!v20)
        {
          goto LABEL_10;
        }

        ++v17;
        v21 = v20;
        v22 = sub_1AB460514();

        [v13 setValue:v21 forProperty:v22];

        v18 += 16;
        if (v16 == v17)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:

      v23[3] = sub_1AB054C38();
      v23[4] = &protocol witness table for JSValue;

      *v23 = v13;
    }
  }
}

char **sub_1AB3927C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OpenIntentModel();
  OpenIntentModel<>.jsRepresentation(in:)(a1, v7, a4, &v31);
  if (v4)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    v34 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v12._countAndFlagsBits = 0x69747265766E6F43;
    v12._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v30[3] = swift_getMetatypeMetadata();
    v30[0] = v7;
    sub_1AB01522C(v30, v29);
    v31 = 0u;
    v32 = 0u;
    sub_1AB0169C4(v29, &v31);
    LOBYTE(v33) = 0;
    v13 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v31;
    v18 = v32;
    v16[64] = v33;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v34 = v13;
    sub_1AB0167A8(v30);
    v19._object = 0x80000001AB4FFFA0;
    v28 = &v34;
    v19._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v11 + 32) = v34;
    v20 = sub_1AB461094();
    if (os_log_type_enabled(v10, v20))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v21 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v21 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v31 = v11;
      *(&v31 + 1) = sub_1AB01A8D8;
      *&v32 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v28 = sub_1AB460484();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1AB016854();
      *(v26 + 32) = v28;
      *(v26 + 40) = v25;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v8 = *(&v32 + 1);
    v9 = v33;
    __swift_project_boxed_opaque_existential_1Tm(&v31, *(&v32 + 1));
    v28 = (*(v9 + 16))(a1, v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  }

  return v28;
}

uint64_t OpenIntentModel<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a3;
  v22 = a4;
  v21 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpenIntentModel();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v19 - v9);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = sub_1AB462214();
  JSONContext.init(userInfo:)(v11);
  sub_1AB09AE18(0xD000000000000027, 0x80000001AB4FFF70, v27);
  sub_1AB0167A8(v27);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  v14 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v28);
  Decoder.withUserInfo(_:)(v14, v12, v13, v27);

  sub_1AB01494C(v27, v26);
  sub_1AB01494C(v26, v25);
  v15 = sub_1AB17643C(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  *v10 = v15;
  sub_1AB01494C(v27, v26);
  v16 = v23;
  sub_1AB460E14();
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    (*(v21 + 32))(v10 + *(v8 + 36), v7, a2);
    v18 = v20;
    (*(v20 + 16))(v22, v10, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v18 + 8))(v10, v8);
  }
}

uint64_t OpenIntentModel<>.encode(to:)(void *a1)
{
  result = sub_1AB460434();
  if (!v2)
  {
    v5 = *v1;

    sub_1AB176B6C(a1, v5);
  }

  return result;
}

uint64_t _OpaqueIntentModelBody.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB0B9254(a1, v14);
  ScalarDictionary.init(deserializing:using:)(v14, &v15);
  if (!v2)
  {
    v5 = v15;
    if (*(v15 + 16))
    {
      v6 = sub_1AB014DB4(0x646E696B24, 0xE500000000000000);
      if (v7)
      {
        v8 = *(v5 + 56) + 24 * v6;
        if (*(v8 + 16) == 3)
        {
          v10 = *v8;
          v9 = *(v8 + 8);

          sub_1AB066D84(a1);

          *a2 = v10;
          a2[1] = v9;
          return result;
        }
      }
    }

    v12 = type metadata accessor for _OpaqueIntentModelBody() | 0x2000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v13 = xmmword_1AB4E9720;
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    swift_willThrow();
  }

  return sub_1AB066D84(a1);
}

uint64_t _OpaqueIntentModelBody.kind.getter()
{
  v0 = sub_1AB026CF8();

  return v0;
}

uint64_t sub_1AB3930B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1AB461DA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AB393140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB3930B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AB393174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB0C9098();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AB3931A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB3931F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t _OpaqueIntentModelBody.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNewObjectInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v3;
  return result;
}

JSValue __swiftcall _OpaqueIntentModelBody.makeValue(in:)(JSContext in)
{
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

id sub_1AB393350(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t _OpaqueIntentModelBody<>.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v4 = sub_1AB462214();
  JSONContext.init(userInfo:)(v4);
  sub_1AB09AE18(0xD000000000000027, 0x80000001AB4FFF70, v20);
  sub_1AB0167A8(v20);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v22);
  Decoder.withUserInfo(_:)(v7, v5, v6, v20);

  sub_1AB01494C(v20, v19);
  sub_1AB01494C(v19, v18);
  v8 = sub_1AB17643C(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (*(v8 + 16) && (v9 = sub_1AB014DB4(0x646E696B24, 0xE500000000000000), (v10 & 1) != 0) && (v11 = *(v8 + 56) + 24 * v9, *(v11 + 16) == 3))
  {
    v13 = *v11;
    v12 = *(v11 + 8);

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    *a2 = v13;
    a2[1] = v12;
  }

  else
  {

    v14 = sub_1AB4616B4();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438010);
    *(v16 + 24) = &type metadata for OpenCodingKey;
    *(v16 + 32) = sub_1AB179C3C();
    *v16 = xmmword_1AB4E9720;
    *(v16 + 16) = 1;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    sub_1AB4621E4();
    sub_1AB461694();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF0], v14);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _OpaqueIntentModelBody<>.encode(to:)(void *a1)
{
  type metadata accessor for _OpaqueIntentModelBody.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1AB461C14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  v8[1] = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462274();
  sub_1AB461BB4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AB3937EC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AB393860(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AB39389C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB39391C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Bag.ValueOverride.init(deserializing:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB0B9254(a1, v5);
  v6 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  Bag.ValueOverride.init(deserializing:using:)(v5, a2);
  return sub_1AB066D84(a1);
}

uint64_t Bag.ValueOverride.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - v5;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  JSONObject.subscript.getter(1701869940, 0xE400000000000000, v73);
  sub_1AB01EC0C(v73, &v70);
  v11 = *(&v71 + 1);
  if (!*(&v71 + 1))
  {
    sub_1AB066D84(v73);
    sub_1AB014AC0(&v70, &qword_1EB436BA0);
    goto LABEL_7;
  }

  v62 = v8;
  v63 = a2;
  v12 = v72;
  __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
  v13 = (*(v12 + 24))(v11, v12);
  v15 = v14;
  sub_1AB066D84(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  if (!v15)
  {
LABEL_7:
    v18 = a1;
    v19 = type metadata accessor for Bag.ValueOverride() | 0x2000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v20 = xmmword_1AB4D4F20;
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    swift_willThrow();
    v21 = v18;
    return sub_1AB066D84(v21);
  }

  v74 = a1;
  JSONObject.subscript.getter(0x65756C6176, 0xE500000000000000, v73);
  sub_1AB01EC0C(v73, &v70);
  v16 = *(&v71 + 1);
  if (!*(&v71 + 1))
  {

    sub_1AB014AC0(&v70, &qword_1EB436BA0);
    goto LABEL_9;
  }

  v17 = v72;
  __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
  LOBYTE(v17) = (*(v17 + 128))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  if (v17)
  {

LABEL_9:
    v22 = type metadata accessor for Bag.ValueOverride() | 0x2000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v23 = xmmword_1AB4F0270;
LABEL_10:
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
LABEL_57:
    swift_willThrow();
    sub_1AB066D84(v74);
    v21 = v73;
    return sub_1AB066D84(v21);
  }

  if (v13 == 0x676E69727473 && v15 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB01EC0C(v73, &v70);
    v24 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v25 = v72;
      __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
      v26 = (*(v25 + 24))(v24, v25);
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1Tm(&v70);
      if (v28)
      {
        sub_1AB066D84(v74);
        sub_1AB066D84(v73);
        v29 = v63;
        *v63 = v26;
        v29[1] = v28;
        type metadata accessor for Bag.ValueOverride();
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v13 == 0x7961727261 && v15 == 0xE500000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB01EC0C(v73, v64);
    v31 = v65;
    v32 = v63;
    if (v65)
    {
      v33 = v66;
      __swift_project_boxed_opaque_existential_1Tm(v64, v65);
      (*(v33 + 152))(&v67, v31, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      if (*(&v68 + 1))
      {
        v70 = v67;
        v71 = v68;
        v34 = v69;
        v72 = v69;
        v35 = *(&v68 + 1);
        __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v68 + 1));
        v36 = (*(v34 + 40))(MEMORY[0x1E69E7CA0] + 8, v35, v34);
        sub_1AB06A37C(&v70);
        if (v36)
        {
LABEL_23:
          sub_1AB066D84(v74);
          sub_1AB066D84(v73);
          *v32 = v36;
          type metadata accessor for Bag.ValueOverride();
          return swift_storeEnumTagMultiPayload();
        }

LABEL_56:
        v53 = type metadata accessor for Bag.ValueOverride() | 0x4000000000000000;
        sub_1AB163664();
        swift_allocError();
        *v54 = xmmword_1AB4F0270;
        v55 = MEMORY[0x1E69E7CC0];
        *(v54 + 16) = v53;
        *(v54 + 24) = v55;
        goto LABEL_57;
      }
    }

    else
    {
      sub_1AB014AC0(v64, &qword_1EB436BA0);
      v67 = 0u;
      v68 = 0u;
      v69 = 0;
    }

    v37 = &qword_1EB437EF8;
    goto LABEL_26;
  }

  if (v13 == 1819242338 && v15 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB01EC0C(v73, &v70);
    v39 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v40 = v72;
      __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
      v41 = (*(v40 + 88))(v39, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(&v70);
      if (v41 != 2)
      {
        sub_1AB066D84(v74);
        sub_1AB066D84(v73);
        *v63 = v41 & 1;
        type metadata accessor for Bag.ValueOverride();
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v13 == 0x616E6F6974636964 && v15 == 0xEA00000000007972 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB01EC0C(v73, v64);
    v42 = v65;
    v32 = v63;
    if (v65)
    {
      v43 = v66;
      __swift_project_boxed_opaque_existential_1Tm(v64, v65);
      (*(v43 + 160))(&v67, v42, v43);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      if (*(&v68 + 1))
      {
        v70 = v67;
        v71 = v68;
        v44 = v69;
        v72 = v69;
        v45 = *(&v68 + 1);
        __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v68 + 1));
        v36 = (*(v44 + 32))(MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0], v45, v44);
        sub_1AB07CDB0(&v70);
        if (v36)
        {
          goto LABEL_23;
        }

        goto LABEL_56;
      }
    }

    else
    {
      sub_1AB014AC0(v64, &qword_1EB436BA0);
      v67 = 0u;
      v68 = 0u;
      v69 = 0;
    }

    v37 = &qword_1EB436BC0;
LABEL_26:
    v38 = &v67;
LABEL_55:
    sub_1AB014AC0(v38, v37);
    goto LABEL_56;
  }

  if (v13 == 0x656C62756F64 && v15 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB01EC0C(v73, &v70);
    v46 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v47 = v72;
      __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
      v48 = (*(v47 + 80))(v46, v47);
      LOBYTE(v47) = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(&v70);
      if (v47)
      {
        goto LABEL_56;
      }

LABEL_47:
      sub_1AB066D84(v74);
      sub_1AB066D84(v73);
      *v63 = v48;
      type metadata accessor for Bag.ValueOverride();
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_54;
  }

  if (v13 == 7630441 && v15 == 0xE300000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB01EC0C(v73, &v70);
    v50 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v51 = v72;
      __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
      v48 = (*(v51 + 40))(v50, v51);
      LOBYTE(v51) = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(&v70);
      if (v51)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

LABEL_54:
    v37 = &qword_1EB436BA0;
    v38 = &v70;
    goto LABEL_55;
  }

  if ((v13 != 7107189 || v15 != 0xE300000000000000) && (sub_1AB461DA4() & 1) == 0)
  {
    v22 = type metadata accessor for Bag.ValueOverride() | 0x8000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v23 = v13;
    *(v23 + 8) = v15;
    goto LABEL_10;
  }

  sub_1AB01EC0C(v73, &v70);
  v56 = *(&v71 + 1);
  if (!*(&v71 + 1))
  {
    sub_1AB014AC0(&v70, &qword_1EB436BA0);
    goto LABEL_67;
  }

  v57 = v72;
  __swift_project_boxed_opaque_existential_1Tm(&v70, *(&v71 + 1));
  (*(v57 + 24))(v56, v57);
  v59 = v58;
  __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  if (!v59)
  {
LABEL_67:
    (*(v62 + 56))(v6, 1, 1, v7);
    goto LABEL_68;
  }

  sub_1AB45F714();

  if ((*(v62 + 48))(v6, 1, v7) == 1)
  {
LABEL_68:
    v37 = &unk_1EB4395B0;
    v38 = v6;
    goto LABEL_55;
  }

  sub_1AB066D84(v74);
  sub_1AB066D84(v73);
  v60 = *(v62 + 32);
  v60(v10, v6, v7);
  v60(v63, v10, v7);
  type metadata accessor for Bag.ValueOverride();
  return swift_storeEnumTagMultiPayload();
}

id sub_1AB3945A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Bag.ValueOverride();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB395058(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = *v10;
        v13 = objc_opt_self();
        v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v15 = [v13 frozenBagValueWithKey:a1 value:v14 valueType:3];
      }

      else
      {
        v27 = objc_opt_self();
        v14 = sub_1AB460514();

        v15 = [v27 frozenBagValueWithKey:a1 value:v14 valueType:4];
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 5)
    {
      (*(v5 + 32))(v7, v10, v4);
      v18 = objc_opt_self();
      v19 = sub_1AB45F654();
      v20 = [v18 frozenBagValueWithKey:a1 value:v19 valueType:5];

      (*(v5 + 8))(v7, v4);
      return v20;
    }

    v28 = objc_opt_self();
    v22 = sub_1AB4602D4();

    v23 = [v28 frozenBagValueWithKey:a1 value:v22 valueType:6];
LABEL_15:
    v20 = v23;

    return v20;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = objc_opt_self();
    v22 = sub_1AB460934();

    v23 = [v21 frozenBagValueWithKey:a1 value:v22 valueType:0];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v16 = *v10;
    v17 = objc_opt_self();
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v15 = [v17 frozenBagValueWithKey:a1 value:v14 valueType:1];
LABEL_13:
    v20 = v15;

    return v20;
  }

  v24 = *v10;
  v25 = objc_opt_self();
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v20 = [v25 frozenBagValueWithKey:a1 value:v26 valueType:2];

  return v20;
}

uint64_t Bag.withValuesForKeys(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Bag.ValueOverride();
  v69 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BBD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v64 - v14);
  if (*(a1 + 16))
  {
    v64 = *v2;
    v65 = a2;
    v16 = *(a1 + 64);
    v67 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v66 = (v17 + 63) >> 6;
    v70 = a1;

    v20 = 0;
    v21 = &unk_1EB43BBD8;
    v71 = v12;
    v73 = MEMORY[0x1E69E7CC8];
    if (v19)
    {
      while (1)
      {
        v22 = v20;
LABEL_13:
        v25 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v26 = v25 | (v22 << 6);
        v27 = *(*(v70 + 48) + 8 * v26);
        v28 = v68;
        sub_1AB395058(*(v70 + 56) + *(v69 + 72) * v26, v68);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v21);
        v30 = *(v29 + 48);
        *v12 = v27;
        sub_1AB3950BC(v28, v12 + v30);
        (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
        v31 = v27;
        v24 = v22;
LABEL_14:
        sub_1AB395120(v12, v15);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v21);
        if ((*(*(v32 - 8) + 48))(v15, 1, v32) == 1)
        {
          break;
        }

        v72 = v24;
        v33 = v21;
        v34 = *v15;
        v35 = v15;
        sub_1AB3950BC(v15 + *(v32 + 48), v7);
        v36 = v7;
        v37 = sub_1AB3945A4(v34);
        v38 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v38;
        v41 = sub_1AB1DB6F4(v34);
        v42 = *(v38 + 16);
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_35;
        }

        v45 = v40;
        if (*(v38 + 24) >= v44)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AB1D9BFC();
          }
        }

        else
        {
          sub_1AB1D4914(v44, isUniquelyReferenced_nonNull_native);
          v46 = sub_1AB1DB6F4(v34);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_37;
          }

          v41 = v46;
        }

        v7 = v36;
        v48 = v74;
        v15 = v35;
        if (v45)
        {
          v49 = v74;
          *(v74[7] + 8 * v41) = v37;

          v48 = v49;
          swift_unknownObjectRelease();
          sub_1AB3953F8(v7);
          v12 = v71;
          v20 = v72;
          v21 = v33;
        }

        else
        {
          v74[(v41 >> 6) + 8] |= 1 << v41;
          *(v48[6] + 8 * v41) = v34;
          *(v48[7] + 8 * v41) = v37;
          sub_1AB3953F8(v7);
          v50 = v48[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_36;
          }

          v21 = v33;
          v48[2] = v52;
          v12 = v71;
          v20 = v72;
        }

        v73 = v48;
        if (!v19)
        {
          goto LABEL_6;
        }
      }

      v54 = type metadata accessor for OverriddenAMSBag();
      v55 = v64;
      v56 = swift_dynamicCastClass();
      if (v56)
      {
        v57 = *(v56 + OBJC_IVAR____TtC9JetEngine16OverriddenAMSBag_overrides);
        swift_unknownObjectRetain_n();

        v58 = v73;

        v59 = swift_isUniquelyReferenced_nonNull_native();
        v74 = v57;
        sub_1AB395190(v58, sub_1AB394FD0, 0, v59, &v74);
        swift_bridgeObjectRelease_n();
        v60 = v74;
        swift_getObjectType();
        v61 = sub_1AB37392C(v55, v60, v54);
        result = swift_unknownObjectRelease();
        *v65 = v61;
      }

      else
      {
        swift_getObjectType();
        v63 = swift_unknownObjectRetain();
        result = sub_1AB37392C(v63, v73, v54);
        *v65 = result;
      }
    }

    else
    {
LABEL_6:
      if (v66 <= v20 + 1)
      {
        v23 = v20 + 1;
      }

      else
      {
        v23 = v66;
      }

      v24 = v23 - 1;
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v66)
        {
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v21);
          (*(*(v53 - 8) + 56))(v12, 1, 1, v53);
          v19 = 0;
          goto LABEL_14;
        }

        v19 = *(v67 + 8 * v22);
        ++v20;
        if (v19)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      type metadata accessor for AMSBagKey(0);
      sub_1AB461FC4();
      __break(1u);

      __break(1u);
    }
  }

  else
  {
    *a2 = *v2;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1AB394FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;

  return swift_unknownObjectRetain();
}

uint64_t type metadata accessor for Bag.ValueOverride()
{
  result = qword_1EB433A80;
  if (!qword_1EB433A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB395058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bag.ValueOverride();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB3950BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bag.ValueOverride();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB395120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB395190(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
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
    v35 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 56) + v14);
    v37[0] = *(*(a1 + 48) + v14);
    v37[1] = v15;
    v16 = v37[0];
    swift_unknownObjectRetain();
    a2(v36, v37);
    swift_unknownObjectRelease();

    v18 = v36[0];
    v17 = v36[1];
    v19 = *v38;
    v21 = sub_1AB1DB6F4(v36[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v35 & 1) == 0)
      {
        sub_1AB1D9BFC();
      }
    }

    else
    {
      sub_1AB1D4914(v24, v35 & 1);
      v26 = sub_1AB1DB6F4(v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v38;
    if (v25)
    {

      *(v28[7] + 8 * v21) = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v18;
      *(v28[7] + 8 * v21) = v17;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
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
      v35 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for AMSBagKey(0);
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB3953F8(uint64_t a1)
{
  v2 = type metadata accessor for Bag.ValueOverride();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AB395454()
{
  sub_1AB395504();
  if (v0 <= 0x3F)
  {
    sub_1AB45F764();
    if (v1 <= 0x3F)
    {
      sub_1AB395558();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1AB395504()
{
  if (!qword_1EB4323B0)
  {
    v0 = sub_1AB460A64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4323B0);
    }
  }
}

void sub_1AB395558()
{
  if (!qword_1EB434438)
  {
    v0 = sub_1AB4603C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB434438);
    }
  }
}

uint64_t BaseObjectGraph.injectIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027460;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(a1, a2, a3);
}

void BaseObjectGraph.injectIfAvailable<A>(_:)()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](60, 0xE100000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000006DLL, 0x80000001AB50C210);
  sub_1AB461884();
  __break(1u);
}

void BaseObjectGraph.inject<A>(_:)()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](60, 0xE100000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD000000000000062, 0x80000001AB50C280);
  sub_1AB461884();
  __break(1u);
}

{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](60, 0xE100000000000000);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD00000000000006FLL, 0x80000001AB50C2F0);
  sub_1AB461884();
  __break(1u);
}

char *Promise.__allocating_init(task:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AB0247F4(a1, a2);

  return v2;
}

uint64_t LazyPromise.__allocating_init(task:)(uint64_t a1, uint64_t a2)
{
  v8 = &type metadata for SyncTaskScheduler;
  v9 = &protocol witness table for SyncTaskScheduler;
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = a1;
  v5[4] = a2;
  return LazyPromise.__allocating_init(on:perform:)(&v7, sub_1AB395F28, v5);
}

uint64_t sub_1AB3959CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_1AB460BE4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a7;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a1;
  v18[8] = a2;
  v18[9] = a3;
  v18[10] = a4;

  sub_1AB39BBA8(0, 0, v16, &unk_1AB4F0350, v18);
}

uint64_t sub_1AB395B24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = v15;
  v8[6] = v16;
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[7] = *(v16 - 8);
  v10 = swift_task_alloc();
  v8[8] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[9] = v11;
  *v11 = v8;
  v11[1] = sub_1AB395C88;

  return v13(v10);
}

uint64_t sub_1AB395C88()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AB395E34;
  }

  else
  {
    v2 = sub_1AB395D9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB395D9C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AB395E34()
{
  v1 = *(v0 + 80);
  (*(v0 + 32))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB395EB0()
{
  v1 = *(v0 + 56);
  Promise.reject(_:)(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB395F34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AB395F88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB027460;

  JUMPOUT(0x1AB395B24);
}

uint64_t OpaqueMetatype.init(of:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = DynamicType;
  return result;
}

uint64_t OpaqueMetatype.init<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v11);
  v8(a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  __swift_project_boxed_opaque_existential_1Tm(v11, AssociatedTypeWitness);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v11);
  *a4 = DynamicType;
  return result;
}

uint64_t OpaqueMetatype.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB396268()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

__n128 AppleServicesEncoder.init(_:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AB3962CC()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB39635C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

JetEngine::AppleServicesEncoder::SigningStyle_optional __swiftcall AppleServicesEncoder.SigningStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppleServicesEncoder.SigningStyle.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x656D697270;
  if (*v0 != 2)
  {
    v2 = 0x6D726F6674616C70;
  }

  if (*v0)
  {
    v1 = 0x746C7561666564;
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

uint64_t sub_1AB3964A0()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB396558()
{
  sub_1AB460684();
}

uint64_t sub_1AB3965FC()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB3966BC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE500000000000000;
  v5 = 0x656D697270;
  if (*v1 != 2)
  {
    v5 = 0x6D726F6674616C70;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x746C7561666564;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t AppleServicesEncoder.Configuration.withAllowedSchemes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB095A68(v2, a2);

  *(a2 + 72) = a1;
  return result;
}

uint64_t sub_1AB396830(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  swift_allocError();
  *v2 = a1;
  v3 = a1;

  return swift_continuation_throwingResumeWithError();
}

void sub_1AB3968AC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AB014B20();
  sub_1AB461564();
  if (*(a1 + 16) && (v4 = sub_1AB02B1D8(v6), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v7);
    sub_1AB02B2E4(v6);
    sub_1AB0165C4(v7, v6);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      *a2 = &type metadata for AppleServicesPropertyScope.SigningStyleProperty;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1AB02B2E4(v6);
    if (qword_1EB435380 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    if (v6[0] == 1)
    {
      sub_1AB40B650("JetEngine/NetRequest.swift", 26, 2, 160);
    }

    *a2 = 0;
  }
}

uint64_t sub_1AB3969E8(uint64_t a1, uint64_t a2, void (*a3)(const char *, uint64_t, uint64_t, uint64_t))
{
  sub_1AB014B20();
  sub_1AB461564();
  if (*(a1 + 16) && (v5 = sub_1AB02B1D8(v9), (v6 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v5, v10);
    sub_1AB02B2E4(v9);
    sub_1AB0165C4(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
    result = swift_dynamicCast();
    if (result)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      return a2;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1AB02B2E4(v9);
    if (qword_1EB435380 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    if (v9[0] == 1)
    {
      a3("JetEngine/NetRequest.swift", 26, 2, 160);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1AB396B34()
{
  result = qword_1EB43BC60;
  if (!qword_1EB43BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BC60);
  }

  return result;
}

unint64_t sub_1AB396BB8()
{
  result = qword_1EB433750;
  if (!qword_1EB433750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433750);
  }

  return result;
}

uint64_t StandardMetricsIDService.init(accountProvider:process:bag:topic:shouldMigrate:eventRecorder:resetInterval:)@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, char a4@<W5>, uint64_t a5@<X6>, uint64_t *a6@<X8>, double a7@<D0>)
{

  v14 = *a3;
  sub_1AB01494C(a1, v29);
  sub_1AB01494C(v29, v25);
  *(&v26 + 1) = a2;
  *&v27 = v14;
  *(&v27 + 1) = a7;
  v28 = 0;
  if (a4)
  {
    a6[3] = &type metadata for MigrationMetricsIDService;
    a6[4] = &off_1F2011810;
    v15 = swift_allocObject();
    *a6 = v15;
    sub_1AB01494C(v29, v15 + 16);
    *(v15 + 96) = &type metadata for AMSMetricsIDService;
    *(v15 + 104) = &off_1F2002230;
    v16 = swift_allocObject();
    *(v15 + 72) = v16;
    sub_1AB255DB0(v25, v16 + 16);
    type metadata accessor for MTStandardIDServiceWrapper();
    v17 = swift_allocObject();
    v18 = objc_allocWithZone(JESoftLinkedMTStandardIDService);
    swift_unknownObjectRetain_n();
    v19 = a2;
    v20 = [v18 initWithAMSBag_];
    sub_1AB396FD0(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v17[2] = v20;
    v17[3] = v14;
    v17[4] = 0;
    *(v15 + 56) = v19;
    *(v15 + 64) = v14;
    *(v15 + 112) = v17;
    *(v15 + 120) = 0;
  }

  else
  {
    a6[3] = &type metadata for AMSMetricsIDService;
    a6[4] = &off_1F2002230;
    v21 = swift_allocObject();
    *a6 = v21;
    v22 = v27;
    *(v21 + 48) = v26;
    *(v21 + 64) = v22;
    *(v21 + 80) = v28;
    v23 = v25[1];
    *(v21 + 16) = v25[0];
    *(v21 + 32) = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(a5);
    a5 = a1;
    a1 = v29;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t StandardMetricsIDService.init(bag:accountProvider:process:activeITunesAccountRequired:shouldMigrate:resetInterval:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v13 = *a1;
  sub_1AB01494C(a2, v25);
  *(&v26 + 1) = a3;
  *&v27 = v13;
  *(&v27 + 1) = a7;
  v28 = a4;
  if (a5)
  {
    v14 = a4 & 1;
    a6[3] = &type metadata for MigrationMetricsIDService;
    a6[4] = &off_1F2011810;
    v15 = swift_allocObject();
    *a6 = v15;
    sub_1AB01494C(a2, v15 + 16);
    *(v15 + 96) = &type metadata for AMSMetricsIDService;
    *(v15 + 104) = &off_1F2002230;
    v16 = swift_allocObject();
    *(v15 + 72) = v16;
    sub_1AB255DB0(v25, v16 + 16);
    type metadata accessor for MTStandardIDServiceWrapper();
    v17 = swift_allocObject();
    v18 = objc_allocWithZone(JESoftLinkedMTStandardIDService);
    swift_unknownObjectRetain_n();
    v19 = a3;
    v20 = [v18 initWithAMSBag_];
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    result = sub_1AB396FD0(v25);
    v17[2] = v20;
    v17[3] = v13;
    v17[4] = 0;
    *(v15 + 56) = v19;
    *(v15 + 64) = v13;
    *(v15 + 112) = v17;
    *(v15 + 120) = v14;
  }

  else
  {
    a6[3] = &type metadata for AMSMetricsIDService;
    a6[4] = &off_1F2002230;
    v22 = swift_allocObject();
    *a6 = v22;
    v23 = v27;
    *(v22 + 48) = v26;
    *(v22 + 64) = v23;
    *(v22 + 80) = v28;
    v24 = v25[1];
    *(v22 + 16) = v25[0];
    *(v22 + 32) = v24;
    return __swift_destroy_boxed_opaque_existential_1Tm(a2);
  }

  return result;
}

uint64_t StandardMetricsIDService.init(bag:accountProvider:process:shouldMigrate:perfEventRecorder:resetInterval:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v11 = a2;
  v13 = *a1;
  sub_1AB01494C(a2, v28);
  sub_1AB01494C(v28, v24);
  *(&v25 + 1) = a3;
  *&v26 = v13;
  *(&v26 + 1) = a7;
  v27 = 0;
  if (a4)
  {
    a6[3] = &type metadata for MigrationMetricsIDService;
    a6[4] = &off_1F2011810;
    v14 = swift_allocObject();
    *a6 = v14;
    sub_1AB01494C(v28, v14 + 16);
    *(v14 + 96) = &type metadata for AMSMetricsIDService;
    *(v14 + 104) = &off_1F2002230;
    v15 = swift_allocObject();
    *(v14 + 72) = v15;
    sub_1AB255DB0(v24, v15 + 16);
    type metadata accessor for MTStandardIDServiceWrapper();
    v16 = swift_allocObject();
    v17 = objc_allocWithZone(JESoftLinkedMTStandardIDService);
    swift_unknownObjectRetain_n();
    v18 = a3;
    v19 = [v17 initWithAMSBag_];
    sub_1AB396FD0(v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v16[2] = v19;
    v16[3] = v13;
    v16[4] = 0;
    *(v14 + 56) = v18;
    *(v14 + 64) = v13;
    *(v14 + 112) = v16;
    *(v14 + 120) = 0;
    sub_1AB397208(a5);
  }

  else
  {
    a6[3] = &type metadata for AMSMetricsIDService;
    a6[4] = &off_1F2002230;
    v20 = swift_allocObject();
    *a6 = v20;
    v21 = v26;
    *(v20 + 48) = v25;
    *(v20 + 64) = v21;
    *(v20 + 80) = v27;
    v22 = v24[1];
    *(v20 + 16) = v24[0];
    *(v20 + 32) = v22;
    sub_1AB397208(a5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v11 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_1AB397208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StandardMetricsIDService.idFields(forTopic:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB397294, 0, 0);
}

uint64_t sub_1AB397294()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1AB3973C0;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1AB3973C0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t StandardMetricsIDService.idFields(forTopic:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3974E4, 0, 0);
}

uint64_t sub_1AB3974E4()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1AB397614;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1AB397614(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t StandardMetricsIDService.queryID(forTopic:withType:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 57) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB397740, 0, 0);
}

uint64_t sub_1AB397740()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 32);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *(v0 + 56) = v1;
  v9 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1AB397884;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return v9(v7, v6, v0 + 56, v3, v4);
}