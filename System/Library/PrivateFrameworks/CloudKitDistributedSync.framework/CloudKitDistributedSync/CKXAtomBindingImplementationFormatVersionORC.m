@interface CKXAtomBindingImplementationFormatVersionORC
- (CKXAtomBindingImplementationFormatVersionORC)init;
- (id)orcHelpers;
@end

@implementation CKXAtomBindingImplementationFormatVersionORC

- (CKXAtomBindingImplementationFormatVersionORC)init
{
  v263.receiver = self;
  v263.super_class = CKXAtomBindingImplementationFormatVersionORC;
  v2 = [(CKXAtomBindingImplementation *)&v263 init];
  v9 = v2;
  if (v2)
  {
    v10 = objc_msgSend_schema(v2, v3, v4, v5, v6, v7, v8);
    v9->super.tokens.timestamp = sub_243986708(v10, v11, v12, v13, v14, v15, v16);

    v23 = objc_msgSend_schema(v9, v17, v18, v19, v20, v21, v22);
    v9->super.tokens.timestamp_identifier = sub_243986ED0(v23, 2, v9->super.tokens.timestamp, v24, v25, v26, v27);

    v34 = objc_msgSend_schema(v9, v28, v29, v30, v31, v32, v33);
    v9->super.tokens.timestamp_modifier = sub_243986B28(v34, v9->super.tokens.timestamp, "C", 0, v35, v36, v37);

    v44 = objc_msgSend_schema(v9, v38, v39, v40, v41, v42, v43);
    v9->super.tokens.timestamp_clock = sub_243986B28(v44, v9->super.tokens.timestamp, "Q", 0, v45, v46, v47);

    v54 = objc_msgSend_schema(v9, v48, v49, v50, v51, v52, v53);
    v9->super.tokens.timestamp_unordered = sub_243986B28(v54, v9->super.tokens.timestamp, "C", 0, v55, v56, v57);

    v64 = objc_msgSend_schema(v9, v58, v59, v60, v61, v62, v63);
    v9->super.tokens.location = sub_243986708(v64, v65, v66, v67, v68, v69, v70);

    v77 = objc_msgSend_schema(v9, v71, v72, v73, v74, v75, v76);
    v9->super.tokens.location_identifier = sub_243986ED0(v77, 2, v9->super.tokens.location, v78, v79, v80, v81);

    v88 = objc_msgSend_schema(v9, v82, v83, v84, v85, v86, v87);
    v9->super.tokens.location_zone_name = sub_243986ED0(v88, 1, v9->super.tokens.location, v89, v90, v91, v92);

    v99 = objc_msgSend_schema(v9, v93, v94, v95, v96, v97, v98);
    v9->super.tokens.location_zone_owner_name = sub_243986ED0(v99, 1, v9->super.tokens.location, v100, v101, v102, v103);

    v110 = objc_msgSend_schema(v9, v104, v105, v106, v107, v108, v109);
    v9->super.tokens.reference = sub_243986708(v110, v111, v112, v113, v114, v115, v116);

    v123 = objc_msgSend_schema(v9, v117, v118, v119, v120, v121, v122);
    v9->super.tokens.reference_type = sub_243986B28(v123, v9->super.tokens.reference, "C", 0, v124, v125, v126);

    v133 = objc_msgSend_schema(v9, v127, v128, v129, v130, v131, v132);
    v9->super.tokens.reference_location = sub_243986CB4(v133, v9->super.tokens.location, v9->super.tokens.reference, v134, v135, v136, v137);

    v144 = objc_msgSend_schema(v9, v138, v139, v140, v141, v142, v143);
    v9->super.tokens.reference_timestamp = sub_243986CB4(v144, v9->super.tokens.timestamp, v9->super.tokens.reference, v145, v146, v147, v148);

    v155 = objc_msgSend_schema(v9, v149, v150, v151, v152, v153, v154);
    v9->super.tokens.atom = sub_243986708(v155, v156, v157, v158, v159, v160, v161);

    v168 = objc_msgSend_schema(v9, v162, v163, v164, v165, v166, v167);
    v9->super.tokens.atom_version = sub_243986B28(v168, v9->super.tokens.atom, "Q", 0, v169, v170, v171);

    v178 = objc_msgSend_schema(v9, v172, v173, v174, v175, v176, v177);
    v9->super.tokens.atom_location = sub_243986CB4(v178, v9->super.tokens.location, v9->super.tokens.atom, v179, v180, v181, v182);

    v189 = objc_msgSend_schema(v9, v183, v184, v185, v186, v187, v188);
    v9->super.tokens.atom_timestamp = sub_243986CB4(v189, v9->super.tokens.timestamp, v9->super.tokens.atom, v190, v191, v192, v193);

    v200 = objc_msgSend_schema(v9, v194, v195, v196, v197, v198, v199);
    v9->super.tokens.atom_references = sub_243986DD4(v200, v9->super.tokens.reference, v9->super.tokens.atom, v201, v202, v203, v204);

    v211 = objc_msgSend_schema(v9, v205, v206, v207, v208, v209, v210);
    v9->super.tokens.atom_atom_behavior = sub_243986B28(v211, v9->super.tokens.atom, "C", 0, v212, v213, v214);

    v221 = objc_msgSend_schema(v9, v215, v216, v217, v218, v219, v220);
    v9->super.tokens.atom_atom_type = sub_243986B28(v221, v9->super.tokens.atom, "Q", 0, v222, v223, v224);

    v231 = objc_msgSend_schema(v9, v225, v226, v227, v228, v229, v230);
    v9->super.tokens.atom_value = sub_243986ED0(v231, 2, v9->super.tokens.atom, v232, v233, v234, v235);

    v242 = objc_msgSend_schema(v9, v236, v237, v238, v239, v240, v241);
    v249 = v242;
    if (v242)
    {
      v250 = sub_243986708(v242, v243, v244, v245, v246, v247, v248);
      *(*(v249 + 4) + 2 * v250 + 1) = 1;
    }

    else
    {
      v250 = 0;
    }

    v9->super.tokens.topLevelContainer = v250;

    v257 = objc_msgSend_schema(v9, v251, v252, v253, v254, v255, v256);
    v9->super.tokens.topLevelContainer_atoms = sub_243986DD4(v257, v9->super.tokens.atom, v9->super.tokens.topLevelContainer, v258, v259, v260, v261);
  }

  return v9;
}

- (id)orcHelpers
{
  v3 = [CKXAtomORCSchema alloc];
  v8 = objc_msgSend_initWithBinding_formatVersion_(v3, v4, self, 2, v5, v6, v7);

  return v8;
}

@end