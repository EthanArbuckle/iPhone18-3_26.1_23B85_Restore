uint64_t mlir::LLVM::LoopAnnotationAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v168 = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_168;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 16)
  {
    v7 = *a2 == 0x4E656C6261736964 && *(a2 + 8) == 0x646563726F666E6FLL;
    v8 = 1;
    v9 = 1;
    v10 = 1;
    if (v7)
    {
      *v6 = 1;
      v11 = *a1;
      v162 = 0;
      v12 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v11, &v162);
      v13 = v162;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = a1[2];
      *v14 = v13;
      *(v14 + 8) = v12;
      if (*(a1[2] + 8))
      {
        goto LABEL_169;
      }

      v15 = *a1;
      v16 = (*(*v15 + 40))(v15);
      v165 = 259;
      (*(*v15 + 24))(v161, v15, v16, &v162);
      v17 = v161;
LABEL_167:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
LABEL_168:
      v8 = 0;
      goto LABEL_169;
    }

    goto LABEL_19;
  }

  v18 = a1[3];
  if ((*v18 & 1) != 0 || a3 != 9)
  {
    v34 = a1[5];
    v35 = a3 != 10;
    if ((*v34 & 1) != 0 || a3 != 10)
    {
      v40 = a1[7];
      v9 = a3 != 6;
      if ((*v40 & 1) == 0 && a3 == 6)
      {
        v41 = *a2 == 1869770357 && *(a2 + 4) == 27756;
        v8 = 1;
        if (v41)
        {
          *v40 = 1;
          v104 = mlir::FieldParser<mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAttr>::parse(*a1);
          v105 = a1[8];
          *v105 = v104;
          *(v105 + 8) = v106;
          if ((*(a1[8] + 8) & 1) == 0)
          {
            v107 = *a1;
            v108 = (*(*v107 + 40))(v107);
            v165 = 259;
            (*(*v107 + 24))(v158, v107, v108, &v162);
            v17 = v158;
            goto LABEL_167;
          }

          goto LABEL_169;
        }

        v9 = 0;
        v10 = 1;
        goto LABEL_19;
      }

      v64 = a1[9];
      v10 = a3 != 12;
      if ((*v64 & 1) == 0 && a3 == 12)
      {
        v65 = *a2 == 0x6E416C6C6F726E75 && *(a2 + 8) == 1835092580;
        LODWORD(v8) = 1;
        if (v65)
        {
          *v64 = 1;
          v124 = *a1;
          v125 = (*(**a1 + 32))(*a1);
          mlir::MLIRContext::getOrLoadDialect(*v125, "llvm", 4uLL, v126);
          v127 = (*(*v124 + 40))(v124);
          v143[0] = 0;
          v162 = v124;
          if ((*(*v124 + 448))(v124, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20LoopUnrollAndJamAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
          {
            v128 = v143[0];
            if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id)
            {
              v145[0] = "invalid kind of attribute specified";
              v146 = 259;
              (*(*v124 + 24))(&v162, v124, v127, v145);
              LODWORD(v8) = (v167 & 1) == 0;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
              v128 = 0;
            }
          }

          else
          {
            v128 = 0;
            LODWORD(v8) = 0;
          }

          if (!v8)
          {
            v128 = 0;
          }

          v135 = a1[10];
          *v135 = v128;
          *(v135 + 8) = v8;
          if ((*(a1[10] + 8) & 1) == 0)
          {
            v136 = *a1;
            v137 = (*(*v136 + 40))(v136);
            v165 = 259;
            (*(*v136 + 24))(v157, v136, v137, &v162);
            v17 = v157;
            goto LABEL_167;
          }

          goto LABEL_165;
        }

        v10 = 0;
        v9 = 1;
        goto LABEL_19;
      }

      v98 = a1[11];
      if ((*v98 & 1) == 0 && a3 == 4)
      {
        LODWORD(v8) = 1;
        v9 = 1;
        v10 = 1;
        if (*a2 == 1835231596)
        {
          *v98 = 1;
          v99 = *a1;
          v100 = (*(**a1 + 32))(*a1);
          mlir::MLIRContext::getOrLoadDialect(*v100, "llvm", 4uLL, v101);
          v102 = (*(*v99 + 40))(v99);
          v143[0] = 0;
          v162 = v99;
          if ((*(*v99 + 448))(v99, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM12LoopLICMAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
          {
            v103 = v143[0];
            if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id)
            {
              v145[0] = "invalid kind of attribute specified";
              v146 = 259;
              (*(*v99 + 24))(&v162, v99, v102, v145);
              LODWORD(v8) = (v167 & 1) == 0;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
              v103 = 0;
            }
          }

          else
          {
            v103 = 0;
            LODWORD(v8) = 0;
          }

          if (!v8)
          {
            v103 = 0;
          }

          v138 = a1[12];
          *v138 = v103;
          *(v138 + 8) = v8;
          if ((*(a1[12] + 8) & 1) == 0)
          {
            v139 = *a1;
            v140 = (*(*v139 + 40))(v139);
            v165 = 259;
            (*(*v139 + 24))(v156, v139, v140, &v162);
            v17 = v156;
            goto LABEL_167;
          }

          goto LABEL_165;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v36 = *a2 == 0x61656C7265746E69 && *(a2 + 8) == 25974;
      v9 = 1;
      if (v36)
      {
        *v34 = 1;
        v79 = *a1;
        v80 = (*(**a1 + 32))(*a1);
        mlir::MLIRContext::getOrLoadDialect(*v80, "llvm", 4uLL, v81);
        v82 = (*(*v79 + 40))(v79);
        v143[0] = 0;
        v162 = v79;
        if ((*(*v79 + 448))(v79, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopInterleaveAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
        {
          v83 = v143[0];
          v84 = 1;
          if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id)
          {
            v145[0] = "invalid kind of attribute specified";
            v146 = 259;
            (*(*v79 + 24))(&v162, v79, v82, v145);
            v84 = (v167 & 1) == 0;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
            v83 = 0;
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
        }

        if (!v84)
        {
          v83 = 0;
        }

        v109 = a1[6];
        *v109 = v83;
        *(v109 + 8) = v84;
        if ((*(a1[6] + 8) & 1) == 0)
        {
          v110 = *a1;
          v111 = (*(*v110 + 40))(v110);
          v165 = 259;
          (*(*v110 + 24))(v159, v110, v111, &v162);
          v17 = v159;
          goto LABEL_167;
        }

        goto LABEL_165;
      }

      v35 = 0;
      v10 = 1;
    }

    v37 = a1[13];
    if ((*v37 & 1) == 0 && !v35 && *a2 == 0x7562697274736964 && *(a2 + 8) == 25972)
    {
      *v37 = 1;
      v112 = *a1;
      v113 = (*(**a1 + 32))(*a1);
      mlir::MLIRContext::getOrLoadDialect(*v113, "llvm", 4uLL, v114);
      v115 = (*(*v112 + 40))(v112);
      v143[0] = 0;
      v162 = v112;
      if ((*(*v112 + 448))(v112, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopDistributeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
      {
        v116 = v143[0];
        v117 = 1;
        if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id)
        {
          v145[0] = "invalid kind of attribute specified";
          v146 = 259;
          (*(*v112 + 24))(&v162, v112, v115, v145);
          v117 = (v167 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
          v116 = 0;
        }
      }

      else
      {
        v116 = 0;
        v117 = 0;
      }

      if (!v117)
      {
        v116 = 0;
      }

      v129 = a1[14];
      *v129 = v116;
      *(v129 + 8) = v117;
      if ((*(a1[14] + 8) & 1) == 0)
      {
        v130 = *a1;
        v131 = (*(*v130 + 40))(v130);
        v165 = 259;
        (*(*v130 + 24))(v155, v130, v131, &v162);
        v17 = v155;
        goto LABEL_167;
      }

      goto LABEL_165;
    }

    v39 = a1[15];
    LODWORD(v8) = a3 != 8;
    if ((*v39 & 1) == 0 && a3 == 8)
    {
      if (*a2 == 0x656E696C65706970)
      {
        *v39 = 1;
        v118 = *a1;
        v119 = (*(**a1 + 32))(*a1);
        mlir::MLIRContext::getOrLoadDialect(*v119, "llvm", 4uLL, v120);
        v121 = (*(*v118 + 40))(v118);
        v143[0] = 0;
        v162 = v118;
        if ((*(*v118 + 448))(v118, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopPipelineAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
        {
          v122 = v143[0];
          v123 = 1;
          if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id)
          {
            v145[0] = "invalid kind of attribute specified";
            v146 = 259;
            (*(*v118 + 24))(&v162, v118, v121, v145);
            v123 = (v167 & 1) == 0;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
            v122 = 0;
          }
        }

        else
        {
          v122 = 0;
          v123 = 0;
        }

        if (!v123)
        {
          v122 = 0;
        }

        v132 = a1[16];
        *v132 = v122;
        *(v132 + 8) = v123;
        if ((*(a1[16] + 8) & 1) == 0)
        {
          v133 = *a1;
          v134 = (*(*v133 + 40))(v133);
          v165 = 259;
          (*(*v133 + 24))(v154, v133, v134, &v162);
          v17 = v154;
          goto LABEL_167;
        }

        goto LABEL_165;
      }

      LODWORD(v8) = 0;
    }

    goto LABEL_19;
  }

  v19 = *a2 == 0x7A69726F74636576 && *(a2 + 8) == 101;
  LODWORD(v8) = 1;
  v9 = 1;
  v10 = 1;
  if (v19)
  {
    *v18 = 1;
    v48 = *a1;
    v49 = (*(**a1 + 32))(*a1);
    mlir::MLIRContext::getOrLoadDialect(*v49, "llvm", 4uLL, v50);
    v51 = (*(*v48 + 40))(v48);
    v143[0] = 0;
    v162 = v48;
    if ((*(*v48 + 448))(v48, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17LoopVectorizeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
    {
      v52 = v143[0];
      if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id)
      {
        v145[0] = "invalid kind of attribute specified";
        v146 = 259;
        (*(*v48 + 24))(&v162, v48, v51, v145);
        LODWORD(v8) = (v167 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
      LODWORD(v8) = 0;
    }

    if (!v8)
    {
      v52 = 0;
    }

    v85 = a1[4];
    *v85 = v52;
    *(v85 + 8) = v8;
    if ((*(a1[4] + 8) & 1) == 0)
    {
      v86 = *a1;
      v87 = (*(*v86 + 40))(v86);
      v165 = 259;
      (*(*v86 + 24))(v160, v86, v87, &v162);
      v17 = v160;
      goto LABEL_167;
    }

    goto LABEL_165;
  }

LABEL_19:
  v20 = a1[17];
  if ((*v20 & 1) == 0 && !v9 && *a2 == 1818584432 && *(a2 + 4) == 25701)
  {
    *v20 = 1;
    v42 = *a1;
    v43 = (*(**a1 + 32))(*a1);
    mlir::MLIRContext::getOrLoadDialect(*v43, "llvm", 4uLL, v44);
    v45 = (*(*v42 + 40))(v42);
    v143[0] = 0;
    v162 = v42;
    if ((*(*v42 + 448))(v42, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopPeeledAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
    {
      v46 = v143[0];
      v47 = 1;
      if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id)
      {
        v145[0] = "invalid kind of attribute specified";
        v146 = 259;
        (*(*v42 + 24))(&v162, v42, v45, v145);
        v47 = (v167 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    if (!v47)
    {
      v46 = 0;
    }

    v71 = a1[18];
    *v71 = v46;
    *(v71 + 8) = v47;
    if ((*(a1[18] + 8) & 1) == 0)
    {
      v72 = *a1;
      v73 = (*(*v72 + 40))(v72);
      v165 = 259;
      (*(*v72 + 24))(v153, v72, v73, &v162);
      v17 = v153;
      goto LABEL_167;
    }

LABEL_165:
    v8 = 1;
    goto LABEL_169;
  }

  v22 = a1[19];
  if (((*v22 | v8) & 1) == 0 && *a2 == 0x6863746977736E75)
  {
    *v22 = 1;
    v53 = *a1;
    v54 = (*(**a1 + 32))(*a1);
    mlir::MLIRContext::getOrLoadDialect(*v54, "llvm", 4uLL, v55);
    v56 = (*(*v53 + 40))(v53);
    v143[0] = 0;
    v162 = v53;
    if ((*(*v53 + 448))(v53, v143, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopUnswitchAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, &v162))
    {
      v57 = v143[0];
      v58 = 1;
      if (*(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id)
      {
        v145[0] = "invalid kind of attribute specified";
        v146 = 259;
        (*(*v53 + 24))(&v162, v53, v56, v145);
        v58 = (v167 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v162);
        v57 = 0;
      }
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    if (!v58)
    {
      v57 = 0;
    }

    v88 = a1[20];
    *v88 = v57;
    *(v88 + 8) = v58;
    if ((*(a1[20] + 8) & 1) == 0)
    {
      v89 = *a1;
      v90 = (*(*v89 + 40))(v89);
      v165 = 259;
      (*(*v89 + 24))(v152, v89, v90, &v162);
      v17 = v152;
      goto LABEL_167;
    }

    goto LABEL_165;
  }

  v23 = a1[21];
  if (((*v23 | v10) & 1) == 0 && *a2 == 0x676F72507473756DLL && *(a2 + 8) == 1936942450)
  {
    v8 = 1;
    *v23 = 1;
    v59 = mlir::FieldParser<mlir::BoolAttr,mlir::BoolAttr>::parse(*a1);
    v60 = a1[22];
    *v60 = v59;
    *(v60 + 8) = v61;
    if (*(a1[22] + 8))
    {
      goto LABEL_169;
    }

    v62 = *a1;
    v63 = (*(*v62 + 40))(v62);
    v165 = 259;
    (*(*v62 + 24))(v151, v62, v63, &v162);
    v17 = v151;
    goto LABEL_167;
  }

  v25 = a1[23];
  if (((*v25 | v10) & 1) == 0 && *a2 == 0x726F746365567369 && *(a2 + 8) == 1684372073)
  {
    v8 = 1;
    *v25 = 1;
    v66 = mlir::FieldParser<mlir::BoolAttr,mlir::BoolAttr>::parse(*a1);
    v67 = a1[24];
    *v67 = v66;
    *(v67 + 8) = v68;
    if (*(a1[24] + 8))
    {
      goto LABEL_169;
    }

    v69 = *a1;
    v70 = (*(*v69 + 40))(v69);
    v165 = 259;
    (*(*v69 + 24))(v150, v69, v70, &v162);
    v17 = v150;
    goto LABEL_167;
  }

  v27 = a1[25];
  if (((*v27 | v8) & 1) == 0 && *a2 == 0x636F4C7472617473)
  {
    v8 = 1;
    *v27 = 1;
    v74 = mlir::FieldParser<mlir::FusedLoc,mlir::FusedLoc>::parse(*a1);
    v75 = a1[26];
    *v75 = v74;
    *(v75 + 8) = v76;
    if (*(a1[26] + 8))
    {
      goto LABEL_169;
    }

    v77 = *a1;
    v78 = (*(*v77 + 40))(v77);
    v165 = 259;
    (*(*v77 + 24))(v149, v77, v78, &v162);
    v17 = v149;
    goto LABEL_167;
  }

  v28 = a1[27];
  if (((*v28 | v9) & 1) != 0 || (*a2 == 1281650277 ? (v29 = *(a2 + 4) == 25455) : (v29 = 0), !v29))
  {
    v30 = a1[29];
    if ((*v30 & 1) != 0 || a3 != 16 || (*a2 == 0x6C656C6C61726170 ? (v31 = *(a2 + 8) == 0x7365737365636341) : (v31 = 0), !v31))
    {
      v32 = *a1;
      v33 = (*(*v32 + 40))(v32);
      v143[0] = "duplicate or unknown struct parameter name: ";
      v144 = 259;
      (*(*v32 + 24))(&v162, v32, v33, v143);
      if (v162)
      {
        v146 = 261;
        v145[0] = a2;
        v145[1] = a3;
        mlir::Diagnostic::operator<<(&v163, v145);
      }

      v17 = &v162;
      goto LABEL_167;
    }

    *v30 = 1;
    mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(&v162, *a1);
    std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>>(a1[30], &v162);
    if (v166 == 1 && v162 != &v164)
    {
      free(v162);
    }

    if ((*(a1[30] + 64) & 1) == 0)
    {
      v96 = *a1;
      v97 = (*(*v96 + 40))(v96);
      v165 = 259;
      (*(*v96 + 24))(v147, v96, v97, &v162);
      v17 = v147;
      goto LABEL_167;
    }

    goto LABEL_165;
  }

  v8 = 1;
  *v28 = 1;
  v91 = mlir::FieldParser<mlir::FusedLoc,mlir::FusedLoc>::parse(*a1);
  v92 = a1[28];
  *v92 = v91;
  *(v92 + 8) = v93;
  if ((*(a1[28] + 8) & 1) == 0)
  {
    v94 = *a1;
    v95 = (*(*v94 + 40))(v94);
    v165 = 259;
    (*(*v94 + 24))(v148, v94, v95, &v162);
    v17 = v148;
    goto LABEL_167;
  }

LABEL_169:
  v141 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopAnnotationAttr::print(mlir::LLVM::LoopAnnotationAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if ((*(v7 + 3) - v8) > 0x12)
    {
      *(v8 + 15) = 540876900;
      *v8 = *"disableNonforced = ";
      *(v7 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disableNonforced = ", 0x13uLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_37;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }
  }

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              if (!v6[8])
              {
                if (!v6[9])
                {
                  if (!v6[10])
                  {
                    if (!v6[11])
                    {
                      if (!v6[12])
                      {
                        if (!v6[13])
                        {
                          if (!v6[14])
                          {
                            if (!v6[16])
                            {
                              goto LABEL_183;
                            }

                            goto LABEL_173;
                          }

                          goto LABEL_164;
                        }

                        goto LABEL_155;
                      }

                      goto LABEL_146;
                    }

                    goto LABEL_137;
                  }

                  goto LABEL_125;
                }

                goto LABEL_113;
              }

              goto LABEL_101;
            }

            goto LABEL_89;
          }

          goto LABEL_77;
        }

        goto LABEL_65;
      }

      goto LABEL_53;
    }

    goto LABEL_41;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0xB)
  {
    *(v13 + 8) = 540876901;
    *v13 = *"vectorize = ";
    *(v12 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v12, "vectorize = ", 0xCuLL);
  }

  v9 = *this;
  v14 = *(*this + 16);
  if (v14)
  {
    v102 = *(*this + 16);
    if (((*(*a2 + 56))(a2, v14) & 1) == 0)
    {
      v15 = (*(*a2 + 16))(a2);
      v16 = (*(*v15 + 80))(v15) + v15[4] - v15[2];
      mlir::LLVM::LoopVectorizeAttr::print(&v102, a2);
      if (v16 == (*(*v15 + 80))(v15) + v15[4] - v15[2])
      {
        (*(*a2 + 40))(a2, v14);
      }
    }

    v9 = *this;
  }

LABEL_37:
  if (!v9[3])
  {
    goto LABEL_49;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 1uLL)
  {
    *v18 = 8236;
    *(v17 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, ", ", 2uLL);
  }

LABEL_41:
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) - v20 > 0xCuLL)
  {
    qmemcpy(v20, "interleave = ", 13);
    *(v19 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v19, "interleave = ", 0xDuLL);
  }

  v9 = *this;
  v21 = *(*this + 24);
  if (v21)
  {
    v102 = *(*this + 24);
    if (((*(*a2 + 56))(a2, v21) & 1) == 0)
    {
      v22 = (*(*a2 + 16))(a2);
      v23 = (*(*v22 + 80))(v22) + v22[4] - v22[2];
      mlir::LLVM::LoopInterleaveAttr::print(&v102, a2);
      if (v23 == (*(*v22 + 80))(v22) + v22[4] - v22[2])
      {
        (*(*a2 + 40))(a2, v21);
      }
    }

    v9 = *this;
  }

LABEL_49:
  if (v9[4])
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 1uLL)
    {
      *v25 = 8236;
      *(v24 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v24, ", ", 2uLL);
    }

LABEL_53:
    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if ((*(v26 + 3) - v27) > 8)
    {
      *(v27 + 8) = 32;
      *v27 = *"unroll = ";
      *(v26 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v26, "unroll = ", 9uLL);
    }

    v9 = *this;
    v28 = *(*this + 32);
    if (v28)
    {
      v102 = *(*this + 32);
      if (((*(*a2 + 56))(a2, v28) & 1) == 0)
      {
        v29 = (*(*a2 + 16))(a2);
        v30 = (*(*v29 + 80))(v29) + v29[4] - v29[2];
        mlir::LLVM::LoopUnrollAttr::print(&v102, a2);
        if (v30 == (*(*v29 + 80))(v29) + v29[4] - v29[2])
        {
          (*(*a2 + 40))(a2, v28);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_73;
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (*(v31 + 3) - v32 > 1uLL)
  {
    *v32 = 8236;
    *(v31 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, ", ", 2uLL);
  }

LABEL_65:
  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (*(v33 + 3) - v34 > 0xEuLL)
  {
    qmemcpy(v34, "unrollAndJam = ", 15);
    *(v33 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v33, "unrollAndJam = ", 0xFuLL);
  }

  v9 = *this;
  v35 = *(*this + 40);
  if (v35)
  {
    v102 = *(*this + 40);
    if (((*(*a2 + 56))(a2, v35) & 1) == 0)
    {
      v36 = (*(*a2 + 16))(a2);
      v37 = (*(*v36 + 80))(v36) + v36[4] - v36[2];
      mlir::LLVM::LoopUnrollAndJamAttr::print(&v102, a2);
      if (v37 == (*(*v36 + 80))(v36) + v36[4] - v36[2])
      {
        (*(*a2 + 40))(a2, v35);
      }
    }

    v9 = *this;
  }

LABEL_73:
  if (v9[6])
  {
    v38 = (*(*a2 + 16))(a2);
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 > 1uLL)
    {
      *v39 = 8236;
      *(v38 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v38, ", ", 2uLL);
    }

LABEL_77:
    v40 = (*(*a2 + 16))(a2);
    v41 = *(v40 + 4);
    if (*(v40 + 3) - v41 > 6uLL)
    {
      *(v41 + 3) = 540876909;
      *v41 = 1835231596;
      *(v40 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v40, "licm = ", 7uLL);
    }

    v9 = *this;
    v42 = *(*this + 48);
    if (v42)
    {
      v102 = *(*this + 48);
      if (((*(*a2 + 56))(a2, v42) & 1) == 0)
      {
        v43 = (*(*a2 + 16))(a2);
        v44 = (*(*v43 + 80))(v43) + v43[4] - v43[2];
        mlir::LLVM::LoopLICMAttr::print(&v102, a2);
        if (v44 == (*(*v43 + 80))(v43) + v43[4] - v43[2])
        {
          (*(*a2 + 40))(a2, v42);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_97;
  }

  v45 = (*(*a2 + 16))(a2);
  v46 = *(v45 + 4);
  if (*(v45 + 3) - v46 > 1uLL)
  {
    *v46 = 8236;
    *(v45 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v45, ", ", 2uLL);
  }

LABEL_89:
  v47 = (*(*a2 + 16))(a2);
  v48 = *(v47 + 4);
  if (*(v47 + 3) - v48 > 0xCuLL)
  {
    qmemcpy(v48, "distribute = ", 13);
    *(v47 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v47, "distribute = ", 0xDuLL);
  }

  v9 = *this;
  v49 = *(*this + 56);
  if (v49)
  {
    v102 = *(*this + 56);
    if (((*(*a2 + 56))(a2, v49) & 1) == 0)
    {
      v50 = (*(*a2 + 16))(a2);
      v51 = (*(*v50 + 80))(v50) + v50[4] - v50[2];
      mlir::LLVM::LoopDistributeAttr::print(&v102, a2);
      if (v51 == (*(*v50 + 80))(v50) + v50[4] - v50[2])
      {
        (*(*a2 + 40))(a2, v49);
      }
    }

    v9 = *this;
  }

LABEL_97:
  if (v9[8])
  {
    v52 = (*(*a2 + 16))(a2);
    v53 = *(v52 + 4);
    if (*(v52 + 3) - v53 > 1uLL)
    {
      *v53 = 8236;
      *(v52 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v52, ", ", 2uLL);
    }

LABEL_101:
    v54 = (*(*a2 + 16))(a2);
    v55 = *(v54 + 4);
    if ((*(v54 + 3) - v55) > 0xA)
    {
      *(v55 + 7) = 540876901;
      *v55 = *"pipeline = ";
      *(v54 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v54, "pipeline = ", 0xBuLL);
    }

    v9 = *this;
    v56 = *(*this + 64);
    if (v56)
    {
      v102 = *(*this + 64);
      if (((*(*a2 + 56))(a2, v56) & 1) == 0)
      {
        v57 = (*(*a2 + 16))(a2);
        v58 = (*(*v57 + 80))(v57) + v57[4] - v57[2];
        mlir::LLVM::LoopPipelineAttr::print(&v102, a2);
        if (v58 == (*(*v57 + 80))(v57) + v57[4] - v57[2])
        {
          (*(*a2 + 40))(a2, v56);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[9])
  {
    goto LABEL_121;
  }

  v59 = (*(*a2 + 16))(a2);
  v60 = *(v59 + 4);
  if (*(v59 + 3) - v60 > 1uLL)
  {
    *v60 = 8236;
    *(v59 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v59, ", ", 2uLL);
  }

LABEL_113:
  v61 = (*(*a2 + 16))(a2);
  v62 = *(v61 + 4);
  if ((*(v61 + 3) - v62) > 8)
  {
    *(v62 + 8) = 32;
    *v62 = *"peeled = ";
    *(v61 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(v61, "peeled = ", 9uLL);
  }

  v9 = *this;
  v63 = *(*this + 72);
  if (v63)
  {
    v102 = *(*this + 72);
    if (((*(*a2 + 56))(a2, v63) & 1) == 0)
    {
      v64 = (*(*a2 + 16))(a2);
      v65 = (*(*v64 + 80))(v64) + v64[4] - v64[2];
      mlir::LLVM::LoopPeeledAttr::print(&v102, a2);
      if (v65 == (*(*v64 + 80))(v64) + v64[4] - v64[2])
      {
        (*(*a2 + 40))(a2, v63);
      }
    }

    v9 = *this;
  }

LABEL_121:
  if (v9[10])
  {
    v66 = (*(*a2 + 16))(a2);
    v67 = *(v66 + 4);
    if (*(v66 + 3) - v67 > 1uLL)
    {
      *v67 = 8236;
      *(v66 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v66, ", ", 2uLL);
    }

LABEL_125:
    v68 = (*(*a2 + 16))(a2);
    v69 = *(v68 + 4);
    if ((*(v68 + 3) - v69) > 0xA)
    {
      *(v69 + 7) = 540876904;
      *v69 = *"unswitch = ";
      *(v68 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v68, "unswitch = ", 0xBuLL);
    }

    v9 = *this;
    v70 = *(*this + 80);
    if (v70)
    {
      v102 = *(*this + 80);
      if (((*(*a2 + 56))(a2, v70) & 1) == 0)
      {
        v71 = (*(*a2 + 16))(a2);
        v72 = (*(*v71 + 80))(v71) + v71[4] - v71[2];
        mlir::LLVM::LoopUnswitchAttr::print(&v102, a2);
        if (v72 == (*(*v71 + 80))(v71) + v71[4] - v71[2])
        {
          (*(*a2 + 40))(a2, v70);
        }
      }

      v9 = *this;
    }
  }

  if (!v9[11])
  {
    goto LABEL_142;
  }

  v73 = (*(*a2 + 16))(a2);
  v74 = *(v73 + 4);
  if (*(v73 + 3) - v74 > 1uLL)
  {
    *v74 = 8236;
    *(v73 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v73, ", ", 2uLL);
  }

LABEL_137:
  v75 = (*(*a2 + 16))(a2);
  v76 = *(v75 + 4);
  if (*(v75 + 3) - v76 > 0xEuLL)
  {
    qmemcpy(v76, "mustProgress = ", 15);
    *(v75 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v75, "mustProgress = ", 0xFuLL);
  }

  v9 = *this;
  if (*(*this + 88))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_142:
  if (v9[12])
  {
    v77 = (*(*a2 + 16))(a2);
    v78 = *(v77 + 4);
    if (*(v77 + 3) - v78 > 1uLL)
    {
      *v78 = 8236;
      *(v77 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v77, ", ", 2uLL);
    }

LABEL_146:
    v79 = (*(*a2 + 16))(a2);
    v80 = *(v79 + 4);
    if (*(v79 + 3) - v80 > 0xEuLL)
    {
      qmemcpy(v80, "isVectorized = ", 15);
      *(v79 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v79, "isVectorized = ", 0xFuLL);
    }

    v9 = *this;
    if (*(*this + 96))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[13])
  {
    goto LABEL_160;
  }

  v81 = (*(*a2 + 16))(a2);
  v82 = *(v81 + 4);
  if (*(v81 + 3) - v82 > 1uLL)
  {
    *v82 = 8236;
    *(v81 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v81, ", ", 2uLL);
  }

LABEL_155:
  v83 = (*(*a2 + 16))(a2);
  v84 = *(v83 + 4);
  if ((*(v83 + 3) - v84) > 0xA)
  {
    *(v84 + 7) = 540876899;
    *v84 = *"startLoc = ";
    *(v83 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v83, "startLoc = ", 0xBuLL);
  }

  v9 = *this;
  if (*(*this + 104))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_160:
  if (v9[14])
  {
    v85 = (*(*a2 + 16))(a2);
    v86 = *(v85 + 4);
    if (*(v85 + 3) - v86 > 1uLL)
    {
      *v86 = 8236;
      *(v85 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v85, ", ", 2uLL);
    }

LABEL_164:
    v87 = (*(*a2 + 16))(a2);
    v88 = *(v87 + 4);
    if ((*(v87 + 3) - v88) > 8)
    {
      *(v88 + 8) = 32;
      *v88 = *"endLoc = ";
      *(v87 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v87, "endLoc = ", 9uLL);
    }

    v9 = *this;
    if (*(*this + 112))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[16])
  {
    goto LABEL_183;
  }

  v89 = (*(*a2 + 16))(a2);
  v90 = *(v89 + 4);
  if (*(v89 + 3) - v90 > 1uLL)
  {
    *v90 = 8236;
    *(v89 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v89, ", ", 2uLL);
  }

LABEL_173:
  v91 = (*(*a2 + 16))(a2);
  v92 = *(v91 + 4);
  if ((*(v91 + 3) - v92) > 0x12)
  {
    *(v92 + 15) = 540876915;
    *v92 = *"parallelAccesses = ";
    *(v91 + 4) += 19;
  }

  else
  {
    llvm::raw_ostream::write(v91, "parallelAccesses = ", 0x13uLL);
  }

  v93 = *(*this + 128);
  if (v93)
  {
    v94 = *(*this + 120);
    v95 = (*(*a2 + 16))(a2);
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::AccessGroupAttr,(void *)0>(a2, *v94);
    if (v93 != 1)
    {
      v96 = v94 + 1;
      v97 = 8 * v93 - 8;
      do
      {
        v98 = *(v95 + 4);
        if (*(v95 + 3) - v98 > 1uLL)
        {
          *v98 = 8236;
          *(v95 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v95, ", ", 2uLL);
        }

        v99 = *v96++;
        mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::AccessGroupAttr,(void *)0>(a2, v99);
        v97 -= 8;
      }

      while (v97);
    }
  }

LABEL_183:
  result = (*(*a2 + 16))(a2);
  v101 = *(result + 4);
  if (*(result + 3) == v101)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v101 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIExpressionElemAttr::get(uint64_t *a1, int a2, llvm::hashing::detail::hash_state *a3, unint64_t *a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id;
  v10[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIExpressionElemAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIExpressionElemAttrEJjNS_8ArrayRefIyEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v15[1] = v10;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  LODWORD(v16[0]) = a2;
  v5 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(a3, a3 + 8 * a4, a3, a4);
  HIDWORD(v16[0]) = v5;
  v6 = __ROR8__(v5 + 12, 12);
  v7 = 0x9DDFEA08EB382D69 * (v16[0] ^ v6 ^ 0xFF51AFD7ED558CCDLL);
  v11 = &v12;
  v16[0] = &v12;
  v16[1] = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIExpressionElemAttr::parse(mlir::AsmParser *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v21) = 0;
  v24 = 0;
  v2 = (*(*a1 + 40))(a1);
  v15 = 0;
  v16 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v15))
  {
LABEL_16:
    v9 = (*(*a1 + 40))(a1);
    v28 = 259;
    (*(*a1 + 24))(v20, a1, v9, &v25);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  OperationEncoding = llvm::dwarf::getOperationEncoding(v15, v16);
  if (!OperationEncoding)
  {
    v14 = 257;
    (*(*a1 + 24))(&v25, a1, v2, v13);
    if (v25)
    {
      mlir::Diagnostic::operator<<<56ul>(&v26, "invalid debug info debug info operation encoding name: ");
      if (v25)
      {
        v19[8] = 261;
        v17 = v15;
        v18 = v16;
        mlir::Diagnostic::operator<<(&v26, &v17);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    goto LABEL_16;
  }

  v4 = OperationEncoding;
  if ((*(*a1 + 288))(a1))
  {
    (*(*a1 + 40))(a1);
    if (v24 == 1 && v21 != v23)
    {
      free(v21);
    }

    v21 = v23;
    v22 = 0x600000000;
    v24 = 1;
    v17 = v4;
    v25 = &v21;
    v26 = &v17;
    v27[0] = a1;
    if (((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseExpressionArg(mlir::AsmParser &,unsigned long long,llvm::SmallVector<unsigned long long,6u> &)::$_0>, &v25, 0, 0) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = (*(*a1 + 32))(a1);
  v6 = 0;
  v7 = *v5;
  v17 = v19;
  v18 = 0x600000000;
  v25 = v27;
  v26 = 0x600000000;
  if (v24 == 1)
  {
    v8 = v27;
    if (v22)
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(&v25, &v21);
      v8 = v25;
      v6 = v26;
    }
  }

  else
  {
    v8 = v27;
  }

  v10 = mlir::LLVM::DIExpressionElemAttr::get(v7, v4, v8, v6);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v17 != v19)
  {
    free(v17);
  }

LABEL_18:
  if (v24 == 1 && v21 != v23)
  {
    free(v21);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

llvm::raw_ostream *mlir::LLVM::DIExpressionElemAttr::print(mlir::LLVM::DIExpressionElemAttr *this, mlir::AsmPrinter *a2)
{
  v4 = llvm::dwarf::OperationEncodingString(*(*this + 8));
  v6 = v5;
  v7 = (*(*a2 + 16))(a2);
  result = llvm::raw_ostream::operator<<(v7, v4, v6);
  if (*(*this + 24))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, "(", 1uLL);
    }

    else
    {
      *v10 = 40;
      ++*(v9 + 4);
    }

    v11 = *this;
    v12 = *(*this + 24);
    if (v12)
    {
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *v14;
      v16 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v16, v15, 0, 0, 0);
      if (v12 != 1)
      {
        v17 = (v14 + 1);
        v18 = 8 * v12 - 8;
        v19 = 1;
        do
        {
          v20 = (*(*a2 + 16))(a2);
          v21 = *(v20 + 4);
          if (*(v20 + 3) - v21 > 1uLL)
          {
            *v21 = 8236;
            *(v20 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v20, ", ", 2uLL);
          }

          v22 = *v17;
          if (v13 == 4097 && v19 && (v23 = llvm::dwarf::AttributeEncodingString(*v17), v24))
          {
            v25 = v23;
            v26 = v24;
            v27 = (*(*a2 + 16))(a2);
            llvm::raw_ostream::operator<<(v27, v25, v26);
          }

          else
          {
            v28 = (*(*a2 + 16))(a2);
            write_unsigned<unsigned long long>(v28, v22, 0, 0, 0);
            ++v19;
          }

          ++v17;
          v18 -= 8;
        }

        while (v18);
      }
    }

    result = (*(*a2 + 16))(a2);
    v29 = *(result + 4);
    if (*(result + 3) == v29)
    {

      return llvm::raw_ostream::write(result, ")", 1uLL);
    }

    else
    {
      *v29 = 41;
      ++*(result + 4);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DIExpressionAttr::get(uint64_t *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id;
  v23[1] = a1;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIExpressionAttrEJNS_8ArrayRefINS2_20DIExpressionElemAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v25[1] = v23;
  v24[0] = a2;
  v24[1] = a3;
  if (a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = &a2[2 * a3];
    while (v7 <= 0x38)
    {
      v9 = v7 + 8;
      v10 = *v6;
      v6 += 2;
      *(__src + v7) = (v10 >> 4) ^ (v10 >> 9);
      v7 = v9;
      if (8 * a3 == v9)
      {
        goto LABEL_7;
      }
    }

    v26[0] = xmmword_25D0A0610;
    v26[1] = xmmword_25D0A0620;
    v26[2] = xmmword_25D0A0630;
    v27 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v26, __src, a3, a4);
    if (v7 == 8 * a3)
    {
      v12 = 64;
    }

    else
    {
      v12 = 64;
      do
      {
        v13 = 0;
        do
        {
          v14 = *v6;
          v6 += 2;
          v15 = v13 + 8;
          __src[v13 / 8] = (v14 >> 4) ^ (v14 >> 9);
          if (v6 == v8)
          {
            break;
          }

          v16 = v13 >= 0x31;
          v13 += 8;
        }

        while (!v16);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, __src + v15, &v29);
        llvm::hashing::detail::hash_state::mix(v26, __src, v17, v18);
        v12 += v15;
      }

      while (v6 != v8);
    }

    v11 = llvm::hashing::detail::hash_state::finalize(v26, v12);
  }

  else
  {
    v9 = 0;
LABEL_7:
    v11 = llvm::hashing::detail::hash_short(__src, v9, 0xFF51AFD7ED558CCDLL);
  }

  v19 = HIDWORD(v11) ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (8 * v11 + 8));
  *&v26[0] = v24;
  __src[0] = v24;
  __src[1] = v25;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __src);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIExpressionAttr::parse(uint64_t *a1)
{
  v26[6] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v20) = 0;
  v23 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((*(*a1 + 320))(a1))
  {
    v24 = v26;
    v25 = 0x600000000;
    v14[0] = a1;
    v14[1] = &v24;
    if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>,llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v14, 0, 0))
    {
      v16 = v18;
      v17 = 0x600000000;
      if (v25)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(&v16, &v24);
      }

      v2 = 1;
    }

    else
    {
      v2 = 0;
      LOBYTE(v16) = 0;
    }

    v19 = v2;
    if (v24 != v26)
    {
      free(v24);
      v2 = v19;
    }

    if (v23 == v2)
    {
      if (v23)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(&v20, &v16);
      }
    }

    else if (v23)
    {
      if (v20 != v22)
      {
        free(v20);
      }

      v23 = 0;
    }

    else
    {
      v20 = v22;
      v21 = 0x600000000;
      if (v17)
      {
        llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(&v20, &v16);
      }

      v23 = 1;
    }

    if (v19 == 1 && v16 != v18)
    {
      free(v16);
    }

    v3 = *a1;
    if ((v23 & 1) == 0)
    {
      v9 = (*(v3 + 40))(a1);
      v18[8] = 259;
      (*(*a1 + 24))(v15, a1, v9, &v16);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      goto LABEL_32;
    }

    if (((*(v3 + 328))(a1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    v10 = 0;
    goto LABEL_33;
  }

  v5 = *(*(*a1 + 32))(a1);
  v24 = v26;
  v25 = 0x600000000;
  v16 = v18;
  v17 = 0x600000000;
  if (v23 == 1)
  {
    v6 = v21;
    if (v21)
    {
      if (v21 < 7)
      {
        v8 = v18;
        v7 = v21;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v21, 8);
        v7 = v21;
        if (!v21)
        {
LABEL_40:
          LODWORD(v17) = v6;
          v13 = v16;
          goto LABEL_41;
        }

        v8 = v16;
      }

      memcpy(v8, v20, 8 * v7);
      goto LABEL_40;
    }
  }

  v6 = 0;
  v13 = v18;
LABEL_41:
  v10 = mlir::LLVM::DIExpressionAttr::get(v5, v13, v6, v4);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v24 != v26)
  {
    free(v24);
  }

LABEL_33:
  if (v23 == 1 && v20 != v22)
  {
    free(v20);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

llvm::raw_ostream *mlir::LLVM::DIExpressionAttr::print(mlir::LLVM::DIExpressionAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 16))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) == v7)
    {
      llvm::raw_ostream::write(v6, "[", 1uLL);
    }

    else
    {
      *v7 = 91;
      ++*(v6 + 4);
    }

    v8 = *(*this + 16);
    if (v8)
    {
      v9 = *(*this + 8);
      v10 = (*(*a2 + 16))(a2);
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionElemAttr,(void *)0>(a2, *v9);
      if (v8 != 1)
      {
        v11 = v9 + 1;
        v12 = 8 * v8 - 8;
        do
        {
          v13 = *(v10 + 4);
          if (*(v10 + 3) - v13 > 1uLL)
          {
            *v13 = 8236;
            *(v10 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v10, ", ", 2uLL);
          }

          v14 = *v11++;
          mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionElemAttr,(void *)0>(a2, v14);
          v12 -= 8;
        }

        while (v12);
      }
    }

    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) == v16)
    {
      llvm::raw_ostream::write(v15, "]", 1uLL);
    }

    else
    {
      *v16 = 93;
      ++*(v15 + 4);
    }
  }

  result = (*(*a2 + 16))(a2);
  v18 = *(result + 4);
  if (*(result + 3) == v18)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v18 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIBasicTypeAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id;
  v10[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DIBasicTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DIBasicTypeAttrEJjNS1_10StringAttrEyjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v15[1] = v10;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  *&v17[16] = 0u;
  v18 = 0u;
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  *v17 = a2;
  *&v17[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v17[12] = a4;
  v16 = 0;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v17, &v16, &v17[20], v20, a5);
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v17, v16, v6, v20);
  v16 = &v11;
  *v17 = &v11;
  *&v17[8] = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIBasicTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIBasicTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIBasicTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIBasicTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIBasicTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIBasicTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIBasicTypeAttr::parse(mlir::AsmParser *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v33 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v34 = 0;
      v35 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v34))
      {
        v24 = (*(*a1 + 40))(a1);
        v49 = "expected a parameter name in struct";
        v51 = 259;
        (*(*a1 + 24))(v43, a1, v24, &v49);
        v25 = v43;
        goto LABEL_58;
      }

      v9 = v34;
      v10 = v35;
      if (((*(*a1 + 136))(a1) & 1) == 0)
      {
        goto LABEL_59;
      }

      if (v6 & 1 | (v10 != 3))
      {
        if (v2 & 1 | (v10 != 4))
        {
          if (v4 & 1 | (v10 != 10))
          {
            if (v7 & 1 | (v10 != 8))
            {
              goto LABEL_55;
            }

            if (*v9 != 0x676E69646F636E65)
            {
              v10 = 8;
              goto LABEL_55;
            }

            v11 = (*(*a1 + 40))(a1);
            v38 = 0;
            v39 = 0;
            if (!mlir::AsmParser::parseKeyword(a1, &v38))
            {
              goto LABEL_66;
            }

            AttributeEncoding = llvm::dwarf::getAttributeEncoding(v38, v39);
            if (!AttributeEncoding)
            {
              v37 = 257;
              (*(*a1 + 24))(&v49, a1, v11, v36);
              if (v49)
              {
                mlir::Diagnostic::operator<<<46ul>(v50, "invalid debug info debug info encoding name: ");
                if (v49)
                {
                  v42 = 261;
                  v40 = v38;
                  v41 = v39;
                  mlir::Diagnostic::operator<<(v50, &v40);
                }
              }

              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
LABEL_66:
              v32 = (*(*a1 + 40))(a1);
              v51 = 259;
              (*(*a1 + 24))(v44, a1, v32, &v49);
              v25 = v44;
              goto LABEL_58;
            }

            v8 = AttributeEncoding;
            v7 = 1;
          }

          else
          {
            if (*v9 != 0x69426E49657A6973 || *(v9 + 8) != 29556)
            {
              v10 = 10;
              goto LABEL_55;
            }

            v49 = 0;
            if ((mlir::AsmParser::parseInteger<unsigned long long>(a1, &v49) & 1) == 0)
            {
              v31 = (*(*a1 + 40))(a1);
              v51 = 259;
              (*(*a1 + 24))(v45, a1, v31, &v49);
              v25 = v45;
              goto LABEL_58;
            }

            v33 = v49;
            v4 = 1;
          }
        }

        else
        {
          if (*v9 != 1701667182)
          {
            v10 = 4;
            goto LABEL_55;
          }

          v16 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v17 & 1) == 0)
          {
            v28 = (*(*a1 + 40))(a1);
            v51 = 259;
            (*(*a1 + 24))(v46, a1, v28, &v49);
            v25 = v46;
            goto LABEL_58;
          }

          v3 = v16;
          v2 = 1;
        }
      }

      else
      {
        if (*v9 != 24948 || *(v9 + 2) != 103)
        {
          v10 = 3;
LABEL_55:
          v29 = (*(*a1 + 40))(a1);
          v36[0] = "duplicate or unknown struct parameter name: ";
          v37 = 259;
          (*(*a1 + 24))(&v49, a1, v29, v36);
          if (v49)
          {
            v42 = 261;
            v40 = v9;
            v41 = v10;
            mlir::Diagnostic::operator<<(v50, &v40);
          }

LABEL_57:
          v25 = &v49;
          goto LABEL_58;
        }

        v14 = (*(*a1 + 40))(a1);
        v38 = 0;
        v39 = 0;
        if (!mlir::AsmParser::parseKeyword(a1, &v38))
        {
          goto LABEL_49;
        }

        Tag = llvm::dwarf::getTag(v38, v39);
        if (Tag == -1)
        {
          v37 = 257;
          (*(*a1 + 24))(&v49, a1, v14, v36);
          if (v49)
          {
            mlir::Diagnostic::operator<<<41ul>(v50, "invalid debug info debug info tag name: ");
            if (v49)
            {
              v42 = 261;
              v40 = v38;
              v41 = v39;
              mlir::Diagnostic::operator<<(v50, &v40);
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
LABEL_49:
          v26 = (*(*a1 + 40))(a1);
          v51 = 259;
          (*(*a1 + 24))(v47, a1, v26, &v49);
          v25 = v47;
LABEL_58:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
          goto LABEL_59;
        }

        v5 = Tag;
        v6 = 1;
      }
    }

    while (((*(*a1 + 128))(a1) & 1) != 0);
    if ((v2 & 1) == 0)
    {
      v27 = (*(*a1 + 40))(a1);
      v47[0] = "struct is missing required parameter: ";
      v48 = 259;
      (*(*a1 + 24))(&v49, a1, v27, v47);
      if (v49)
      {
        mlir::Diagnostic::operator<<<5ul>(v50, "name");
      }

      goto LABEL_57;
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_59;
    }

    v19 = *(*(*a1 + 32))(a1);
    if (v6)
    {
      v20 = v5;
    }

    else
    {
      v20 = 0;
    }

    if (v4)
    {
      v21 = v33;
    }

    else
    {
      v21 = 0;
    }

    if (v7)
    {
      v22 = v8;
    }

    else
    {
      v22 = 0;
    }

    result = mlir::LLVM::DIBasicTypeAttr::get(v19, v20, v3, v21, v22);
  }

  else
  {
LABEL_59:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DIBasicTypeAttr::print(mlir::LLVM::DIBasicTypeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 5)
    {
      *(v7 + 4) = 8253;
      *v7 = 543646068;
      *(v6 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v6, "tag = ", 6uLL);
    }

    v8 = *(*this + 8);
    if (v8)
    {
      v9 = llvm::dwarf::TagString(v8);
      v11 = v10;
      v12 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v12, v9, v11);
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 6uLL)
  {
    *(v16 + 3) = 540876901;
    *v16 = 1701667182;
    *(v15 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v15, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v17 = *this;
  if (*(*this + 24))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 0xCuLL)
    {
      qmemcpy(v21, "sizeInBits = ", 13);
      *(v20 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v20, "sizeInBits = ", 0xDuLL);
    }

    v17 = *this;
    v22 = *(*this + 24);
    if (v22)
    {
      v23 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v23, v22, 0, 0, 0);
      v17 = *this;
    }
  }

  if (*(v17 + 32))
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 1uLL)
    {
      *v25 = 8236;
      *(v24 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v24, ", ", 2uLL);
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if ((*(v26 + 3) - v27) > 0xA)
    {
      *(v27 + 7) = 540876903;
      *v27 = *"encoding = ";
      *(v26 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v26, "encoding = ", 0xBuLL);
    }

    v28 = *(*this + 32);
    if (v28)
    {
      v29 = llvm::dwarf::AttributeEncodingString(v28);
      v31 = v30;
      v32 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v32, v29, v31);
    }
  }

  result = (*(*a2 + 16))(a2);
  v34 = *(result + 4);
  if (*(result + 3) == v34)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v34 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DICompileUnitAttr::get(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id;
  v12[1] = a1;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJNS1_12DistinctAttrEjNS2_10DIFileAttrENS1_10StringAttrEbNS2_14DIEmissionKindENS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v21[1] = v12;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18[0] = a6;
  v19 = a7;
  v20 = a8;
  memset(v23, 0, sizeof(v23));
  memset(__dst, 0, sizeof(__dst));
  v24 = 0;
  v25 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(__dst, __dst, v23, a2, &v15, &v16, &v17, v18, &v19, &v20);
  v13 = &v14;
  *&__dst[0] = &v14;
  *(&__dst[0] + 1) = v21;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DICompileUnitAttr::parse(mlir::AsmParser *a1)
{
  v95 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_164:
    result = 0;
    goto LABEL_165;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v71 = 0;
  v72 = 0;
  v6 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v7 = 0;
  do
  {
    v73 = 0;
    v74 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v73))
    {
      v47 = (*(*a1 + 40))(a1);
      v92 = "expected a parameter name in struct";
      v94 = 259;
      (*(*a1 + 24))(v83, a1, v47, &v92);
      v48 = v83;
      goto LABEL_163;
    }

    v8 = v73;
    v9 = v74;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_164;
    }

    if (v7 & 1 | (v9 != 2))
    {
      if (v4 & 1 | (v9 != 14))
      {
        if (v3 & 1 | (v9 != 4))
        {
          if (BYTE4(v72) & 1 | (v9 != 8))
          {
            if (v72 & 1 | (v9 != 11))
            {
              if (BYTE4(v70) & 1 | (v9 != 12))
              {
                if (v70 & 1 | (v9 != 13))
                {
                  goto LABEL_160;
                }

                if (*v8 != 0x6C626154656D616ELL || *(v8 + 5) != 0x646E694B656C6261)
                {
                  v9 = 13;
LABEL_160:
                  v64 = (*(*a1 + 40))(a1);
                  v75[0] = "duplicate or unknown struct parameter name: ";
                  v76 = 259;
                  (*(*a1 + 24))(&v92, a1, v64, v75);
                  if (v92)
                  {
                    v82 = 261;
                    v80 = v8;
                    v81 = v9;
                    mlir::Diagnostic::operator<<(v93, &v80);
                  }

LABEL_162:
                  v48 = &v92;
                  goto LABEL_163;
                }

                __p = 0;
                v78 = 0;
                v79 = 0;
                v11 = (*(*a1 + 40))(a1);
                if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
                {
                  v80 = "expected keyword for LLVM debug name table kind";
                  v82 = 259;
                  (*(*a1 + 24))(&v92, a1, v11, &v80);
LABEL_110:
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
                  v67 = 0;
                  v14 = 0;
                  goto LABEL_111;
                }

                v12 = SHIBYTE(v79);
                p_p = __p;
                if (v79 >= 0)
                {
                  p_p = &__p;
                }

                if (v79 < 0)
                {
                  v12 = v78;
                }

                if (v12 > 4)
                {
                  if (v12 == 5)
                  {
                    v44 = *p_p;
                    v45 = *(p_p + 4);
                    if (v44 == 1819308097 && v45 == 101)
                    {
                      v14 = 1;
                      v15 = 3;
                      goto LABEL_122;
                    }

                    goto LABEL_108;
                  }

                  if (v12 != 7)
                  {
                    goto LABEL_108;
                  }

                  v28 = *p_p;
                  v29 = *(p_p + 3);
                  if (v28 != 1634100548 || v29 != 1953264993)
                  {
                    goto LABEL_108;
                  }

                  v67 = 0;
                }

                else
                {
                  if (v12 != 3)
                  {
                    if (v12 == 4 && *p_p == 1701736270)
                    {
                      v14 = 1;
                      v15 = 2;
LABEL_122:
                      v67 = v15;
                      goto LABEL_111;
                    }

                    goto LABEL_108;
                  }

                  v41 = *p_p;
                  v42 = *(p_p + 2);
                  if (v41 != 20039 || v42 != 85)
                  {
LABEL_108:
                    v75[0] = "invalid LLVM debug name table kind specification: ";
                    v76 = 259;
                    (*(*a1 + 24))(&v92, a1, v11, v75);
                    if (v92)
                    {
                      v82 = 260;
                      v80 = &__p;
                      mlir::Diagnostic::operator<<(v93, &v80);
                    }

                    goto LABEL_110;
                  }

                  v67 = 1;
                }

                v14 = 1;
LABEL_111:
                if (SHIBYTE(v79) < 0)
                {
                  operator delete(__p);
                }

                if ((v14 & 1) == 0)
                {
                  v66 = (*(*a1 + 40))(a1);
                  v94 = 259;
                  (*(*a1 + 24))(v84, a1, v66, &v92);
                  v48 = v84;
                  goto LABEL_163;
                }

                LOBYTE(v70) = 1;
                continue;
              }

              if (*v8 != 0x6E6F697373696D65 || *(v8 + 8) != 1684957515)
              {
                v9 = 12;
                goto LABEL_160;
              }

              __p = 0;
              v78 = 0;
              v79 = 0;
              v25 = (*(*a1 + 40))(a1);
              if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
              {
                v80 = "expected keyword for LLVM debug emission kind";
                v82 = 259;
                (*(*a1 + 24))(&v92, a1, v25, &v80);
LABEL_92:
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
                v68 = 0;
                v34 = 0;
LABEL_93:
                if (SHIBYTE(v79) < 0)
                {
                  operator delete(__p);
                }

                if ((v34 & 1) == 0)
                {
                  v63 = (*(*a1 + 40))(a1);
                  v94 = 259;
                  (*(*a1 + 24))(v85, a1, v63, &v92);
                  v48 = v85;
                  goto LABEL_163;
                }

                BYTE4(v70) = 1;
                continue;
              }

              v26 = SHIBYTE(v79);
              v27 = __p;
              if (v79 >= 0)
              {
                v27 = &__p;
              }

              if (v79 < 0)
              {
                v26 = v78;
              }

              if (v26 == 19)
              {
                v36 = *v27;
                v37 = v27[1];
                v38 = *(v27 + 11);
                if (v36 != 0x7269446775626544 || v37 != 0x4F73657669746365 || v38 != 0x796C6E4F73657669)
                {
                  goto LABEL_90;
                }

                v34 = 1;
                v35 = 3;
              }

              else
              {
                if (v26 != 14)
                {
                  if (v26 == 4)
                  {
                    if (*v27 == 1701736270)
                    {
                      v68 = 0;
                      goto LABEL_120;
                    }

                    if (*v27 == 1819047238)
                    {
                      v68 = 1;
LABEL_120:
                      v34 = 1;
                      goto LABEL_93;
                    }
                  }

                  goto LABEL_90;
                }

                v31 = *v27;
                v32 = *(v27 + 6);
                if (v31 != 0x6C626154656E694CLL || v32 != 0x796C6E4F73656C62)
                {
LABEL_90:
                  v75[0] = "invalid LLVM debug emission kind specification: ";
                  v76 = 259;
                  (*(*a1 + 24))(&v92, a1, v25, v75);
                  if (v92)
                  {
                    v82 = 260;
                    v80 = &__p;
                    mlir::Diagnostic::operator<<(v93, &v80);
                  }

                  goto LABEL_92;
                }

                v34 = 1;
                v35 = 2;
              }

              v68 = v35;
              goto LABEL_93;
            }

            if (*v8 != 0x696D6974704F7369 || *(v8 + 3) != 0x64657A696D697470)
            {
              v9 = 11;
              goto LABEL_160;
            }

            LOBYTE(v92) = 0;
            if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v92) & 1) == 0)
            {
              v61 = (*(*a1 + 40))(a1);
              v94 = 259;
              (*(*a1 + 24))(v86, a1, v61, &v92);
              v48 = v86;
              goto LABEL_163;
            }

            v69 = v92;
            LOBYTE(v72) = 1;
          }

          else
          {
            if (*v8 != 0x72656375646F7270)
            {
              v9 = 8;
              goto LABEL_160;
            }

            v21 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            if ((v22 & 1) == 0)
            {
              v59 = (*(*a1 + 40))(a1);
              v94 = 259;
              (*(*a1 + 24))(v87, a1, v59, &v92);
              v48 = v87;
              goto LABEL_163;
            }

            v71 = v21;
            BYTE4(v72) = 1;
          }
        }

        else
        {
          if (*v8 != 1701603686)
          {
            v9 = 4;
            goto LABEL_160;
          }

          v19 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
          if ((v20 & 1) == 0)
          {
            v57 = (*(*a1 + 40))(a1);
            v94 = 259;
            (*(*a1 + 24))(v88, a1, v57, &v92);
            v48 = v88;
            goto LABEL_163;
          }

          v5 = v19;
          v3 = 1;
        }
      }

      else
      {
        if (*v8 != 0x614C656372756F73 || *(v8 + 6) != 0x65676175676E614CLL)
        {
          v9 = 14;
          goto LABEL_160;
        }

        v17 = (*(*a1 + 40))(a1);
        __p = 0;
        v78 = 0;
        if (!mlir::AsmParser::parseKeyword(a1, &__p))
        {
          goto LABEL_145;
        }

        Language = llvm::dwarf::getLanguage(__p, v78);
        if (!Language)
        {
          v76 = 257;
          (*(*a1 + 24))(&v92, a1, v17, v75);
          if (v92)
          {
            mlir::Diagnostic::operator<<<46ul>(v93, "invalid debug info debug info language name: ");
            if (v92)
            {
              v82 = 261;
              v80 = __p;
              v81 = v78;
              mlir::Diagnostic::operator<<(v93, &v80);
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
LABEL_145:
          v55 = (*(*a1 + 40))(a1);
          v94 = 259;
          (*(*a1 + 24))(v89, a1, v55, &v92);
          v48 = v89;
LABEL_163:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v48);
          goto LABEL_164;
        }

        v2 = Language;
        v4 = 1;
      }
    }

    else
    {
      if (*v8 != 25705)
      {
        v9 = 2;
        goto LABEL_160;
      }

      v92 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(a1, &v92))
      {
        v53 = (*(*a1 + 40))(a1);
        v94 = 259;
        (*(*a1 + 24))(v90, a1, v53, &v92);
        v48 = v90;
        goto LABEL_163;
      }

      v6 = v92;
      v7 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v54 = (*(*a1 + 40))(a1);
    v90[0] = "struct is missing required parameter: ";
    v91 = 259;
    (*(*a1 + 24))(&v92, a1, v54, v90);
    if (v92)
    {
      mlir::Diagnostic::operator<<<3ul>(v93, "id");
    }

    goto LABEL_162;
  }

  if ((v4 & 1) == 0)
  {
    v56 = (*(*a1 + 40))(a1);
    v90[0] = "struct is missing required parameter: ";
    v91 = 259;
    (*(*a1 + 24))(&v92, a1, v56, v90);
    if (v92)
    {
      mlir::Diagnostic::operator<<<15ul>(v93, "sourceLanguage");
    }

    goto LABEL_162;
  }

  if ((v3 & 1) == 0)
  {
    v58 = (*(*a1 + 40))(a1);
    v90[0] = "struct is missing required parameter: ";
    v91 = 259;
    (*(*a1 + 24))(&v92, a1, v58, v90);
    if (v92)
    {
      mlir::Diagnostic::operator<<<5ul>(v93, "file");
    }

    goto LABEL_162;
  }

  if ((v72 & 1) == 0)
  {
    v60 = (*(*a1 + 40))(a1);
    v90[0] = "struct is missing required parameter: ";
    v91 = 259;
    (*(*a1 + 24))(&v92, a1, v60, v90);
    if (v92)
    {
      mlir::Diagnostic::operator<<<12ul>(v93, "isOptimized");
    }

    goto LABEL_162;
  }

  if ((v70 & 0x100000000) == 0)
  {
    v62 = (*(*a1 + 40))(a1);
    v90[0] = "struct is missing required parameter: ";
    v91 = 259;
    (*(*a1 + 24))(&v92, a1, v62, v90);
    if (v92)
    {
      mlir::Diagnostic::operator<<<13ul>(v93, "emissionKind");
    }

    goto LABEL_162;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_164;
  }

  v49 = *(*(*a1 + 32))(a1);
  if ((v72 & 0x100000000) != 0)
  {
    v50 = v71;
  }

  else
  {
    v50 = 0;
  }

  if (v70)
  {
    v51 = v67;
  }

  else
  {
    v51 = 0;
  }

  result = mlir::LLVM::DICompileUnitAttr::get(v49, v6, v2, v5, v50, v69 & 1, v68, v51);
LABEL_165:
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DICompileUnitAttr::print(mlir::LLVM::DICompileUnitAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 4)
  {
    *(v7 + 4) = 32;
    *v7 = 1025533033;
    *(v6 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v6, "id = ", 5uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8236;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 0x10)
  {
    *(v11 + 16) = 32;
    *v11 = *"sourceLanguage = ";
    *(v10 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v10, "sourceLanguage = ", 0x11uLL);
  }

  v12 = llvm::dwarf::LanguageString(*(*this + 16));
  v14 = v13;
  v15 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v15, v12, v14);
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 6uLL)
  {
    *(v19 + 3) = 540876901;
    *v19 = 1701603686;
    *(v18 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v18, "file = ", 7uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, *(*this + 24));
  if (*(*this + 32))
  {
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 1uLL)
    {
      *v21 = 8236;
      *(v20 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v20, ", ", 2uLL);
    }

    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if ((*(v22 + 3) - v23) > 0xA)
    {
      *(v23 + 7) = 540876914;
      *v23 = *"producer = ";
      *(v22 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v22, "producer = ", 0xBuLL);
    }

    if (*(*this + 32))
    {
      (*(*a2 + 40))(a2);
    }
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 1uLL)
  {
    *v25 = 8236;
    *(v24 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 0xDuLL)
  {
    qmemcpy(v27, "isOptimized = ", 14);
    *(v26 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v26, "isOptimized = ", 0xEuLL);
  }

  v28 = *(*this + 40);
  v29 = (*(*a2 + 16))(a2);
  if (v28)
  {
    v30 = 4;
  }

  else
  {
    v30 = 5;
  }

  if (v28)
  {
    v31 = "true";
  }

  else
  {
    v31 = "false";
  }

  llvm::raw_ostream::operator<<(v29, v31, v30);
  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 8236;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, ", ", 2uLL);
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 0xEuLL)
  {
    qmemcpy(v35, "emissionKind = ", 15);
    *(v34 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v34, "emissionKind = ", 0xFuLL);
  }

  v36 = *(*this + 48);
  v37 = (*(*a2 + 16))(a2);
  if (v36 > 3)
  {
    v38 = 0;
    v39 = &str_2_25;
  }

  else
  {
    v38 = qword_25D0A0138[v36];
    v39 = off_2799BE8A0[v36];
  }

  llvm::raw_ostream::operator<<(v37, v39, v38);
  if (*(*this + 56))
  {
    v40 = (*(*a2 + 16))(a2);
    v41 = *(v40 + 4);
    if (*(v40 + 3) - v41 > 1uLL)
    {
      *v41 = 8236;
      *(v40 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v40, ", ", 2uLL);
    }

    v42 = (*(*a2 + 16))(a2);
    v43 = *(v42 + 4);
    if (*(v42 + 3) - v43 > 0xFuLL)
    {
      *v43 = *"nameTableKind = ";
      *(v42 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v42, "nameTableKind = ", 0x10uLL);
    }

    v44 = *(*this + 56);
    if (v44)
    {
      v45 = (*(*a2 + 16))(a2);
      if (v44 > 3)
      {
        v46 = 0;
        v47 = &str_2_25;
      }

      else
      {
        v46 = v44 + 2;
        v47 = off_2799BE8C0[v44 - 1];
      }

      llvm::raw_ostream::operator<<(v45, v47, v46);
    }
  }

  result = (*(*a2 + 16))(a2);
  v49 = *(result + 4);
  if (*(result + 3) == v49)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v49 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIFileAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DICompositeTypeAttr::get(uint64_t *a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a8;
  v20 = a6;
  v71[16] = *MEMORY[0x277D85DE8];
  v39 = *a1;
  v40[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id;
  v40[1] = a1;
  v58[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DICompositeTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DICompositeTypeAttrEJNS1_12DistinctAttrEbjNS1_10StringAttrENS2_10DIFileAttrEjNS2_11DIScopeAttrENS2_10DITypeAttrENS2_7DIFlagsEyyNS_8ArrayRefINS2_10DINodeAttrEEENS2_16DIExpressionAttrESM_SM_SM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_;
  v58[1] = v40;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  v49 = a10;
  v50 = a11;
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v55 = a16;
  v56 = a17;
  v57 = a18;
  memset(&v71[1], 0, 112);
  v71[15] = 0xFF51AFD7ED558CCDLL;
  v71[0] = (a2 >> 4) ^ (a2 >> 9);
  LOBYTE(v71[1]) = a3;
  *(&v71[1] + 1) = a4;
  v59 = 0;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v59, (&v71[1] + 5), &v71[8], (a5 >> 4) ^ (a5 >> 9));
  v60 = v59;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v60, v21, &v71[8], (v20 >> 4) ^ (v20 >> 9));
  v61 = v60;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v71, &v61, v22, &v71[8], a7);
  v62 = v61;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v62, v23, &v71[8], (v18 >> 4) ^ (v18 >> 9));
  v63 = v62;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v63, v24, &v71[8], (a9 >> 4) ^ (a9 >> 9));
  v64 = v63;
  v26 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::LLVM::DIFlags>(v71, &v64, v25, &v71[8], a10);
  v65 = v64;
  v27 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(v71, &v65, v26, &v71[8], a11);
  v66 = v65;
  v28 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(v71, &v66, v27, &v71[8], a12);
  v67 = v66;
  v31 = llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(a13, &a13[2 * a14], v29, v30);
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v67, v28, &v71[8], v31);
  v68 = v67;
  v33 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v68, v32, &v71[8], (a15 >> 4) ^ (a15 >> 9));
  v69 = v68;
  v34 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v69, v33, &v71[8], (a16 >> 4) ^ (a16 >> 9));
  v70 = v69;
  v35 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v71, &v70, v34, &v71[8], (a17 >> 4) ^ (a17 >> 9));
  v36 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIExpressionAttr>(v71, v70, v35, &v71[8], v57);
  v70 = &v41;
  v71[0] = &v41;
  v71[1] = v58;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v39 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id, v36, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v70, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v71);
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DICompositeTypeAttr::parse(void *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v62) = 0;
  v63 = 0;
  v61 = 0;
  LOBYTE(v59) = 0;
  v60 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  LOBYTE(v55) = 0;
  v56 = 0;
  LOBYTE(v53) = 0;
  v54 = 0;
  LOBYTE(v51) = 0;
  v52 = 0;
  LOBYTE(v49) = 0;
  v50 = 0;
  LOBYTE(v47) = 0;
  v48 = 0;
  LOBYTE(v45) = 0;
  v46 = 0;
  LOBYTE(v43) = 0;
  v44 = 0;
  LOBYTE(v70[0]) = 0;
  v72 = 0;
  LOBYTE(v41) = 0;
  v42 = 0;
  LOBYTE(v39) = 0;
  v40 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    v4 = 0;
    goto LABEL_61;
  }

  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v67 = a1;
  v68 = &v34 + 3;
  v69[0] = &v62;
  v69[1] = &v34 + 2;
  v69[2] = &v61;
  v69[3] = &v34 + 1;
  v69[4] = &v59;
  v69[5] = &v34;
  v69[6] = &v57;
  v69[7] = &v33 + 3;
  v69[8] = &v55;
  v69[9] = &v33 + 2;
  v69[10] = &v53;
  v69[11] = &v33 + 1;
  v69[12] = &v51;
  v69[13] = &v33;
  v69[14] = &v49;
  v69[15] = &v32 + 3;
  v69[16] = &v47;
  v69[17] = &v32 + 2;
  v69[18] = &v45;
  v69[19] = &v32 + 1;
  v69[20] = &v43;
  v69[21] = &v32;
  v69[22] = v70;
  v69[23] = &v31 + 3;
  v69[24] = &v41;
  v69[25] = &v31 + 2;
  v69[26] = &v39;
  v69[27] = &v31 + 1;
  v69[28] = &v37;
  v69[29] = &v31;
  v69[30] = &v35;
  v29 = 0;
  v30 = 0;
  if ((*(*a1 + 416))(a1, &v29))
  {
    v2 = v29;
    for (i = v30; mlir::LLVM::DICompositeTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v67, v2, i); i = v28)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v27 = 0;
      v28 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v27))
      {
        v21 = (*(*a1 + 40))(a1);
        v64[0] = "expected a parameter name in struct";
        v65[8] = 259;
        (*(*a1 + 24))(v66, a1, v21, v64);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v66);
        break;
      }

      v2 = v27;
    }
  }

  else
  {
LABEL_9:
    if ((*(*a1 + 168))(a1))
    {
      v5 = *(*(*a1 + 32))(a1);
      if (v63)
      {
        v6 = v62;
      }

      else
      {
        v6 = 0;
      }

      v25 = v6;
      v26 = v5;
      v7 = HIBYTE(v61) & v61;
      if (v60)
      {
        v8 = v59;
      }

      else
      {
        v8 = 0;
      }

      v24 = v8;
      if (v58)
      {
        v9 = v57;
      }

      else
      {
        v9 = 0;
      }

      if (v56)
      {
        v10 = v55;
      }

      else
      {
        v10 = 0;
      }

      if (v54)
      {
        v11 = v53;
      }

      else
      {
        v11 = 0;
      }

      if (v52)
      {
        v12 = v51;
      }

      else
      {
        v12 = 0;
      }

      if (v50)
      {
        v13 = v49;
      }

      else
      {
        v13 = 0;
      }

      if (v48)
      {
        v14 = v47;
      }

      else
      {
        v14 = 0;
      }

      if (v46)
      {
        v15 = v45;
      }

      else
      {
        v15 = 0;
      }

      if (v44)
      {
        v16 = v43;
      }

      else
      {
        v16 = 0;
      }

      v64[0] = v65;
      v64[1] = 0x600000000;
      std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v67, v70, v64);
      if (v42)
      {
        v17 = v41;
      }

      else
      {
        v17 = 0;
      }

      if (v40)
      {
        v18 = v39;
      }

      else
      {
        v18 = 0;
      }

      if (v38)
      {
        v19 = v37;
      }

      else
      {
        v19 = 0;
      }

      if (v36)
      {
        v20 = v35;
      }

      else
      {
        v20 = 0;
      }

      v4 = mlir::LLVM::DICompositeTypeAttr::get(v26, v25, v7 & 1, v24, v9, v10, v11, v12, v13, v14, v15, v16, v67, v68, v17, v18, v19, v20);
      if (v67 != v69)
      {
        free(v67);
      }

      if (v64[0] != v65)
      {
        free(v64[0]);
      }

      goto LABEL_58;
    }
  }

  v4 = 0;
LABEL_58:
  if ((v72 & 1) != 0 && v70[0] != &v71)
  {
    free(v70[0]);
  }

LABEL_61:
  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::LLVM::DICompositeTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v156 = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_106;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 5)
  {
    v20 = a1[3];
    v9 = a3 != 9;
    if ((*v20 & 1) == 0 && a3 == 9)
    {
      v21 = *a2 == 0x6C65536365527369 && *(a2 + 8) == 102;
      v8 = 1;
      if (v21)
      {
        *v20 = 1;
        v49 = *a1;
        LOBYTE(v151) = 0;
        v50 = mlir::AsmParser::parseInteger<BOOL>(v49, &v151);
        v51 = v151;
        if ((v50 & 1) == 0)
        {
          v51 = 0;
        }

        *a1[4] = v51 | ((v50 & 1) << 8);
        if ((*(a1[4] + 1) & 1) == 0)
        {
          v52 = *a1;
          v53 = (*(*v52 + 40))(v52);
          v154 = 259;
          (*(*v52 + 24))(v149, v52, v53, &v151);
          v19 = v149;
          goto LABEL_105;
        }

        goto LABEL_107;
      }

      v9 = 0;
      v22 = 1;
      goto LABEL_91;
    }

    v23 = a1[5];
    if ((*v23 & 1) != 0 || a3 != 3)
    {
      v44 = a1[7];
      LODWORD(v8) = a3 != 4;
      if ((*v44 & 1) == 0 && a3 == 4)
      {
        if (*a2 == 1701667182)
        {
          v8 = 1;
          *v44 = 1;
          v96 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v97 = a1[8];
          *v97 = v96;
          *(v97 + 8) = v98;
          if (*(a1[8] + 8))
          {
            goto LABEL_107;
          }

          v99 = *a1;
          v100 = (*(*v99 + 40))(v99);
          v154 = 259;
          (*(*v99 + 24))(v147, v99, v100, &v151);
          v19 = v147;
          goto LABEL_105;
        }

        LODWORD(v8) = 0;
      }

      v45 = a1[9];
      if ((*v45 & 1) == 0 && (v8 & 1) == 0 && *a2 == 1701603686)
      {
        v8 = 1;
        *v45 = 1;
        v107 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(*a1);
        v108 = a1[10];
        *v108 = v107;
        *(v108 + 8) = v109;
        if (*(a1[10] + 8))
        {
          goto LABEL_107;
        }

        v110 = *a1;
        v111 = (*(*v110 + 40))(v110);
        v154 = 259;
        (*(*v110 + 24))(v146, v110, v111, &v151);
        v19 = v146;
        goto LABEL_105;
      }

      v46 = a1[11];
      if (((*v46 | v8) & 1) == 0)
      {
        if (*a2 == 1701734764)
        {
          v8 = 1;
          *v46 = 1;
          v112 = *a1;
          LODWORD(v151) = 0;
          v113 = mlir::AsmParser::parseInteger<unsigned int>(v112, &v151);
          v114 = v151;
          if ((v113 & 1) == 0)
          {
            v114 = 0;
          }

          v115 = a1[12];
          *(v115 + 4) = v113 & 1;
          *v115 = v114;
          if ((*(a1[12] + 4) & 1) == 0)
          {
            v116 = *a1;
            v117 = (*(*v116 + 40))(v116);
            v154 = 259;
            (*(*v116 + 24))(v145, v116, v117, &v151);
            v19 = v145;
            goto LABEL_105;
          }

          goto LABEL_107;
        }

        LODWORD(v8) = 0;
      }

      goto LABEL_8;
    }

    v24 = *a2 == 24948 && *(a2 + 2) == 103;
    v22 = 1;
    v9 = 1;
    if (!v24)
    {
LABEL_91:
      v60 = a1[29];
      if ((*v60 & 1) != 0 || v9 || (*a2 == 0x657461636F6C6C61 ? (v61 = *(a2 + 8) == 100) : (v61 = 0), !v61))
      {
        v62 = a1[31];
        if (((*v62 | v22) & 1) == 0 && (*a2 == 0x746169636F737361 ? (v63 = *(a2 + 8) == 25701) : (v63 = 0), v63))
        {
          v8 = 1;
          *v62 = 1;
          v73 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
          v74 = a1[32];
          *v74 = v73;
          *(v74 + 8) = v75;
          if (*(a1[32] + 8))
          {
            goto LABEL_107;
          }

          v76 = *a1;
          v77 = (*(*v76 + 40))(v76);
          v154 = 259;
          (*(*v76 + 24))(v135, v76, v77, &v151);
          v19 = v135;
        }

        else
        {
          v64 = *a1;
          v65 = (*(*v64 + 40))(v64);
          v128[0] = "duplicate or unknown struct parameter name: ";
          v129 = 259;
          (*(*v64 + 24))(&v151, v64, v65, v128);
          if (v151)
          {
            v134 = 261;
            v132 = a2;
            v133 = a3;
            mlir::Diagnostic::operator<<(&v152, &v132);
          }

          v19 = &v151;
        }
      }

      else
      {
        v8 = 1;
        *v60 = 1;
        v68 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
        v69 = a1[30];
        *v69 = v68;
        *(v69 + 8) = v70;
        if (*(a1[30] + 8))
        {
          goto LABEL_107;
        }

        v71 = *a1;
        v72 = (*(*v71 + 40))(v71);
        v154 = 259;
        (*(*v71 + 24))(v136, v71, v72, &v151);
        v19 = v136;
      }

      goto LABEL_105;
    }

    *v23 = 1;
    v25 = *a1;
    v26 = (*(**a1 + 40))(*a1);
    v130 = 0;
    v131 = 0;
    if (mlir::AsmParser::parseKeyword(v25, &v130))
    {
      Tag = llvm::dwarf::getTag(v130, v131);
      if (Tag != -1)
      {
        v28 = Tag & 0xFFFFFF00;
        v29 = Tag;
        v30 = 0x100000000;
        goto LABEL_146;
      }

      v129 = 257;
      (*(*v25 + 24))(&v151, v25, v26, v128);
      if (v151)
      {
        mlir::Diagnostic::operator<<<41ul>(&v152, "invalid debug info debug info tag name: ");
        if (v151)
        {
          v134 = 261;
          v132 = v130;
          v133 = v131;
          mlir::Diagnostic::operator<<(&v152, &v132);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
    }

    v30 = 0;
    v29 = 0;
    v28 = 0;
LABEL_146:
    v124 = v30 | v28 | v29;
    v125 = a1[6];
    *(v125 + 4) = BYTE4(v30);
    *v125 = v124;
    if ((*(a1[6] + 4) & 1) == 0)
    {
      v126 = *a1;
      v127 = (*(*v126 + 40))(v126);
      v154 = 259;
      (*(*v126 + 24))(v148, v126, v127, &v151);
      v19 = v148;
      goto LABEL_105;
    }

    goto LABEL_147;
  }

  v7 = *a2 == 1231250802 && *(a2 + 4) == 100;
  v8 = 1;
  v9 = 1;
  if (v7)
  {
    *v6 = 1;
    v38 = *a1;
    v151 = 0;
    v39 = mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(v38, &v151);
    v40 = v151;
    if (!v39)
    {
      v40 = 0;
    }

    v41 = a1[2];
    *v41 = v40;
    *(v41 + 8) = v39;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v42 = *a1;
      v43 = (*(*v42 + 40))(v42);
      v154 = 259;
      (*(*v42 + 24))(v150, v42, v43, &v151);
      v19 = v150;
      goto LABEL_105;
    }

    goto LABEL_107;
  }

LABEL_8:
  v10 = a1[13];
  if ((*v10 & 1) != 0 || a3 != 5)
  {
    v31 = a1[15];
    v12 = a3 != 8;
    if ((*v31 & 1) == 0 && a3 == 8)
    {
      v22 = 1;
      if (*a2 == 0x6570795465736162)
      {
        *v31 = 1;
        v80 = *a1;
        v151 = 0;
        v81 = mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(v80, &v151);
        v82 = v151;
        if (!v81)
        {
          v82 = 0;
        }

        v83 = a1[16];
        *v83 = v82;
        *(v83 + 8) = v81;
        v8 = 1;
        if ((*(a1[16] + 8) & 1) == 0)
        {
          v84 = *a1;
          v85 = (*(*v84 + 40))(v84);
          v154 = 259;
          (*(*v84 + 24))(v143, v84, v85, &v151);
          v19 = v143;
          goto LABEL_105;
        }

        goto LABEL_107;
      }

      v12 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    v11 = *a2 == 1886348147 && *(a2 + 4) == 101;
    v12 = 1;
    if (v11)
    {
      *v10 = 1;
      v13 = *a1;
      v151 = 0;
      v14 = mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(v13, &v151);
      v15 = v151;
      if (!v14)
      {
        v15 = 0;
      }

      v16 = a1[14];
      *v16 = v15;
      *(v16 + 8) = v14;
      v8 = 1;
      if ((*(a1[14] + 8) & 1) == 0)
      {
        v17 = *a1;
        v18 = (*(*v17 + 40))(v17);
        v154 = 259;
        (*(*v17 + 24))(v144, v17, v18, &v151);
        v19 = v144;
        goto LABEL_105;
      }

      goto LABEL_107;
    }
  }

  v32 = a1[17];
  if ((*v32 & 1) != 0 || a3 != 5)
  {
    v47 = a1[19];
    v22 = a3 != 10;
    if ((*v47 & 1) != 0 || a3 != 10)
    {
      v54 = a1[21];
      if ((*v54 & 1) != 0 || a3 != 11)
      {
        goto LABEL_80;
      }

      v55 = *a2 == 0x426E496E67696C61 && *(a2 + 3) == 0x737469426E496E67;
      v22 = 1;
      if (!v55)
      {
        goto LABEL_80;
      }

      *v54 = 1;
      v118 = *a1;
      v151 = 0;
      v119 = mlir::AsmParser::parseInteger<unsigned long long>(v118, &v151);
      v120 = v151;
      if ((v119 & 1) == 0)
      {
        v120 = 0;
      }

      v121 = a1[22];
      *v121 = v120;
      *(v121 + 8) = v119 & 1;
      v8 = 1;
      if ((*(a1[22] + 8) & 1) == 0)
      {
        v122 = *a1;
        v123 = (*(*v122 + 40))(v122);
        v154 = 259;
        (*(*v122 + 24))(v140, v122, v123, &v151);
        v19 = v140;
        goto LABEL_105;
      }

      goto LABEL_107;
    }

    if (*a2 == 0x69426E49657A6973 && *(a2 + 8) == 29556)
    {
      v8 = 1;
      *v47 = 1;
      v101 = *a1;
      v151 = 0;
      v102 = mlir::AsmParser::parseInteger<unsigned long long>(v101, &v151);
      v103 = v151;
      if ((v102 & 1) == 0)
      {
        v103 = 0;
      }

      v104 = a1[20];
      *v104 = v103;
      *(v104 + 8) = v102 & 1;
      if ((*(a1[20] + 8) & 1) == 0)
      {
        v105 = *a1;
        v106 = (*(*v105 + 40))(v105);
        v154 = 259;
        (*(*v105 + 24))(v141, v105, v106, &v151);
        v19 = v141;
        goto LABEL_105;
      }

      goto LABEL_107;
    }

    v22 = 0;
LABEL_80:
    v56 = a1[23];
    if ((*v56 & 1) != 0 || v12 || *a2 != 0x73746E656D656C65)
    {
      v57 = a1[25];
      if ((*v57 & 1) == 0 && a3 == 12 && (*a2 == 0x61636F4C61746164 ? (v58 = *(a2 + 8) == 1852795252) : (v58 = 0), v58))
      {
        v8 = 1;
        *v57 = 1;
        v86 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
        v87 = a1[26];
        *v87 = v86;
        *(v87 + 8) = v88;
        if (*(a1[26] + 8))
        {
          goto LABEL_107;
        }

        v89 = *a1;
        v90 = (*(*v89 + 40))(v89);
        v154 = 259;
        (*(*v89 + 24))(v138, v89, v90, &v151);
        v19 = v138;
      }

      else
      {
        v59 = a1[27];
        if (((*v59 | v8) & 1) != 0 || *a2 != 1802396018)
        {
          goto LABEL_91;
        }

        v8 = 1;
        *v59 = 1;
        v91 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(*a1);
        v92 = a1[28];
        *v92 = v91;
        *(v92 + 8) = v93;
        if (*(a1[28] + 8))
        {
          goto LABEL_107;
        }

        v94 = *a1;
        v95 = (*(*v94 + 40))(v94);
        v154 = 259;
        (*(*v94 + 24))(v137, v94, v95, &v151);
        v19 = v137;
      }

LABEL_105:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
LABEL_106:
      v8 = 0;
      goto LABEL_107;
    }

    *v56 = 1;
    mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v151, *a1);
    std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(a1[24], &v151);
    if (v155 == 1 && v151 != &v153)
    {
      free(v151);
    }

    if ((*(a1[24] + 64) & 1) == 0)
    {
      v78 = *a1;
      v79 = (*(*v78 + 40))(v78);
      v154 = 259;
      (*(*v78 + 24))(v139, v78, v79, &v151);
      v19 = v139;
      goto LABEL_105;
    }

LABEL_147:
    v8 = 1;
    goto LABEL_107;
  }

  v33 = *a2 == 1734437990 && *(a2 + 4) == 115;
  v22 = 1;
  if (!v33)
  {
    goto LABEL_80;
  }

  *v32 = 1;
  v34 = mlir::FieldParser<mlir::LLVM::DIFlags,mlir::LLVM::DIFlags>::parse<mlir::AsmParser>(*a1);
  v35 = a1[18];
  *v35 = v34;
  *(v35 + 4) = BYTE4(v34);
  v8 = 1;
  if ((*(a1[18] + 4) & 1) == 0)
  {
    v36 = *a1;
    v37 = (*(*v36 + 40))(v36);
    v154 = 259;
    (*(*v36 + 24))(v142, v36, v37, &v151);
    v19 = v142;
    goto LABEL_105;
  }

LABEL_107:
  v66 = *MEMORY[0x277D85DE8];
  return v8;
}

void std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 64);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (v5 == 1)
  {
    if (a1 != a2)
    {
      v6 = *(a2 + 8);
      if (v6)
      {
        v7 = *(a2 + 8);
        if (v6 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), *(a2 + 8), 8), (v7 = *(a2 + 8)) != 0))
        {
          memcpy(*a1, *a2, 8 * v7);
        }

        *(a1 + 8) = v6;
      }
    }
  }

  else if (*(a3 + 8))
  {

    llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, a3);
  }
}

llvm::raw_ostream *mlir::LLVM::DICompositeTypeAttr::print(mlir::LLVM::DICompositeTypeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (!*(*this + 8))
  {
    if ((*(v6 + 16) & 1) == 0)
    {
      if (!*(v6 + 20))
      {
        if (!*(v6 + 24))
        {
          if (!*(v6 + 32))
          {
            if (!*(v6 + 40))
            {
              if (!*(v6 + 48))
              {
                if (!*(v6 + 56))
                {
                  if (!*(v6 + 64))
                  {
                    if (!*(v6 + 72))
                    {
                      if (!*(v6 + 80))
                      {
                        if (!*(v6 + 96))
                        {
                          if (!*(v6 + 104))
                          {
                            if (!*(v6 + 112))
                            {
                              if (!*(v6 + 120))
                              {
                                if (!*(v6 + 128))
                                {
                                  goto LABEL_164;
                                }

                                goto LABEL_159;
                              }

                              goto LABEL_150;
                            }

                            goto LABEL_141;
                          }

                          goto LABEL_132;
                        }

                        goto LABEL_123;
                      }

                      goto LABEL_114;
                    }

                    goto LABEL_105;
                  }

                  goto LABEL_96;
                }

                goto LABEL_87;
              }

              goto LABEL_78;
            }

            goto LABEL_69;
          }

          goto LABEL_60;
        }

        goto LABEL_51;
      }

      goto LABEL_42;
    }

    goto LABEL_30;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 7uLL)
  {
    *v8 = 0x203D206449636572;
    *(v7 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v7, "recId = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 8))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

  if (*(v9 + 16))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }

LABEL_30:
    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 0xB)
    {
      *(v13 + 8) = 540876902;
      *v13 = *"isRecSelf = ";
      *(v12 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v12, "isRecSelf = ", 0xCuLL);
    }

    v9 = *this;
    if (*(*this + 16) == 1)
    {
      v14 = (*(*a2 + 16))(a2);
      v15 = *(v14 + 4);
      if (*(v14 + 3) - v15 > 3uLL)
      {
        *v15 = 1702195828;
        *(v14 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v14, "true", 4uLL);
      }

      v9 = *this;
    }
  }

  if (*(v9 + 20))
  {
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 1uLL)
    {
      *v17 = 8236;
      *(v16 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v16, ", ", 2uLL);
    }

LABEL_42:
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if ((*(v18 + 3) - v19) > 5)
    {
      *(v19 + 4) = 8253;
      *v19 = 543646068;
      *(v18 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v18, "tag = ", 6uLL);
    }

    v9 = *this;
    v20 = *(*this + 20);
    if (v20)
    {
      v21 = llvm::dwarf::TagString(v20);
      v23 = v22;
      v24 = (*(*a2 + 16))(a2);
      llvm::raw_ostream::operator<<(v24, v21, v23);
      v9 = *this;
    }
  }

  if (!*(v9 + 24))
  {
    goto LABEL_56;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) - v26 > 1uLL)
  {
    *v26 = 8236;
    *(v25 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v25, ", ", 2uLL);
  }

LABEL_51:
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 6uLL)
  {
    *(v28 + 3) = 540876901;
    *v28 = 1701667182;
    *(v27 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v27, "name = ", 7uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_56:
  if (*(v9 + 32))
  {
    v29 = (*(*a2 + 16))(a2);
    v30 = *(v29 + 4);
    if (*(v29 + 3) - v30 > 1uLL)
    {
      *v30 = 8236;
      *(v29 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v29, ", ", 2uLL);
    }

LABEL_60:
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 6uLL)
    {
      *(v32 + 3) = 540876901;
      *v32 = 1701603686;
      *(v31 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v31, "file = ", 7uLL);
    }

    v9 = *this;
    v33 = *(*this + 32);
    if (v33)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v33);
      v9 = *this;
    }
  }

  if (!*(v9 + 40))
  {
    goto LABEL_74;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 8236;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, ", ", 2uLL);
  }

LABEL_69:
  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) - v37 > 6uLL)
  {
    *(v37 + 3) = 540876901;
    *v37 = 1701734764;
    *(v36 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v36, "line = ", 7uLL);
  }

  v9 = *this;
  v38 = *(*this + 40);
  if (v38)
  {
    v39 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v39, v38, 0, 0, 0);
    v9 = *this;
  }

LABEL_74:
  if (*(v9 + 48))
  {
    v40 = (*(*a2 + 16))(a2);
    v41 = *(v40 + 4);
    if (*(v40 + 3) - v41 > 1uLL)
    {
      *v41 = 8236;
      *(v40 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v40, ", ", 2uLL);
    }

LABEL_78:
    v42 = (*(*a2 + 16))(a2);
    v43 = *(v42 + 4);
    if (*(v42 + 3) - v43 > 7uLL)
    {
      *v43 = 0x203D2065706F6373;
      *(v42 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v42, "scope = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 48))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 56))
  {
    goto LABEL_92;
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (*(v44 + 3) - v45 > 1uLL)
  {
    *v45 = 8236;
    *(v44 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v44, ", ", 2uLL);
  }

LABEL_87:
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if ((*(v46 + 3) - v47) > 0xA)
  {
    *(v47 + 7) = 540876901;
    *v47 = *"baseType = ";
    *(v46 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v46, "baseType = ", 0xBuLL);
  }

  v9 = *this;
  if (*(*this + 56))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_92:
  if (*(v9 + 64))
  {
    v48 = (*(*a2 + 16))(a2);
    v49 = *(v48 + 4);
    if (*(v48 + 3) - v49 > 1uLL)
    {
      *v49 = 8236;
      *(v48 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v48, ", ", 2uLL);
    }

LABEL_96:
    v50 = (*(*a2 + 16))(a2);
    v51 = *(v50 + 4);
    if (*(v50 + 3) - v51 > 7uLL)
    {
      *v51 = 0x203D207367616C66;
      *(v50 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v50, "flags = ", 8uLL);
    }

    v9 = *this;
    v52 = *(*this + 64);
    if (v52)
    {
      v53 = (*(*a2 + 16))(a2);
      llvm::operator<<(v53, v52);
      v9 = *this;
    }
  }

  if (!*(v9 + 72))
  {
    goto LABEL_110;
  }

  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) - v55 > 1uLL)
  {
    *v55 = 8236;
    *(v54 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v54, ", ", 2uLL);
  }

LABEL_105:
  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (*(v56 + 3) - v57 > 0xCuLL)
  {
    qmemcpy(v57, "sizeInBits = ", 13);
    *(v56 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v56, "sizeInBits = ", 0xDuLL);
  }

  v9 = *this;
  v58 = *(*this + 72);
  if (v58)
  {
    v59 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v59, v58, 0, 0, 0);
    v9 = *this;
  }

LABEL_110:
  if (*(v9 + 80))
  {
    v60 = (*(*a2 + 16))(a2);
    v61 = *(v60 + 4);
    if (*(v60 + 3) - v61 > 1uLL)
    {
      *v61 = 8236;
      *(v60 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v60, ", ", 2uLL);
    }

LABEL_114:
    v62 = (*(*a2 + 16))(a2);
    v63 = *(v62 + 4);
    if (*(v62 + 3) - v63 > 0xDuLL)
    {
      qmemcpy(v63, "alignInBits = ", 14);
      *(v62 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v62, "alignInBits = ", 0xEuLL);
    }

    v9 = *this;
    v64 = *(*this + 80);
    if (v64)
    {
      v65 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v65, v64, 0, 0, 0);
      v9 = *this;
    }
  }

  if (!*(v9 + 96))
  {
    goto LABEL_128;
  }

  v66 = (*(*a2 + 16))(a2);
  v67 = *(v66 + 4);
  if (*(v66 + 3) - v67 > 1uLL)
  {
    *v67 = 8236;
    *(v66 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v66, ", ", 2uLL);
  }

LABEL_123:
  v68 = (*(*a2 + 16))(a2);
  v69 = *(v68 + 4);
  if ((*(v68 + 3) - v69) > 0xA)
  {
    *(v69 + 7) = 540876915;
    *v69 = *"elements = ";
    *(v68 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v68, "elements = ", 0xBuLL);
  }

  v9 = *this;
  v70 = *(*this + 96);
  if (v70)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(v9 + 88), v70);
    v9 = *this;
  }

LABEL_128:
  if (*(v9 + 104))
  {
    v71 = (*(*a2 + 16))(a2);
    v72 = *(v71 + 4);
    if (*(v71 + 3) - v72 > 1uLL)
    {
      *v72 = 8236;
      *(v71 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v71, ", ", 2uLL);
    }

LABEL_132:
    v73 = (*(*a2 + 16))(a2);
    v74 = *(v73 + 4);
    if (*(v73 + 3) - v74 > 0xEuLL)
    {
      qmemcpy(v74, "dataLocation = ", 15);
      *(v73 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v73, "dataLocation = ", 0xFuLL);
    }

    v9 = *this;
    v75 = *(*this + 104);
    if (v75)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v75);
      v9 = *this;
    }
  }

  if (!*(v9 + 112))
  {
    goto LABEL_146;
  }

  v76 = (*(*a2 + 16))(a2);
  v77 = *(v76 + 4);
  if (*(v76 + 3) - v77 > 1uLL)
  {
    *v77 = 8236;
    *(v76 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v76, ", ", 2uLL);
  }

LABEL_141:
  v78 = (*(*a2 + 16))(a2);
  v79 = *(v78 + 4);
  if (*(v78 + 3) - v79 > 6uLL)
  {
    *(v79 + 3) = 540876907;
    *v79 = 1802396018;
    *(v78 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v78, "rank = ", 7uLL);
  }

  v9 = *this;
  v80 = *(*this + 112);
  if (v80)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v80);
    v9 = *this;
  }

LABEL_146:
  if (*(v9 + 120))
  {
    v81 = (*(*a2 + 16))(a2);
    v82 = *(v81 + 4);
    if (*(v81 + 3) - v82 > 1uLL)
    {
      *v82 = 8236;
      *(v81 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v81, ", ", 2uLL);
    }

LABEL_150:
    v83 = (*(*a2 + 16))(a2);
    v84 = *(v83 + 4);
    if ((*(v83 + 3) - v84) > 0xB)
    {
      *(v84 + 8) = 540876900;
      *v84 = *"allocated = ";
      *(v83 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v83, "allocated = ", 0xCuLL);
    }

    v9 = *this;
    v85 = *(*this + 120);
    if (v85)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v85);
      v9 = *this;
    }
  }

  if (!*(v9 + 128))
  {
    goto LABEL_164;
  }

  v86 = (*(*a2 + 16))(a2);
  v87 = *(v86 + 4);
  if (*(v86 + 3) - v87 > 1uLL)
  {
    *v87 = 8236;
    *(v86 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v86, ", ", 2uLL);
  }

LABEL_159:
  v88 = (*(*a2 + 16))(a2);
  v89 = *(v88 + 4);
  if (*(v88 + 3) - v89 > 0xCuLL)
  {
    qmemcpy(v89, "associated = ", 13);
    *(v88 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v88, "associated = ", 0xDuLL);
  }

  v90 = *(*this + 128);
  if (v90)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v90);
  }

LABEL_164:
  result = (*(*a2 + 16))(a2);
  v92 = *(result + 4);
  if (*(result + 3) == v92)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v92 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    result = (*(*result + 40))(result, *a2);
    if (a3 != 1)
    {
      v6 = 8 * a3;
      v7 = a2 + 1;
      v8 = v6 - 8;
      do
      {
        v9 = (*(*v5 + 16))(v5);
        v10 = *(v9 + 4);
        if (*(v9 + 3) - v10 > 1uLL)
        {
          *v10 = 8236;
          *(v9 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v9, ", ", 2uLL);
        }

        v11 = *v7++;
        result = (*(*v5 + 40))(v5, v11);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIExpressionAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DIDerivedTypeAttr::get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v19[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id;
  v19[1] = a1;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DIDerivedTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DIDerivedTypeAttrEJjNS1_10StringAttrENS2_10DITypeAttrEyjyNSt3__18optionalIjEENS2_10DINodeAttrEEEENSF_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v28[1] = v19;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  *&v34[4] = 0u;
  memset(v36, 0, sizeof(v36));
  v35 = 0u;
  v37 = 0xFF51AFD7ED558CCDLL;
  *v33 = a2;
  *&v33[4] = (a3 >> 4) ^ (a3 >> 9);
  *&v33[12] = (a4 >> 4) ^ (a4 >> 9);
  *v34 = a5;
  v29 = 0;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v33, &v29, &v34[8], &v36[8], a6);
  v30 = v29;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(v33, &v30, v11, &v36[8], a7);
  v31 = v30;
  v13 = llvm::hash_value<unsigned int>(&v26);
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v31, v12, &v36[8], v13);
  v32 = v31;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v32, v14, &v36[8], (v27 >> 4) ^ (v27 >> 9));
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v33, v32, v15, &v36[8]);
  v32 = &v20;
  *v33 = &v20;
  *&v33[8] = v28;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v33);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIDerivedTypeAttr::parse(mlir::AsmParser *a1)
{
  v41[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v39) = 0;
  v40 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v23 = 0;
  v24 = 0;
  v22[0] = a1;
  v22[1] = &v24 + 3;
  v22[2] = &v39;
  v22[3] = &v24 + 2;
  v22[4] = &v37;
  v22[5] = &v24 + 1;
  v22[6] = &v35;
  v22[7] = &v24;
  v22[8] = &v33;
  v22[9] = &v23 + 3;
  v22[10] = &v31;
  v22[11] = &v23 + 2;
  v22[12] = &v29;
  v22[13] = &v23 + 1;
  v22[14] = &v27;
  v22[15] = &v23;
  v22[16] = &v25;
  v20 = 0;
  v21 = 0;
  if ((*(*a1 + 416))(a1, &v20))
  {
    v2 = v20;
    for (i = v21; mlir::LLVM::DIDerivedTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v22, v2, i); i = v19)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v18 = 0;
      v19 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v18))
      {
        v14 = (*(*a1 + 40))(a1);
        v16 = "expected a parameter name in struct";
        v17 = 259;
        (*(*a1 + 24))(v41, a1, v14, &v16);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v41);
        goto LABEL_35;
      }

      v2 = v18;
    }

    goto LABEL_35;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_35:
    result = 0;
    goto LABEL_36;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v40)
  {
    v5 = v39;
  }

  else
  {
    v5 = 0;
  }

  if (v38)
  {
    v6 = v37;
  }

  else
  {
    v6 = 0;
  }

  if (v36)
  {
    v7 = v35;
  }

  else
  {
    v7 = 0;
  }

  if (v34)
  {
    v8 = v33;
  }

  else
  {
    v8 = 0;
  }

  if (v32)
  {
    v9 = v31;
  }

  else
  {
    v9 = 0;
  }

  if (v30)
  {
    v10 = v29;
  }

  else
  {
    v10 = 0;
  }

  if (v26)
  {
    v11 = v25;
  }

  else
  {
    v11 = 0;
  }

  if (v28)
  {
    v12 = v27 & 0xFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

  result = mlir::LLVM::DIDerivedTypeAttr::get(v4, v5, v6, v7, v8, v9, v10, v12, v11);
LABEL_36:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIDerivedTypeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v94 = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_87;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 3)
  {
    if (*a2 != 24948 || *(a2 + 2) != 103)
    {
      goto LABEL_83;
    }

    *v6 = 1;
    v8 = *a1;
    v9 = (*(**a1 + 40))(*a1);
    v78 = 0;
    v79 = 0;
    if (mlir::AsmParser::parseKeyword(v8, &v78))
    {
      Tag = llvm::dwarf::getTag(v78, v79);
      if (Tag != -1)
      {
        v11 = Tag & 0xFFFFFF00;
        v12 = Tag;
        v13 = 0x100000000;
LABEL_51:
        v45 = v13 | v11 | v12;
        v46 = a1[2];
        *(v46 + 4) = BYTE4(v13);
        *v46 = v45;
        if (*(a1[2] + 4))
        {
          v15 = 1;
          goto LABEL_88;
        }

        v47 = *a1;
        v48 = (*(*v47 + 40))(v47);
        v93 = 259;
        (*(*v47 + 24))(v90, v47, v48, &v91);
        v21 = v90;
LABEL_86:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
LABEL_87:
        v15 = 0;
        goto LABEL_88;
      }

      v77 = 257;
      (*(*v8 + 24))(&v91, v8, v9, v76);
      if (v91)
      {
        mlir::Diagnostic::operator<<<41ul>(v92, "invalid debug info debug info tag name: ");
        if (v91)
        {
          v82 = 261;
          v80 = v78;
          v81 = v79;
          mlir::Diagnostic::operator<<(v92, &v80);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v91);
    }

    v13 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_51;
  }

  v14 = a1[3];
  if ((*v14 & 1) != 0 || a3 != 4)
  {
    v22 = a1[5];
    if ((*v22 & 1) != 0 || a3 != 8)
    {
      v29 = a1[7];
      if ((*v29 & 1) != 0 || a3 != 10)
      {
        v37 = a1[9];
        if ((*v37 & 1) != 0 || a3 != 11)
        {
          v49 = a1[11];
          if ((*v49 & 1) != 0 || a3 != 12)
          {
            v57 = a1[13];
            if ((*v57 & 1) != 0 || a3 != 17)
            {
              v65 = a1[15];
              if ((*v65 & 1) == 0 && a3 == 9 && *a2 == 0x7461446172747865 && *(a2 + 8) == 97)
              {
                v15 = 1;
                *v65 = 1;
                v71 = mlir::FieldParser<mlir::LLVM::DINodeAttr,mlir::LLVM::DINodeAttr>::parse(*a1);
                v72 = a1[16];
                *v72 = v71;
                *(v72 + 8) = v73;
                if (*(a1[16] + 8))
                {
                  goto LABEL_88;
                }

                v74 = *a1;
                v75 = (*(*v74 + 40))(v74);
                v93 = 259;
                (*(*v74 + 24))(v83, v74, v75, &v91);
                v21 = v83;
                goto LABEL_86;
              }

              goto LABEL_83;
            }

            if (*a2 == 0x6464416672617764 && *(a2 + 8) == 0x6361705373736572 && *(a2 + 16) == 101)
            {
              v15 = 1;
              *v57 = 1;
              v60 = mlir::FieldParser<std::optional<unsigned int>,std::optional<unsigned int>>::parse(*a1);
              v61 = a1[14];
              *v61 = v60;
              *(v61 + 8) = v62;
              if (*(a1[14] + 8))
              {
                goto LABEL_88;
              }

              v63 = *a1;
              v64 = (*(*v63 + 40))(v63);
              v93 = 259;
              (*(*v63 + 24))(v84, v63, v64, &v91);
              v21 = v84;
              goto LABEL_86;
            }
          }

          else if (*a2 == 0x6E4974657366666FLL && *(a2 + 8) == 1937008962)
          {
            v15 = 1;
            *v49 = 1;
            v51 = *a1;
            v91 = 0;
            v52 = mlir::AsmParser::parseInteger<unsigned long long>(v51, &v91);
            v53 = v91;
            if ((v52 & 1) == 0)
            {
              v53 = 0;
            }

            v54 = a1[12];
            *v54 = v53;
            *(v54 + 8) = v52 & 1;
            if ((*(a1[12] + 8) & 1) == 0)
            {
              v55 = *a1;
              v56 = (*(*v55 + 40))(v55);
              v93 = 259;
              (*(*v55 + 24))(v85, v55, v56, &v91);
              v21 = v85;
              goto LABEL_86;
            }

            goto LABEL_88;
          }
        }

        else if (*a2 == 0x426E496E67696C61 && *(a2 + 3) == 0x737469426E496E67)
        {
          v15 = 1;
          *v37 = 1;
          v39 = *a1;
          LODWORD(v91) = 0;
          v40 = mlir::AsmParser::parseInteger<unsigned int>(v39, &v91);
          v41 = v91;
          if ((v40 & 1) == 0)
          {
            v41 = 0;
          }

          v42 = a1[10];
          *(v42 + 4) = v40 & 1;
          *v42 = v41;
          if ((*(a1[10] + 4) & 1) == 0)
          {
            v43 = *a1;
            v44 = (*(*v43 + 40))(v43);
            v93 = 259;
            (*(*v43 + 24))(v86, v43, v44, &v91);
            v21 = v86;
            goto LABEL_86;
          }

          goto LABEL_88;
        }
      }

      else if (*a2 == 0x69426E49657A6973 && *(a2 + 8) == 29556)
      {
        v15 = 1;
        *v29 = 1;
        v31 = *a1;
        v91 = 0;
        v32 = mlir::AsmParser::parseInteger<unsigned long long>(v31, &v91);
        v33 = v91;
        if ((v32 & 1) == 0)
        {
          v33 = 0;
        }

        v34 = a1[8];
        *v34 = v33;
        *(v34 + 8) = v32 & 1;
        if ((*(a1[8] + 8) & 1) == 0)
        {
          v35 = *a1;
          v36 = (*(*v35 + 40))(v35);
          v93 = 259;
          (*(*v35 + 24))(v87, v35, v36, &v91);
          v21 = v87;
          goto LABEL_86;
        }

        goto LABEL_88;
      }

LABEL_83:
      v67 = *a1;
      v68 = (*(*v67 + 40))(v67);
      v76[0] = "duplicate or unknown struct parameter name: ";
      v77 = 259;
      (*(*v67 + 24))(&v91, v67, v68, v76);
      if (v91)
      {
        v82 = 261;
        v80 = a2;
        v81 = a3;
        mlir::Diagnostic::operator<<(v92, &v80);
      }

      v21 = &v91;
      goto LABEL_86;
    }

    if (*a2 != 0x6570795465736162)
    {
      goto LABEL_83;
    }

    v15 = 1;
    *v22 = 1;
    v23 = *a1;
    v91 = 0;
    v24 = mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(v23, &v91);
    v25 = v91;
    if (!v24)
    {
      v25 = 0;
    }

    v26 = a1[6];
    *v26 = v25;
    *(v26 + 8) = v24;
    if ((*(a1[6] + 8) & 1) == 0)
    {
      v27 = *a1;
      v28 = (*(*v27 + 40))(v27);
      v93 = 259;
      (*(*v27 + 24))(v88, v27, v28, &v91);
      v21 = v88;
      goto LABEL_86;
    }
  }

  else
  {
    if (*a2 != 1701667182)
    {
      goto LABEL_83;
    }

    v15 = 1;
    *v14 = 1;
    v16 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
    v17 = a1[4];
    *v17 = v16;
    *(v17 + 8) = v18;
    if ((*(a1[4] + 8) & 1) == 0)
    {
      v19 = *a1;
      v20 = (*(*v19 + 40))(v19);
      v93 = 259;
      (*(*v19 + 24))(v89, v19, v20, &v91);
      v21 = v89;
      goto LABEL_86;
    }
  }

LABEL_88:
  v69 = *MEMORY[0x277D85DE8];
  return v15;
}

llvm::raw_ostream *mlir::LLVM::DIDerivedTypeAttr::print(mlir::LLVM::DIDerivedTypeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (!*(*this + 8))
  {
    if (!*(v6 + 16))
    {
      if (!*(v6 + 24))
      {
        if (!*(v6 + 32))
        {
          if (!*(v6 + 40))
          {
            if (!*(v6 + 48))
            {
              if (!*(v6 + 60))
              {
                if (!*(v6 + 64))
                {
                  goto LABEL_84;
                }

                goto LABEL_79;
              }

              goto LABEL_67;
            }

            goto LABEL_58;
          }

          goto LABEL_49;
        }

        goto LABEL_40;
      }

      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if ((*(v7 + 3) - v8) > 5)
  {
    *(v8 + 4) = 8253;
    *v8 = 543646068;
    *(v7 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v7, "tag = ", 6uLL);
  }

  v9 = *this;
  v10 = *(*this + 8);
  if (v10)
  {
    v11 = llvm::dwarf::TagString(v10);
    v13 = v12;
    v14 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v14, v11, v13);
    v9 = *this;
  }

  if (*(v9 + 16))
  {
    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 1uLL)
    {
      *v16 = 8236;
      *(v15 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v15, ", ", 2uLL);
    }

LABEL_22:
    v17 = (*(*a2 + 16))(a2);
    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 6uLL)
    {
      *(v18 + 3) = 540876901;
      *v18 = 1701667182;
      *(v17 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v17, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (*(v9 + 24))
  {
    v19 = (*(*a2 + 16))(a2);
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 > 1uLL)
    {
      *v20 = 8236;
      *(v19 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v19, ", ", 2uLL);
    }

LABEL_31:
    v21 = (*(*a2 + 16))(a2);
    v22 = *(v21 + 4);
    if ((*(v21 + 3) - v22) > 0xA)
    {
      *(v22 + 7) = 540876901;
      *v22 = *"baseType = ";
      *(v21 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v21, "baseType = ", 0xBuLL);
    }

    v9 = *this;
    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 32))
  {
    goto LABEL_45;
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (*(v23 + 3) - v24 > 1uLL)
  {
    *v24 = 8236;
    *(v23 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v23, ", ", 2uLL);
  }

LABEL_40:
  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) - v26 > 0xCuLL)
  {
    qmemcpy(v26, "sizeInBits = ", 13);
    *(v25 + 4) += 13;
  }

  else
  {
    llvm::raw_ostream::write(v25, "sizeInBits = ", 0xDuLL);
  }

  v9 = *this;
  v27 = *(*this + 32);
  if (v27)
  {
    v28 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v28, v27, 0, 0, 0);
    v9 = *this;
  }

LABEL_45:
  if (*(v9 + 40))
  {
    v29 = (*(*a2 + 16))(a2);
    v30 = *(v29 + 4);
    if (*(v29 + 3) - v30 > 1uLL)
    {
      *v30 = 8236;
      *(v29 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v29, ", ", 2uLL);
    }

LABEL_49:
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 0xDuLL)
    {
      qmemcpy(v32, "alignInBits = ", 14);
      *(v31 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v31, "alignInBits = ", 0xEuLL);
    }

    v9 = *this;
    v33 = *(*this + 40);
    if (v33)
    {
      v34 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v34, v33, 0, 0, 0);
      v9 = *this;
    }
  }

  if (!*(v9 + 48))
  {
    goto LABEL_63;
  }

  v35 = (*(*a2 + 16))(a2);
  v36 = *(v35 + 4);
  if (*(v35 + 3) - v36 > 1uLL)
  {
    *v36 = 8236;
    *(v35 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v35, ", ", 2uLL);
  }

LABEL_58:
  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 0xEuLL)
  {
    qmemcpy(v38, "offsetInBits = ", 15);
    *(v37 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v37, "offsetInBits = ", 0xFuLL);
  }

  v9 = *this;
  v39 = *(*this + 48);
  if (v39)
  {
    v40 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v40, v39, 0, 0, 0);
    v9 = *this;
  }

LABEL_63:
  if (*(v9 + 60))
  {
    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if (*(v41 + 3) - v42 > 1uLL)
    {
      *v42 = 8236;
      *(v41 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v41, ", ", 2uLL);
    }

LABEL_67:
    v43 = (*(*a2 + 16))(a2);
    v44 = *(v43 + 4);
    if ((*(v43 + 3) - v44) > 0x13)
    {
      *(v44 + 16) = 540876901;
      *v44 = *"dwarfAddressSpace = ";
      *(v43 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v43, "dwarfAddressSpace = ", 0x14uLL);
    }

    v9 = *this;
    v45 = *(*this + 56);
    if ((v45 & 0xFF00000000) != 0)
    {
      v46 = (*(*a2 + 16))(a2);
      if ((v45 & 0x100000000) != 0)
      {
        write_unsigned<unsigned long long>(v46, v45, 0, 0, 0);
      }

      else
      {
        llvm::operator<<(v46);
      }

      v9 = *this;
    }
  }

  if (!*(v9 + 64))
  {
    goto LABEL_84;
  }

  v47 = (*(*a2 + 16))(a2);
  v48 = *(v47 + 4);
  if (*(v47 + 3) - v48 > 1uLL)
  {
    *v48 = 8236;
    *(v47 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v47, ", ", 2uLL);
  }

LABEL_79:
  v49 = (*(*a2 + 16))(a2);
  v50 = *(v49 + 4);
  if ((*(v49 + 3) - v50) > 0xB)
  {
    *(v50 + 8) = 540876897;
    *v50 = *"extraData = ";
    *(v49 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v49, "extraData = ", 0xCuLL);
  }

  if (*(*this + 64))
  {
    (*(*a2 + 40))(a2);
  }

LABEL_84:
  result = (*(*a2 + 16))(a2);
  v52 = *(result + 4);
  if (*(result + 3) == v52)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v52 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIFileAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id;
  v7[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17DIFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10DIFileAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v11[1] = v7;
  v9 = a2;
  v10 = a3;
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::StringAttr>(__dst, __dst, v13, a2, &v10);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIFileAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIFileAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIFileAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIFileAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIFileAttr::parse(uint64_t a1)
{
  v18[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  v2 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  if ((v3 & 1) == 0)
  {
    v11 = (*(*a1 + 40))(a1);
    v16 = 259;
    (*(*a1 + 24))(v18, a1, v11, v15);
    v12 = v18;
LABEL_8:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    goto LABEL_9;
  }

  v4 = v2;
  v16 = 257;
  if (((*(*a1 + 400))(a1, "in", 2, v15) & 1) == 0)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v5 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
  v6 = *a1;
  if ((v7 & 1) == 0)
  {
    v14 = (*(v6 + 40))(a1);
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v14, v15);
    v12 = v17;
    goto LABEL_8;
  }

  v8 = v5;
  if (((*(v6 + 168))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = (*(*a1 + 32))(a1);
  result = mlir::LLVM::DIFileAttr::get(*v9, v4, v8);
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DIFileAttr::print(mlir::LLVM::DIFileAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 28265;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "in", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DIGlobalVariableExpressionAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id;
  v7[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail37DIGlobalVariableExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_30DIGlobalVariableExpressionAttrEJNS2_20DIGlobalVariableAttrENS2_16DIExpressionAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v10[1] = v7;
  v9[0] = a2;
  v9[1] = a3;
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = ((a2 >> 4) ^ (a2 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIExpressionAttr>(&v11, 0, v12, &v12[3] + 8, a3);
  v8 = v9;
  v11 = v9;
  *&v12[0] = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIGlobalVariableExpressionAttr::parse(mlir::AsmParser *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v23 = 0;
      v24 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v23))
      {
        v16 = (*(*a1 + 40))(a1);
        v35 = "expected a parameter name in struct";
        v36[12] = 259;
        (*(*a1 + 24))(v29, a1, v16, &v35);
        v17 = v29;
        goto LABEL_34;
      }

      v7 = v23;
      v6 = v24;
      if (((*(*a1 + 136))(a1) & 1) == 0)
      {
        goto LABEL_35;
      }

      if (v4 & 1 | (v6 != 3))
      {
        if (v3 & 1 | (v6 != 4))
        {
          goto LABEL_27;
        }

        if (*v7 != 1919973477)
        {
          v6 = 4;
LABEL_27:
          v19 = (*(*a1 + 40))(a1);
          v25 = "duplicate or unknown struct parameter name: ";
          v26 = 259;
          (*(*a1 + 24))(&v30, a1, v19, &v25);
          if (v30)
          {
            v28 = 261;
            v27[0] = v7;
            v27[1] = v6;
            mlir::Diagnostic::operator<<(&v31, v27);
          }

          v17 = &v30;
          goto LABEL_34;
        }

        v8 = mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(a1);
        if ((v9 & 1) == 0)
        {
          v20 = (*(*a1 + 40))(a1);
          v32 = 259;
          (*(*a1 + 24))(v33, a1, v20, &v30);
          v17 = v33;
          goto LABEL_34;
        }

        v5 = v8;
        v3 = 1;
      }

      else
      {
        if (*v7 != 24950 || *(v7 + 2) != 114)
        {
          v6 = 3;
          goto LABEL_27;
        }

        v11 = mlir::FieldParser<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIGlobalVariableAttr>::parse(a1);
        if ((v12 & 1) == 0)
        {
          v18 = (*(*a1 + 40))(a1);
          v32 = 259;
          (*(*a1 + 24))(&v35, a1, v18, &v30);
          goto LABEL_33;
        }

        v2 = v11;
        v4 = 1;
      }
    }

    while (((*(*a1 + 128))(a1) & 1) != 0);
    if ((v4 & 1) == 0)
    {
      v21 = (*(*a1 + 40))(a1);
      v33[0] = "struct is missing required parameter: ";
      v34 = 259;
      (*(*a1 + 24))(&v35, a1, v21, v33);
      if (v35)
      {
        mlir::Diagnostic::operator<<<4ul>(v36, "var");
      }

LABEL_33:
      v17 = &v35;
LABEL_34:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
      goto LABEL_35;
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_35;
    }

    v13 = *(*(*a1 + 32))(a1);
    if (v3)
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    result = mlir::LLVM::DIGlobalVariableExpressionAttr::get(v13, v2, v14);
  }

  else
  {
LABEL_35:
    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DIGlobalVariableExpressionAttr::print(mlir::LLVM::DIGlobalVariableExpressionAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 5)
  {
    *(v7 + 4) = 8253;
    *v7 = 544366966;
    *(v6 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "var = ", 6uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIGlobalVariableAttr,(void *)0>(a2, *(*this + 8));
  if (*(*this + 16))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 6uLL)
    {
      *(v11 + 3) = 540876914;
      *v11 = 1919973477;
      *(v10 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v10, "expr = ", 7uLL);
    }

    v12 = *(*this + 16);
    if (v12)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionAttr,(void *)0>(a2, v12);
    }
  }

  result = (*(*a2 + 16))(a2);
  v14 = *(result + 4);
  if (*(result + 3) == v14)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v14 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIGlobalVariableAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIGlobalVariableAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::DIGlobalVariableAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, char a9, int a10)
{
  v11 = a7;
  v36[13] = *MEMORY[0x277D85DE8];
  v13 = *a1;
  v21[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id;
  v21[1] = a1;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIGlobalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIGlobalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrESE_NS2_10DIFileAttrEjNS2_10DITypeAttrEbbjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v28[1] = v21;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26[0] = a9;
  v27 = a10;
  memset(v36, 0, 96);
  v33 = ((a2 >> 4) ^ (a2 >> 9));
  v34 = ((a3 >> 4) ^ (a3 >> 9));
  v36[12] = 0xFF51AFD7ED558CCDLL;
  v35 = (a4 >> 4) ^ (a4 >> 9);
  v29 = 0;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v33, &v29, v36, &v36[5], (a5 >> 4) ^ (a5 >> 9));
  v30 = v29;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v33, &v30, v14, &v36[5], a6);
  v31 = v30;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v33, &v31, v15, &v36[5], (v11 >> 4) ^ (v11 >> 9));
  v32 = v31;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(&v33, &v32, v16, &v36[5], a8);
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine<BOOL,unsigned int>(&v33, v32, v17, &v36[5], v26, &v27);
  v32 = v22;
  v33 = v22;
  v34 = v28;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id, v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v33);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DIGlobalVariableAttr::parse(mlir::AsmParser *a1)
{
  v77 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_93:
    result = 0;
    goto LABEL_94;
  }

  v53 = 0;
  v2 = 0;
  v3 = 0;
  v50 = 0;
  v51 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v49 = 0;
  v55 = 0;
  v7 = 0;
  v47 = 0;
  v48 = 0;
  v52 = 0;
  v8 = 0;
  v54 = 0;
  do
  {
    v56 = 0;
    v57 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v56))
    {
      v30 = (*(*a1 + 40))(a1);
      v75 = "expected a parameter name in struct";
      v76[12] = 259;
      (*(*a1 + 24))(v62, a1, v30, &v75);
      v31 = v62;
      goto LABEL_92;
    }

    v10 = v56;
    v9 = v57;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_93;
    }

    if (v7 & 1 | (v9 != 5))
    {
      v11 = v9 != 4;
      if (v3 & 1 | v11)
      {
        v12 = v9 != 11;
        if (!(v2 & 1 | v12))
        {
          if (*v10 == 0x4E6567616B6E696CLL && *(v10 + 3) == 0x656D614E6567616BLL)
          {
            v22 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            if ((v23 & 1) == 0)
            {
              v42 = (*(*a1 + 40))(a1);
              v65 = 259;
              (*(*a1 + 24))(v72, a1, v42, &v63);
              v31 = v72;
              goto LABEL_92;
            }

            v50 = v22;
            v2 = 1;
            continue;
          }

          v12 = 0;
LABEL_43:
          if ((v8 | v12))
          {
            goto LABEL_79;
          }

          if (*v10 != 0x426E496E67696C61 || *(v10 + 3) != 0x737469426E496E67)
          {
            goto LABEL_79;
          }

          LODWORD(v63) = 0;
          if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v63) & 1) == 0)
          {
            v37 = (*(*a1 + 40))(a1);
            v65 = 259;
            (*(*a1 + 24))(v66, a1, v37, &v63);
            v31 = v66;
            goto LABEL_92;
          }

          v54 = v63;
          v8 = 1;
          continue;
        }
      }

      else
      {
        if (*v10 == 1701667182)
        {
          v16 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v17 & 1) == 0)
          {
            v40 = (*(*a1 + 40))(a1);
            v65 = 259;
            (*(*a1 + 24))(v73, a1, v40, &v63);
            v31 = v73;
            goto LABEL_92;
          }

          v53 = v16;
          v3 = 1;
          continue;
        }

        v11 = 0;
        v12 = 1;
      }

      if (((v4 | v11) & 1) == 0 && *v10 == 1701603686)
      {
        v20 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v21 & 1) == 0)
        {
          v41 = (*(*a1 + 40))(a1);
          v65 = 259;
          (*(*a1 + 24))(v71, a1, v41, &v63);
          v31 = v71;
          goto LABEL_92;
        }

        v51 = v20;
        v4 = 1;
        continue;
      }

      if (((v5 | v11) & 1) == 0 && *v10 == 1701734764)
      {
        LODWORD(v63) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v63) & 1) == 0)
        {
          v43 = (*(*a1 + 40))(a1);
          v65 = 259;
          (*(*a1 + 24))(v70, a1, v43, &v63);
          v31 = v70;
          goto LABEL_92;
        }

        v49 = v63;
        v5 = 1;
        continue;
      }

      if (((HIDWORD(v55) | v11) & 1) == 0 && *v10 == 1701869940)
      {
        v63 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(a1, &v63))
        {
          v44 = (*(*a1 + 40))(a1);
          v65 = 259;
          (*(*a1 + 24))(v69, a1, v44, &v63);
          v31 = v69;
          goto LABEL_92;
        }

        v48 = v63;
        HIDWORD(v55) = 1;
        continue;
      }

      if (v55 & 1 | (v9 != 13))
      {
        if (!(v52 & 1 | (v9 != 9)) && *v10 == 0x656E696665447369 && *(v10 + 8) == 100)
        {
          LOBYTE(v63) = 0;
          if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v63) & 1) == 0)
          {
            v46 = (*(*a1 + 40))(a1);
            v65 = 259;
            (*(*a1 + 24))(v67, a1, v46, &v63);
            v31 = v67;
            goto LABEL_92;
          }

          LOBYTE(v47) = v63;
          v52 = 1;
          continue;
        }
      }

      else if (*v10 == 0x546C61636F4C7369 && *(v10 + 5) == 0x74696E556F546C61)
      {
        LOBYTE(v63) = 0;
        if ((mlir::AsmParser::parseInteger<BOOL>(a1, &v63) & 1) == 0)
        {
          v45 = (*(*a1 + 40))(a1);
          v65 = 259;
          (*(*a1 + 24))(v68, a1, v45, &v63);
          v31 = v68;
          goto LABEL_92;
        }

        BYTE4(v47) = v63;
        LOBYTE(v55) = 1;
        continue;
      }

      goto LABEL_43;
    }

    if (*v10 != 1886348147 || *(v10 + 4) != 101)
    {
      v9 = 5;
LABEL_79:
      v32 = (*(*a1 + 40))(a1);
      v58 = "duplicate or unknown struct parameter name: ";
      v59 = 259;
      (*(*a1 + 24))(&v63, a1, v32, &v58);
      if (v63)
      {
        v61 = 261;
        v60[0] = v10;
        v60[1] = v9;
        mlir::Diagnostic::operator<<(&v64, v60);
      }

      v31 = &v63;
LABEL_92:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
      goto LABEL_93;
    }

    v63 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v63))
    {
      v33 = (*(*a1 + 40))(a1);
      v65 = 259;
      (*(*a1 + 24))(&v75, a1, v33, &v63);
LABEL_91:
      v31 = &v75;
      goto LABEL_92;
    }

    v6 = v63;
    v7 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v4 & 1) == 0)
  {
    v34 = (*(*a1 + 40))(a1);
    v73[0] = "struct is missing required parameter: ";
    v74 = 259;
    (*(*a1 + 24))(&v75, a1, v34, v73);
    if (!v75)
    {
      goto LABEL_91;
    }

    v35 = "file";
LABEL_90:
    mlir::Diagnostic::operator<<<5ul>(v76, v35);
    goto LABEL_91;
  }

  if ((v5 & 1) == 0)
  {
    v36 = (*(*a1 + 40))(a1);
    v73[0] = "struct is missing required parameter: ";
    v74 = 259;
    (*(*a1 + 24))(&v75, a1, v36, v73);
    if (!v75)
    {
      goto LABEL_91;
    }

    v35 = "line";
    goto LABEL_90;
  }

  if ((v55 & 0x100000000) == 0)
  {
    v38 = (*(*a1 + 40))(a1);
    v73[0] = "struct is missing required parameter: ";
    v74 = 259;
    (*(*a1 + 24))(&v75, a1, v38, v73);
    if (!v75)
    {
      goto LABEL_91;
    }

    v35 = "type";
    goto LABEL_90;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_93;
  }

  v24 = *(*(*a1 + 32))(a1);
  if (v7)
  {
    v25 = v6;
  }

  else
  {
    v25 = 0;
  }

  if (v3)
  {
    v26 = v53;
  }

  else
  {
    v26 = 0;
  }

  if (v2)
  {
    v27 = v50;
  }

  else
  {
    v27 = 0;
  }

  v28 = v54;
  if ((v8 & 1) == 0)
  {
    v28 = 0;
  }

  result = mlir::LLVM::DIGlobalVariableAttr::get(v24, v25, v26, v27, v51, v49, v48, v55 & BYTE4(v47) & 1, v52 & v47 & 1, v28);
LABEL_94:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DIGlobalVariableAttr::print(mlir::LLVM::DIGlobalVariableAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 7uLL)
    {
      *v8 = 0x203D2065706F6373;
      *(v7 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v7, "scope = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!*(v9 + 16))
    {
      goto LABEL_22;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }

LABEL_17:
    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 6uLL)
    {
      *(v13 + 3) = 540876901;
      *v13 = 1701667182;
      *(v12 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v12, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

LABEL_22:
    if (!*(v9 + 24))
    {
LABEL_31:
      v18 = (*(*a2 + 16))(a2);
      v19 = *(v18 + 4);
      if (*(v18 + 3) - v19 > 1uLL)
      {
        *v19 = 8236;
        *(v18 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v18, ", ", 2uLL);
      }

      goto LABEL_34;
    }

    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 1uLL)
    {
      *v15 = 8236;
      *(v14 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v14, ", ", 2uLL);
    }

LABEL_26:
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 0xDuLL)
    {
      qmemcpy(v17, "linkageName = ", 14);
      *(v16 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v16, "linkageName = ", 0xEuLL);
    }

    if (*(*this + 24))
    {
      (*(*a2 + 40))(a2);
    }

    goto LABEL_31;
  }

  if (*(v6 + 16))
  {
    goto LABEL_17;
  }

  if (*(v6 + 24))
  {
    goto LABEL_26;
  }

LABEL_34:
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 6uLL)
  {
    *(v21 + 3) = 540876901;
    *v21 = 1701603686;
    *(v20 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v20, "file = ", 7uLL);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, *(*this + 32));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 6uLL)
  {
    *(v25 + 3) = 540876901;
    *v25 = 1701734764;
    *(v24 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v24, "line = ", 7uLL);
  }

  v26 = *(*this + 40);
  v27 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v27, v26, 0, 0, 0);
  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) - v29 > 1uLL)
  {
    *v29 = 8236;
    *(v28 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, ", ", 2uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) - v31 > 6uLL)
  {
    *(v31 + 3) = 540876901;
    *v31 = 1701869940;
    *(v30 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v30, "type = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 48));
  v32 = *this;
  if (*(*this + 56) == 1)
  {
    v33 = (*(*a2 + 16))(a2);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 1uLL)
    {
      *v34 = 8236;
      *(v33 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v33, ", ", 2uLL);
    }

    v35 = (*(*a2 + 16))(a2);
    v36 = *(v35 + 4);
    if (*(v35 + 3) - v36 > 0xFuLL)
    {
      *v36 = *"isLocalToUnit = ";
      *(v35 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v35, "isLocalToUnit = ", 0x10uLL);
    }

    v32 = *this;
    if (*(*this + 56) == 1)
    {
      v37 = (*(*a2 + 16))(a2);
      v38 = *(v37 + 4);
      if (*(v37 + 3) - v38 > 3uLL)
      {
        *v38 = 1702195828;
        *(v37 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v37, "true", 4uLL);
      }

      v32 = *this;
    }
  }

  if (*(v32 + 57) == 1)
  {
    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 > 1uLL)
    {
      *v40 = 8236;
      *(v39 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v39, ", ", 2uLL);
    }

    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if ((*(v41 + 3) - v42) > 0xB)
    {
      *(v42 + 8) = 540876900;
      *v42 = *"isDefined = ";
      *(v41 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v41, "isDefined = ", 0xCuLL);
    }

    v32 = *this;
    if (*(*this + 57) == 1)
    {
      v43 = (*(*a2 + 16))(a2);
      v44 = *(v43 + 4);
      if (*(v43 + 3) - v44 > 3uLL)
      {
        *v44 = 1702195828;
        *(v43 + 4) += 4;
      }

      else
      {
        llvm::raw_ostream::write(v43, "true", 4uLL);
      }

      v32 = *this;
    }
  }

  if (*(v32 + 60))
  {
    v45 = (*(*a2 + 16))(a2);
    v46 = *(v45 + 4);
    if (*(v45 + 3) - v46 > 1uLL)
    {
      *v46 = 8236;
      *(v45 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v45, ", ", 2uLL);
    }

    v47 = (*(*a2 + 16))(a2);
    v48 = *(v47 + 4);
    if (*(v47 + 3) - v48 > 0xDuLL)
    {
      qmemcpy(v48, "alignInBits = ", 14);
      *(v47 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v47, "alignInBits = ", 0xEuLL);
    }

    v49 = *(*this + 60);
    if (v49)
    {
      v50 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v50, v49, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v52 = *(result + 4);
  if (*(result + 3) == v52)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v52 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILexicalBlockAttr::parse(mlir::AsmParser *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_55:
    result = 0;
    goto LABEL_56;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v32 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v33 = 0;
    v34 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v33))
    {
      v16 = (*(*a1 + 40))(a1);
      *&__dst[0] = "expected a parameter name in struct";
      LOWORD(v51) = 259;
      (*(*a1 + 24))(v39, a1, v16, __dst);
      v17 = v39;
      goto LABEL_54;
    }

    v9 = v33;
    v10 = v34;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v7 & 1 | (v10 != 5))
    {
      v11 = v10 != 4;
      if (!(v2 & 1 | v11))
      {
        if (*v9 == 1701603686)
        {
          v14 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
          if ((v15 & 1) == 0)
          {
            v29 = (*(*a1 + 40))(a1);
            v42 = 259;
            (*(*a1 + 24))(&v45, a1, v29, &v40);
            v17 = &v45;
            goto LABEL_54;
          }

          v4 = v14;
          v2 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v5 | v11) & 1) == 0 && *v9 == 1701734764)
      {
        LODWORD(v40) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v40) & 1) == 0)
        {
          v30 = (*(*a1 + 40))(a1);
          v42 = 259;
          (*(*a1 + 24))(v44, a1, v30, &v40);
          v17 = v44;
          goto LABEL_54;
        }

        v32 = v40;
        v5 = 1;
      }

      else
      {
        if (v6 & 1 | (v10 != 6))
        {
          goto LABEL_48;
        }

        if (*v9 != 1970040675 || *(v9 + 4) != 28269)
        {
          v10 = 6;
          goto LABEL_48;
        }

        LODWORD(v40) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v40) & 1) == 0)
        {
          v28 = (*(*a1 + 40))(a1);
          v42 = 259;
          (*(*a1 + 24))(v43, a1, v28, &v40);
          v17 = v43;
          goto LABEL_54;
        }

        v8 = v40;
        v6 = 1;
      }
    }

    else
    {
      if (*v9 != 1886348147 || *(v9 + 4) != 101)
      {
        v10 = 5;
LABEL_48:
        v27 = (*(*a1 + 40))(a1);
        v35 = "duplicate or unknown struct parameter name: ";
        v36 = 259;
        (*(*a1 + 24))(&v40, a1, v27, &v35);
        if (v40)
        {
          v38 = 261;
          v37[0] = v9;
          v37[1] = v10;
          mlir::Diagnostic::operator<<(&v41, v37);
        }

        v17 = &v40;
LABEL_54:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
        goto LABEL_55;
      }

      v40 = 0;
      if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v40))
      {
        v25 = (*(*a1 + 40))(a1);
        v42 = 259;
        (*(*a1 + 24))(__dst, a1, v25, &v40);
LABEL_47:
        v17 = __dst;
        goto LABEL_54;
      }

      v3 = v40;
      v7 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v26 = (*(*a1 + 40))(a1);
    v45 = "struct is missing required parameter: ";
    v49 = 259;
    (*(*a1 + 24))(__dst, a1, v26, &v45);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<6ul>(__dst + 8, "scope");
    }

    goto LABEL_47;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_55;
  }

  v18 = *(*(*a1 + 32))(a1);
  if (v2)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0;
  }

  v20 = *v18;
  v21 = v32;
  if ((v5 & 1) == 0)
  {
    v21 = 0;
  }

  v43[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id;
  v43[1] = v18;
  v44[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v44[1] = v43;
  if (v6)
  {
    v22 = v8;
  }

  else
  {
    v22 = 0;
  }

  v45 = v3;
  v46 = v19;
  v47 = v21;
  v48[0] = v22;
  memset(v53, 0, sizeof(v53));
  v52 = 0u;
  v51 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v54 = 0;
  v55 = 0xFF51AFD7ED558CCDLL;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(__dst, __dst, v53, v3, &v46, &v47, v48);
  v40 = &v45;
  *&__dst[0] = &v45;
  *(&__dst[0] + 1) = v44;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v20 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, v23, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v40, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
LABEL_56:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DILexicalBlockAttr::print(mlir::LLVM::DILexicalBlockAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = *this;
  if (*(*this + 16))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8236;
      *(v9 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, ", ", 2uLL);
    }

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 540876901;
      *v12 = 1701603686;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "file = ", 7uLL);
    }

    v8 = *this;
    v13 = *(*this + 16);
    if (v13)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v13);
      v8 = *this;
    }
  }

  if (*(v8 + 24))
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 1uLL)
    {
      *v15 = 8236;
      *(v14 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v14, ", ", 2uLL);
    }

    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) - v17 > 6uLL)
    {
      *(v17 + 3) = 540876901;
      *v17 = 1701734764;
      *(v16 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v16, "line = ", 7uLL);
    }

    v8 = *this;
    v18 = *(*this + 24);
    if (v18)
    {
      v19 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v19, v18, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 28))
  {
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 1uLL)
    {
      *v21 = 8236;
      *(v20 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v20, ", ", 2uLL);
    }

    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if ((*(v22 + 3) - v23) > 8)
    {
      *(v23 + 8) = 32;
      *v23 = *"column = ";
      *(v22 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v22, "column = ", 9uLL);
    }

    v24 = *(*this + 28);
    if (v24)
    {
      v25 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v25, v24, 0, 0, 0);
    }
  }

  result = (*(*a2 + 16))(a2);
  v27 = *(result + 4);
  if (*(result + 3) == v27)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v27 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILexicalBlockFileAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id;
  v8[1] = a1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v13[1] = v8;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v15, a2, &v11, &v12);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v13;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DILexicalBlockFileAttr::parse(mlir::AsmParser *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v26 = 0;
      v27 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v26))
      {
        v17 = (*(*a1 + 40))(a1);
        v39 = "expected a parameter name in struct";
        v40[12] = 259;
        (*(*a1 + 24))(v32, a1, v17, &v39);
        v18 = v32;
LABEL_46:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
        goto LABEL_47;
      }

      v8 = v26;
      v9 = v27;
      if (((*(*a1 + 136))(a1) & 1) == 0)
      {
        goto LABEL_47;
      }

      if (v6 & 1 | (v9 != 5))
      {
        if (v3 & 1 | (v9 != 4))
        {
          if (v5 & 1 | (v9 != 13))
          {
            goto LABEL_38;
          }

          if (*v8 != 0x696D697263736964 || *(v8 + 5) != 0x726F74616E696D69)
          {
            v9 = 13;
            goto LABEL_38;
          }

          LODWORD(v33) = 0;
          if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v33) & 1) == 0)
          {
            v23 = (*(*a1 + 40))(a1);
            v35 = 259;
            (*(*a1 + 24))(v36, a1, v23, &v33);
            v18 = v36;
            goto LABEL_46;
          }

          v7 = v33;
          v5 = 1;
        }

        else
        {
          if (*v8 != 1701603686)
          {
            v9 = 4;
            goto LABEL_38;
          }

          v12 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
          if ((v13 & 1) == 0)
          {
            v22 = (*(*a1 + 40))(a1);
            v35 = 259;
            (*(*a1 + 24))(v37, a1, v22, &v33);
            v18 = v37;
            goto LABEL_46;
          }

          v4 = v12;
          v3 = 1;
        }
      }

      else
      {
        if (*v8 != 1886348147 || *(v8 + 4) != 101)
        {
          v9 = 5;
LABEL_38:
          v21 = (*(*a1 + 40))(a1);
          v28 = "duplicate or unknown struct parameter name: ";
          v29 = 259;
          (*(*a1 + 24))(&v33, a1, v21, &v28);
          if (v33)
          {
            v31 = 261;
            v30[0] = v8;
            v30[1] = v9;
            mlir::Diagnostic::operator<<(&v34, v30);
          }

          v18 = &v33;
          goto LABEL_46;
        }

        v33 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v33))
        {
          v19 = (*(*a1 + 40))(a1);
          v35 = 259;
          (*(*a1 + 24))(&v39, a1, v19, &v33);
LABEL_45:
          v18 = &v39;
          goto LABEL_46;
        }

        v2 = v33;
        v6 = 1;
      }
    }

    while (((*(*a1 + 128))(a1) & 1) != 0);
    if ((v6 & 1) == 0)
    {
      v20 = (*(*a1 + 40))(a1);
      v37[0] = "struct is missing required parameter: ";
      v38 = 259;
      (*(*a1 + 24))(&v39, a1, v20, v37);
      if (v39)
      {
        mlir::Diagnostic::operator<<<6ul>(v40, "scope");
      }

      goto LABEL_45;
    }

    if ((v5 & 1) == 0)
    {
      v24 = (*(*a1 + 40))(a1);
      v37[0] = "struct is missing required parameter: ";
      v38 = 259;
      (*(*a1 + 24))(&v39, a1, v24, v37);
      if (v39)
      {
        mlir::Diagnostic::operator<<<14ul>(v40, "discriminator");
      }

      goto LABEL_45;
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_47;
    }

    v14 = *(*(*a1 + 32))(a1);
    if (v3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 0;
    }

    result = mlir::LLVM::DILexicalBlockFileAttr::get(v14, v2, v15, v7);
  }

  else
  {
LABEL_47:
    result = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DILexicalBlockFileAttr::print(mlir::LLVM::DILexicalBlockFileAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  if (*(*this + 16))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 1uLL)
    {
      *v9 = 8236;
      *(v8 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v8, ", ", 2uLL);
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 6uLL)
    {
      *(v11 + 3) = 540876901;
      *v11 = 1701603686;
      *(v10 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v10, "file = ", 7uLL);
    }

    v12 = *(*this + 16);
    if (v12)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v12);
    }
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) - v14 > 1uLL)
  {
    *v14 = 8236;
    *(v13 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v13, ", ", 2uLL);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 0xFuLL)
  {
    *v16 = *"discriminator = ";
    *(v15 + 4) += 16;
  }

  else
  {
    llvm::raw_ostream::write(v15, "discriminator = ", 0x10uLL);
  }

  v17 = *(*this + 24);
  v18 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v18, v17, 0, 0, 0);
  result = (*(*a2 + 16))(a2);
  v20 = *(result + 4);
  if (*(result + 3) == v20)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v20 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DILocalVariableAttr::parse(mlir::AsmParser *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
LABEL_83:
    result = 0;
    goto LABEL_84;
  }

  v2 = 0;
  v48 = 0;
  v49 = 0;
  v3 = 0;
  v4 = 0;
  v46 = 0;
  v47 = 0;
  *v51 = 0;
  v52 = 0;
  v50 = 0;
  v45 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  LOBYTE(v8) = 0;
  do
  {
    v53 = 0;
    v54 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v53))
    {
      v21 = (*(*a1 + 40))(a1);
      *&__dst[0] = "expected a parameter name in struct";
      LOWORD(v78) = 259;
      (*(*a1 + 24))(v59, a1, v21, __dst);
      v22 = v59;
      goto LABEL_82;
    }

    v9 = v53;
    v10 = v54;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_83;
    }

    if (v6 & 1 | (v10 != 5))
    {
      v11 = v10 != 4;
      if (!(v4 & 1 | v11))
      {
        if (*v9 == 1701667182)
        {
          v17 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
          if ((v18 & 1) == 0)
          {
            v39 = (*(*a1 + 40))(a1);
            v62 = 259;
            (*(*a1 + 24))(&v69, a1, v39, &v60);
            v22 = &v69;
            goto LABEL_82;
          }

          v49 = v17;
          v4 = 1;
          continue;
        }

        v11 = 0;
      }

      if (((v2 | v11) & 1) == 0 && *v9 == 1701603686)
      {
        v19 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(a1);
        if ((v20 & 1) == 0)
        {
          v40 = (*(*a1 + 40))(a1);
          v62 = 259;
          (*(*a1 + 24))(v68, a1, v40, &v60);
          v22 = v68;
          goto LABEL_82;
        }

        v48 = v19;
        v2 = 1;
        continue;
      }

      if (((v3 | v11) & 1) == 0 && *v9 == 1701734764)
      {
        LODWORD(v60) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v60) & 1) == 0)
        {
          v41 = (*(*a1 + 40))(a1);
          v62 = 259;
          (*(*a1 + 24))(v67, a1, v41, &v60);
          v22 = v67;
          goto LABEL_82;
        }

        HIDWORD(v47) = v60;
        v3 = 1;
        continue;
      }

      if (BYTE4(v52) & 1 | (v10 != 3))
      {
        if (!(v50 & 1 | (v10 != 11)) && *v9 == 0x426E496E67696C61 && *(v9 + 3) == 0x737469426E496E67)
        {
          LODWORD(v60) = 0;
          if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v60) & 1) == 0)
          {
            v44 = (*(*a1 + 40))(a1);
            v62 = 259;
            (*(*a1 + 24))(v65, a1, v44, &v60);
            v22 = v65;
            goto LABEL_82;
          }

          v45 = v60;
          v50 = 1;
          continue;
        }
      }

      else if (*v9 == 29281 && *(v9 + 2) == 103)
      {
        LODWORD(v60) = 0;
        if ((mlir::AsmParser::parseInteger<unsigned int>(a1, &v60) & 1) == 0)
        {
          v42 = (*(*a1 + 40))(a1);
          v62 = 259;
          (*(*a1 + 24))(v66, a1, v42, &v60);
          v22 = v66;
          goto LABEL_82;
        }

        LODWORD(v47) = v60;
        BYTE4(v52) = 1;
        continue;
      }

      if (((v52 | v11) & 1) == 0 && *v9 == 1701869940)
      {
        v60 = 0;
        if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(a1, &v60))
        {
          v43 = (*(*a1 + 40))(a1);
          v62 = 259;
          (*(*a1 + 24))(v64, a1, v43, &v60);
          v22 = v64;
          goto LABEL_82;
        }

        v46 = v60;
        LODWORD(v52) = 1;
        continue;
      }

LABEL_35:
      if (v5 & 1 | (v10 != 5))
      {
        goto LABEL_76;
      }

      if (*v9 != 1734437990 || *(v9 + 4) != 115)
      {
        v10 = 5;
LABEL_76:
        v35 = (*(*a1 + 40))(a1);
        v55 = "duplicate or unknown struct parameter name: ";
        v56 = 259;
        (*(*a1 + 24))(&v60, a1, v35, &v55);
        if (v60)
        {
          v58 = 261;
          v57[0] = v9;
          v57[1] = v10;
          mlir::Diagnostic::operator<<(&v61, v57);
        }

        v22 = &v60;
LABEL_82:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
        goto LABEL_83;
      }

      v16 = mlir::FieldParser<mlir::LLVM::DIFlags,mlir::LLVM::DIFlags>::parse<mlir::AsmParser>(a1);
      if ((v16 & 0x100000000) == 0)
      {
        v36 = (*(*a1 + 40))(a1);
        v62 = 259;
        (*(*a1 + 24))(v63, a1, v36, &v60);
        v22 = v63;
        goto LABEL_82;
      }

      v7 = v16;
      v8 = HIDWORD(v16) & 1;
      v5 = 1;
      continue;
    }

    if (*v9 != 1886348147 || *(v9 + 4) != 101)
    {
      goto LABEL_35;
    }

    v60 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(a1, &v60))
    {
      v37 = (*(*a1 + 40))(a1);
      v62 = 259;
      (*(*a1 + 24))(__dst, a1, v37, &v60);
LABEL_81:
      v22 = __dst;
      goto LABEL_82;
    }

    *v51 = v60;
    v6 = 1;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v6 & 1) == 0)
  {
    v34 = (*(*a1 + 40))(a1);
    v69 = "struct is missing required parameter: ";
    LOWORD(v74) = 259;
    (*(*a1 + 24))(__dst, a1, v34, &v69);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<6ul>(__dst + 8, "scope");
    }

    goto LABEL_81;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_83;
  }

  v23 = *(*(*a1 + 32))(a1);
  v25 = v48;
  v24 = v49;
  if ((v4 & 1) == 0)
  {
    v24 = 0;
  }

  v26 = *v23;
  if ((v2 & 1) == 0)
  {
    v25 = 0;
  }

  v67[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id;
  v67[1] = v23;
  v68[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjjjNS2_10DITypeAttrENS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v68[1] = v67;
  v27 = HIDWORD(v47);
  if ((v3 & 1) == 0)
  {
    v27 = 0;
  }

  v28 = v47;
  if ((v52 & 0x100000000) == 0)
  {
    v28 = 0;
  }

  v69 = *v51;
  v70 = v24;
  v29 = v45;
  if ((v50 & 1) == 0)
  {
    v29 = 0;
  }

  v71 = v25;
  v30 = v46;
  if ((v52 & 1) == 0)
  {
    v30 = 0;
  }

  if (v8)
  {
    v31 = v7;
  }

  else
  {
    v31 = 0;
  }

  v72 = v27;
  v73 = v28;
  v74 = v29;
  v75 = v30;
  v76[0] = v31;
  memset(v80, 0, sizeof(v80));
  v79 = 0u;
  v78 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v81 = 0;
  v82 = 0xFF51AFD7ED558CCDLL;
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(__dst, __dst, v80, v51[0], &v70, &v71, &v72, &v73, &v74, &v75, v76);
  v66[0] = &v69;
  *&__dst[0] = &v69;
  *(&__dst[0] + 1) = v68;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v26 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, v32, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
LABEL_84:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::DILocalVariableAttr::print(mlir::LLVM::DILocalVariableAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D2065706F6373;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "scope = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v8 = *this;
  if (*(*this + 16))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8236;
      *(v9 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, ", ", 2uLL);
    }

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 6uLL)
    {
      *(v12 + 3) = 540876901;
      *v12 = 1701667182;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "name = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }
  }

  if (*(v8 + 24))
  {
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v13 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v13, ", ", 2uLL);
    }

    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 6uLL)
    {
      *(v16 + 3) = 540876901;
      *v16 = 1701603686;
      *(v15 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v15, "file = ", 7uLL);
    }

    v8 = *this;
    v17 = *(*this + 24);
    if (v17)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v17);
      v8 = *this;
    }
  }

  if (*(v8 + 32))
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876901;
      *v21 = 1701734764;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "line = ", 7uLL);
    }

    v8 = *this;
    v22 = *(*this + 32);
    if (v22)
    {
      v23 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v23, v22, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 36))
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (*(v24 + 3) - v25 > 1uLL)
    {
      *v25 = 8236;
      *(v24 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v24, ", ", 2uLL);
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if ((*(v26 + 3) - v27) > 5)
    {
      *(v27 + 4) = 8253;
      *v27 = 543650401;
      *(v26 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v26, "arg = ", 6uLL);
    }

    v8 = *this;
    v28 = *(*this + 36);
    if (v28)
    {
      v29 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v29, v28, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 40))
  {
    v30 = (*(*a2 + 16))(a2);
    v31 = *(v30 + 4);
    if (*(v30 + 3) - v31 > 1uLL)
    {
      *v31 = 8236;
      *(v30 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v30, ", ", 2uLL);
    }

    v32 = (*(*a2 + 16))(a2);
    v33 = *(v32 + 4);
    if (*(v32 + 3) - v33 > 0xDuLL)
    {
      qmemcpy(v33, "alignInBits = ", 14);
      *(v32 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v32, "alignInBits = ", 0xEuLL);
    }

    v8 = *this;
    v34 = *(*this + 40);
    if (v34)
    {
      v35 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v35, v34, 0, 0, 0);
      v8 = *this;
    }
  }

  if (*(v8 + 48))
  {
    v36 = (*(*a2 + 16))(a2);
    v37 = *(v36 + 4);
    if (*(v36 + 3) - v37 > 1uLL)
    {
      *v37 = 8236;
      *(v36 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v36, ", ", 2uLL);
    }

    v38 = (*(*a2 + 16))(a2);
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 > 6uLL)
    {
      *(v39 + 3) = 540876901;
      *v39 = 1701869940;
      *(v38 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v38, "type = ", 7uLL);
    }

    v8 = *this;
    if (*(*this + 48))
    {
      (*(*a2 + 40))(a2);
      v8 = *this;
    }
  }

  if (*(v8 + 56))
  {
    v40 = (*(*a2 + 16))(a2);
    v41 = *(v40 + 4);
    if (*(v40 + 3) - v41 > 1uLL)
    {
      *v41 = 8236;
      *(v40 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v40, ", ", 2uLL);
    }

    v42 = (*(*a2 + 16))(a2);
    v43 = *(v42 + 4);
    if (*(v42 + 3) - v43 > 7uLL)
    {
      *v43 = 0x203D207367616C66;
      *(v42 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v42, "flags = ", 8uLL);
    }

    v44 = *(*this + 56);
    if (v44)
    {
      v45 = (*(*a2 + 16))(a2);
      llvm::operator<<(v45, v44);
    }
  }

  result = (*(*a2 + 16))(a2);
  v47 = *(result + 4);
  if (*(result + 3) == v47)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v47 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::DISubprogramAttr::get(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, __int128 a14, unsigned int *a15, uint64_t a16)
{
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v77 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v41[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id;
  v41[1] = a1;
  v57[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DISubprogramAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DISubprogramAttrEJNS1_12DistinctAttrEbSD_NS2_17DICompileUnitAttrENS2_11DIScopeAttrENS1_10StringAttrESG_NS2_10DIFileAttrEjjNS2_17DISubprogramFlagsENS2_20DISubroutineTypeAttrENS_8ArrayRefINS2_10DINodeAttrEEESM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_;
  v57[1] = v41;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v48 = a8;
  v49 = a9;
  v50 = a10;
  v51 = a11;
  v52 = a12;
  v53 = a13;
  v54 = a14;
  v55 = a15;
  v56 = a16;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *&v69[8] = 0u;
  v70 = 0u;
  v75 = 0;
  v76 = 0xFF51AFD7ED558CCDLL;
  __dst = ((a2 >> 4) ^ (a2 >> 9));
  v69[0] = a3;
  *&v69[1] = (a4 >> 4) ^ (a4 >> 9);
  v58 = 0;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v58, &v69[9], &v72, (a5 >> 4) ^ (a5 >> 9));
  v59 = v58;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v59, v20, &v72, (v18 >> 4) ^ (v18 >> 9));
  v60 = v59;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v60, v21, &v72, (v17 >> 4) ^ (v17 >> 9));
  v61 = v60;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v61, v22, &v72, (v16 >> 4) ^ (v16 >> 9));
  v62 = v61;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &v62, v23, &v72, (a9 >> 4) ^ (a9 >> 9));
  v63 = v62;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&__dst, &v63, v24, &v72, a10);
  v64 = v63;
  v26 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&__dst, &v64, v25, &v72, a11);
  v27 = v64;
  LODWORD(__src) = a12;
  p_dst = (v26 + 1);
  if (v26 + 1 <= &v72)
  {
    *v26 = a12;
  }

  else
  {
    v29 = (&v72 - v26);
    memcpy(v26, &__src, &v72 - v26);
    if (v27)
    {
      llvm::hashing::detail::hash_state::mix(&v72, &__dst, v30, v31);
      v27 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(&__dst, v76, v30, v31, v65);
      v72 = v65[0];
      v73 = v65[1];
      v74 = v65[2];
      v75 = v66;
      v27 = 64;
    }

    v32 = 4 - v29;
    p_dst = &__dst;
    if (4 - v29 <= 64)
    {
      p_dst = &v69[v32 - 8];
      memcpy(&__dst, &__src + v29, v32);
    }
  }

  __src = v27;
  v33 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, &__src, p_dst, &v72, (a13 >> 4) ^ (a13 >> 9));
  *&v65[0] = __src;
  v36 = llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(v54, (v54 + 8 * *(&v54 + 1)), v34, v35);
  v37 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&__dst, v65, v33, &v72, v36);
  v38 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(&__dst, *&v65[0], v37, &v72, v55, v56);
  *&v65[0] = &v42;
  __dst = &v42;
  *v69 = v57;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v19 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id, v38, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::DISubprogramAttr::parse(void *a1)
{
  v76 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v56) = 0;
  v57 = 0;
  v55 = 0;
  LOBYTE(v53) = 0;
  v54 = 0;
  LOBYTE(v51) = 0;
  v52 = 0;
  LOBYTE(v49) = 0;
  v50 = 0;
  LOBYTE(v47) = 0;
  v48 = 0;
  LOBYTE(v45) = 0;
  v46 = 0;
  LOBYTE(v43) = 0;
  v44 = 0;
  LOBYTE(v41) = 0;
  v42 = 0;
  LOBYTE(v39) = 0;
  v40 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v73[0]) = 0;
  v75 = 0;
  LOBYTE(v70[0]) = 0;
  v72 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    v4 = 0;
    goto LABEL_56;
  }

  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v67 = a1;
  v68 = &v34 + 3;
  v69[0] = &v56;
  v69[1] = &v34 + 2;
  v69[2] = &v55;
  v69[3] = &v34 + 1;
  v69[4] = &v53;
  v69[5] = &v34;
  v69[6] = &v51;
  v69[7] = &v33 + 3;
  v69[8] = &v49;
  v69[9] = &v33 + 2;
  v69[10] = &v47;
  v69[11] = &v33 + 1;
  v69[12] = &v45;
  v69[13] = &v33;
  v69[14] = &v43;
  v69[15] = &v32 + 3;
  v69[16] = &v41;
  v69[17] = &v32 + 2;
  v69[18] = &v39;
  v69[19] = &v32 + 1;
  v69[20] = &v37;
  v69[21] = &v32;
  v69[22] = &v35;
  v69[23] = &v31 + 1;
  v69[24] = v73;
  v69[25] = &v31;
  v69[26] = v70;
  v61 = 0;
  v62 = 0;
  if ((*(*a1 + 416))(a1, &v61))
  {
    v2 = v61;
    for (i = v62; mlir::LLVM::DISubprogramAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v67, v2, i); i = v59)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v58 = 0;
      v59 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v58))
      {
        v19 = (*(*a1 + 40))(a1);
        v64[0] = "expected a parameter name in struct";
        v65[8] = 259;
        (*(*a1 + 24))(v66, a1, v19, v64);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v66);
        break;
      }

      v2 = v58;
    }
  }

  else
  {
LABEL_9:
    if ((*(*a1 + 168))(a1))
    {
      v5 = *(*(*a1 + 32))(a1);
      if (v57)
      {
        v6 = v56;
      }

      else
      {
        v6 = 0;
      }

      v29 = v6;
      v30 = v5;
      v27 = HIBYTE(v55) & v55;
      if (v54)
      {
        v7 = v53;
      }

      else
      {
        v7 = 0;
      }

      v28 = v7;
      if (v52)
      {
        v8 = v51;
      }

      else
      {
        v8 = 0;
      }

      if (v50)
      {
        v9 = v49;
      }

      else
      {
        v9 = 0;
      }

      v25 = v9;
      v26 = v8;
      if (v48)
      {
        v10 = v47;
      }

      else
      {
        v10 = 0;
      }

      if (v46)
      {
        v11 = v45;
      }

      else
      {
        v11 = 0;
      }

      v23 = v11;
      v24 = v10;
      if (v44)
      {
        v12 = v43;
      }

      else
      {
        v12 = 0;
      }

      if (v42)
      {
        v13 = v41;
      }

      else
      {
        v13 = 0;
      }

      if (v40)
      {
        v14 = v39;
      }

      else
      {
        v14 = 0;
      }

      if (v38)
      {
        v15 = v37;
      }

      else
      {
        v15 = 0;
      }

      if (v36)
      {
        v16 = v35;
      }

      else
      {
        v16 = 0;
      }

      v64[0] = v65;
      v64[1] = 0x600000000;
      std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v67, v73, v64);
      v17 = v67;
      v18 = v68;
      v58 = v60;
      v59 = 0x600000000;
      std::optional<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>(&v61, v70, &v58);
      *&v22 = v17;
      *(&v22 + 1) = v18;
      v4 = mlir::LLVM::DISubprogramAttr::get(v30, v29, v27 & 1, v28, v26, v25, v24, v23, v12, v13, v14, v15, v16, v22, v61, v62);
      if (v61 != &v63)
      {
        free(v61);
      }

      if (v58 != v60)
      {
        free(v58);
      }

      if (v67 != v69)
      {
        free(v67);
      }

      if (v64[0] != v65)
      {
        free(v64[0]);
      }

      goto LABEL_53;
    }
  }

  v4 = 0;
LABEL_53:
  if ((v72 & 1) != 0 && v70[0] != &v71)
  {
    free(v70[0]);
  }

LABEL_56:
  if (v75 == 1 && v73[0] != &v74)
  {
    free(v73[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::LLVM::DISubprogramAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v127[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_88;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 5)
  {
    v20 = a1[3];
    v9 = a3 != 9;
    if ((*v20 & 1) == 0 && a3 == 9)
    {
      v21 = *a2 == 0x6C65536365527369 && *(a2 + 8) == 102;
      v8 = 1;
      if (v21)
      {
        *v20 = 1;
        v55 = *a1;
        LOBYTE(v109) = 0;
        v56 = mlir::AsmParser::parseInteger<BOOL>(v55, &v109);
        v57 = v109;
        if ((v56 & 1) == 0)
        {
          v57 = 0;
        }

        *a1[4] = v57 | ((v56 & 1) << 8);
        if ((*(a1[4] + 1) & 1) == 0)
        {
          v58 = *a1;
          v59 = (*(*v58 + 40))(v58);
          v112 = 259;
          (*(*v58 + 24))(v126, v58, v59, &v109);
          v19 = v126;
          goto LABEL_87;
        }

        goto LABEL_89;
      }

      v9 = 0;
      v12 = 1;
      goto LABEL_59;
    }

    v22 = a1[5];
    if ((*v22 & 1) == 0 && a3 == 2)
    {
      if (*a2 != 25705)
      {
        goto LABEL_84;
      }

      v8 = 1;
      *v22 = 1;
      v23 = *a1;
      v109 = 0;
      v24 = mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(v23, &v109);
      v25 = v109;
      if (!v24)
      {
        v25 = 0;
      }

      v26 = a1[6];
      *v26 = v25;
      *(v26 + 8) = v24;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v27 = *a1;
        v28 = (*(*v27 + 40))(v27);
        v112 = 259;
        (*(*v27 + 24))(v125, v27, v28, &v109);
        v19 = v125;
        goto LABEL_87;
      }

      goto LABEL_89;
    }

    v36 = a1[7];
    LODWORD(v8) = a3 != 11;
    if ((*v36 & 1) == 0 && a3 == 11)
    {
      v37 = *a2 == 0x55656C69706D6F63 && *(a2 + 3) == 0x74696E55656C6970;
      v8 = 1;
      if (v37)
      {
        *v36 = 1;
        v98 = mlir::FieldParser<mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DICompileUnitAttr>::parse(*a1);
        v99 = a1[8];
        *v99 = v98;
        *(v99 + 8) = v100;
        if (*(a1[8] + 8))
        {
          goto LABEL_89;
        }

        v101 = *a1;
        v102 = (*(*v101 + 40))(v101);
        v112 = 259;
        (*(*v101 + 24))(v124, v101, v102, &v109);
        v19 = v124;
        goto LABEL_87;
      }

      LODWORD(v8) = 0;
      v12 = 1;
      v9 = 1;
LABEL_48:
      v38 = a1[13];
      if ((*v38 & 1) == 0 && (v8 & 1) == 0)
      {
        if (*a2 == 0x4E6567616B6E696CLL && *(a2 + 3) == 0x656D614E6567616BLL)
        {
          v8 = 1;
          *v38 = 1;
          v66 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
          v67 = a1[14];
          *v67 = v66;
          *(v67 + 8) = v68;
          if (*(a1[14] + 8))
          {
            goto LABEL_89;
          }

          v69 = *a1;
          v70 = (*(*v69 + 40))(v69);
          v112 = 259;
          (*(*v69 + 24))(v121, v69, v70, &v109);
          v19 = v121;
          goto LABEL_87;
        }

        LODWORD(v8) = 0;
      }

      v40 = a1[15];
      if (((*v40 | v12) & 1) == 0 && *a2 == 1701603686)
      {
        v8 = 1;
        *v40 = 1;
        v75 = mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(*a1);
        v76 = a1[16];
        *v76 = v75;
        *(v76 + 8) = v77;
        if (*(a1[16] + 8))
        {
          goto LABEL_89;
        }

        v78 = *a1;
        v79 = (*(*v78 + 40))(v78);
        v112 = 259;
        (*(*v78 + 24))(v120, v78, v79, &v109);
        v19 = v120;
        goto LABEL_87;
      }

      v41 = a1[17];
      if (((*v41 | v12) & 1) == 0 && *a2 == 1701734764)
      {
        v8 = 1;
        *v41 = 1;
        v85 = *a1;
        LODWORD(v109) = 0;
        v86 = mlir::AsmParser::parseInteger<unsigned int>(v85, &v109);
        v87 = v109;
        if ((v86 & 1) == 0)
        {
          v87 = 0;
        }

        v88 = a1[18];
        *(v88 + 4) = v86 & 1;
        *v88 = v87;
        if ((*(a1[18] + 4) & 1) == 0)
        {
          v89 = *a1;
          v90 = (*(*v89 + 40))(v89);
          v112 = 259;
          (*(*v89 + 24))(v119, v89, v90, &v109);
          v19 = v119;
          goto LABEL_87;
        }

        goto LABEL_89;
      }

LABEL_59:
      v42 = a1[19];
      if ((*v42 & 1) != 0 || v9 || (*a2 == 0x6E694C65706F6373 ? (v43 = *(a2 + 8) == 101) : (v43 = 0), !v43))
      {
        v44 = a1[21];
        if ((*v44 & 1) == 0 && a3 == 15 && *a2 == 0x72676F7270627573 && *(a2 + 7) == 0x7367616C466D6172)
        {
          v8 = 1;
          *v44 = 1;
          v71 = mlir::FieldParser<mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubprogramFlags>::parse<mlir::AsmParser>(*a1);
          v72 = a1[22];
          *v72 = v71;
          *(v72 + 4) = BYTE4(v71);
          if (*(a1[22] + 4))
          {
            goto LABEL_89;
          }

          v73 = *a1;
          v74 = (*(*v73 + 40))(v73);
          v112 = 259;
          (*(*v73 + 24))(v117, v73, v74, &v109);
          v19 = v117;
          goto LABEL_87;
        }

        v46 = a1[23];
        if (((*v46 | v12) & 1) == 0 && *a2 == 1701869940)
        {
          v8 = 1;
          *v46 = 1;
          v80 = mlir::FieldParser<mlir::LLVM::DISubroutineTypeAttr,mlir::LLVM::DISubroutineTypeAttr>::parse(*a1);
          v81 = a1[24];
          *v81 = v80;
          *(v81 + 8) = v82;
          if (*(a1[24] + 8))
          {
            goto LABEL_89;
          }

          v83 = *a1;
          v84 = (*(*v83 + 40))(v83);
          v112 = 259;
          (*(*v83 + 24))(v116, v83, v84, &v109);
          v19 = v116;
          goto LABEL_87;
        }

        v47 = a1[25];
        if ((*v47 & 1) == 0 && a3 == 13 && (*a2 == 0x64656E6961746572 ? (v48 = *(a2 + 5) == 0x7365646F4E64656ELL) : (v48 = 0), v48))
        {
          *v47 = 1;
          mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v109, *a1);
          std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(a1[26], &v109);
          if (v113 == 1 && v109 != v111)
          {
            free(v109);
          }

          if (*(a1[26] + 64))
          {
            goto LABEL_121;
          }

          v96 = *a1;
          v97 = (*(*v96 + 40))(v96);
          v112 = 259;
          (*(*v96 + 24))(v115, v96, v97, &v109);
          v19 = v115;
        }

        else
        {
          v49 = a1[27];
          if (((*v49 | v8) & 1) != 0 || (*a2 == 0x697461746F6E6E61 ? (v50 = *(a2 + 3) == 0x736E6F697461746FLL) : (v50 = 0), !v50))
          {
LABEL_84:
            v51 = *a1;
            v52 = (*(*v51 + 40))(v51);
            v105 = "duplicate or unknown struct parameter name: ";
            v106 = 259;
            (*(*v51 + 24))(&v109, v51, v52, &v105);
            if (v109)
            {
              v108 = 261;
              v107[0] = a2;
              v107[1] = a3;
              mlir::Diagnostic::operator<<(&v110, v107);
            }

            v19 = &v109;
            goto LABEL_87;
          }

          *v49 = 1;
          mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(&v109, *a1);
          std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(a1[28], &v109);
          if (v113 == 1 && v109 != v111)
          {
            free(v109);
          }

          if (*(a1[28] + 64))
          {
LABEL_121:
            v8 = 1;
            goto LABEL_89;
          }

          v103 = *a1;
          v104 = (*(*v103 + 40))(v103);
          v112 = 259;
          (*(*v103 + 24))(v114, v103, v104, &v109);
          v19 = v114;
        }

LABEL_87:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
LABEL_88:
        v8 = 0;
        goto LABEL_89;
      }

      v8 = 1;
      *v42 = 1;
      v60 = *a1;
      LODWORD(v109) = 0;
      v61 = mlir::AsmParser::parseInteger<unsigned int>(v60, &v109);
      v62 = v109;
      if ((v61 & 1) == 0)
      {
        v62 = 0;
      }

      v63 = a1[20];
      *(v63 + 4) = v61 & 1;
      *v63 = v62;
      if ((*(a1[20] + 4) & 1) == 0)
      {
        v64 = *a1;
        v65 = (*(*v64 + 40))(v64);
        v112 = 259;
        (*(*v64 + 24))(v118, v64, v65, &v109);
        v19 = v118;
        goto LABEL_87;
      }

      goto LABEL_89;
    }
  }

  else
  {
    v7 = *a2 == 1231250802 && *(a2 + 4) == 100;
    v8 = 1;
    v9 = 1;
    if (v7)
    {
      *v6 = 1;
      v30 = *a1;
      v109 = 0;
      v31 = mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(v30, &v109);
      v32 = v109;
      if (!v31)
      {
        v32 = 0;
      }

      v33 = a1[2];
      *v33 = v32;
      *(v33 + 8) = v31;
      if ((*(a1[2] + 8) & 1) == 0)
      {
        v34 = *a1;
        v35 = (*(*v34 + 40))(v34);
        v112 = 259;
        (*(*v34 + 24))(v127, v34, v35, &v109);
        v19 = v127;
        goto LABEL_87;
      }

      goto LABEL_89;
    }
  }

  v10 = a1[9];
  if ((*v10 & 1) != 0 || a3 != 5)
  {
    v29 = a1[11];
    v12 = a3 != 4;
    if ((*v29 & 1) == 0 && a3 == 4)
    {
      if (*a2 == 1701667182)
      {
        v8 = 1;
        *v29 = 1;
        v91 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
        v92 = a1[12];
        *v92 = v91;
        *(v92 + 8) = v93;
        if (*(a1[12] + 8))
        {
          goto LABEL_89;
        }

        v94 = *a1;
        v95 = (*(*v94 + 40))(v94);
        v112 = 259;
        (*(*v94 + 24))(v122, v94, v95, &v109);
        v19 = v122;
        goto LABEL_87;
      }

      v12 = 0;
    }

    goto LABEL_48;
  }

  v11 = *a2 == 1886348147 && *(a2 + 4) == 101;
  v12 = 1;
  if (!v11)
  {
    goto LABEL_48;
  }

  *v10 = 1;
  v13 = *a1;
  v109 = 0;
  v14 = mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(v13, &v109);
  v15 = v109;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = a1[10];
  *v16 = v15;
  *(v16 + 8) = v14;
  v8 = 1;
  if ((*(a1[10] + 8) & 1) == 0)
  {
    v17 = *a1;
    v18 = (*(*v17 + 40))(v17);
    v112 = 259;
    (*(*v17 + 24))(v123, v17, v18, &v109);
    v19 = v123;
    goto LABEL_87;
  }

LABEL_89:
  v53 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::DISubprogramAttr::print(mlir::LLVM::DISubprogramAttr *this, mlir::AsmPrinter *a2)
{
  v101[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (*(v7 + 3) - v8 > 7uLL)
    {
      *v8 = 0x203D206449636572;
      *(v7 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v7, "recId = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if ((*(v9 + 16) & 1) == 0)
    {
      goto LABEL_36;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }
  }

  else if ((*(v6 + 16) & 1) == 0)
  {
    if (!*(v6 + 24))
    {
      if (!*(v6 + 32))
      {
        if (!*(v6 + 40))
        {
          if (!*(v6 + 48))
          {
            if (!*(v6 + 56))
            {
              if (!*(v6 + 64))
              {
                if (!*(v6 + 72))
                {
                  if (!*(v6 + 76))
                  {
                    if (!*(v6 + 80))
                    {
                      if (!*(v6 + 88))
                      {
                        if (!*(v6 + 104))
                        {
                          if (!*(v6 + 120))
                          {
                            goto LABEL_203;
                          }

                          goto LABEL_198;
                        }

                        goto LABEL_189;
                      }

                      goto LABEL_177;
                    }

                    goto LABEL_115;
                  }

                  goto LABEL_106;
                }

                goto LABEL_97;
              }

              goto LABEL_88;
            }

            goto LABEL_79;
          }

          goto LABEL_70;
        }

        goto LABEL_61;
      }

      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0xB)
  {
    *(v13 + 8) = 540876902;
    *v13 = *"isRecSelf = ";
    *(v12 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v12, "isRecSelf = ", 0xCuLL);
  }

  v9 = *this;
  if (*(*this + 16) == 1)
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 3uLL)
    {
      *v15 = 1702195828;
      *(v14 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v14, "true", 4uLL);
    }

    v9 = *this;
  }

LABEL_36:
  if (!*(v9 + 24))
  {
    goto LABEL_45;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

LABEL_40:
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if ((*(v18 + 3) - v19) > 4)
  {
    *(v19 + 4) = 32;
    *v19 = 1025533033;
    *(v18 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v18, "id = ", 5uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_45:
  if (*(v9 + 32))
  {
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 1uLL)
    {
      *v21 = 8236;
      *(v20 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v20, ", ", 2uLL);
    }

LABEL_49:
    v22 = (*(*a2 + 16))(a2);
    v23 = *(v22 + 4);
    if (*(v22 + 3) - v23 > 0xDuLL)
    {
      qmemcpy(v23, "compileUnit = ", 14);
      *(v22 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v22, "compileUnit = ", 0xEuLL);
    }

    v9 = *this;
    v24 = *(*this + 32);
    if (v24)
    {
      v99 = *(*this + 32);
      if (((*(*a2 + 56))(a2, v24) & 1) == 0)
      {
        v25 = (*(*a2 + 16))(a2);
        v26 = (*(*v25 + 80))(v25) + v25[4] - v25[2];
        mlir::LLVM::DICompileUnitAttr::print(&v99, a2);
        if (v26 == (*(*v25 + 80))(v25) + v25[4] - v25[2])
        {
          (*(*a2 + 40))(a2, v24);
        }
      }

      v9 = *this;
    }
  }

  if (!*(v9 + 40))
  {
    goto LABEL_66;
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 > 1uLL)
  {
    *v28 = 8236;
    *(v27 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v27, ", ", 2uLL);
  }

LABEL_61:
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 7uLL)
  {
    *v30 = 0x203D2065706F6373;
    *(v29 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v29, "scope = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 40))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_66:
  if (*(v9 + 48))
  {
    v31 = (*(*a2 + 16))(a2);
    v32 = *(v31 + 4);
    if (*(v31 + 3) - v32 > 1uLL)
    {
      *v32 = 8236;
      *(v31 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v31, ", ", 2uLL);
    }

LABEL_70:
    v33 = (*(*a2 + 16))(a2);
    v34 = *(v33 + 4);
    if (*(v33 + 3) - v34 > 6uLL)
    {
      *(v34 + 3) = 540876901;
      *v34 = 1701667182;
      *(v33 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v33, "name = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 48))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!*(v9 + 56))
  {
    goto LABEL_84;
  }

  v35 = (*(*a2 + 16))(a2);
  v36 = *(v35 + 4);
  if (*(v35 + 3) - v36 > 1uLL)
  {
    *v36 = 8236;
    *(v35 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v35, ", ", 2uLL);
  }

LABEL_79:
  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 0xDuLL)
  {
    qmemcpy(v38, "linkageName = ", 14);
    *(v37 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v37, "linkageName = ", 0xEuLL);
  }

  v9 = *this;
  if (*(*this + 56))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_84:
  if (*(v9 + 64))
  {
    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 > 1uLL)
    {
      *v40 = 8236;
      *(v39 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v39, ", ", 2uLL);
    }

LABEL_88:
    v41 = (*(*a2 + 16))(a2);
    v42 = *(v41 + 4);
    if (*(v41 + 3) - v42 > 6uLL)
    {
      *(v42 + 3) = 540876901;
      *v42 = 1701603686;
      *(v41 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v41, "file = ", 7uLL);
    }

    v9 = *this;
    v43 = *(*this + 64);
    if (v43)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIFileAttr,(void *)0>(a2, v43);
      v9 = *this;
    }
  }

  if (!*(v9 + 72))
  {
    goto LABEL_102;
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (*(v44 + 3) - v45 > 1uLL)
  {
    *v45 = 8236;
    *(v44 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v44, ", ", 2uLL);
  }

LABEL_97:
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) - v47 > 6uLL)
  {
    *(v47 + 3) = 540876901;
    *v47 = 1701734764;
    *(v46 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v46, "line = ", 7uLL);
  }

  v9 = *this;
  v48 = *(*this + 72);
  if (v48)
  {
    v49 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v49, v48, 0, 0, 0);
    v9 = *this;
  }

LABEL_102:
  if (*(v9 + 76))
  {
    v50 = (*(*a2 + 16))(a2);
    v51 = *(v50 + 4);
    if (*(v50 + 3) - v51 > 1uLL)
    {
      *v51 = 8236;
      *(v50 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v50, ", ", 2uLL);
    }

LABEL_106:
    v52 = (*(*a2 + 16))(a2);
    v53 = *(v52 + 4);
    if ((*(v52 + 3) - v53) > 0xB)
    {
      *(v53 + 8) = 540876901;
      *v53 = *"scopeLine = ";
      *(v52 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v52, "scopeLine = ", 0xCuLL);
    }

    v9 = *this;
    v54 = *(*this + 76);
    if (v54)
    {
      v55 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v55, v54, 0, 0, 0);
      v9 = *this;
    }
  }

  if (!*(v9 + 80))
  {
    goto LABEL_173;
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (*(v56 + 3) - v57 > 1uLL)
  {
    *v57 = 8236;
    *(v56 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v56, ", ", 2uLL);
  }

LABEL_115:
  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if ((*(v58 + 3) - v59) > 0x11)
  {
    *(v59 + 16) = 8253;
    *v59 = *"subprogramFlags = ";
    *(v58 + 4) += 18;
  }

  else
  {
    llvm::raw_ostream::write(v58, "subprogramFlags = ", 0x12uLL);
  }

  v9 = *this;
  v60 = *(*this + 80);
  if (v60)
  {
    v61 = (*(*a2 + 16))(a2);
    v99 = v101;
    v100 = 0x200000000;
    if (v60)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "Virtual", 7);
      if ((v60 & 2) == 0)
      {
LABEL_121:
        if ((v60 & 4) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_149;
      }
    }

    else if ((v60 & 2) == 0)
    {
      goto LABEL_121;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "PureVirtual", 11);
    if ((v60 & 4) == 0)
    {
LABEL_122:
      if ((v60 & 8) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_150;
    }

LABEL_149:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "LocalToUnit", 11);
    if ((v60 & 8) == 0)
    {
LABEL_123:
      if ((v60 & 0x10) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_151;
    }

LABEL_150:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "Definition", 10);
    if ((v60 & 0x10) == 0)
    {
LABEL_124:
      if ((v60 & 0x20) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_152;
    }

LABEL_151:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "Optimized", 9);
    if ((v60 & 0x20) == 0)
    {
LABEL_125:
      if ((v60 & 0x40) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_153;
    }

LABEL_152:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "Pure", 4);
    if ((v60 & 0x40) == 0)
    {
LABEL_126:
      if ((v60 & 0x80) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_154;
    }

LABEL_153:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "Elemental", 9);
    if ((v60 & 0x80) == 0)
    {
LABEL_127:
      if ((v60 & 0x100) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_155;
    }

LABEL_154:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "Recursive", 9);
    if ((v60 & 0x100) == 0)
    {
LABEL_128:
      if ((v60 & 0x200) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_156;
    }

LABEL_155:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "MainSubprogram", 14);
    if ((v60 & 0x200) == 0)
    {
LABEL_129:
      if ((v60 & 0x800) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

LABEL_156:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "Deleted", 7);
    if ((v60 & 0x800) == 0)
    {
LABEL_131:
      v62 = v99;
      v63 = v100;
      memset(&__p, 0, sizeof(__p));
      if (v100)
      {
        v64 = 16 * v100;
        v65 = v100 - 1;
        v66 = 8;
        v67 = v99 + v64;
        do
        {
          v65 += *(v99 + v66);
          v66 += 16;
          v64 -= 16;
        }

        while (v64);
        std::string::reserve(&__p, v65);
        std::string::append(&__p, *v62, *(v62 + 1));
        if (v63 != 1)
        {
          v68 = v62 + 16;
          do
          {
            std::string::append(&__p, "|", 1uLL);
            v69 = *v68;
            v70 = *(v68 + 1);
            v68 += 16;
            std::string::append(&__p, v69, v70);
          }

          while (v68 != v67);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }

      if ((v60 & (v60 - 1)) != 0)
      {
        v73 = *(v61 + 4);
        if (v73 >= *(v61 + 3))
        {
          llvm::raw_ostream::write(v61, 34);
        }

        else
        {
          *(v61 + 4) = v73 + 1;
          *v73 = 34;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v76 = llvm::raw_ostream::write(v61, p_p, size);
        v77 = *(v76 + 4);
        if (v77 >= *(v76 + 3))
        {
          llvm::raw_ostream::write(v76, 34);
        }

        else
        {
          *(v76 + 4) = v77 + 1;
          *v77 = 34;
        }
      }

      else
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = &__p;
        }

        else
        {
          v71 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v72 = __p.__r_.__value_.__l.__size_;
        }

        llvm::raw_ostream::write(v61, v71, v72);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 = *this;
      goto LABEL_173;
    }

LABEL_130:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v99, "ObjCDirect", 10);
    goto LABEL_131;
  }

LABEL_173:
  if (!*(v9 + 88))
  {
    goto LABEL_185;
  }

  v78 = (*(*a2 + 16))(a2);
  v79 = *(v78 + 4);
  if (*(v78 + 3) - v79 > 1uLL)
  {
    *v79 = 8236;
    *(v78 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v78, ", ", 2uLL);
  }

LABEL_177:
  v80 = (*(*a2 + 16))(a2);
  v81 = *(v80 + 4);
  if (*(v80 + 3) - v81 > 6uLL)
  {
    *(v81 + 3) = 540876901;
    *v81 = 1701869940;
    *(v80 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v80, "type = ", 7uLL);
  }

  v9 = *this;
  v82 = *(*this + 88);
  if (v82)
  {
    v99 = *(*this + 88);
    if (((*(*a2 + 56))(a2, v82) & 1) == 0)
    {
      v83 = (*(*a2 + 16))(a2);
      v84 = (*(*v83 + 80))(v83) + v83[4] - v83[2];
      mlir::LLVM::DISubroutineTypeAttr::print(&v99, a2);
      if (v84 == (*(*v83 + 80))(v83) + v83[4] - v83[2])
      {
        (*(*a2 + 40))(a2, v82);
      }
    }

    v9 = *this;
  }

LABEL_185:
  if (*(v9 + 104))
  {
    v85 = (*(*a2 + 16))(a2);
    v86 = *(v85 + 4);
    if (*(v85 + 3) - v86 > 1uLL)
    {
      *v86 = 8236;
      *(v85 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v85, ", ", 2uLL);
    }

LABEL_189:
    v87 = (*(*a2 + 16))(a2);
    v88 = *(v87 + 4);
    if (*(v87 + 3) - v88 > 0xFuLL)
    {
      *v88 = *"retainedNodes = ";
      *(v87 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v87, "retainedNodes = ", 0x10uLL);
    }

    v9 = *this;
    v89 = *(*this + 104);
    if (v89)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(v9 + 96), v89);
      v9 = *this;
    }
  }

  if (!*(v9 + 120))
  {
    goto LABEL_203;
  }

  v90 = (*(*a2 + 16))(a2);
  v91 = *(v90 + 4);
  if (*(v90 + 3) - v91 > 1uLL)
  {
    *v91 = 8236;
    *(v90 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v90, ", ", 2uLL);
  }

LABEL_198:
  v92 = (*(*a2 + 16))(a2);
  v93 = *(v92 + 4);
  if (*(v92 + 3) - v93 > 0xDuLL)
  {
    qmemcpy(v93, "annotations = ", 14);
    *(v92 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v92, "annotations = ", 0xEuLL);
  }

  v94 = *(*this + 120);
  if (v94)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<mlir::LLVM::DINodeAttr>,(void *)0>(a2, *(*this + 112), v94);
  }

LABEL_203:
  result = (*(*a2 + 16))(a2);
  v96 = *(result + 4);
  if (*(result + 3) == v96)
  {
    result = llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v96 = 62;
    ++*(result + 4);
  }

  v97 = *MEMORY[0x277D85DE8];
  return result;
}