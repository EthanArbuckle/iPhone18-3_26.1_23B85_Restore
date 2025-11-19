@interface CKXAtomBindingImplementationFormatVersionORCv2
- (CKXAtomBindingImplementationFormatVersionORCv2)init;
- (id)orcHelpers;
@end

@implementation CKXAtomBindingImplementationFormatVersionORCv2

- (CKXAtomBindingImplementationFormatVersionORCv2)init
{
  v225.receiver = self;
  v225.super_class = CKXAtomBindingImplementationFormatVersionORCv2;
  v2 = [(CKXAtomBindingImplementation *)&v225 init];
  v9 = v2;
  if (v2)
  {
    v10 = objc_msgSend_schema(v2, v3, v4, v5, v6, v7, v8);
    v9->super.tokens.location = sub_243986708(v10, v11, v12, v13, v14, v15, v16);

    v23 = objc_msgSend_schema(v9, v17, v18, v19, v20, v21, v22);
    v9->super.tokens.location_identifier = sub_243986ED0(v23, 2, v9->super.tokens.location, v24, v25, v26, v27);

    v34 = objc_msgSend_schema(v9, v28, v29, v30, v31, v32, v33);
    v9->super.tokens.siteIdentifier = sub_243986708(v34, v35, v36, v37, v38, v39, v40);

    v47 = objc_msgSend_schema(v9, v41, v42, v43, v44, v45, v46);
    v9->super.tokens.siteIdentifier_identifier = sub_243986ED0(v47, 2, v9->super.tokens.siteIdentifier, v48, v49, v50, v51);

    v58 = objc_msgSend_schema(v9, v52, v53, v54, v55, v56, v57);
    v9->super.tokens.siteIdentifier_modifier = sub_243986ED0(v58, 1, v9->super.tokens.siteIdentifier, v59, v60, v61, v62);

    v69 = objc_msgSend_schema(v9, v63, v64, v65, v66, v67, v68);
    v9->super.tokens.timestamp = sub_243986708(v69, v70, v71, v72, v73, v74, v75);

    v82 = objc_msgSend_schema(v9, v76, v77, v78, v79, v80, v81);
    v9->super.tokens.timestamp_siteIdentifier = sub_243986CB4(v82, v9->super.tokens.siteIdentifier, v9->super.tokens.timestamp, v83, v84, v85, v86);

    v93 = objc_msgSend_schema(v9, v87, v88, v89, v90, v91, v92);
    v9->super.tokens.timestamp_clock = sub_243986B28(v93, v9->super.tokens.timestamp, "Q", 0, v94, v95, v96);

    v103 = objc_msgSend_schema(v9, v97, v98, v99, v100, v101, v102);
    v9->super.tokens.reference = sub_243986708(v103, v104, v105, v106, v107, v108, v109);

    v116 = objc_msgSend_schema(v9, v110, v111, v112, v113, v114, v115);
    v9->super.tokens.reference_timestamp = sub_243986CB4(v116, v9->super.tokens.timestamp, v9->super.tokens.reference, v117, v118, v119, v120);

    v127 = objc_msgSend_schema(v9, v121, v122, v123, v124, v125, v126);
    v9->super.tokens.reference_location = sub_243986CB4(v127, v9->super.tokens.location, v9->super.tokens.reference, v128, v129, v130, v131);

    v138 = objc_msgSend_schema(v9, v132, v133, v134, v135, v136, v137);
    v9->super.tokens.atom = sub_243986708(v138, v139, v140, v141, v142, v143, v144);

    v151 = objc_msgSend_schema(v9, v145, v146, v147, v148, v149, v150);
    v9->super.tokens.atom_version = sub_243986B28(v151, v9->super.tokens.atom, "Q", 0, v152, v153, v154);

    v161 = objc_msgSend_schema(v9, v155, v156, v157, v158, v159, v160);
    v9->super.tokens.atom_timestamp = sub_243986CB4(v161, v9->super.tokens.timestamp, v9->super.tokens.atom, v162, v163, v164, v165);

    v172 = objc_msgSend_schema(v9, v166, v167, v168, v169, v170, v171);
    v9->super.tokens.atom_references = sub_243986DD4(v172, v9->super.tokens.reference, v9->super.tokens.atom, v173, v174, v175, v176);

    v183 = objc_msgSend_schema(v9, v177, v178, v179, v180, v181, v182);
    v9->super.tokens.atom_atom_type = sub_243986B28(v183, v9->super.tokens.atom, "Q", 0, v184, v185, v186);

    v193 = objc_msgSend_schema(v9, v187, v188, v189, v190, v191, v192);
    v9->super.tokens.atom_value = sub_243986ED0(v193, 2, v9->super.tokens.atom, v194, v195, v196, v197);

    v204 = objc_msgSend_schema(v9, v198, v199, v200, v201, v202, v203);
    v211 = v204;
    if (v204)
    {
      v212 = sub_243986708(v204, v205, v206, v207, v208, v209, v210);
      *(*(v211 + 4) + 2 * v212 + 1) = 1;
    }

    else
    {
      v212 = 0;
    }

    v9->super.tokens.topLevelContainer = v212;

    v219 = objc_msgSend_schema(v9, v213, v214, v215, v216, v217, v218);
    v9->super.tokens.topLevelContainer_atoms = sub_243986DD4(v219, v9->super.tokens.atom, v9->super.tokens.topLevelContainer, v220, v221, v222, v223);
  }

  return v9;
}

- (id)orcHelpers
{
  v3 = [CKXAtomORCSchema alloc];
  v8 = objc_msgSend_initWithBinding_formatVersion_(v3, v4, self, 3, v5, v6, v7);

  return v8;
}

@end