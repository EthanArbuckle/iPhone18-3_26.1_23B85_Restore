void mlir::LLVM::LLVMDialect::printAttribute(uint64_t a1, void *a2, mlir::AsmPrinter *a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 4)
    {
      *(v9 + 4) = 118;
      *v9 = 1852793699;
      *(v8 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v8, "cconv", 5uLL);
    }

    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if (*(v12 + 3) == v13)
    {
      llvm::raw_ostream::write(v12, "<", 1uLL);
    }

    else
    {
      *v13 = 60;
      ++*(v12 + 4);
    }

    v16 = a2[1];
    v17 = (*(*a3 + 16))(a3);
    v18 = mlir::LLVM::cconv::stringifyCConv(v16);
    goto LABEL_90;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id)
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
    {
      if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
      {
        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id)
        {
          v149 = a2;
          v30 = (*(*a3 + 16))(a3);
          v31 = *(v30 + 4);
          if (*(v30 + 3) - v31 > 0xDuLL)
          {
            qmemcpy(v31, "loop_vectorize", 14);
            *(v30 + 4) += 14;
          }

          else
          {
            llvm::raw_ostream::write(v30, "loop_vectorize", 0xEuLL);
          }

          mlir::LLVM::LoopVectorizeAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id)
        {
          v149 = a2;
          v45 = (*(*a3 + 16))(a3);
          v46 = *(v45 + 4);
          if (*(v45 + 3) - v46 > 0xEuLL)
          {
            qmemcpy(v46, "loop_interleave", 15);
            *(v45 + 4) += 15;
          }

          else
          {
            llvm::raw_ostream::write(v45, "loop_interleave", 0xFuLL);
          }

          mlir::LLVM::LoopInterleaveAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id)
        {
          v149 = a2;
          v50 = (*(*a3 + 16))(a3);
          v51 = *(v50 + 4);
          if ((*(v50 + 3) - v51) > 0xA)
          {
            *(v51 + 7) = 1819045746;
            *v51 = *"loop_unroll";
            *(v50 + 4) += 11;
          }

          else
          {
            llvm::raw_ostream::write(v50, "loop_unroll", 0xBuLL);
          }

          mlir::LLVM::LoopUnrollAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id)
        {
          v149 = a2;
          v55 = (*(*a3 + 16))(a3);
          v56 = *(v55 + 4);
          if ((*(v55 + 3) - v56) > 0x12)
          {
            *(v56 + 15) = 1835100767;
            *v56 = *"loop_unroll_and_jam";
            *(v55 + 4) += 19;
          }

          else
          {
            llvm::raw_ostream::write(v55, "loop_unroll_and_jam", 0x13uLL);
          }

          mlir::LLVM::LoopUnrollAndJamAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id)
        {
          v149 = a2;
          v57 = (*(*a3 + 16))(a3);
          v58 = *(v57 + 4);
          if ((*(v57 + 3) - v58) > 8)
          {
            *(v58 + 8) = 109;
            *v58 = *"loop_licm";
            *(v57 + 4) += 9;
          }

          else
          {
            llvm::raw_ostream::write(v57, "loop_licm", 9uLL);
          }

          mlir::LLVM::LoopLICMAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id)
        {
          v149 = a2;
          v59 = (*(*a3 + 16))(a3);
          v60 = *(v59 + 4);
          if (*(v59 + 3) - v60 > 0xEuLL)
          {
            qmemcpy(v60, "loop_distribute", 15);
            *(v59 + 4) += 15;
          }

          else
          {
            llvm::raw_ostream::write(v59, "loop_distribute", 0xFuLL);
          }

          mlir::LLVM::LoopDistributeAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id)
        {
          v149 = a2;
          v61 = (*(*a3 + 16))(a3);
          v62 = *(v61 + 4);
          if (*(v61 + 3) - v62 > 0xCuLL)
          {
            qmemcpy(v62, "loop_pipeline", 13);
            *(v61 + 4) += 13;
          }

          else
          {
            llvm::raw_ostream::write(v61, "loop_pipeline", 0xDuLL);
          }

          mlir::LLVM::LoopPipelineAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id)
        {
          v149 = a2;
          v63 = (*(*a3 + 16))(a3);
          v64 = *(v63 + 4);
          if ((*(v63 + 3) - v64) > 0xA)
          {
            *(v64 + 7) = 1684368485;
            *v64 = *"loop_peeled";
            *(v63 + 4) += 11;
          }

          else
          {
            llvm::raw_ostream::write(v63, "loop_peeled", 0xBuLL);
          }

          mlir::LLVM::LoopPeeledAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id)
        {
          v149 = a2;
          v65 = (*(*a3 + 16))(a3);
          v66 = *(v65 + 4);
          if (*(v65 + 3) - v66 > 0xCuLL)
          {
            qmemcpy(v66, "loop_unswitch", 13);
            *(v65 + 4) += 13;
          }

          else
          {
            llvm::raw_ostream::write(v65, "loop_unswitch", 0xDuLL);
          }

          mlir::LLVM::LoopUnswitchAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
        {
          v149 = a2;
          v67 = (*(*a3 + 16))(a3);
          v68 = *(v67 + 4);
          if (*(v67 + 3) - v68 > 0xEuLL)
          {
            qmemcpy(v68, "loop_annotation", 15);
            *(v67 + 4) += 15;
          }

          else
          {
            llvm::raw_ostream::write(v67, "loop_annotation", 0xFuLL);
          }

          mlir::LLVM::LoopAnnotationAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id)
        {
          v149 = a2;
          v69 = (*(*a3 + 16))(a3);
          v70 = *(v69 + 4);
          if ((*(v69 + 3) - v70) > 0x11)
          {
            *(v70 + 16) = 28005;
            *v70 = *"di_expression_elem";
            *(v69 + 4) += 18;
          }

          else
          {
            llvm::raw_ostream::write(v69, "di_expression_elem", 0x12uLL);
          }

          mlir::LLVM::DIExpressionElemAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
        {
          v149 = a2;
          v71 = (*(*a3 + 16))(a3);
          v72 = *(v71 + 4);
          if (*(v71 + 3) - v72 > 0xCuLL)
          {
            qmemcpy(v72, "di_expression", 13);
            *(v71 + 4) += 13;
          }

          else
          {
            llvm::raw_ostream::write(v71, "di_expression", 0xDuLL);
          }

          mlir::LLVM::DIExpressionAttr::print(&v149, a3);
          return;
        }

        if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id)
        {
          v38 = (*(*a3 + 16))(a3);
          v73 = *(v38 + 4);
          if ((*(v38 + 3) - v73) > 0xB)
          {
            *(v73 + 8) = 1701869940;
            *v73 = *"di_null_type";
            v40 = *(v38 + 4) + 12;
            goto LABEL_94;
          }

          v41 = "di_null_type";
          v42 = 12;
        }

        else
        {
          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id)
          {
            v149 = a2;
            v74 = (*(*a3 + 16))(a3);
            v75 = *(v74 + 4);
            if (*(v74 + 3) - v75 > 0xCuLL)
            {
              qmemcpy(v75, "di_basic_type", 13);
              *(v74 + 4) += 13;
            }

            else
            {
              llvm::raw_ostream::write(v74, "di_basic_type", 0xDuLL);
            }

            mlir::LLVM::DIBasicTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id)
          {
            v149 = a2;
            v76 = (*(*a3 + 16))(a3);
            v77 = *(v76 + 4);
            if (*(v76 + 3) - v77 > 0xEuLL)
            {
              qmemcpy(v77, "di_compile_unit", 15);
              *(v76 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v76, "di_compile_unit", 0xFuLL);
            }

            mlir::LLVM::DICompileUnitAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id)
          {
            v149 = a2;
            v78 = (*(*a3 + 16))(a3);
            v79 = *(v78 + 4);
            if ((*(v78 + 3) - v79) > 0x10)
            {
              *(v79 + 16) = 101;
              *v79 = *"di_composite_type";
              *(v78 + 4) += 17;
            }

            else
            {
              llvm::raw_ostream::write(v78, "di_composite_type", 0x11uLL);
            }

            mlir::LLVM::DICompositeTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id)
          {
            v149 = a2;
            v80 = (*(*a3 + 16))(a3);
            v81 = *(v80 + 4);
            if (*(v80 + 3) - v81 > 0xEuLL)
            {
              qmemcpy(v81, "di_derived_type", 15);
              *(v80 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v80, "di_derived_type", 0xFuLL);
            }

            mlir::LLVM::DIDerivedTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id)
          {
            v149 = a2;
            v82 = (*(*a3 + 16))(a3);
            v83 = *(v82 + 4);
            if (*(v82 + 3) - v83 > 6uLL)
            {
              *(v83 + 3) = 1701603686;
              *v83 = 1717528932;
              *(v82 + 4) += 7;
            }

            else
            {
              llvm::raw_ostream::write(v82, "di_file", 7uLL);
            }

            mlir::LLVM::DIFileAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id)
          {
            v149 = a2;
            v84 = (*(*a3 + 16))(a3);
            v85 = *(v84 + 4);
            if (*(v84 + 3) - v85 > 0x1CuLL)
            {
              qmemcpy(v85, "di_global_variable_expression", 29);
              *(v84 + 4) += 29;
            }

            else
            {
              llvm::raw_ostream::write(v84, "di_global_variable_expression", 0x1DuLL);
            }

            mlir::LLVM::DIGlobalVariableExpressionAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id)
          {
            v149 = a2;
            v86 = (*(*a3 + 16))(a3);
            v87 = *(v86 + 4);
            if ((*(v86 + 3) - v87) > 0x11)
            {
              *(v87 + 16) = 25964;
              *v87 = *"di_global_variable";
              *(v86 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v86, "di_global_variable", 0x12uLL);
            }

            mlir::LLVM::DIGlobalVariableAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id)
          {
            v149 = a2;
            v88 = (*(*a3 + 16))(a3);
            v89 = *(v88 + 4);
            if (*(v88 + 3) - v89 > 0xFuLL)
            {
              *v89 = *"di_lexical_block";
              *(v88 + 4) += 16;
            }

            else
            {
              llvm::raw_ostream::write(v88, "di_lexical_block", 0x10uLL);
            }

            mlir::LLVM::DILexicalBlockAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id)
          {
            v149 = a2;
            v90 = (*(*a3 + 16))(a3);
            v91 = *(v90 + 4);
            if (*(v90 + 3) - v91 > 0x14uLL)
            {
              qmemcpy(v91, "di_lexical_block_file", 21);
              *(v90 + 4) += 21;
            }

            else
            {
              llvm::raw_ostream::write(v90, "di_lexical_block_file", 0x15uLL);
            }

            mlir::LLVM::DILexicalBlockFileAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
          {
            v149 = a2;
            v92 = (*(*a3 + 16))(a3);
            v93 = *(v92 + 4);
            if ((*(v92 + 3) - v93) > 0x10)
            {
              *(v93 + 16) = 101;
              *v93 = *"di_local_variable";
              *(v92 + 4) += 17;
            }

            else
            {
              llvm::raw_ostream::write(v92, "di_local_variable", 0x11uLL);
            }

            mlir::LLVM::DILocalVariableAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id)
          {
            v149 = a2;
            v94 = (*(*a3 + 16))(a3);
            v95 = *(v94 + 4);
            if (*(v94 + 3) - v95 > 0xCuLL)
            {
              qmemcpy(v95, "di_subprogram", 13);
              *(v94 + 4) += 13;
            }

            else
            {
              llvm::raw_ostream::write(v94, "di_subprogram", 0xDuLL);
            }

            mlir::LLVM::DISubprogramAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id)
          {
            v149 = a2;
            v96 = (*(*a3 + 16))(a3);
            v97 = *(v96 + 4);
            if ((*(v96 + 3) - v97) > 8)
            {
              *(v97 + 8) = 101;
              *v97 = *"di_module";
              *(v96 + 4) += 9;
            }

            else
            {
              llvm::raw_ostream::write(v96, "di_module", 9uLL);
            }

            mlir::LLVM::DIModuleAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id)
          {
            v149 = a2;
            v98 = (*(*a3 + 16))(a3);
            v99 = *(v98 + 4);
            if ((*(v98 + 3) - v99) > 0xB)
            {
              *(v99 + 8) = 1701011824;
              *v99 = *"di_namespace";
              *(v98 + 4) += 12;
            }

            else
            {
              llvm::raw_ostream::write(v98, "di_namespace", 0xCuLL);
            }

            mlir::LLVM::DINamespaceAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id)
          {
            v149 = a2;
            v100 = (*(*a3 + 16))(a3);
            v101 = *(v100 + 4);
            if ((*(v100 + 3) - v101) > 0x11)
            {
              *(v101 + 16) = 31092;
              *v101 = *"di_imported_entity";
              *(v100 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v100, "di_imported_entity", 0x12uLL);
            }

            mlir::LLVM::DIImportedEntityAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id)
          {
            v149 = a2;
            v102 = (*(*a3 + 16))(a3);
            v103 = *(v102 + 4);
            if (*(v102 + 3) - v103 > 0xCuLL)
            {
              qmemcpy(v103, "di_annotation", 13);
              *(v102 + 4) += 13;
            }

            else
            {
              llvm::raw_ostream::write(v102, "di_annotation", 0xDuLL);
            }

            mlir::LLVM::DIAnnotationAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id)
          {
            v149 = a2;
            v104 = (*(*a3 + 16))(a3);
            v105 = *(v104 + 4);
            if ((*(v104 + 3) - v105) > 0xA)
            {
              *(v105 + 7) = 1701277281;
              *v105 = *"di_subrange";
              *(v104 + 4) += 11;
            }

            else
            {
              llvm::raw_ostream::write(v104, "di_subrange", 0xBuLL);
            }

            mlir::LLVM::DISubrangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id)
          {
            v149 = a2;
            v106 = (*(*a3 + 16))(a3);
            v107 = *(v106 + 4);
            if (*(v106 + 3) - v107 > 0xEuLL)
            {
              qmemcpy(v107, "di_common_block", 15);
              *(v106 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v106, "di_common_block", 0xFuLL);
            }

            mlir::LLVM::DICommonBlockAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id)
          {
            v149 = a2;
            v108 = (*(*a3 + 16))(a3);
            v109 = *(v108 + 4);
            if ((*(v108 + 3) - v109) > 0x12)
            {
              *(v109 + 15) = 1701277281;
              *v109 = *"di_generic_subrange";
              *(v108 + 4) += 19;
            }

            else
            {
              llvm::raw_ostream::write(v108, "di_generic_subrange", 0x13uLL);
            }

            mlir::LLVM::DIGenericSubrangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id)
          {
            v149 = a2;
            v110 = (*(*a3 + 16))(a3);
            v111 = *(v110 + 4);
            if ((*(v110 + 3) - v111) > 0x11)
            {
              *(v111 + 16) = 25968;
              *v111 = *"di_subroutine_type";
              *(v110 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v110, "di_subroutine_type", 0x12uLL);
            }

            mlir::LLVM::DISubroutineTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id)
          {
            v149 = a2;
            v112 = (*(*a3 + 16))(a3);
            v113 = *(v112 + 4);
            if (*(v112 + 3) - v113 > 7uLL)
            {
              *v113 = 0x6C6562616C5F6964;
              *(v112 + 4) += 8;
            }

            else
            {
              llvm::raw_ostream::write(v112, "di_label", 8uLL);
            }

            mlir::LLVM::DILabelAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id)
          {
            v149 = a2;
            v114 = (*(*a3 + 16))(a3);
            v115 = *(v114 + 4);
            if (*(v114 + 3) - v115 > 0xDuLL)
            {
              qmemcpy(v115, "di_string_type", 14);
              *(v114 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v114, "di_string_type", 0xEuLL);
            }

            mlir::LLVM::DIStringTypeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
          {
            v149 = a2;
            v116 = (*(*a3 + 16))(a3);
            v117 = *(v116 + 4);
            if (*(v116 + 3) - v117 > 0xDuLL)
            {
              qmemcpy(v117, "memory_effects", 14);
              *(v116 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v116, "memory_effects", 0xEuLL);
            }

            mlir::LLVM::MemoryEffectsAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id)
          {
            v149 = a2;
            v118 = (*(*a3 + 16))(a3);
            v119 = *(v118 + 4);
            if ((*(v118 + 3) - v119) > 0x11)
            {
              *(v119 + 16) = 28265;
              *v119 = *"alias_scope_domain";
              *(v118 + 4) += 18;
            }

            else
            {
              llvm::raw_ostream::write(v118, "alias_scope_domain", 0x12uLL);
            }

            mlir::LLVM::AliasScopeDomainAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
          {
            v149 = a2;
            v120 = (*(*a3 + 16))(a3);
            v121 = *(v120 + 4);
            if ((*(v120 + 3) - v121) > 0xA)
            {
              *(v121 + 7) = 1701867363;
              *v121 = *"alias_scope";
              *(v120 + 4) += 11;
            }

            else
            {
              llvm::raw_ostream::write(v120, "alias_scope", 0xBuLL);
            }

            mlir::LLVM::AliasScopeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
          {
            v149 = a2;
            v122 = (*(*a3 + 16))(a3);
            v123 = *(v122 + 4);
            if ((*(v122 + 3) - v123) > 0xB)
            {
              *(v123 + 8) = 1886744434;
              *v123 = *"access_group";
              *(v122 + 4) += 12;
            }

            else
            {
              llvm::raw_ostream::write(v122, "access_group", 0xCuLL);
            }

            mlir::LLVM::AccessGroupAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id)
          {
            v149 = a2;
            v124 = (*(*a3 + 16))(a3);
            v125 = *(v124 + 4);
            if ((*(v124 + 3) - v125) > 8)
            {
              *(v125 + 8) = 116;
              *v125 = *"tbaa_root";
              *(v124 + 4) += 9;
            }

            else
            {
              llvm::raw_ostream::write(v124, "tbaa_root", 9uLL);
            }

            mlir::LLVM::TBAARootAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id)
          {
            v149 = a2;
            v126 = (*(*a3 + 16))(a3);
            v127 = *(v126 + 4);
            if ((*(v126 + 3) - v127) > 0xA)
            {
              *(v127 + 7) = 1919246957;
              *v127 = *"tbaa_member";
              *(v126 + 4) += 11;
            }

            else
            {
              llvm::raw_ostream::write(v126, "tbaa_member", 0xBuLL);
            }

            mlir::LLVM::TBAAMemberAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id)
          {
            v149 = a2;
            v128 = (*(*a3 + 16))(a3);
            v129 = *(v128 + 4);
            if (*(v128 + 3) - v129 > 0xDuLL)
            {
              qmemcpy(v129, "tbaa_type_desc", 14);
              *(v128 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v128, "tbaa_type_desc", 0xEuLL);
            }

            mlir::LLVM::TBAATypeDescriptorAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id)
          {
            v149 = a2;
            v130 = (*(*a3 + 16))(a3);
            v131 = *(v130 + 4);
            if (*(v130 + 3) - v131 > 7uLL)
            {
              *v131 = 0x6761745F61616274;
              *(v130 + 4) += 8;
            }

            else
            {
              llvm::raw_ostream::write(v130, "tbaa_tag", 8uLL);
            }

            mlir::LLVM::TBAATagAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id)
          {
            v149 = a2;
            v132 = (*(*a3 + 16))(a3);
            v133 = *(v132 + 4);
            if (*(v132 + 3) - v133 > 0xDuLL)
            {
              qmemcpy(v133, "constant_range", 14);
              *(v132 + 4) += 14;
            }

            else
            {
              llvm::raw_ostream::write(v132, "constant_range", 0xEuLL);
            }

            mlir::LLVM::ConstantRangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
          {
            v149 = a2;
            v134 = (*(*a3 + 16))(a3);
            v135 = *(v134 + 4);
            if ((*(v134 + 3) - v135) > 0xB)
            {
              *(v135 + 8) = 1701277281;
              *v135 = *"vscale_range";
              *(v134 + 4) += 12;
            }

            else
            {
              llvm::raw_ostream::write(v134, "vscale_range", 0xCuLL);
            }

            mlir::LLVM::VScaleRangeAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
          {
            v149 = a2;
            v136 = (*(*a3 + 16))(a3);
            v137 = *(v136 + 4);
            if (*(v136 + 3) - v137 > 0xEuLL)
            {
              qmemcpy(v137, "target_features", 15);
              *(v136 + 4) += 15;
            }

            else
            {
              llvm::raw_ostream::write(v136, "target_features", 0xFuLL);
            }

            mlir::LLVM::TargetFeaturesAttr::print(&v149, a3);
            return;
          }

          if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id)
          {
            v38 = (*(*a3 + 16))(a3);
            v138 = *(v38 + 4);
            if ((*(v38 + 3) - v138) > 4)
            {
              *(v138 + 4) = 102;
              *v138 = 1701080693;
              v40 = *(v38 + 4) + 5;
              goto LABEL_94;
            }

            v41 = "undef";
            v42 = 5;
          }

          else
          {
            if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id)
            {
              if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
              {
                v149 = a2;
                v140 = (*(*a3 + 16))(a3);
                v141 = *(v140 + 4);
                if (*(v140 + 3) - v141 > 0xCuLL)
                {
                  qmemcpy(v141, "vec_type_hint", 13);
                  *(v140 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v140, "vec_type_hint", 0xDuLL);
                }

                mlir::LLVM::VecTypeHintAttr::print(&v149, a3);
                return;
              }

              if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id)
              {
                if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
                {
                  v149 = a2;
                  v143 = (*(*a3 + 16))(a3);
                  v144 = *(v143 + 4);
                  if ((*(v143 + 3) - v144) > 0xB)
                  {
                    *(v144 + 8) = 1684957547;
                    *v144 = *"tailcallkind";
                    *(v143 + 4) += 12;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v143, "tailcallkind", 0xCuLL);
                  }

                  mlir::LLVM::TailCallKindAttr::print(&v149, a3);
                }

                else if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id)
                {
                  v149 = a2;
                  v145 = (*(*a3 + 16))(a3);
                  v146 = *(v145 + 4);
                  if (*(v145 + 3) - v146 > 0x19uLL)
                  {
                    qmemcpy(v146, "mlir.workgroup_attribution", 26);
                    *(v145 + 4) += 26;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v145, "mlir.workgroup_attribution", 0x1AuLL);
                  }

                  mlir::LLVM::WorkgroupAttributionAttr::print(&v149, a3);
                }

                else if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id)
                {
                  v149 = a2;
                  v147 = (*(*a3 + 16))(a3);
                  v148 = *(v147 + 4);
                  if (*(v147 + 3) - v148 > 7uLL)
                  {
                    *v148 = 0x776F6C667265766FLL;
                    *(v147 + 4) += 8;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v147, "overflow", 8uLL);
                  }

                  mlir::LLVM::IntegerOverflowFlagsAttr::print(&v149, a3);
                }

                else if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
                {
                  v149 = a2;
                  v6 = (*(*a3 + 16))(a3);
                  v7 = *(v6 + 4);
                  if (*(v6 + 3) - v7 > 7uLL)
                  {
                    *v7 = 0x6874616D74736166;
                    *(v6 + 4) += 8;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v6, "fastmath", 8uLL);
                  }

                  mlir::LLVM::FastmathFlagsAttr::print(&v149, a3);
                }

                return;
              }

              v38 = (*(*a3 + 16))(a3);
              v142 = *(v38 + 4);
              if (*(v38 + 3) - v142 <= 3uLL)
              {
                v41 = "zero";
                v42 = 4;
                goto LABEL_97;
              }

              *v142 = 1869768058;
              v40 = *(v38 + 4) + 4;
LABEL_94:
              *(v38 + 4) = v40;
              return;
            }

            v38 = (*(*a3 + 16))(a3);
            v139 = *(v38 + 4);
            if ((*(v38 + 3) - v139) > 5)
            {
              *(v139 + 4) = 28271;
              *v139 = 1936289648;
              v40 = *(v38 + 4) + 6;
              goto LABEL_94;
            }

            v41 = "poison";
            v42 = 6;
          }
        }

        goto LABEL_97;
      }

      v26 = (*(*a3 + 16))(a3);
      v27 = *(v26 + 4);
      if (*(v26 + 3) - v27 > 0xFuLL)
      {
        *v27 = *"framePointerKind";
        *(v26 + 4) += 16;
      }

      else
      {
        llvm::raw_ostream::write(v26, "framePointerKind", 0x10uLL);
      }

      v43 = (*(*a3 + 16))(a3);
      v44 = *(v43 + 4);
      if (*(v43 + 3) == v44)
      {
        llvm::raw_ostream::write(v43, "<", 1uLL);
      }

      else
      {
        *v44 = 60;
        ++*(v43 + 4);
      }

      v47 = a2[1];
      v35 = (*(*a3 + 16))(a3);
      if (v47 > 1)
      {
        if (v47 == 3)
        {
          v36 = "reserved";
          v37 = 8;
        }

        else
        {
          if (v47 != 2)
          {
            goto LABEL_117;
          }

          v36 = "all";
          v37 = 3;
        }
      }

      else
      {
        if (v47)
        {
          if (v47 == 1)
          {
            v48 = "non-leaf";
            v49 = 8;
LABEL_118:
            v52 = *(v35 + 4);
            if (v52 >= *(v35 + 3))
            {
              v35 = llvm::raw_ostream::write(v35, 34);
            }

            else
            {
              *(v35 + 4) = v52 + 1;
              *v52 = 34;
            }

            v53 = llvm::raw_ostream::operator<<(v35, v48, v49);
            v54 = *(v53 + 4);
            if (v54 >= *(v53 + 3))
            {
              llvm::raw_ostream::write(v53, 34);
            }

            else
            {
              *(v53 + 4) = v54 + 1;
              *v54 = 34;
            }

            goto LABEL_92;
          }

LABEL_117:
          v49 = 0;
          v48 = &str_2_25;
          goto LABEL_118;
        }

        v36 = "none";
        v37 = 4;
      }

LABEL_91:
      llvm::raw_ostream::operator<<(v35, v36, v37);
LABEL_92:
      v38 = (*(*a3 + 16))(a3);
      v39 = *(v38 + 4);
      if (*(v38 + 3) != v39)
      {
        *v39 = 62;
        v40 = *(v38 + 4) + 1;
        goto LABEL_94;
      }

      v41 = ">";
      v42 = 1;
LABEL_97:

      llvm::raw_ostream::write(v38, v41, v42);
      return;
    }

    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 6uLL)
    {
      *(v15 + 3) = 1701273963;
      *v15 = 1802398060;
      *(v14 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v14, "linkage", 7uLL);
    }

    v28 = (*(*a3 + 16))(a3);
    v29 = *(v28 + 4);
    if (*(v28 + 3) == v29)
    {
      llvm::raw_ostream::write(v28, "<", 1uLL);
    }

    else
    {
      *v29 = 60;
      ++*(v28 + 4);
    }

    v32 = a2[1];
    v17 = (*(*a3 + 16))(a3);
    v18 = mlir::LLVM::linkage::stringifyLinkage(v32);
LABEL_90:
    v33 = v18;
    v34 = v19;
    v35 = v17;
    v36 = v33;
    v37 = v34;
    goto LABEL_91;
  }

  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if ((*(v10 + 3) - v11) > 5)
  {
    *(v11 + 4) = 29793;
    *v11 = 1684893539;
    *(v10 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v10, "comdat", 6uLL);
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = a2[1];
  v23 = (*(*a3 + 16))(a3);
  if (v22 > 4)
  {
    v24 = 0;
    v25 = &str_2_25;
  }

  else
  {
    v24 = qword_25D0A0198[v22];
    v25 = off_2799BE918[v22];
  }

  llvm::raw_ostream::operator<<(v23, v25, v24);
}

uint64_t mlir::LLVM::ConstantRangeAttr::parse(uint64_t a1)
{
  v2 = (*(*a1 + 40))(a1);
  v14 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0 || !mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v14) || ((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v14 + 8) & 0x3FFFFFFF;
  v13 = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v12 = 0;
  v11 = v3;
  v10 = 0;
  v6 = mlir::AsmParser::parseInteger<llvm::APInt>(a1, &v12);
  if (v6 & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (mlir::AsmParser::parseInteger<llvm::APInt>(a1, &v10) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    llvm::APInt::sextOrTrunc(&v12, v3, &v8);
    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }

    v12 = v8;
    v13 = v9;
    llvm::APInt::sextOrTrunc(&v10, v3, &v8);
    if (v11 >= 0x41 && v10)
    {
      MEMORY[0x25F891010](v10, 0x1000C8000313F17);
    }

    v10 = v8;
    v11 = v9;
    v7 = (*(*a1 + 32))(a1);
    v4 = mlir::AsmParser::getChecked<mlir::LLVM::ConstantRangeAttr,mlir::MLIRContext *,llvm::APInt &,llvm::APInt &>(a1, v2, *v7, &v12, &v10);
  }

  else
  {
    v4 = 0;
  }

  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x25F891010](v12, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::AsmParser::parseInteger<llvm::APInt>(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v5 = (*(*a1 + 376))(a1, a2);
  if ((v5 & 0x100) == 0)
  {
    v8 = "expected integer value";
    v9 = 259;
    (*(*a1 + 24))(v10, a1, v4, &v8);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::AsmParser::getChecked<mlir::LLVM::ConstantRangeAttr,mlir::MLIRContext *,llvm::APInt &,llvm::APInt &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 8);
  if (v5 > 0x40)
  {
    operator new[]();
  }

  v6 = *a4;
  v7 = *(a5 + 8);
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v8 = *a4;
  v9 = *a5;
  v19 = *a4;
  if (v5 == v7)
  {
    v10 = 1;
  }

  else
  {
    v27 = 257;
    (*(*a1 + 24))(v28, a1, a2, &v23);
    if (*&v28[0])
    {
      mlir::Diagnostic::operator<<<61ul>(v28 + 8, "expected lower and upper to have matching bitwidths but got ");
    }

    LODWORD(v23) = v5;
    v11 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v28, &v23);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<6ul>((v11 + 1), " vs. ");
    }

    LODWORD(v22[0]) = v7;
    v10 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(v12, v22) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  if (v10)
  {
    v13 = *a3;
    v20[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id;
    v20[1] = a3;
    v22[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJRNS_5APIntESE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
    v22[1] = v20;
    v24 = v5;
    v23 = v8;
    v26 = v7;
    v25 = v9;
    memset(v29, 0, sizeof(v29));
    memset(v28, 0, sizeof(v28));
    v30 = 0;
    v31 = 0xFF51AFD7ED558CCDLL;
    v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::APInt>(v28, v28, v29, &v23, &v25);
    v21 = &v23;
    *&v28[0] = &v23;
    *(&v28[0] + 1) = v22;
    v15 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt &,llvm::APInt &>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt &,llvm::APInt &>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }

    if (v24 >= 0x41 && v23)
    {
      MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

llvm::raw_ostream *mlir::LLVM::ConstantRangeAttr::print(mlir::LLVM::ConstantRangeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 1uLL)
  {
    *v5 = 26940;
    *(v4 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v4, "<i", 2uLL);
  }

  v6 = *(*this + 16);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v7 = *(*this + 8);
  v8 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v8, v6, 0, 0, 0);
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

  v11 = *this;
  v22 = *(*this + 16);
  if (v22 > 0x40)
  {
    operator new[]();
  }

  v21 = *(v11 + 8);
  v12 = (*(*a2 + 16))(a2);
  llvm::APInt::print(&v21, v12, 1);
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

  v15 = *this;
  v20 = *(v15 + 32);
  if (v20 > 0x40)
  {
    operator new[]();
  }

  v19 = *(v15 + 24);
  v16 = (*(*a2 + 16))(a2);
  llvm::APInt::print(&v19, v16, 1);
  result = (*(*a2 + 16))(a2);
  v18 = *(result + 4);
  if (*(result + 3) == v18)
  {
    result = llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v18 = 62;
    ++*(result + 4);
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      return MEMORY[0x25F891010](v21, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::Operation::getParentOfType<mlir::FunctionOpInterface>(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      break;
    }

    a1 = *(v3 + 16);
    if (!a1)
    {
      break;
    }

    result = llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v3 + 16));
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t mlir::FieldParser<mlir::BoolAttr,mlir::BoolAttr>::parse(uint64_t a1)
{
  v4 = 0;
  v1 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(a1, &v4);
  v2 = v4;
  if (!v1)
  {
    return 0;
  }

  return v2;
}

uint64_t mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopAnnotationAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 440))(a1, &v11, 0))
  {
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v5 = v11[1], *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v5[2] == 1)
    {
      *a2 = v11;
      v6 = 1;
    }

    else
    {
      *a2 = 0;
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopAnnotationAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(void **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopAnnotationAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopUnrollAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FieldParser<mlir::FusedLoc,mlir::FusedLoc>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 440))(a1, &v11, 0))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5[1] = &v6;
  v6 = v8;
  v7 = 0x600000000;
  v5[0] = a2;
  if ((*(*a2 + 392))(a2, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v5, 0, 0))
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v7)
    {
      llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(a1, &v6);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v3;
  if (v6 != v8)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17LoopVectorizeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(void *a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopVectorizeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopInterleaveAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopInterleaveAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopUnrollAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopUnrollAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20LoopUnrollAndJamAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopUnrollAndJamAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM12LoopLICMAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopLICMAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM18LoopDistributeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopDistributeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopPipelineAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopPipelineAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14LoopPeeledAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopPeeledAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16LoopUnswitchAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::LoopUnswitchAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(**a1 + 32))(*a1);
  mlir::MLIRContext::getOrLoadDialect(*v3, "llvm", 4uLL, v4);
  v5 = (*(*v2 + 40))(v2);
  v14 = 0;
  v15[0] = v2;
  if (((*(*v2 + 448))(v2, &v14, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM15AccessGroupAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v15) & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
  {
    v12 = "invalid kind of attribute specified";
    v13 = 259;
    (*(*v2 + 24))(v15, v2, v5, &v12);
    v7 = v16;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    if (v7)
    {
LABEL_4:
      result = 0;
      goto LABEL_9;
    }

    v6 = 0;
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v10 + 1, 8);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 8 * v10) = v6;
  ++*(v9 + 8);
  result = 1;
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM15AccessGroupAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::AccessGroupAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

void std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::AccessGroupAttr,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::LLVM::AccessGroupAttr>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<unsigned long long>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<unsigned long long>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::DIExpressionElemAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

uint64_t mlir::FieldParser<mlir::LLVM::DIFileAttr,mlir::LLVM::DIFileAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM10DIFileAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::DistinctAttr>(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 440))(a1, &v13, 0))
  {
    v5 = v13;
    v6 = *(*v13 + 136);
    if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
    v8 = 1;
    if (!v7)
    {
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v4, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM10DIFileAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIFileAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<mlir::LLVM::DIFlags,mlir::LLVM::DIFlags>::parse<mlir::AsmParser>(uint64_t a1)
{
  v62[24] = *MEMORY[0x277D85DE8];
  __p = 0;
  v56 = 0;
  v57 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    *&v58[0] = "expected keyword for LLVM DI flags";
    v59 = 259;
    (*(*a1 + 24))(&v60, a1, v2, v58);
LABEL_201:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
    v48 = 0;
    v49 = 0;
    goto LABEL_205;
  }

  v3 = SHIBYTE(v57);
  p_p = __p;
  if (v57 >= 0)
  {
    p_p = &__p;
  }

  if (v57 < 0)
  {
    v3 = v56;
  }

  *&v58[0] = p_p;
  *(&v58[0] + 1) = v3;
  if (v3 == 4 && *p_p == 1869768026)
  {
    v50 = 0;
  }

  else
  {
    v60 = v62;
    v61 = 0x200000000;
    llvm::StringRef::split(v58, &v60, "|", 1uLL, -1, 1);
    if (v61)
    {
      v5 = 0;
      v6 = v60;
      v7 = 16 * v61;
      while (1)
      {
        v53[0] = *v6;
        v8 = llvm::StringRef::trim(v53, " \t\n\v\f\r", 6);
        switch(v9)
        {
          case 4:
            if (*v8 == 812935490)
            {
              goto LABEL_174;
            }

            if (*v8 == 829712706)
            {
              goto LABEL_173;
            }

            goto LABEL_195;
          case 5:
            if (*v8 != 1853188180 || *(v8 + 4) != 107)
            {
              goto LABEL_195;
            }

            v13 = 0x2000000;
            goto LABEL_190;
          case 6:
            if (*v8 == 1818391888 && *(v8 + 4) == 25449)
            {
              v13 = 3;
            }

            else
            {
              if (*v8 != 1952671062 || *(v8 + 4) != 29295)
              {
                goto LABEL_195;
              }

              v13 = 2048;
            }

            goto LABEL_190;
          case 7:
            if (*v8 == 1986622032 && *(v8 + 3) == 1702125942)
            {
LABEL_174:
              v13 = 1;
            }

            else if (*v8 == 1147434822 && *(v8 + 3) == 1818453316)
            {
              v13 = 4;
            }

            else
            {
              if (*v8 != 1953655126 || *(v8 + 3) != 1818326388)
              {
                goto LABEL_195;
              }

              v13 = 32;
            }

            goto LABEL_190;
          case 8:
            switch(*v8)
            {
              case 0x746963696C707845:
                v13 = 128;
                break;
              case 0x646C656946746942:
                v13 = 0x80000;
                break;
              case 0x6E72757465526F4ELL:
                v13 = 0x100000;
                break;
              default:
                goto LABEL_195;
            }

            goto LABEL_190;
          case 9:
            if (*v8 == 0x65746365746F7250 && *(v8 + 8) == 100)
            {
LABEL_173:
              v13 = 2;
            }

            else if (*v8 == 0x73616C436D756E45 && *(v8 + 8) == 115)
            {
              v13 = 0x1000000;
            }

            else
            {
              if (*v8 != 0x6169646E45676942 || *(v8 + 8) != 110)
              {
                goto LABEL_195;
              }

              v13 = 0x8000000;
            }

            goto LABEL_190;
          case 10:
            if (*v8 == 0x6F6C42656C707041 && *(v8 + 8) == 27491)
            {
              v13 = 8;
            }

            else if (*v8 == 0x6963696669747241 && *(v8 + 8) == 27745)
            {
              v13 = 64;
            }

            else if (*v8 == 0x7079746F746F7250 && *(v8 + 8) == 25701)
            {
              v13 = 256;
            }

            else
            {
              if (*v8 != 0x69766972546E6F4ELL || *(v8 + 8) != 27745)
              {
                goto LABEL_195;
              }

              v13 = 0x4000000;
            }

            goto LABEL_190;
          case 12:
            if (*v8 == 0x6465767265736552 && *(v8 + 8) == 880044354)
            {
              v13 = 16;
            }

            else if (*v8 == 0x654D636974617453 && *(v8 + 8) == 1919246957)
            {
              v13 = 4096;
            }

            else
            {
              if (*v8 != 0x6E45656C7474694CLL || *(v8 + 8) != 1851877732)
              {
                goto LABEL_195;
              }

              v13 = 0x10000000;
            }

            goto LABEL_190;
          case 13:
            if (*v8 == 0x6F507463656A624FLL && *(v8 + 5) == 0x7265746E696F5074)
            {
              v13 = 1024;
            }

            else
            {
              if (*v8 != 0x795374726F707845 || *(v8 + 5) != 0x736C6F626D795374)
              {
                goto LABEL_195;
              }

              v13 = 0x8000;
            }

            goto LABEL_190;
          case 15:
            if (*v8 == 0x655265756C61564CLL && *(v8 + 7) == 0x65636E6572656665)
            {
              v13 = 0x2000;
            }

            else if (*v8 == 0x655265756C615652 && *(v8 + 7) == 0x65636E6572656665)
            {
              v13 = 0x4000;
            }

            else
            {
              if (*v8 != 0x7373615065707954 || *(v8 + 7) != 0x65756C6156794273)
              {
                goto LABEL_195;
              }

              v13 = 0x400000;
            }

            goto LABEL_190;
          case 17:
            if (*v8 == 0x73616C43636A624FLL && *(v8 + 8) == 0x74656C706D6F4373 && *(v8 + 16) == 101)
            {
              v13 = 512;
            }

            else if (*v8 == 0x6E49656C676E6953 && *(v8 + 8) == 0x636E617469726568 && *(v8 + 16) == 101)
            {
LABEL_172:
              v13 = 0x10000;
            }

            else if (*v8 == 0x6375646F72746E49 && *(v8 + 8) == 0x6175747269566465 && *(v8 + 16) == 108)
            {
              v13 = 0x40000;
            }

            else
            {
              if (*v8 != 0x736C6C61436C6C41 || *(v8 + 8) != 0x6562697263736544 || *(v8 + 16) != 100)
              {
LABEL_195:
                v5 = 0;
                v47 = 0;
                v46 = 1;
                goto LABEL_196;
              }

              v13 = 0x20000000;
            }

LABEL_190:
            v5 |= v13;
            ++v6;
            v7 -= 16;
            if (!v7)
            {
              goto LABEL_194;
            }

            break;
          case 18:
            if (*v8 != 0x496C617574726956 || *(v8 + 8) != 0x6E6174697265686ELL || *(v8 + 16) != 25955)
            {
              goto LABEL_195;
            }

            goto LABEL_172;
          case 19:
            if (*v8 == 0x656C7069746C754DLL && *(v8 + 8) == 0x6174697265686E49 && *(v8 + 11) == 0x65636E6174697265)
            {
              goto LABEL_172;
            }

            if (*v8 != 0x7373615065707954 || *(v8 + 8) != 0x6572656665527942 || *(v8 + 11) != 0x65636E6572656665)
            {
              goto LABEL_195;
            }

            v13 = 0x800000;
            goto LABEL_190;
          default:
            goto LABEL_195;
        }
      }
    }

    v5 = 0;
LABEL_194:
    v46 = 0;
    v47 = v5 & 0xFFFFFF00;
    v5 = v5;
LABEL_196:
    if (v60 != v62)
    {
      free(v60);
    }

    if (v46)
    {
      *&v53[0] = "invalid LLVM DI flags specification: ";
      v54 = 259;
      (*(*a1 + 24))(&v60, a1, v2, v53);
      if (v60)
      {
        v59 = 260;
        *&v58[0] = &__p;
        mlir::Diagnostic::operator<<(&v61, v58);
      }

      goto LABEL_201;
    }

    v50 = v47 | v5;
  }

  v48 = v50;
  v49 = 0x100000000;
LABEL_205:
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v49 | v48;
}

void mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5[1] = &v6;
  v6 = v8;
  v7 = 0x600000000;
  v5[0] = a2;
  if ((*(*a2 + 392))(a2, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>, v5, 0, 0))
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v7)
    {
      llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, &v6);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v3;
  if (v6 != v8)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::FieldParser<mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16DIExpressionAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::AsmParser::parseInteger<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned int>(unsigned int &)::{lambda(llvm::APInt &)#1}>(a1, a2, v10);
  if ((v5 & 0x100) == 0)
  {
    v8 = "expected integer value";
    v9 = 259;
    (*(*a1 + 24))(v10, a1, v4, &v8);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned int>(unsigned int &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v17 = 1;
  __s2 = 0;
  v7 = (*(**a3 + 376))();
  if (v7 & (v7 >> 8))
  {
    llvm::APInt::sextOrTrunc(&__s2, 0x20u, &v18);
    LimitedValue = llvm::APInt::getLimitedValue(&v18, 0xFFFFFFFFFFFFFFFFLL);
    *a2 = LimitedValue;
    if (v19 >= 0x41 && v18)
    {
      MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      LimitedValue = *a2;
    }

    if (v17 > 0x40)
    {
      operator new[]();
    }

    if (v17)
    {
      v9 = 0xFFFFFFFFFFFFFFFFLL >> -v17;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if ((v9 & LimitedValue) == __s2)
    {
      v10 = 1;
    }

    else
    {
      v14 = "integer value too large";
      v15 = 259;
      (*(*a1 + 24))(&v18, a1, v6, &v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
      v10 = 0;
    }

    v11 = 1;
  }

  else
  {
    v10 = v7;
    v11 = BYTE1(v7);
  }

  if (v17 >= 0x41 && __s2)
  {
    MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 | (v11 << 8);
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DIScopeAttr>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if ((*(*a1 + 440))(a1, &v18, 0))
  {
    v5 = *(*v18 + 136);
    v11 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id;
    if (v11 || (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id ? (v15 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id) : (v15 = 1), v15))
    {
      *a2 = v18;
      v12 = 1;
    }

    else
    {
      *a2 = 0;
      v16 = "invalid kind of attribute specified";
      v17 = 259;
      (*(*a1 + 24))(v19, a1, v4, &v16);
      v12 = (v20 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v16 = 0;
  if ((*(*a1 + 440))(a1, &v16, 0))
  {
    v5 = *(*v16 + 136);
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id)
    {
      *a2 = v16;
      v13 = 1;
    }

    else
    {
      *a2 = 0;
      v14 = "invalid kind of attribute specified";
      v15 = 259;
      (*(*a1 + 24))(v17, a1, v4, &v14);
      v13 = (v18 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    }
  }

  else
  {
    v13 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(v2, &v7))
  {
    return 0;
  }

  v3 = v7;
  v4 = a1[1];
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return 1;
}

uint64_t mlir::FieldParser<mlir::LLVM::DINodeAttr,mlir::LLVM::DINodeAttr>::parse(uint64_t a1)
{
  v4 = 0;
  v1 = mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(a1, &v4);
  v2 = v4;
  if (!v1)
  {
    return 0;
  }

  return v2;
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DINodeAttr>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v30 = 0;
  if ((*(*a1 + 440))(a1, &v30, 0))
  {
    v5 = *(*v30 + 136);
    v23 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id;
    if (v23 || (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id ? (v27 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id) : (v27 = 1), v27))
    {
      *a2 = v30;
      v24 = 1;
    }

    else
    {
      *a2 = 0;
      v28 = "invalid kind of attribute specified";
      v29 = 259;
      (*(*a1 + 24))(v31, a1, v4, &v28);
      v24 = (v32 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

void std::__optional_storage_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::LLVM::DINodeAttr,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::LLVM::DINodeAttr>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM16DIExpressionAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIExpressionAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<std::optional<unsigned int>,std::optional<unsigned int>>::parse(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  v1 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned int>(unsigned int &)::{lambda(llvm::APInt &)#1}>(a1, &v5, &v6);
  if ((v1 & 0x100) != 0)
  {
    if (v1)
    {
      v3 = v5 & 0xFFFFFF00 | 0x100000000;
      v2 = v5;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t mlir::FieldParser<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIGlobalVariableAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIGlobalVariableAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIGlobalVariableAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIGlobalVariableAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::FieldParser<mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DICompileUnitAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17DICompileUnitAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FieldParser<mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubprogramFlags>::parse<mlir::AsmParser>(uint64_t a1)
{
  v36[24] = *MEMORY[0x277D85DE8];
  __p = 0;
  v30 = 0;
  v31 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    *&v32[0] = "expected keyword for LLVM DISubprogram flags";
    v33 = 259;
    (*(*a1 + 24))(&v34, a1, v2, v32);
LABEL_83:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    v23 = 0;
    v24 = 0;
    goto LABEL_85;
  }

  v3 = SHIBYTE(v31);
  p_p = __p;
  if (v31 >= 0)
  {
    p_p = &__p;
  }

  if (v31 < 0)
  {
    v3 = v30;
  }

  *&v32[0] = p_p;
  *(&v32[0] + 1) = v3;
  v34 = v36;
  v35 = 0x200000000;
  llvm::StringRef::split(v32, &v34, "|", 1uLL, -1, 1);
  if (v35)
  {
    v5 = 0;
    v6 = 16 * v35;
    v7 = v34;
    while (1)
    {
      v27[0] = *v7;
      v8 = llvm::StringRef::trim(v27, " \t\n\v\f\r", 6);
      if (v9 > 9)
      {
        switch(v9)
        {
          case 10:
            if (*v8 == 0x6974696E69666544 && *(v8 + 8) == 28271)
            {
              v13 = 8;
            }

            else
            {
              if (*v8 != 0x65726944436A624FLL || *(v8 + 8) != 29795)
              {
LABEL_77:
                v5 = 0;
                v22 = 0;
                v21 = 1;
                goto LABEL_78;
              }

              v13 = 2048;
            }

            break;
          case 11:
            if (*v8 == 0x7472695665727550 && *(v8 + 3) == 0x6C61757472695665)
            {
              v13 = 2;
            }

            else
            {
              if (*v8 != 0x556F546C61636F4CLL || *(v8 + 3) != 0x74696E556F546C61)
              {
                goto LABEL_77;
              }

              v13 = 4;
            }

            break;
          case 14:
            if (*v8 != 0x706275536E69614DLL || *(v8 + 6) != 0x6D6172676F727062)
            {
              goto LABEL_77;
            }

            v13 = 256;
            break;
          default:
            goto LABEL_77;
        }
      }

      else
      {
        switch(v9)
        {
          case 4:
            if (*v8 != 1701999952)
            {
              goto LABEL_77;
            }

            v13 = 32;
            break;
          case 7:
            if (*v8 == 1953655126 && *(v8 + 3) == 1818326388)
            {
              v13 = 1;
            }

            else
            {
              if (*v8 != 1701602628 || *(v8 + 3) != 1684370533)
              {
                goto LABEL_77;
              }

              v13 = 512;
            }

            break;
          case 9:
            if (*v8 == 0x657A696D6974704FLL && *(v8 + 8) == 100)
            {
              v13 = 16;
            }

            else if (*v8 == 0x61746E656D656C45 && *(v8 + 8) == 108)
            {
              v13 = 64;
            }

            else
            {
              if (*v8 != 0x7669737275636552 || *(v8 + 8) != 101)
              {
                goto LABEL_77;
              }

              v13 = 128;
            }

            break;
          default:
            goto LABEL_77;
        }
      }

      v5 |= v13;
      ++v7;
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_76;
      }
    }
  }

  v5 = 0;
LABEL_76:
  v21 = 0;
  v22 = v5 & 0xFFFFFF00;
  v5 = v5;
LABEL_78:
  if (v34 != v36)
  {
    free(v34);
  }

  if (v21)
  {
    *&v27[0] = "invalid LLVM DISubprogram flags specification: ";
    v28 = 259;
    (*(*a1 + 24))(&v34, a1, v2, v27);
    if (v34)
    {
      v33 = 260;
      *&v32[0] = &__p;
      mlir::Diagnostic::operator<<(&v35, v32);
    }

    goto LABEL_83;
  }

  v23 = v22 | v5;
  v24 = 0x100000000;
LABEL_85:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24 | v23;
}

uint64_t mlir::FieldParser<mlir::LLVM::DISubroutineTypeAttr,mlir::LLVM::DISubroutineTypeAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DISubroutineTypeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM17DICompileUnitAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DICompileUnitAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DISubroutineTypeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(void **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DISubroutineTypeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DITypeAttr,6u>,llvm::SmallVector<mlir::LLVM::DITypeAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DITypeAttr>(v2, &v7))
  {
    return 0;
  }

  v3 = v7;
  v4 = a1[1];
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return 1;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::DITypeAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

uint64_t mlir::FieldParser<mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>::parse<mlir::AsmParser>(uint64_t a1)
{
  v22[25] = *MEMORY[0x277D85DE8];
  __p = 0;
  v17 = 0;
  v18 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &__p) & 1) == 0)
  {
    v19[0] = "expected keyword for LLVM ModRefInfo";
    v20 = 259;
    (*(*a1 + 24))(&v21, a1, v2, v19);
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    v5 = 0;
    goto LABEL_26;
  }

  v3 = SHIBYTE(v18);
  p_p = __p;
  if (v18 >= 0)
  {
    p_p = &__p;
  }

  if (v18 < 0)
  {
    v3 = v17;
  }

  if (v3 == 9)
  {
    v9 = *p_p;
    v10 = p_p[8];
    if (v9 == 0x7469727764616572 && v10 == 101)
    {
      v5 = 3;
      goto LABEL_26;
    }

LABEL_23:
    v14 = "invalid LLVM ModRefInfo specification: ";
    v15 = 259;
    (*(*a1 + 24))(&v21, a1, v2, &v14);
    if (v21)
    {
      v20 = 260;
      v19[0] = &__p;
      mlir::Diagnostic::operator<<(v22, v19);
    }

    goto LABEL_25;
  }

  if (v3 == 5)
  {
    v6 = *p_p;
    v7 = p_p[4];
    if (v6 == 1953067639 && v7 == 101)
    {
      v5 = 2;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v3 != 4)
  {
    goto LABEL_23;
  }

  if (*p_p != 1701736302)
  {
    if (*p_p == 1684104562)
    {
      v5 = 1;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v5 = 0;
LABEL_26:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20AliasScopeDomainAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::AliasScopeDomainAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM14AliasScopeAttrEJPNS1_11MLIRContextENS1_9AttributeENS8_20AliasScopeDomainAttrENS1_10StringAttrEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>,llvm::SmallVector<mlir::LLVM::TBAAMemberAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(**a1 + 32))(*a1);
  mlir::MLIRContext::getOrLoadDialect(*v3, "llvm", 4uLL, v4);
  v5 = (*(*v2 + 40))(v2);
  v14 = 0;
  v15[0] = v2;
  if (((*(*v2 + 448))(v2, &v14, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14TBAAMemberAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v15) & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id)
  {
    v12 = "invalid kind of attribute specified";
    v13 = 259;
    (*(*v2 + 24))(v15, v2, v5, &v12);
    v7 = v16;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    if (v7)
    {
LABEL_4:
      result = 0;
      goto LABEL_9;
    }

    v6 = 0;
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v10 + 1, 8);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 8 * v10) = v6;
  ++*(v9 + 8);
  result = 1;
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14TBAAMemberAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::LLVM::TBAAMemberAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::SmallVectorImpl<mlir::LLVM::TBAAMemberAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 8 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 8 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 8 * v9), (*a2 + 8 * v9), 8 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

uint64_t mlir::FieldParser<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr>::parse(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "llvm", 4uLL, v3);
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM22TBAATypeDescriptorAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    v6 = 1;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM22TBAATypeDescriptorAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::TBAATypeDescriptorAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseExpressionArg(mlir::AsmParser &,unsigned long long,llvm::SmallVector<unsigned long long,6u> &)::$_0>(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (*(*a1 + 8) && *a1[1] == 4097 && (v12 = 0, v13 = 0, ((*(*a1[2] + 416))(a1[2], &v12) & 1) != 0))
  {
    AttributeEncoding = llvm::dwarf::getAttributeEncoding(v12, v13);
    v3 = AttributeEncoding;
    v14 = AttributeEncoding;
    if (!AttributeEncoding)
    {
      v4 = a1[2];
      v5 = (*(*v4 + 40))(v4);
      v11[16] = 257;
      (*(*v4 + 24))(&v17, v4, v5, v11);
      if (v17)
      {
        mlir::Diagnostic::operator<<<41ul>(v18, "encountered unknown attribute encoding ");
        if (v17)
        {
          v16 = 261;
          v15[0] = v12;
          v15[1] = v13;
          mlir::Diagnostic::operator<<(v18, v15);
          if (v17)
          {
            mlir::Diagnostic::operator<<<2ul>(v18, "");
          }
        }
      }

LABEL_14:
      v6 = v18[192] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
      goto LABEL_15;
    }
  }

  else
  {
    if ((mlir::AsmParser::parseInteger<unsigned long long>(a1[2], &v14) & 1) == 0)
    {
      v7 = a1[2];
      v8 = (*(*v7 + 40))(v7);
      v16 = 257;
      (*(*v7 + 24))(&v17, v7, v8, v15);
      if (v17)
      {
        mlir::Diagnostic::operator<<<25ul>(v18, "expected integer operand");
      }

      goto LABEL_14;
    }

    v3 = v14;
  }

  llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(*a1, v3);
  v6 = 1;
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE50))
  {
    v1 = llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface>();
    _MergedGlobals_38 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FE50);
  }

  return _MergedGlobals_38;
}

uint64_t llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1FE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE68))
  {
    qword_27FC1FE58 = llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface>();
    unk_27FC1FE60 = v1;
    __cxa_guard_release(&qword_27FC1FE68);
  }

  return qword_27FC1FE58;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DIRecursiveTypeAttrInterface]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::CConvAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::CConvAttrStorage,mlir::LLVM::cconv::CConv>(llvm::function_ref<void ()(mlir::LLVM::detail::CConvAttrStorage *)>,mlir::TypeID,mlir::LLVM::cconv::CConv &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail16CConvAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_9CConvAttrEJNS2_5cconv5CConvEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ComdatAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ComdatAttrStorage,mlir::LLVM::comdat::Comdat>(llvm::function_ref<void ()(mlir::LLVM::detail::ComdatAttrStorage *)>,mlir::TypeID,mlir::LLVM::comdat::Comdat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17ComdatAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10ComdatAttrEJNS2_6comdat6ComdatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LinkageAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LinkageAttrStorage,mlir::LLVM::linkage::Linkage>(llvm::function_ref<void ()(mlir::LLVM::detail::LinkageAttrStorage *)>,mlir::TypeID,mlir::LLVM::linkage::Linkage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18LinkageAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11LinkageAttrEJNS2_7linkage7LinkageEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FramePointerKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::LLVM::framePointerKind::FramePointerKind>(llvm::function_ref<void ()(mlir::LLVM::detail::FramePointerKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::framePointerKind::FramePointerKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27FramePointerKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20FramePointerKindAttrEJNS2_16framePointerKind16FramePointerKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, unsigned int *a6, unsigned int *a7)
{
  v17 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  v12 = *a6;
  v18 = v17;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, v11, a4, (v12 >> 4) ^ (v12 >> 9));
  v14 = *a7;
  v19 = v18;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v13, a4, (v14 >> 4) ^ (v14 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v19, v15, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopVectorizeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopVectorizeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 6);
  v8 = (*a1)[1];
  v9 = **a1;
  v7 = (*a1)[2];
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 64, 3);
  *v4 = 0;
  *(v4 + 8) = v9;
  *(v4 + 24) = v8;
  *(v4 + 40) = v7;
  *(v4 + 56) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24LoopVectorizeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17LoopVectorizeAttrEJNS1_8BoolAttrESD_SD_NS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopInterleaveAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopInterleaveAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopInterleaveAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopInterleaveAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 6);
  v8 = (*a1)[1];
  v9 = **a1;
  v7 = (*a1)[2];
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 64, 3);
  *v4 = 0;
  *(v4 + 8) = v9;
  *(v4 + 24) = v8;
  *(v4 + 40) = v7;
  *(v4 + 56) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopUnrollAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopUnrollAttrEJNS1_8BoolAttrENS1_11IntegerAttrESD_SD_NS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, void *a6, unsigned int *a7, unsigned int *a8)
{
  v15 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(a1, v15, v13, a4, *a6, a7, a8);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAndJamAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 6);
  v8 = (*a1)[1];
  v9 = **a1;
  v7 = (*a1)[2];
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 64, 3);
  *v4 = 0;
  *(v4 + 8) = v9;
  *(v4 + 24) = v8;
  *(v4 + 40) = v7;
  *(v4 + 56) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27LoopUnrollAndJamAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20LoopUnrollAndJamAttrEJNS1_8BoolAttrENS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_SF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::BoolAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopLICMAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopLICMAttrStorage,mlir::BoolAttr,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopLICMAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19LoopLICMAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12LoopLICMAttrEJNS1_8BoolAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopDistributeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopDistributeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v7 = (*a1)[1];
  v8 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 48, 3);
  *v4 = 0;
  *(v4 + 8) = v8;
  *(v4 + 24) = v7;
  *(v4 + 40) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopDistributeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopDistributeAttrEJNS1_8BoolAttrENS2_18LoopAnnotationAttrESE_SE_SE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPipelineAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::BoolAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPipelineAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopPipelineAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopPipelineAttrEJNS1_8BoolAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPeeledAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPeeledAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopPeeledAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopPeeledAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnswitchAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnswitchAttrStorage *)>,mlir::TypeID,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopUnswitchAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopUnswitchAttrEJNS1_8BoolAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] != v2[1])
  {
    return 0;
  }

  if (a2[3] != v2[2])
  {
    return 0;
  }

  if (a2[4] != v2[3])
  {
    return 0;
  }

  if (a2[5] != v2[4])
  {
    return 0;
  }

  if (a2[6] != v2[5])
  {
    return 0;
  }

  if (a2[7] != v2[6])
  {
    return 0;
  }

  if (a2[8] != v2[7])
  {
    return 0;
  }

  if (a2[9] != v2[8])
  {
    return 0;
  }

  if (a2[10] != v2[9])
  {
    return 0;
  }

  if (a2[11] != v2[10])
  {
    return 0;
  }

  if (a2[12] != v2[11])
  {
    return 0;
  }

  if (a2[13] != v2[12])
  {
    return 0;
  }

  if (a2[14] != v2[13])
  {
    return 0;
  }

  v3 = a2[16];
  if (v3 != v2[15])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[15];
  v5 = v2[14];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v21 = **a1;
  v19 = (*a1)[2];
  v20 = (*a1)[1];
  v4 = (*a1)[4];
  v17 = v4;
  v18 = (*a1)[3];
  v5 = (*a1)[6];
  v15 = v5;
  v16 = (*a1)[5];
  v6 = *(*a1 + 15);
  if (v6)
  {
    v7 = *(*a1 + 14);
    v8 = 8 * v6;
    v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v6, 3);
    v10 = v9;
    do
    {
      v11 = *v7++;
      *v10++ = v11;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 136, 3);
  *v12 = 0;
  *(v12 + 8) = v21;
  *(v12 + 24) = v20;
  *(v12 + 40) = v19;
  *(v12 + 56) = v18;
  *(v12 + 72) = v17;
  *(v12 + 88) = v16;
  *(v12 + 104) = v15;
  *(v12 + 120) = v9;
  *(v12 + 128) = v6;
  v13 = a1[1];
  if (*v13)
  {
    (*v13)(*(v13 + 1), v12);
  }

  return v12;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopAnnotationAttrEJNS1_8BoolAttrENS2_17LoopVectorizeAttrENS2_18LoopInterleaveAttrENS2_14LoopUnrollAttrENS2_20LoopUnrollAndJamAttrENS2_12LoopLICMAttrENS2_18LoopDistributeAttrENS2_16LoopPipelineAttrENS2_14LoopPeeledAttrENS2_16LoopUnswitchAttrESD_SD_NS1_8FusedLocESN_NS_8ArrayRefINS2_15AccessGroupAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueEST_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSV_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::AccessGroupAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::AccessGroupAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionElemAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionElemAttrStorage,unsigned int,llvm::ArrayRef<unsigned long long>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionElemAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<unsigned long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 2);
  if (v5)
  {
    v6 = *(*a1 + 1);
    v7 = 8 * v5;
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v5, 3);
    v9 = v8;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v11 = 0;
  *(v11 + 8) = v4;
  *(v11 + 16) = v8;
  *(v11 + 24) = v5;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(*(v12 + 1), v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIExpressionElemAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIExpressionElemAttrEJjNS_8ArrayRefIyEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIExpressionAttrStorage,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIExpressionAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::LLVM::DIExpressionElemAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *(*a1 + 8);
  if (v4)
  {
    v5 = **a1;
    v6 = 8 * v4;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v4, 3);
    v8 = v7;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v10 = 0;
  v10[1] = v7;
  v10[2] = v4;
  v11 = *(a1 + 8);
  if (*v11)
  {
    (*v11)(*(v11 + 8), v10);
  }

  return v10;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIExpressionAttrEJNS_8ArrayRefINS2_20DIExpressionElemAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>,llvm::SmallVector<mlir::LLVM::DIExpressionElemAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(**a1 + 32))(*a1);
  mlir::MLIRContext::getOrLoadDialect(*v3, "llvm", 4uLL, v4);
  v5 = (*(*v2 + 40))(v2);
  v14 = 0;
  v15[0] = v2;
  if (((*(*v2 + 448))(v2, &v14, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIExpressionElemAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v15) & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id)
  {
    v12 = "invalid kind of attribute specified";
    v13 = 259;
    (*(*v2 + 24))(v15, v2, v5, &v12);
    v7 = v16;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    if (v7)
    {
LABEL_4:
      result = 0;
      goto LABEL_9;
    }

    v6 = 0;
  }

  v9 = a1[1];
  v10 = *(v9 + 8);
  if (v10 >= *(v9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v10 + 1, 8);
    LODWORD(v10) = *(v9 + 8);
  }

  *(*v9 + 8 * v10) = v6;
  ++*(v9 + 8);
  result = 1;
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM20DIExpressionElemAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::LLVM::DIExpressionElemAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::DIExpressionElemAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::DIExpressionElemAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIBasicTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIBasicTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIBasicTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 1);
  v5 = *(*a1 + 2);
  v6 = (*a1)[6];
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v7 = 0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 1), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DIBasicTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DIBasicTypeAttrEJjNS1_10StringAttrEyjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(uint64_t a1, void *__dst, char *a3, unsigned int a4, int *a5, unsigned int *a6, unsigned int *a7, char *a8, uint64_t *a9, uint64_t *a10)
{
  v37 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v37, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v38 = v37;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v38, v16, a3, *a5);
  v18 = *a6;
  v39 = v38;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v39, v17, a3, (v18 >> 4) ^ (v18 >> 9));
  v20 = *a7;
  v40 = v39;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v40, v19, a3, (v20 >> 4) ^ (v20 >> 9));
  v41 = v40;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<BOOL>(a1, &v41, v21, a3, *a8);
  v23 = v41;
  v24 = *a9;
  __src = *a9;
  v25 = v22 + 8;
  if (v22 + 8 <= a3)
  {
    *v22 = v24;
  }

  else
  {
    v26 = a3 - v22;
    memcpy(v22, &__src, a3 - v22);
    if (v23)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v27, v28);
      v23 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v27, v28, &v42);
      v29 = v43;
      *(a1 + 64) = v42;
      *(a1 + 80) = v29;
      *(a1 + 96) = v44;
      *(a1 + 112) = v45;
      v23 = 64;
    }

    v25 = (a1 + 8 - v26);
    if (v25 > a3)
    {
      v25 = a1;
    }

    else
    {
      memcpy(a1, &__src + v26, 8 - v26);
    }
  }

  v30 = *a10;
  __src = *a10;
  v31 = v25 + 8;
  if (v25 + 8 <= a3)
  {
    *v25 = v30;
  }

  else
  {
    v32 = a3 - v25;
    memcpy(v25, &__src, a3 - v25);
    if (v23)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v33, v34);
      v23 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v33, v34, &v42);
      v35 = v43;
      *(a1 + 64) = v42;
      *(a1 + 80) = v35;
      *(a1 + 96) = v44;
      *(a1 + 112) = v45;
      v23 = 64;
    }

    v31 = (a1 + 8 - v32);
    if (v31 > a3)
    {
      v31 = a1;
    }

    else
    {
      memcpy(a1, &__src + v32, 8 - v32);
    }
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v23, v31, a3);
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DICompileUnitAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

__n128 mlir::LLVM::detail::DICompileUnitAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  v3 = a2->n128_u32[2];
  v4 = a2[2].n128_u8[0];
  v5 = a2[2].n128_u64[1];
  v6 = a2[3].n128_u64[0];
  v9 = a2[1];
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 64, 3);
  *v7 = 0;
  *(v7 + 8) = v2;
  *(v7 + 16) = v3;
  result = v9;
  *(v7 + 24) = v9;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJNS1_12DistinctAttrEjNS2_10DIFileAttrENS1_10StringAttrEbNS2_14DIEmissionKindENS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DICompileUnitAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJRNS1_12DistinctAttrERjRNS2_10DIFileAttrERNS1_10StringAttrERbRNS2_14DIEmissionKindERNS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESR_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPST_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

_DWORD *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::LLVM::DIFlags>(uint64_t a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 4 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 4 - v8);
      a1 += 4 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v7 = 0;
LABEL_7:
    result = llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v5 = a1;
    v6 = 0;
    while (v6 <= 0x38)
    {
      v7 = v6 + 8;
      v8 = *v5;
      v5 += 2;
      *&__src[v6] = (v8 >> 4) ^ (v8 >> 9);
      v6 += 8;
      if (v5 == a2)
      {
        goto LABEL_7;
      }
    }

    v18[0] = xmmword_25D0A0610;
    v18[1] = xmmword_25D0A0620;
    v18[2] = xmmword_25D0A0630;
    v19 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v18, __src, a3, a4);
    v10 = 64;
    while (v5 != a2)
    {
      v11 = 0;
      do
      {
        v12 = *v5;
        v5 += 2;
        v13 = v11 + 8;
        *&__src[v11] = (v12 >> 4) ^ (v12 >> 9);
        if (v5 == a2)
        {
          break;
        }

        v14 = v11 >= 0x31;
        v11 += 8;
      }

      while (!v14);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v21);
      llvm::hashing::detail::hash_state::mix(v18, __src, v15, v16);
      v10 += v13;
    }

    result = llvm::hashing::detail::hash_state::finalize(v18, v10);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIExpressionAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != *(v2 + 8))
  {
    return 0;
  }

  if (*(a2 + 20) != *(v2 + 3))
  {
    return 0;
  }

  if (*(a2 + 24) != v2[2])
  {
    return 0;
  }

  if (*(a2 + 32) != v2[3])
  {
    return 0;
  }

  if (*(a2 + 40) != *(v2 + 8))
  {
    return 0;
  }

  if (*(a2 + 48) != v2[5])
  {
    return 0;
  }

  if (*(a2 + 56) != v2[6])
  {
    return 0;
  }

  if (*(a2 + 64) != *(v2 + 14))
  {
    return 0;
  }

  if (*(a2 + 72) != v2[8])
  {
    return 0;
  }

  if (*(a2 + 80) != v2[9])
  {
    return 0;
  }

  v3 = *(a2 + 96);
  if (v3 != v2[11])
  {
    return 0;
  }

  if (v3)
  {
    v4 = *(a2 + 88);
    v5 = v2[10];
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  if (*(a2 + 104) != v2[12] || *(a2 + 112) != v2[13] || *(a2 + 120) != v2[14])
  {
    return 0;
  }

  return *(a2 + 128) == v2[15];
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompositeTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompositeTypeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,unsigned int,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags,unsigned long long,unsigned long long,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 3);
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 14);
  v9 = (*a1)[8];
  v20 = (*a1)[9];
  v16 = *(*a1 + 1);
  v17 = *(*a1 + 5);
  v18 = *(*a1 + 7);
  v19 = *(*a1 + 6);
  v10 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, (*a1)[10], (*a1)[11]);
  v12 = v11;
  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 136, 3);
  *v13 = 0;
  *(v13 + 8) = v4;
  *(v13 + 16) = v5;
  *(v13 + 20) = v6;
  *(v13 + 24) = v16;
  *(v13 + 40) = v7;
  *(v13 + 48) = v17;
  *(v13 + 64) = v8;
  *(v13 + 72) = v9;
  *(v13 + 80) = v20;
  *(v13 + 88) = v10;
  *(v13 + 96) = v12;
  *(v13 + 104) = v19;
  *(v13 + 120) = v18;
  v14 = a1[1];
  if (*v14)
  {
    (*v14)(v14[1], v13);
  }

  return v13;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 8 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3, 3);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 8;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DICompositeTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DICompositeTypeAttrEJNS1_12DistinctAttrEbjNS1_10StringAttrENS2_10DIFileAttrEjNS2_11DIScopeAttrENS2_10DITypeAttrENS2_7DIFlagsEyyNS_8ArrayRefINS2_10DINodeAttrEEENS2_16DIExpressionAttrESM_SM_SM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void llvm::operator<<(llvm::raw_ostream *this, unsigned int a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x200000000;
  v4 = a2;
  if ((~a2 & 3) == 0)
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Public", 6);
    v4 = a2 & 0xFFFFFFFC;
LABEL_3:
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_54;
  }

  if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Protected", 9);
  v4 &= ~2u;
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Private", 7);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Bit1", 4);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "FwdDecl", 7);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "AppleBlock", 10);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "ReservedBit4", 12);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Virtual", 7);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Artificial", 10);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Explicit", 8);
  if ((v4 & 0x100) == 0)
  {
LABEL_12:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Prototyped", 10);
  if ((v4 & 0x200) == 0)
  {
LABEL_13:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "ObjcClassComplete", 17);
  if ((v4 & 0x400) == 0)
  {
LABEL_14:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "ObjectPointer", 13);
  if ((v4 & 0x800) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Vector", 6);
  if ((v4 & 0x1000) == 0)
  {
LABEL_16:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "StaticMember", 12);
  if ((v4 & 0x2000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "LValueReference", 15);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "RValueReference", 15);
  if ((v4 & 0x8000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "ExportSymbols", 13);
  if ((v4 & 0x10000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "SingleInheritance", 17);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "MultipleInheritance", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "VirtualInheritance", 18);
  if ((v4 & 0x40000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "IntroducedVirtual", 17);
  if ((v4 & 0x80000) == 0)
  {
LABEL_22:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "BitField", 8);
  if ((v4 & 0x100000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "NoReturn", 8);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "TypePassByValue", 15);
  if ((v4 & 0x800000) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "TypePassByReference", 19);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "EnumClass", 9);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "Thunk", 5);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "NonTrivial", 10);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_80:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "LittleEndian", 12);
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_79:
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "BigEndian", 9);
  if ((v4 & 0x10000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_30:
  if ((v4 & 0x20000000) != 0)
  {
LABEL_31:
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "AllCallsDescribed", 17);
  }

LABEL_32:
  v5 = v23;
  v6 = v24;
  memset(&__p, 0, sizeof(__p));
  if (v24)
  {
    v7 = 16 * v24;
    v8 = v24 - 1;
    v9 = 8;
    v10 = v23 + v7;
    do
    {
      v8 += *(v23 + v9);
      v9 += 16;
      v7 -= 16;
    }

    while (v7);
    std::string::reserve(&__p, v8);
    std::string::append(&__p, *v5, *(v5 + 1));
    if (v6 != 1)
    {
      v11 = v5 + 16;
      do
      {
        std::string::append(&__p, "|", 1uLL);
        v12 = *v11;
        v13 = *(v11 + 1);
        v11 += 16;
        std::string::append(&__p, v12, v13);
      }

      while (v11 != v10);
    }
  }

  if (v23 != v25)
  {
    free(v23);
  }

  if (a2 != 3 && (a2 & (a2 - 1)) != 0)
  {
    v17 = *(this + 4);
    if (v17 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 34);
    }

    else
    {
      *(this + 4) = v17 + 1;
      *v17 = 34;
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

    v20 = llvm::raw_ostream::write(this, p_p, size);
    v21 = *(v20 + 4);
    if (v21 >= *(v20 + 3))
    {
      llvm::raw_ostream::write(v20, 34);
    }

    else
    {
      *(v20 + 4) = v21 + 1;
      *v21 = 34;
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    llvm::raw_ostream::write(this, v14, v15);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = *MEMORY[0x277D85DE8];
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1 || *(a2 + 16) != *(v2 + 1) || *(a2 + 24) != *(v2 + 2) || *(a2 + 32) != *(v2 + 3) || *(a2 + 40) != v2[8] || *(a2 + 48) != *(v2 + 5))
  {
    return 0;
  }

  v3 = *(a2 + 60);
  v4 = *(v2 + 52);
  if (v3 == v4 && v3 != 0)
  {
    v3 = *(a2 + 56);
    v4 = v2[12];
  }

  return v3 == v4 && *(a2 + 64) == *(v2 + 7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIDerivedTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIDerivedTypeAttrStorage,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIDerivedTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,mlir::LLVM::DITypeAttr,unsigned long long,unsigned int,unsigned long long,std::optional<unsigned int>,mlir::LLVM::DINodeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 3);
  v5 = (*a1)[8];
  v6 = *(*a1 + 7);
  v10 = *(*a1 + 2);
  v11 = *(*a1 + 10);
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 72, 3);
  *v7 = 0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v10;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v11;
  *(v7 + 64) = v6;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 1), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DIDerivedTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DIDerivedTypeAttrEJjNS1_10StringAttrENS2_10DITypeAttrEyjyNSt3__18optionalIjEENS2_10DINodeAttrEEEENSF_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, _DWORD *a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(a1, v10, v8, a3, a5);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIFileAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIFileAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17DIFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10DIFileAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DIExpressionAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail37DIGlobalVariableExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_30DIGlobalVariableExpressionAttrEJNS2_20DIGlobalVariableAttrENS2_16DIExpressionAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGlobalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGlobalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::LLVM::DITypeAttr,BOOL,BOOL,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 5);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 13);
  v10 = (*a1)[1];
  v11 = **a1;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 64, 3);
  *v7 = 0;
  *(v7 + 8) = v11;
  *(v7 + 24) = v10;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v7 + 60) = v6;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 1), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIGlobalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIGlobalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrESE_NS2_10DIFileAttrEjNS2_10DITypeAttrEbbjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, int *a6, int *a7)
{
  v16 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v13 = *a5;
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v12, a3, (v13 >> 4) ^ (v13 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int>(a1, v17, v14, a3, a6, a7);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjSH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, void *a5, int *a6)
{
  v12 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIFileAttr,unsigned int>(a1, v12, v10, a3, *a5, a6);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJNS2_11DIScopeAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int *a7, int *a8, int *a9, unsigned int *a10, int *a11)
{
  v30 = 0;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v30, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v18 = *a5;
  v31 = v30;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v31, v17, a3, (v18 >> 4) ^ (v18 >> 9));
  v20 = *a6;
  v32 = v31;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v32, v19, a3, (v20 >> 4) ^ (v20 >> 9));
  v33 = v32;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v33, v21, a3, *a7);
  v23 = *a8;
  v34 = v33;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v34, v22, a3, v23);
  v35 = v34;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v35, v24, a3, *a9);
  v26 = *a10;
  v36 = v35;
  v27 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v36, v25, a3, (v26 >> 4) ^ (v26 >> 9));
  v37 = v36;
  v28 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::LLVM::DIFlags>(a1, &v37, v27, a3, *a11);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v37, v28, a3);
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DILocalVariableAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

__n128 mlir::LLVM::detail::DILocalVariableAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[0];
  v3 = a2[2].n128_u32[0];
  v4 = a2[2].n128_u64[1];
  v5 = a2[3].n128_u32[0];
  v6 = a2[1].n128_u64[1];
  v9 = *a2;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 64, 3);
  *v7 = 0;
  result = v9;
  *(v7 + 8) = v9;
  *(v7 + 24) = v2;
  *(v7 + 32) = v6;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjjjNS2_10DITypeAttrENS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::LLVM::detail::DILocalVariableAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjSI_SI_RNS2_10DITypeAttrERNS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, unsigned int *a5, uint64_t a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::LLVM::DINodeAttr const*>(a5, &a5[2 * a6], a3, a4);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v10, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != *(v2 + 8))
  {
    return 0;
  }

  if (*(a2 + 24) != v2[2])
  {
    return 0;
  }

  if (*(a2 + 32) != v2[3])
  {
    return 0;
  }

  if (*(a2 + 40) != v2[4])
  {
    return 0;
  }

  if (*(a2 + 48) != v2[5])
  {
    return 0;
  }

  if (*(a2 + 56) != v2[6])
  {
    return 0;
  }

  if (*(a2 + 64) != v2[7])
  {
    return 0;
  }

  if (*(a2 + 72) != *(v2 + 16))
  {
    return 0;
  }

  if (*(a2 + 76) != *(v2 + 17))
  {
    return 0;
  }

  if (*(a2 + 80) != *(v2 + 18))
  {
    return 0;
  }

  if (*(a2 + 88) != v2[10])
  {
    return 0;
  }

  v3 = *(a2 + 104);
  if (v3 != v2[12])
  {
    return 0;
  }

  if (v3)
  {
    v4 = *(a2 + 96);
    v5 = v2[11];
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  v7 = *(a2 + 120);
  if (v7 != v2[14])
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v8 = *(a2 + 112);
  v9 = v2[13];
  v10 = 8 * v7 - 8;
  do
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v8++;
    result = v13 == v11;
    v15 = v13 != v11 || v10 == 0;
    v10 -= 8;
  }

  while (!v15);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubprogramAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubprogramAttrStorage,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubprogramAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,BOOL,mlir::DistinctAttr,mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,mlir::LLVM::DISubprogramFlags,mlir::LLVM::DISubroutineTypeAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 18);
  v7 = (*a1)[10];
  v8 = (*a1)[13];
  v9 = (*a1)[14];
  v10 = (*a1)[8];
  v21 = *(*a1 + 2);
  v22 = *(*a1 + 1);
  v20 = *(*a1 + 3);
  v11 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, (*a1)[11], (*a1)[12]);
  v13 = v12;
  v14 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, v8, v9);
  v16 = v15;
  v17 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 128, 3);
  *v17 = 0;
  *(v17 + 8) = v4;
  *(v17 + 16) = v5;
  *(v17 + 24) = v22;
  *(v17 + 40) = v21;
  *(v17 + 56) = v20;
  *(v17 + 72) = v10;
  *(v17 + 80) = v6;
  *(v17 + 88) = v7;
  *(v17 + 96) = v11;
  *(v17 + 104) = v13;
  *(v17 + 112) = v14;
  *(v17 + 120) = v16;
  v18 = a1[1];
  if (*v18)
  {
    (*v18)(v18[1], v17);
  }

  return v17;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DISubprogramAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DISubprogramAttrEJNS1_12DistinctAttrEbSD_NS2_17DICompileUnitAttrENS2_11DIScopeAttrENS1_10StringAttrESG_NS2_10DIFileAttrEjjNS2_17DISubprogramFlagsENS2_20DISubroutineTypeAttrENS_8ArrayRefINS2_10DINodeAttrEEESM_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIModuleAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIModuleAttrStorage,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DIModuleAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,mlir::StringAttr,unsigned int,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 52);
  v9 = (*a1)[1];
  v10 = **a1;
  v8 = (*a1)[2];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 64, 3);
  *v5 = 0;
  *(v5 + 8) = v10;
  *(v5 + 24) = v9;
  *(v5 + 40) = v8;
  *(v5 + 56) = v3;
  *(v5 + 60) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19DIModuleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12DIModuleAttrEJNS2_10DIFileAttrENS2_11DIScopeAttrENS1_10StringAttrESF_SF_SF_jbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DINamespaceAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DINamespaceAttrStorage,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::DINamespaceAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::LLVM::DIScopeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 16);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22DINamespaceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15DINamespaceAttrEJNS1_10StringAttrENS2_11DIScopeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != *(v2 + 1))
  {
    return 0;
  }

  if (*(a2 + 24) != *(v2 + 2))
  {
    return 0;
  }

  if (*(a2 + 32) != *(v2 + 3))
  {
    return 0;
  }

  if (*(a2 + 40) != v2[8])
  {
    return 0;
  }

  if (*(a2 + 48) != *(v2 + 5))
  {
    return 0;
  }

  v3 = *(a2 + 64);
  if (v3 != *(v2 + 7))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a2 + 56);
  v5 = *(v2 + 6);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIImportedEntityAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIImportedEntityAttrStorage,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DIImportedEntityAttrStorage *)>,mlir::TypeID,unsigned int,mlir::LLVM::DIScopeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::DIFileAttr,unsigned int,mlir::StringAttr,llvm::ArrayRef<mlir::LLVM::DINodeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 3);
  v6 = (*a1)[8];
  v7 = *(*a1 + 5);
  v14 = *(*a1 + 2);
  v8 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::LLVM::DINodeAttr>(a2, *(*a1 + 6), *(*a1 + 7));
  v10 = v9;
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 72, 3);
  *v11 = 0;
  *(v11 + 8) = v4;
  *(v11 + 16) = v14;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  *(v11 + 64) = v10;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(*(v12 + 1), v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DIImportedEntityAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DIImportedEntityAttrEJjNS2_11DIScopeAttrENS2_10DINodeAttrENS2_10DIFileAttrEjNS1_10StringAttrENS_8ArrayRefISE_EEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::StringAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::DIAnnotationAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIAnnotationAttrEJNS1_10StringAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, _DWORD *a7)
{
  v18 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v13 = *a5;
  v19 = v18;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v12, a3, (v13 >> 4) ^ (v13 >> 9));
  v15 = *a6;
  v20 = v19;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, v14, a3, (v15 >> 4) ^ (v15 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute>(a1, v20, v16, a3, a7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = (*a1)[1];
  v7 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v3 = 0;
  *(v3 + 8) = v7;
  *(v3 + 24) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21DISubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14DISubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5, void *a6, int *a7)
{
  v13 = a2;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIFileAttr,unsigned int>(a1, v13, v11, a4, *a6, a7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICommonBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DICommonBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::LLVM::DIGlobalVariableAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 8);
  v7 = (*a1)[1];
  v8 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 48, 3);
  *v4 = 0;
  *(v4 + 8) = v8;
  *(v4 + 24) = v7;
  *(v4 + 40) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICommonBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICommonBlockAttrEJNS2_11DIScopeAttrENS2_20DIGlobalVariableAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIGenericSubrangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>(llvm::function_ref<void ()(mlir::LLVM::detail::DIGenericSubrangeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = (*a1)[1];
  v7 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v3 = 0;
  *(v3 + 8) = v7;
  *(v3 + 24) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail28DIGenericSubrangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_21DIGenericSubrangeAttrEJNS1_9AttributeESD_SD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (v3 != *(v2 + 2))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a2 + 16);
  v5 = *(v2 + 1);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DISubroutineTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DISubroutineTypeAttrStorage,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::DISubroutineTypeAttrStorage *)>,mlir::TypeID,unsigned int,llvm::ArrayRef<mlir::LLVM::DITypeAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 2);
  if (v5)
  {
    v6 = *(*a1 + 1);
    v7 = 8 * v5;
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v5, 3);
    v9 = v8;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v11 = 0;
  *(v11 + 8) = v4;
  *(v11 + 16) = v8;
  *(v11 + 24) = v5;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(*(v12 + 1), v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27DISubroutineTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20DISubroutineTypeAttrEJjNS_8ArrayRefINS2_10DITypeAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, void *a5, void *a6, int *a7)
{
  v14 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v14, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(a1, v14, v12, a3, *a5, a6, a7);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v4 = *(*a1 + 6);
  v8 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJNS2_11DIScopeAttrENS1_10StringAttrENS2_10DIFileAttrEjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v4 = *(*a1 + 6);
  v8 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DIStringTypeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DIStringTypeAttrStorage,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int>(llvm::function_ref<void ()(mlir::LLVM::detail::DIStringTypeAttrStorage *)>,mlir::TypeID,unsigned int,mlir::StringAttr,unsigned long long,unsigned int,mlir::LLVM::DIVariableAttr,mlir::LLVM::DIExpressionAttr,mlir::LLVM::DIExpressionAttr,unsigned int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 1);
  v5 = *(*a1 + 2);
  v6 = (*a1)[6];
  v7 = *(*a1 + 6);
  v8 = (*a1)[14];
  v12 = *(*a1 + 2);
  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 72, 3);
  *v9 = 0;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = a1[1];
  if (*v10)
  {
    (*v10)(*(v10 + 1), v9);
  }

  return v9;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIStringTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIStringTypeAttrEJjNS1_10StringAttrEyjNS2_14DIVariableAttrENS2_16DIExpressionAttrESF_jEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::MemoryEffectsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo>(llvm::function_ref<void ()(mlir::LLVM::detail::MemoryEffectsAttrStorage *)>,mlir::TypeID,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo,mlir::LLVM::ModRefInfo &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v7 = **a1;
  v3 = *(*a1 + 2);
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24MemoryEffectsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17MemoryEffectsAttrEJNS2_10ModRefInfoESD_SD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, _DWORD *a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(a1, v10, v8, a3, a5);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::Attribute,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_9AttributeENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeDomainAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::DistinctAttr,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeDomainAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27AliasScopeDomainAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20AliasScopeDomainAttrEJNS1_12DistinctAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, _DWORD *a6)
{
  v14 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v14, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v11 = *a5;
  v15 = v14;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, v10, a3, (v11 >> 4) ^ (v11 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(a1, v15, v12, a3, a6);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_9AttributeENS2_20AliasScopeDomainAttrENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJRNS1_9AttributeERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr,mlir::LLVM::AliasScopeDomainAttr &,mlir::StringAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_12DistinctAttrERNS2_20AliasScopeDomainAttrERNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AccessGroupAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AccessGroupAttrStorage,mlir::DistinctAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AccessGroupAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22AccessGroupAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15AccessGroupAttrEJNS1_12DistinctAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAARootAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAARootAttrStorage,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAARootAttrStorage *)>,mlir::TypeID,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19TBAARootAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12TBAARootAttrEJNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::TBAANodeAttr,long long>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, uint64_t *a5)
{
  v11 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v12 = v11;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(a1, &v12, v8, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v9, a3);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr,long long>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr,long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJNS2_12TBAANodeAttrExEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr &,long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr &,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJRNS2_12TBAANodeAttrERxEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 != *(*a1 + 8) || v3 && memcmp(*(a2 + 8), *v2, v3))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (v5 != *(v2 + 24))
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = *(a2 + 24);
  v7 = *(v2 + 16);
  v8 = 8 * v5 - 8;
  do
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v6++;
    result = v11 == v9;
    v13 = v11 != v9 || v8 == 0;
    v8 -= 8;
  }

  while (!v13);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATypeDescriptorAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::LLVM::TBAAMemberAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, **a1, *(*a1 + 8));
  v8 = v7;
  if (v4)
  {
    v9 = 8 * v4;
    v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v4, 3);
    v11 = v10;
    do
    {
      v12 = *v5++;
      *v11++ = v12;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v13 = 0;
  v13[1] = v6;
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = v4;
  v14 = *(a1 + 8);
  if (*v14)
  {
    (*v14)(*(v14 + 8), v13);
  }

  return v13;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29TBAATypeDescriptorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22TBAATypeDescriptorAttrEJNS_9StringRefENS_8ArrayRefINS2_14TBAAMemberAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::TBAAMemberAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::TBAAMemberAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAATagAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAATagAttrStorage,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAATagAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAATypeDescriptorAttr,long long,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v4 = *(*a1 + 24);
  v8 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18TBAATagAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11TBAATagAttrEJNS2_22TBAATypeDescriptorAttrESD_xbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::APInt>(llvm::hashing::detail::hash_combine_recursive_helper *a1, const llvm::APInt *a2, unint64_t *a3, llvm::hashing::detail::hash_state **this, llvm::hashing::detail::hash_state **a5)
{
  *v12 = 0;
  v9 = llvm::hash_value(this, a2, a3, this);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, v12, a2, a3, v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt>(a1, *v12, v10, a3, a5);
}

BOOL mlir::LLVM::detail::ConstantRangeAttrStorage::operator==(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 16);
  if (v4 > 0x40)
  {
    if (!memcmp(*(a1 + 8), *a2, ((v4 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*(a1 + 8) != *a2)
  {
    return 0;
  }

LABEL_3:
  v5 = *(a1 + 32);
  if (v5 > 0x40)
  {
    return memcmp(*(a1 + 24), a2[2], ((v5 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    return *(a1 + 24) == a2[2];
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt,llvm::APInt>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 2);
  v5 = **a1;
  *(v3 + 2) = 0;
  v6 = *(v3 + 6);
  v7 = v3[2];
  *(v3 + 6) = 0;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *(v8 + 16) = v4;
  *v8 = 0;
  *(v8 + 8) = v5;
  *(v8 + 32) = v6;
  *(v8 + 24) = v7;
  v9 = a1[1];
  if (*v9)
  {
    (*v9)(v9[1], v8);
  }

  return v8;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJNS_5APIntESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt &,llvm::APInt &>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 2);
  v5 = **a1;
  *(v3 + 2) = 0;
  v6 = *(v3 + 6);
  v7 = v3[2];
  *(v3 + 6) = 0;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *(v8 + 16) = v4;
  *v8 = 0;
  *(v8 + 8) = v5;
  *(v8 + 32) = v6;
  *(v8 + 24) = v7;
  v9 = a1[1];
  if (*v9)
  {
    (*v9)(v9[1], v8);
  }

  return v8;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJRNS_5APIntESE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VScaleRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::IntegerAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::VScaleRangeAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VScaleRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VScaleRangeAttrEJNS1_11IntegerAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::StringAttr>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::StringAttr>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::VecTypeHintAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::TypeAttr,BOOL>(llvm::function_ref<void ()(mlir::LLVM::detail::VecTypeHintAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22VecTypeHintAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15VecTypeHintAttrEJNS1_8TypeAttrEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TailCallKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TailCallKindAttrStorage,mlir::LLVM::tailcallkind::TailCallKind>(llvm::function_ref<void ()(mlir::LLVM::detail::TailCallKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::tailcallkind::TailCallKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23TailCallKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16TailCallKindAttrEJNS2_12tailcallkind12TailCallKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::WorkgroupAttributionAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::IntegerAttr,mlir::TypeAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::WorkgroupAttributionAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr,mlir::TypeAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31WorkgroupAttributionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24WorkgroupAttributionAttrEJNS1_11IntegerAttrENS1_8TypeAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::LLVM::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FastmathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::LLVM::FastmathFlags>(llvm::function_ref<void ()(mlir::LLVM::detail::FastmathFlagsAttrStorage *)>,mlir::TypeID,mlir::LLVM::FastmathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24FastmathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastmathFlagsAttrEJNS2_13FastmathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void mlir::Dialect::addAttribute<mlir::LLVM::CConvAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::CConvAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::ComdatAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::ComdatAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LinkageAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LinkageAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::FramePointerKindAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::FramePointerKindAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopVectorizeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopVectorizeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopInterleaveAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopInterleaveAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopUnrollAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopUnrollAndJamAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAndJamAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopLICMAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopLICMAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopDistributeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopDistributeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopPipelineAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopPipelineAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopPeeledAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopPeeledAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopUnswitchAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopUnswitchAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::LoopAnnotationAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::LoopAnnotationAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIExpressionElemAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionElemAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIExpressionAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id);
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::DINullTypeAttr>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DINullTypeAttr>(a1, &v4);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::DINullTypeAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIBasicTypeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIBasicTypeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DICompileUnitAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DICompileUnitAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DICompositeTypeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DICompositeTypeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIDerivedTypeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIDerivedTypeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIFileAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIFileAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIGlobalVariableExpressionAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableExpressionAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIGlobalVariableAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILexicalBlockAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILexicalBlockFileAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockFileAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILocalVariableAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILocalVariableAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DISubprogramAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DISubprogramAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIModuleAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIModuleAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DINamespaceAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DINamespaceAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIImportedEntityAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIImportedEntityAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIAnnotationAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIAnnotationAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DISubrangeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DISubrangeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DICommonBlockAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DICommonBlockAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIGenericSubrangeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIGenericSubrangeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DISubroutineTypeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DISubroutineTypeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DILabelAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DILabelAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::DIStringTypeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::DIStringTypeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::MemoryEffectsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::MemoryEffectsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::AliasScopeDomainAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeDomainAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::AliasScopeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::AccessGroupAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::AccessGroupAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAARootAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAARootAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAAMemberAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAAMemberAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAATypeDescriptorAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAATypeDescriptorAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TBAATagAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TBAATagAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::ConstantRangeAttr>(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v9[1] = 0x300000000;
  *&v7 = mlir::detail::StorageUserBase<mlir::LLVM::ConstantRangeAttr,mlir::Attribute,mlir::LLVM::detail::ConstantRangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v8 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v9[0] = v10;
  mlir::AbstractAttribute::AbstractAttribute(&v4, a1, v9, &v7, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSD_6detail24ConstantRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSC_6detail24ConstantRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, "llvm.constant_range", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v7);
  mlir::detail::InterfaceMap::~InterfaceMap(v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::VScaleRangeAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::VScaleRangeAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::TargetFeaturesAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TargetFeaturesAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id);
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::UndefAttr>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::UndefAttr>(a1, &v4);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::UndefAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::PoisonAttr>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::PoisonAttr>(a1, &v4);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::PoisonAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Dialect::addAttribute<mlir::LLVM::VecTypeHintAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::VecTypeHintAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id);
}

uint64_t mlir::Dialect::addAttribute<mlir::LLVM::ZeroAttr>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::ZeroAttr>(a1, &v4);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::ZeroAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Dialect::addAttribute<mlir::LLVM::TailCallKindAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::TailCallKindAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::WorkgroupAttributionAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::WorkgroupAttributionAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::IntegerOverflowFlagsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::IntegerOverflowFlagsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id);
}

void mlir::Dialect::addAttribute<mlir::LLVM::FastmathFlagsAttr>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::LLVM::FastmathFlagsAttr>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id);
}

void mlir::AbstractAttribute::get<mlir::LLVM::CConvAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::CConvAttr,mlir::Attribute,mlir::LLVM::detail::CConvAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9CConvAttrES2_NSD_6detail16CConvAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9CConvAttrES2_NSC_6detail16CConvAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id, "llvm.cconv", 10);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::LLVM::ComdatAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::ComdatAttr,mlir::Attribute,mlir::LLVM::detail::ComdatAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10ComdatAttrES2_NSD_6detail17ComdatAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10ComdatAttrES2_NSC_6detail17ComdatAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id, "llvm.comdat", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::LLVM::LinkageAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LinkageAttr,mlir::Attribute,mlir::LLVM::detail::LinkageAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11LinkageAttrES2_NSD_6detail18LinkageAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11LinkageAttrES2_NSC_6detail18LinkageAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id, "llvm.linkage", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::LLVM::FramePointerKindAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::FramePointerKindAttr,mlir::Attribute,mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20FramePointerKindAttrES2_NSD_6detail27FramePointerKindAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20FramePointerKindAttrES2_NSC_6detail27FramePointerKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id, "llvm.framePointerKind", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopVectorizeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopVectorizeAttr,mlir::Attribute,mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSD_6detail24LoopVectorizeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSC_6detail24LoopVectorizeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id, "llvm.loop_vectorize", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSD_6detail24LoopVectorizeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v10 = a2[6];
  v9 = a2[7];
  v11 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v11;
  }

  if (v6)
  {
    (v11)(a4, v6);
    a3 = v11;
  }

  if (v5)
  {
    (v11)(a4, v5);
    a3 = v11;
  }

  if (v8)
  {
    (v11)(a4, v8);
    a3 = v11;
  }

  if (v7)
  {
    (v11)(a4, v7);
    a3 = v11;
  }

  if (v10)
  {
    (v11)(a4, v10);
    a3 = v11;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LoopVectorizeAttrES2_NSC_6detail24LoopVectorizeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (a2[4])
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (a2[5])
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a2[7];
  if (!a2[6])
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = 0;
    return mlir::LLVM::LoopVectorizeAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
  }

  v15 = *a3++;
  v14 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v16 = *a3;
  return mlir::LLVM::LoopVectorizeAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopInterleaveAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopInterleaveAttr,mlir::Attribute,mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSD_6detail25LoopInterleaveAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSC_6detail25LoopInterleaveAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id, "llvm.loop_interleave", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSD_6detail25LoopInterleaveAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopInterleaveAttrES2_NSC_6detail25LoopInterleaveAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::LoopInterleaveAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopUnrollAttr,mlir::Attribute,mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSD_6detail21LoopUnrollAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSC_6detail21LoopUnrollAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id, "llvm.loop_unroll", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSD_6detail21LoopUnrollAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v10 = a2[6];
  v9 = a2[7];
  v11 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v11;
  }

  if (v6)
  {
    (v11)(a4, v6);
    a3 = v11;
  }

  if (v5)
  {
    (v11)(a4, v5);
    a3 = v11;
  }

  if (v8)
  {
    (v11)(a4, v8);
    a3 = v11;
  }

  if (v7)
  {
    (v11)(a4, v7);
    a3 = v11;
  }

  if (v10)
  {
    (v11)(a4, v10);
    a3 = v11;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopUnrollAttrES2_NSC_6detail21LoopUnrollAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (a2[4])
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (a2[5])
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a2[7];
  if (!a2[6])
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = 0;
    return mlir::LLVM::LoopUnrollAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
  }

  v15 = *a3++;
  v14 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v16 = *a3;
  return mlir::LLVM::LoopUnrollAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopUnrollAndJamAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopUnrollAndJamAttr,mlir::Attribute,mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSD_6detail27LoopUnrollAndJamAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSC_6detail27LoopUnrollAndJamAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id, "llvm.loop_unroll_and_jam", 24);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSD_6detail27LoopUnrollAndJamAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v10 = a2[6];
  v9 = a2[7];
  v11 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v11;
  }

  if (v6)
  {
    (v11)(a4, v6);
    a3 = v11;
  }

  if (v5)
  {
    (v11)(a4, v5);
    a3 = v11;
  }

  if (v8)
  {
    (v11)(a4, v8);
    a3 = v11;
  }

  if (v7)
  {
    (v11)(a4, v7);
    a3 = v11;
  }

  if (v10)
  {
    (v11)(a4, v10);
    a3 = v11;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20LoopUnrollAndJamAttrES2_NSC_6detail27LoopUnrollAndJamAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (a2[4])
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (a2[5])
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a2[7];
  if (!a2[6])
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_18:
    v16 = 0;
    return mlir::LLVM::LoopUnrollAndJamAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
  }

  v15 = *a3++;
  v14 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_16:
  v16 = *a3;
  return mlir::LLVM::LoopUnrollAndJamAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v14, v16);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopLICMAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopLICMAttr,mlir::Attribute,mlir::LLVM::detail::LoopLICMAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSD_6detail19LoopLICMAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSC_6detail19LoopLICMAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id, "llvm.loop_licm", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSD_6detail19LoopLICMAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12LoopLICMAttrES2_NSC_6detail19LoopLICMAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::LoopLICMAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopDistributeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopDistributeAttr,mlir::Attribute,mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSD_6detail25LoopDistributeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSC_6detail25LoopDistributeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id, "llvm.loop_distribute", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSD_6detail25LoopDistributeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v9;
  }

  if (v6)
  {
    (v9)(a4, v6);
    a3 = v9;
  }

  if (v5)
  {
    (v9)(a4, v5);
    a3 = v9;
  }

  if (v8)
  {
    (v9)(a4, v8);
    a3 = v9;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopDistributeAttrES2_NSC_6detail25LoopDistributeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (a2[3])
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = a2[5];
  if (!a2[4])
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_12:
    v12 = 0;
    return mlir::LLVM::LoopDistributeAttr::get(*(**a2 + 32), v3, v4, v7, v10, v12);
  }

  v11 = *a3++;
  v10 = v11;
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = *a3;
  return mlir::LLVM::LoopDistributeAttr::get(*(**a2 + 32), v3, v4, v7, v10, v12);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopPipelineAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopPipelineAttr,mlir::Attribute,mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSD_6detail23LoopPipelineAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSC_6detail23LoopPipelineAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id, "llvm.loop_pipeline", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSD_6detail23LoopPipelineAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopPipelineAttrES2_NSC_6detail23LoopPipelineAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::LoopPipelineAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopPeeledAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopPeeledAttr,mlir::Attribute,mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSD_6detail21LoopPeeledAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSC_6detail21LoopPeeledAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id, "llvm.loop_peeled", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSD_6detail21LoopPeeledAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LoopPeeledAttrES2_NSC_6detail21LoopPeeledAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::LoopPeeledAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopUnswitchAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopUnswitchAttr,mlir::Attribute,mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSD_6detail23LoopUnswitchAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSC_6detail23LoopUnswitchAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id, "llvm.loop_unswitch", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSD_6detail23LoopUnswitchAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LoopUnswitchAttrES2_NSC_6detail23LoopUnswitchAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::LoopUnswitchAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::LoopAnnotationAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LoopAnnotationAttr,mlir::Attribute,mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSD_6detail25LoopAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSC_6detail25LoopAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id, "llvm.loop_annotation", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSD_6detail25LoopAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v16 = a2[9];
  v17 = a2[10];
  v18 = a2[11];
  v19 = a2[12];
  v20 = a2[13];
  v13 = a2[15];
  v21 = a2[14];
  v22 = a2[16];
  if (a2[1])
  {
    result = a3(a4);
  }

  if (v7)
  {
    result = (a3)(a4, v7);
  }

  if (v6)
  {
    result = (a3)(a4, v6);
  }

  if (v9)
  {
    result = (a3)(a4, v9);
  }

  if (v8)
  {
    result = (a3)(a4, v8);
  }

  if (v10)
  {
    result = (a3)(a4, v10);
  }

  if (v11)
  {
    result = (a3)(a4, v11);
  }

  if (v12)
  {
    result = (a3)(a4, v12);
  }

  if (v16)
  {
    result = a3(a4);
  }

  if (v17)
  {
    result = a3(a4);
  }

  if (v18)
  {
    result = a3(a4);
  }

  if (v19)
  {
    result = a3(a4);
  }

  if (v20)
  {
    result = a3(a4);
  }

  if (v21)
  {
    result = a3(a4);
  }

  if (v22)
  {
    v15 = 8 * v22;
    do
    {
      if (*v13)
      {
        result = a3(a4);
      }

      ++v13;
      v15 -= 8;
    }

    while (v15);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18LoopAnnotationAttrES2_NSC_6detail25LoopAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4)
  {
    --a4;
    v6 = *a3;
    a3 += 2;
    v4 = v6;
  }

  v7 = *(a2 + 24);
  if (v5)
  {
    --a4;
    v8 = *a3;
    a3 += 2;
    v5 = v8;
  }

  if (v7)
  {
    --a4;
    v9 = *a3;
    a3 += 2;
    v7 = v9;
  }

  if (*(a2 + 32))
  {
    --a4;
    v11 = *a3;
    a3 += 2;
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 40))
  {
    --a4;
    v13 = *a3;
    a3 += 2;
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 48))
  {
    --a4;
    v15 = *a3;
    a3 += 2;
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = *(a2 + 64);
  if (*(a2 + 56))
  {
    --a4;
    v18 = *a3;
    a3 += 2;
    v17 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = *(a2 + 72);
  if (v16)
  {
    --a4;
    v20 = *a3;
    a3 += 2;
    v16 = v20;
  }

  v21 = *(a2 + 80);
  if (v19)
  {
    --a4;
    v22 = *a3;
    a3 += 2;
    v19 = v22;
  }

  v23 = *(a2 + 88);
  if (v21)
  {
    --a4;
    v24 = *a3;
    a3 += 2;
    v21 = v24;
  }

  v25 = *(a2 + 96);
  if (v23)
  {
    --a4;
    v26 = *a3;
    a3 += 2;
    v23 = v26;
  }

  v27 = *(a2 + 104);
  if (v25)
  {
    --a4;
    v28 = *a3;
    a3 += 2;
    v25 = v28;
  }

  v29 = *(a2 + 128);
  if (v27)
  {
    --a4;
    v30 = *a3;
    a3 += 2;
    v27 = v30;
  }

  if (*(a2 + 112))
  {
    --a4;
    v32 = *a3;
    a3 += 2;
    v31 = v32;
  }

  else
  {
    v31 = 0;
  }

  if (a4 < v29)
  {
    v29 = a4;
  }

  *&v35 = v27;
  *(&v35 + 1) = v31;
  *&v34 = v23;
  *(&v34 + 1) = v25;
  return mlir::LLVM::LoopAnnotationAttr::get(*(**a2 + 32), v4, v5, v7, v10, v12, v14, v17, v16, v19, v21, v34, v35, a3, v29);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionElemAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIExpressionElemAttr,mlir::Attribute,mlir::LLVM::detail::DIExpressionElemAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIExpressionElemAttrES2_NSD_6detail27DIExpressionElemAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIExpressionElemAttrES2_NSC_6detail27DIExpressionElemAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionElemAttr,void>::id, "llvm.di_expression_elem", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIExpressionElemAttrES2_NSC_6detail27DIExpressionElemAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v3 = v15;
  v20 = &v22;
  v21 = 0x600000000;
  if (*(&v15 + 1))
  {
    v4 = 8 * *(&v15 + 1);
    do
    {
      v5 = *v3;
      v6 = v21;
      if (v21 >= HIDWORD(v21))
      {
        llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(&v20, v5);
      }

      else
      {
        *(v20 + v21) = v5;
        LODWORD(v21) = v6 + 1;
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
    v16 = &v18;
    v17 = 0x600000000;
    if (v21)
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(&v16, &v20);
    }
  }

  else
  {
    v16 = &v18;
    v17 = 0x600000000;
  }

  if (v20 != &v22)
  {
    free(v20);
  }

  v20 = &v14;
  v21 = v23;
  v22 = 0x600000000;
  if (v17)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v21, &v16);
  }

  if (v16 != &v18)
  {
    free(v16);
  }

  v7 = *(**a2 + 32);
  v8 = v20;
  v16 = v20;
  v17 = v19;
  v18 = 0x600000000;
  if (v22)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v17, &v21);
    v8 = v16;
    v9 = v17;
    v10 = v18;
  }

  else
  {
    v10 = 0;
    v9 = v19;
  }

  v11 = mlir::LLVM::DIExpressionElemAttr::get(v7, *v8, v9, v10);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIExpressionAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIExpressionAttr,mlir::Attribute,mlir::LLVM::detail::DIExpressionAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSD_6detail23DIExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSC_6detail23DIExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id, "llvm.di_expression", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSD_6detail23DIExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 8);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIExpressionAttrES2_NSC_6detail23DIExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, unsigned int *a3, unint64_t *a4)
{
  if (a4 >= a2[4])
  {
    v5 = a2[4];
  }

  else
  {
    v5 = a4;
  }

  return mlir::LLVM::DIExpressionAttr::get(*(**a2 + 32), a3, v5, a4);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DINullTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DINullTypeAttr,mlir::LLVM::DITypeAttr,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DINullTypeAttrENSD_10DITypeAttrENS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DINullTypeAttrENSC_10DITypeAttrENS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DINullTypeAttr,void>::id, "llvm.di_null_type", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::DINullTypeAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM14DINullTypeAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM14DINullTypeAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIBasicTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIBasicTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DIBasicTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSD_10DITypeAttrENSD_6detail22DIBasicTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSC_10DITypeAttrENSC_6detail22DIBasicTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIBasicTypeAttr,void>::id, "llvm.di_basic_type", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSD_10DITypeAttrENSD_6detail22DIBasicTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 16))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DIBasicTypeAttrENSC_10DITypeAttrENSC_6detail22DIBasicTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIBasicTypeAttr::get(*(**a2 + 32), v4, v5, *(a2 + 24), *(a2 + 32));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DICompileUnitAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DICompileUnitAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSD_11DIScopeAttrENSD_6detail24DICompileUnitAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSC_11DIScopeAttrENSC_6detail24DICompileUnitAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, "llvm.di_compile_unit", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSD_11DIScopeAttrENSD_6detail24DICompileUnitAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[3];
  v5 = a2[4];
  v7 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v7;
  }

  if (v6)
  {
    (v7)(a4, v6);
    a3 = v7;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICompileUnitAttrENSC_11DIScopeAttrENSC_6detail24DICompileUnitAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (*(a2 + 8))
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + 32);
  if (v3)
  {
    v7 = *a3++;
    v3 = v7;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (v6)
  {
    v6 = *a3;
  }

  v11 = *(**v4 + 32);
  v12 = *v11;
  v16[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id;
  v16[1] = v11;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24DICompileUnitAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17DICompileUnitAttrEJRNS1_12DistinctAttrERjRNS2_10DIFileAttrERNS1_10StringAttrERbRNS2_14DIEmissionKindERNS2_15DINameTableKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESR_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPST_E_EEvlS5_;
  v24[1] = v16;
  v18 = v4;
  v19 = v8;
  v20 = v3;
  v21 = v6;
  v22[0] = v9;
  v23 = v10;
  memset(v26, 0, sizeof(v26));
  memset(__dst, 0, sizeof(__dst));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::DistinctAttr,unsigned int,mlir::LLVM::DIFileAttr,mlir::StringAttr,BOOL,mlir::LLVM::DIEmissionKind,mlir::LLVM::DINameTableKind>(__dst, __dst, v26, v4, &v19, &v20, &v21, v22, &v23, &v23 + 1);
  v17 = &v18;
  *&__dst[0] = &v18;
  *(&__dst[0] + 1) = v24;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DICompileUnitAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DICompileUnitAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DICompileUnitAttrStorage,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &>(llvm::function_ref<void ()(mlir::LLVM::detail::DICompileUnitAttrStorage *)>,mlir::TypeID,mlir::DistinctAttr &,unsigned int &,mlir::LLVM::DIFileAttr &,mlir::StringAttr &,BOOL &,mlir::LLVM::DIEmissionKind &,mlir::LLVM::DINameTableKind &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DICompositeTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getIsRecSelf;
  v4[1] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getRecId;
  v4[2] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::withRecId;
  v4[3] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getRecSelf;
  v5 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::LLVM::DICompositeTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSD_10DITypeAttrENSD_6detail26DICompositeTypeAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSC_10DITypeAttrENSC_6detail26DICompositeTypeAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::LLVM::DICompositeTypeAttr,void>::id, "llvm.di_composite_type", 22);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::withRecId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = mlir::LLVM::DICompositeTypeAttr::get(*(**a2 + 32), a3, *(a2 + 16), *(a2 + 20), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104), *(a2 + 112), *(a2 + 120), *(a2 + 128));
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v6 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
  }

  return v4;
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DICompositeTypeAttr>::getRecSelf(uint64_t a1)
{
  v1 = mlir::LLVM::DICompositeTypeAttr::get(*(**a1 + 32), a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v2 = v1;
  if (v1)
  {
    v3 = *v1;
    v4 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v3 + 8, v4);
  }

  return v2;
}

BOOL mlir::detail::StorageUserBase<mlir::LLVM::DICompositeTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DICompositeTypeAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1FE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE78))
  {
    v1 = llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>();
    qword_27FC1FE70 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1FE78);
  }

  return qword_27FC1FE70;
}

uint64_t llvm::getTypeName<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE90))
  {
    qword_27FC1FE80 = llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>();
    *algn_27FC1FE88 = v1;
    __cxa_guard_release(&qword_27FC1FE90);
  }

  return qword_27FC1FE80;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<Empty>]";
  v6 = 116;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSD_10DITypeAttrENSD_6detail26DICompositeTypeAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[3];
  v5 = a2[4];
  v8 = a2[6];
  v7 = a2[7];
  v10 = a2[11];
  v9 = a2[12];
  v12 = a2[13];
  v11 = a2[14];
  v13 = a2[15];
  v15 = a2[16];
  v16 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v16;
  }

  if (v6)
  {
    (v16)(a4, v6);
    a3 = v16;
  }

  if (v5)
  {
    (v16)(a4, v5);
    a3 = v16;
  }

  if (v8)
  {
    (v16)(a4, v8);
    a3 = v16;
  }

  if (v7)
  {
    (v16)(a4, v7);
    a3 = v16;
  }

  if (v9)
  {
    v14 = 8 * v9;
    do
    {
      if (*v10)
      {
        v16(a4);
        a3 = v16;
      }

      ++v10;
      v14 -= 8;
    }

    while (v14);
  }

  if (v12)
  {
    (v16)(a4, v12);
    a3 = v16;
  }

  if (v11)
  {
    (v16)(a4, v11);
    a3 = v16;
  }

  if (v13)
  {
    (v16)(a4, v13);
    a3 = v16;
  }

  if (v15)
  {

    a3(a4);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DICompositeTypeAttrENSC_10DITypeAttrENSC_6detail26DICompositeTypeAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4)
{
  v5 = *(a2 + 24);
  if (*(a2 + 8))
  {
    --a4;
    v7 = *a3;
    a3 += 2;
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    --a4;
    v9 = *a3;
    a3 += 2;
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 32))
  {
    --a4;
    v11 = *a3;
    a3 += 2;
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a2 + 96);
  if (*(a2 + 48))
  {
    --a4;
    v14 = *a3;
    a3 += 2;
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  if (*(a2 + 56))
  {
    --a4;
    v16 = *a3;
    a3 += 2;
    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = &a3[2 * v12];
  if (*(a2 + 104))
  {
    v19 = *v17++;
    v18 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = *(a2 + 120);
  if (*(a2 + 112))
  {
    v22 = *v17++;
    v21 = v22;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v23 = *v17++;
    v20 = v23;
  }

  if (*(a2 + 128))
  {
    v24 = *v17;
  }

  else
  {
    v24 = 0;
  }

  if (a4 < v12)
  {
    v12 = a4;
  }

  return mlir::LLVM::DICompositeTypeAttr::get(*(**a2 + 32), v6, *(a2 + 16), *(a2 + 20), v8, v10, *(a2 + 40), v13, v15, *(a2 + 64), *(a2 + 72), *(a2 + 80), a3, v12, v18, v21, v20, v24);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIDerivedTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIDerivedTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DIDerivedTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSD_10DITypeAttrENSD_6detail24DIDerivedTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSC_10DITypeAttrENSC_6detail24DIDerivedTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIDerivedTypeAttr,void>::id, "llvm.di_derived_type", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSD_10DITypeAttrENSD_6detail24DIDerivedTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = a2[3];
  v6 = a2[8];
  v7 = a3;
  if (a2[2])
  {
    a3(a4);
    a3 = v7;
  }

  if (v5)
  {
    (v7)(a4, v5);
    a3 = v7;
  }

  if (v6)
  {

    (a3)(a4, v6);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DIDerivedTypeAttrENSC_10DITypeAttrENSC_6detail24DIDerivedTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  if (*(a2 + 16))
  {
    v3 = a3 + 1;
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 64);
  if (!*(a2 + 24))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    return mlir::LLVM::DIDerivedTypeAttr::get(*(**a2 + 32), *(a2 + 8), v4, v6, *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), v8);
  }

  v7 = *v3++;
  v6 = v7;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = *v3;
  return mlir::LLVM::DIDerivedTypeAttr::get(*(**a2 + 32), *(a2 + 8), v4, v6, *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), v8);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIFileAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIFileAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DIFileAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSD_11DIScopeAttrENSD_6detail17DIFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSC_11DIScopeAttrENSC_6detail17DIFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIFileAttr,void>::id, "llvm.di_file", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSD_11DIScopeAttrENSD_6detail17DIFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10DIFileAttrENSC_11DIScopeAttrENSC_6detail17DIFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIFileAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableExpressionAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIGlobalVariableExpressionAttr,mlir::Attribute,mlir::LLVM::detail::DIGlobalVariableExpressionAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSD_6detail37DIGlobalVariableExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSC_6detail37DIGlobalVariableExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id, "llvm.di_global_variable_expression", 34);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSD_6detail37DIGlobalVariableExpressionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM30DIGlobalVariableExpressionAttrES2_NSC_6detail37DIGlobalVariableExpressionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIGlobalVariableExpressionAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIGlobalVariableAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIGlobalVariableAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIGlobalVariableAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSD_10DINodeAttrENSD_6detail27DIGlobalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSC_10DINodeAttrENSC_6detail27DIGlobalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableAttr,void>::id, "llvm.di_global_variable", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSD_10DINodeAttrENSD_6detail27DIGlobalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  v9 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v9;
  }

  if (v6)
  {
    (v9)(a4, v6);
    a3 = v9;
  }

  if (v5)
  {
    (v9)(a4, v5);
    a3 = v9;
  }

  if (v7)
  {
    (v9)(a4, v7);
    a3 = v9;
  }

  if (v8)
  {

    (a3)(a4, v8);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIGlobalVariableAttrENSC_10DINodeAttrENSC_6detail27DIGlobalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (*(a2 + 24))
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 32))
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 48))
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  return mlir::LLVM::DIGlobalVariableAttr::get(*(**a2 + 32), v3, v4, v7, v9, *(a2 + 40), v11, *(a2 + 56), *(a2 + 57), *(a2 + 60));
}