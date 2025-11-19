void *JSONS::JSONfromGameTask@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v47 = 0;
  v48 = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "is_raytrace_");
  v4 = *(a1 + 228);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineBool(&v39, v4, &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v5 = &v42;
  }

  else
  {
    v5 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v6 = v44;
  }

  else
  {
    v6 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v5, v6);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "is_chest_");
  v7 = *(a1 + 229);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineBool(&v39, v7, &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v8 = &v42;
  }

  else
  {
    v8 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v9 = v44;
  }

  else
  {
    v9 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v8, v9);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "is_vr_task_");
  v10 = *(a1 + 230);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineBool(&v39, v10, &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v11 = &v42;
  }

  else
  {
    v11 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v12 = v44;
  }

  else
  {
    v12 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v11, v12);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "use_fk_orientation_");
  v13 = *(a1 + 231);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineBool(&v39, v13, &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v14 = &v42;
  }

  else
  {
    v14 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v15 = v44;
  }

  else
  {
    v15 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v14, v15);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "is_ls_look_at_");
  v16 = *(a1 + 232);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineBool(&v39, v16, &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v17 = &v42;
  }

  else
  {
    v17 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v18 = v44;
  }

  else
  {
    v18 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v17, v18);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "is_look_at_");
  v19 = *(a1 + 233);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineBool(&v39, v19, &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v20 = &v42;
  }

  else
  {
    v20 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v21 = v44;
  }

  else
  {
    v21 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v20, v21);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "look_at_axis");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineVect(&v39, (a1 + 176), &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v22 = &v42;
  }

  else
  {
    v22 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v23 = v44;
  }

  else
  {
    v23 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v22, v23);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "mesh_offset_");
  v24 = *(a1 + 236);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineReal(&v39, &v36, &v33, 8, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v25 = &v42;
  }

  else
  {
    v25 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v26 = v44;
  }

  else
  {
    v26 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v25, v26);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "motion_controller_offset_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, ",");
  JSONS::JSONLineTransform(&v39, (a1 + 192), &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v27 = &v42;
  }

  else
  {
    v27 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v28 = v44;
  }

  else
  {
    v28 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v27, v28);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, "blend_type_");
  v29 = *(a1 + 224);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v36, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v33, &unk_245A04BAE);
  JSONS::JSONLineTargetBlendType(&v39, v29, &v36, &v33, &v42);
  if ((v44 & 0x80u) == 0)
  {
    v30 = &v42;
  }

  else
  {
    v30 = v42;
  }

  if ((v44 & 0x80u) == 0)
  {
    v31 = v44;
  }

  else
  {
    v31 = v43;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v30, v31);
  if (v44 < 0 && v42)
  {
    (*(*v45 + 24))(v45, v42, 0, 8);
  }

  if (v34 < 0 && v33)
  {
    (*(*v35 + 24))(v35, v33, 0, 8);
  }

  if (v37 < 0 && v36)
  {
    (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  result = JSONS::JSONfromRigTask(a1, __src, a2);
  if (SHIBYTE(v47) < 0)
  {
    if (__src[0])
    {
      return (*(*v48 + 3))(v48, __src[0], 0, 8);
    }
  }

  return result;
}

void *JSONS::JSONfromRigBalanceTask@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, "global_up");
  v4 = *a1;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v14, ",");
  JSONS::JSONLineInt(&v20, v4, &v17, &v14, &v23);
  if ((v25 & 0x80u) == 0)
  {
    v5 = &v23;
  }

  else
  {
    v5 = v23;
  }

  if ((v25 & 0x80u) == 0)
  {
    v6 = v25;
  }

  else
  {
    v6 = v24;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v5, v6);
  if (v25 < 0 && v23)
  {
    (*(*v26 + 24))(v26, v23, 0, 8);
  }

  if (v15 < 0 && v14)
  {
    (*(*v16 + 24))(v16, v14, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, "position_dof");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v14, ",");
  JSONS::JSONLineFromArray<BOOL,3ul>(&v20, (a1 + 4), &v17, &v14, &v23);
  if ((v25 & 0x80u) == 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v7, v8);
  if (v25 < 0 && v23)
  {
    (*(*v26 + 24))(v26, v23, 0, 8);
  }

  if (v15 < 0 && v14)
  {
    (*(*v16 + 24))(v16, v14, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, "precision");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v14, ",");
  JSONS::JSONLineVect(&v20, (a1 + 32), &v17, &v14, &v23);
  if ((v25 & 0x80u) == 0)
  {
    v9 = &v23;
  }

  else
  {
    v9 = v23;
  }

  if ((v25 & 0x80u) == 0)
  {
    v10 = v25;
  }

  else
  {
    v10 = v24;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v9, v10);
  if (v25 < 0 && v23)
  {
    (*(*v26 + 24))(v26, v23, 0, 8);
  }

  if (v15 < 0 && v14)
  {
    (*(*v16 + 24))(v16, v14, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, "weight");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v14, &unk_245A04BAE);
  JSONS::JSONLineVect(&v20, (a1 + 16), &v17, &v14, &v23);
  if ((v25 & 0x80u) == 0)
  {
    v11 = &v23;
  }

  else
  {
    v11 = v23;
  }

  if ((v25 & 0x80u) == 0)
  {
    v12 = v25;
  }

  else
  {
    v12 = v24;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v11, v12);
  if (v25 < 0 && v23)
  {
    (*(*v26 + 24))(v26, v23, 0, 8);
  }

  if (v15 < 0 && v14)
  {
    (*(*v16 + 24))(v16, v14, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "}", 1uLL);
}

void *JSONS::JSONfromSolverSettings@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "balance_moments_enabled_");
  v4 = *(a1 + 52);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineBool(&v54, v4, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v5 = &v57;
  }

  else
  {
    v5 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v6 = v59;
  }

  else
  {
    v6 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v5, v6);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "translate_root");
  v7 = *(a1 + 24);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineBool(&v54, v7, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v8 = &v57;
  }

  else
  {
    v8 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v9 = v59;
  }

  else
  {
    v9 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v8, v9);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "enable_shadow_posing_");
  v10 = *(a1 + 25);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineBool(&v54, v10, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v11 = &v57;
  }

  else
  {
    v11 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v12 = v59;
  }

  else
  {
    v12 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v11, v12);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "combine_errors_");
  v13 = *(a1 + 26);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineBool(&v54, v13, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v14 = &v57;
  }

  else
  {
    v14 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v15 = v59;
  }

  else
  {
    v15 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v14, v15);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "balance_task_type");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineBalanceType(&v54, a1 + 7, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v16 = &v57;
  }

  else
  {
    v16 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v17 = v59;
  }

  else
  {
    v17 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v16, v17);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "balance_use_default_zmp");
  v18 = *(a1 + 53);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineBool(&v54, v18, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v19 = &v57;
  }

  else
  {
    v19 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v20 = v59;
  }

  else
  {
    v20 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v19, v20);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "max_iterations_");
  v21 = a1[3];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineInt(&v54, v21, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v22 = &v57;
  }

  else
  {
    v22 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v23 = v59;
  }

  else
  {
    v23 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v22, v23);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "task_precision_");
  v24 = a1[4];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineReal(&v54, &v51, &v48, 8, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v25 = &v57;
  }

  else
  {
    v25 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v26 = v59;
  }

  else
  {
    v26 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v25, v26);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "balance_figure_mass_");
  v27 = a1[14];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineReal(&v54, &v51, &v48, 8, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v28 = &v57;
  }

  else
  {
    v28 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v29 = v59;
  }

  else
  {
    v29 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v28, v29);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "limits_gain_");
  v30 = a1[5];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineReal(&v54, &v51, &v48, 8, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v31 = &v57;
  }

  else
  {
    v31 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v32 = v59;
  }

  else
  {
    v32 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v31, v32);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "balance_moments_weight_");
  v33 = a1[12];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineReal(&v54, &v51, &v48, 8, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v34 = &v57;
  }

  else
  {
    v34 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v35 = v59;
  }

  else
  {
    v35 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v34, v35);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "p_coeff_");
  v36 = *a1;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineReal(&v54, &v51, &v48, 8, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v37 = &v57;
  }

  else
  {
    v37 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v38 = v59;
  }

  else
  {
    v38 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v37, v38);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "solution_tolerance_");
  v39 = a1[1];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineReal(&v54, &v51, &v48, 8, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v40 = &v57;
  }

  else
  {
    v40 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v41 = v59;
  }

  else
  {
    v41 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v40, v41);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "retargeting_gain_");
  v42 = a1[2];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, ",");
  JSONS::JSONLineReal(&v54, &v51, &v48, 8, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v43 = &v57;
  }

  else
  {
    v43 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v44 = v59;
  }

  else
  {
    v44 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v43, v44);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v54, "balance_zero_moment_point");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v48, &unk_245A04BAE);
  JSONS::JSONLineVect(&v54, a1 + 8, &v51, &v48, &v57);
  if ((v59 & 0x80u) == 0)
  {
    v45 = &v57;
  }

  else
  {
    v45 = v57;
  }

  if ((v59 & 0x80u) == 0)
  {
    v46 = v59;
  }

  else
  {
    v46 = v58;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v45, v46);
  if (v59 < 0 && v57)
  {
    (*(*v60 + 24))(v60, v57, 0, 8);
  }

  if (v49 < 0 && v48)
  {
    (*(*v50 + 24))(v50, v48, 0, 8);
  }

  if (v52 < 0 && v51)
  {
    (*(*v53 + 24))(v53, v51, 0, 8);
  }

  if (v55 < 0 && v54)
  {
    (*(*v56 + 24))(v56, v54, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "}", 1uLL);
}

void *JSONS::JSONFromAimSetup@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v21, "name");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v18, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v15, ",");
  JSONS::JSONLineStr(&v21, a1, &v18, &v15, &v24);
  if ((v26 & 0x80u) == 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v5 = v26;
  }

  else
  {
    v5 = v25;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v4, v5);
  if (v26 < 0 && v24)
  {
    (*(*v27 + 24))(v27, v24, 0, 8);
  }

  if (v16 < 0 && v15)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
  }

  if (v19 < 0 && v18)
  {
    (*(*v20 + 24))(v20, v18, 0, 8);
  }

  if (v22 < 0 && v21)
  {
    (*(*v23 + 24))(v23, v21, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v21, "mode");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v18, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v15, ",");
  JSONS::JSONLineAimingMode(&v21, (a1 + 120), &v18, &v15, &v24);
  if ((v26 & 0x80u) == 0)
  {
    v6 = &v24;
  }

  else
  {
    v6 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v25;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v6, v7);
  if (v26 < 0 && v24)
  {
    (*(*v27 + 24))(v27, v24, 0, 8);
  }

  if (v16 < 0 && v15)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
  }

  if (v19 < 0 && v18)
  {
    (*(*v20 + 24))(v20, v18, 0, 8);
  }

  if (v22 < 0 && v21)
  {
    (*(*v23 + 24))(v23, v21, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v21, "controller_task");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v18, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v15, ",");
  JSONS::JSONLineObject<FIK::Item>(&v21, (a1 + 24), &v18, &v15, 1, &v24);
  if ((v26 & 0x80u) == 0)
  {
    v8 = &v24;
  }

  else
  {
    v8 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v9 = v26;
  }

  else
  {
    v9 = v25;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v8, v9);
  if (v26 < 0 && v24)
  {
    (*(*v27 + 24))(v27, v24, 0, 8);
  }

  if (v16 < 0 && v15)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
  }

  if (v19 < 0 && v18)
  {
    (*(*v20 + 24))(v20, v18, 0, 8);
  }

  if (v22 < 0 && v21)
  {
    (*(*v23 + 24))(v23, v21, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v21, "trigger_hand_tasks");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v18, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v15, ",");
  JSONS::JSONLineIKArrayT<FIK::Item>(&v21, (a1 + 56), &v18, &v15, 1, &v24);
  if ((v26 & 0x80u) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v25;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v10, v11);
  if (v26 < 0 && v24)
  {
    (*(*v27 + 24))(v27, v24, 0, 8);
  }

  if (v16 < 0 && v15)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
  }

  if (v19 < 0 && v18)
  {
    (*(*v20 + 24))(v20, v18, 0, 8);
  }

  if (v22 < 0 && v21)
  {
    (*(*v23 + 24))(v23, v21, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v21, "handle_hand_tasks");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v18, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v15, &unk_245A04BAE);
  JSONS::JSONLineIKArrayT<FIK::Item>(&v21, (a1 + 88), &v18, &v15, 1, &v24);
  if ((v26 & 0x80u) == 0)
  {
    v12 = &v24;
  }

  else
  {
    v12 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v12, v13);
  if (v26 < 0 && v24)
  {
    (*(*v27 + 24))(v27, v24, 0, 8);
  }

  if (v16 < 0 && v15)
  {
    (*(*v17 + 24))(v17, v15, 0, 8);
  }

  if (v19 < 0 && v18)
  {
    (*(*v20 + 24))(v20, v18, 0, 8);
  }

  if (v22 < 0 && v21)
  {
    (*(*v23 + 24))(v23, v21, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a2, 125);
}

void *JSONS::JSONLineObject<FIK::Item>@<X0>(void **a1@<X0>, int *a2@<X1>, const void **a3@<X2>, void **a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  std::operator+[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>(a3, 34, __src);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  v14 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v12, v13);
  v15 = v14[2];
  v16 = v14[3];
  v36 = *v14;
  v37 = v15;
  v38 = v16;
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  v17 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v36, ":", 2uLL);
  v18 = v17[2];
  v19 = v17[3];
  v39 = *v17;
  v40 = v18;
  v41 = v19;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  JSONS::JSONObject<FIK::Item>(a2, v30);
  if ((v31 & 0x80u) == 0)
  {
    v20 = v30;
  }

  else
  {
    v20 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v21 = v31;
  }

  else
  {
    v21 = v30[1];
  }

  v22 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v39, v20, v21);
  v23 = v22[2];
  v24 = v22[3];
  v42 = *v22;
  v43 = v23;
  v44 = v24;
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  v25 = *(a4 + 23);
  if (v25 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  if (v25 >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = a4[1];
  }

  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v42, v26, v27);
  v29 = *result;
  a6[2] = result[2];
  *a6 = v29;
  a6[3] = result[3];
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (SHIBYTE(v43) < 0 && v42)
  {
    result = (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v31 < 0 && v30[0])
  {
    result = (*(*v32 + 24))(v32, v30[0], 0, 8);
  }

  if (SHIBYTE(v40) < 0 && v39)
  {
    result = (*(*v41 + 24))(v41, v39, 0, 8);
  }

  if (SHIBYTE(v37) < 0 && v36)
  {
    result = (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v34 < 0 && __src[0])
  {
    result = (*(*v35 + 24))(v35, __src[0], 0, 8);
  }

  if (a5)
  {
    return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a6, 10);
  }

  return result;
}

void *JSONS::JSONLineIKArrayT<FIK::Item>@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, const void **a3@<X2>, void **a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  std::operator+[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>(a3, 34, __src);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  v14 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v12, v13);
  v15 = v14[2];
  v16 = v14[3];
  v36 = *v14;
  v37 = v15;
  v38 = v16;
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  v17 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v36, ":", 2uLL);
  v18 = v17[2];
  v19 = v17[3];
  v39 = *v17;
  v40 = v18;
  v41 = v19;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  JSONS::JSONIKArray<FIK::Item>(a2, v30);
  if ((v31 & 0x80u) == 0)
  {
    v20 = v30;
  }

  else
  {
    v20 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v21 = v31;
  }

  else
  {
    v21 = v30[1];
  }

  v22 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v39, v20, v21);
  v23 = v22[2];
  v24 = v22[3];
  v42 = *v22;
  v43 = v23;
  v44 = v24;
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  v25 = *(a4 + 23);
  if (v25 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  if (v25 >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = a4[1];
  }

  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v42, v26, v27);
  v29 = *result;
  a6[2] = result[2];
  *a6 = v29;
  a6[3] = result[3];
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (SHIBYTE(v43) < 0 && v42)
  {
    result = (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v31 < 0 && v30[0])
  {
    result = (*(*v32 + 24))(v32, v30[0], 0, 8);
  }

  if (SHIBYTE(v40) < 0 && v39)
  {
    result = (*(*v41 + 24))(v41, v39, 0, 8);
  }

  if (SHIBYTE(v37) < 0 && v36)
  {
    result = (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v34 < 0 && __src[0])
  {
    result = (*(*v35 + 24))(v35, __src[0], 0, 8);
  }

  if (a5)
  {
    return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a6, 10);
  }

  return result;
}

void *JSONS::JSONFromAimSetups@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(a2, "[");
  v4 = *a1;
  if (*a1 < 2)
  {
    if (!v4)
    {
      return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "]", 1uLL);
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    do
    {
      JSONS::JSONFromAimSetup(a1[2] + (v5 << 7), v16);
      v7 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(v16, ",", 1uLL);
      v8 = v7[2];
      v9 = v7[3];
      v19 = *v7;
      v20 = v8;
      v21 = v9;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      if (v20 >= 0)
      {
        v10 = &v19;
      }

      else
      {
        v10 = v19;
      }

      if (v20 >= 0)
      {
        v11 = HIBYTE(v20);
      }

      else
      {
        v11 = *(&v19 + 1);
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v10, v11);
      if (SHIBYTE(v20) < 0 && v19)
      {
        (*(*v21 + 24))(v21, v19, 0, 8);
      }

      if (v17 < 0 && v16[0])
      {
        (*(*v18 + 24))(v18, v16[0], 0, 8);
      }

      v5 = v6;
    }

    while (v4 - 1 > v6++);
  }

  JSONS::JSONFromAimSetup(a1[2] + (v4 << 7) - 128, &v19);
  if (v20 >= 0)
  {
    v13 = &v19;
  }

  else
  {
    v13 = v19;
  }

  if (v20 >= 0)
  {
    v14 = HIBYTE(v20);
  }

  else
  {
    v14 = *(&v19 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v13, v14);
  if (SHIBYTE(v20) < 0 && v19)
  {
    (*(*v21 + 24))(v21, v19, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "]", 1uLL);
}

void *JSONS::JSONfromFootPlacement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v43, "foot_placement_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v40, "{");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v34, &unk_245A04BAE);
  JSONS::JSONLine(v43, v40, v37, v34, &v46);
  if ((v48 & 0x80u) == 0)
  {
    v4 = &v46;
  }

  else
  {
    v4 = v46;
  }

  if ((v48 & 0x80u) == 0)
  {
    v5 = v48;
  }

  else
  {
    v5 = v47;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v4, v5);
  if (v48 < 0 && v46)
  {
    (*(*v49 + 24))(v49, v46, 0, 8);
  }

  if (v35 < 0 && v34[0])
  {
    (*(*v36 + 24))(v36, v34[0], 0, 8);
  }

  if (v38 < 0 && v37[0])
  {
    (*(*v39 + 24))(v39, v37[0], 0, 8);
  }

  if (v41 < 0 && v40[0])
  {
    (*(*v42 + 24))(v42, v40[0], 0, 8);
  }

  if (v44 < 0 && v43[0])
  {
    (*(*v45 + 24))(v45, v43[0], 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v31, "raytracing_task_names");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v28, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v25, ",");
  JSONS::JSONLineIKArrayString(&v31, a1, &v28, &v25, &v46);
  if ((v48 & 0x80u) == 0)
  {
    v6 = &v46;
  }

  else
  {
    v6 = v46;
  }

  if ((v48 & 0x80u) == 0)
  {
    v7 = v48;
  }

  else
  {
    v7 = v47;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v6, v7);
  if (v48 < 0 && v46)
  {
    (*(*v49 + 24))(v49, v46, 0, 8);
  }

  if (v26 < 0 && v25)
  {
    (*(*v27 + 24))(v27, v25, 0, 8);
  }

  if (v29 < 0 && v28)
  {
    (*(*v30 + 24))(v30, v28, 0, 8);
  }

  if (v32 < 0 && v31)
  {
    (*(*v33 + 24))(v33, v31, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v31, "raytracing_tasks");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v28, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v25, ",");
  JSONS::JSONLineIKArray(&v31, (a1 + 32), &v28, &v25, &v46);
  if ((v48 & 0x80u) == 0)
  {
    v8 = &v46;
  }

  else
  {
    v8 = v46;
  }

  if ((v48 & 0x80u) == 0)
  {
    v9 = v48;
  }

  else
  {
    v9 = v47;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v8, v9);
  if (v48 < 0 && v46)
  {
    (*(*v49 + 24))(v49, v46, 0, 8);
  }

  if (v26 < 0 && v25)
  {
    (*(*v27 + 24))(v27, v25, 0, 8);
  }

  if (v29 < 0 && v28)
  {
    (*(*v30 + 24))(v30, v28, 0, 8);
  }

  if (v32 < 0 && v31)
  {
    (*(*v33 + 24))(v33, v31, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v22, "aiming_setups");
  JSONS::JSONFromAimSetups((a1 + 64), v19);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v16, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v13, &unk_245A04BAE);
  JSONS::JSONLine(v22, v19, v16, v13, &v46);
  if ((v48 & 0x80u) == 0)
  {
    v10 = &v46;
  }

  else
  {
    v10 = v46;
  }

  if ((v48 & 0x80u) == 0)
  {
    v11 = v48;
  }

  else
  {
    v11 = v47;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v10, v11);
  if (v48 < 0 && v46)
  {
    (*(*v49 + 24))(v49, v46, 0, 8);
  }

  if (v14 < 0 && v13[0])
  {
    (*(*v15 + 24))(v15, v13[0], 0, 8);
  }

  if (v17 < 0 && v16[0])
  {
    (*(*v18 + 24))(v18, v16[0], 0, 8);
  }

  if (v20 < 0 && v19[0])
  {
    (*(*v21 + 24))(v21, v19[0], 0, 8);
  }

  if (v23 < 0 && v22[0])
  {
    (*(*v24 + 24))(v24, v22[0], 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "}", 1uLL);
}

void *JSONS::JSONfromIKRig@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "rig_type_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineRigType(&v69, (a1 + 48), &v66, &v63, &v72);
  if (v73 >= 0)
  {
    v6 = &v72;
  }

  else
  {
    v6 = v72;
  }

  if (v73 >= 0)
  {
    v7 = HIBYTE(v73);
  }

  else
  {
    v7 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v6, v7);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  v8 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "uid");
  if (*(a1 + 8))
  {
    v9 = *a1;
  }

  else
  {
    v9 = &unk_245A04BAE;
  }

  v60 = 0;
  v61 = 0;
  v62 = FIK::defaultAllocator(v8);
  v10 = strlen(v9);
  IKString::assign(&v60, v9, v10);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineStr(&v69, &v60, &v66, &v63, &v72);
  if (v73 >= 0)
  {
    v11 = &v72;
  }

  else
  {
    v11 = v72;
  }

  if (v73 >= 0)
  {
    v12 = HIBYTE(v73);
  }

  else
  {
    v12 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v11, v12);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (v61)
  {
    (*(*v62 + 3))(v62, v60, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "unit_scale");
  v13 = *(a1 + 24);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineReal(&v69, &v66, &v63, 8, &v72);
  if (v73 >= 0)
  {
    v14 = &v72;
  }

  else
  {
    v14 = v72;
  }

  if (v73 >= 0)
  {
    v15 = HIBYTE(v73);
  }

  else
  {
    v15 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v14, v15);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "up_axis");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineAxis(&v69, (a1 + 28), &v66, &v63, &v72);
  if (v73 >= 0)
  {
    v16 = &v72;
  }

  else
  {
    v16 = v72;
  }

  if (v73 >= 0)
  {
    v17 = HIBYTE(v73);
  }

  else
  {
    v17 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v16, v17);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "forward_axis");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineAxis(&v69, (a1 + 32), &v66, &v63, &v72);
  if (v73 >= 0)
  {
    v18 = &v72;
  }

  else
  {
    v18 = v72;
  }

  if (v73 >= 0)
  {
    v19 = HIBYTE(v73);
  }

  else
  {
    v19 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v18, v19);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "right_axis");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineAxis(&v69, (a1 + 36), &v66, &v63, &v72);
  if (v73 >= 0)
  {
    v20 = &v72;
  }

  else
  {
    v20 = v72;
  }

  if (v73 >= 0)
  {
    v21 = HIBYTE(v73);
  }

  else
  {
    v21 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v20, v21);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "left_handed");
  v22 = *(a1 + 40);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineInt(&v69, v22, &v66, &v63, &v72);
  if (v73 >= 0)
  {
    v23 = &v72;
  }

  else
  {
    v23 = v72;
  }

  if (v73 >= 0)
  {
    v24 = HIBYTE(v73);
  }

  else
  {
    v24 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v23, v24);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, "continuous_solving_");
  v25 = *(a1 + 44);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v66, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v63, ",");
  JSONS::JSONLineBool(&v69, v25, &v66, &v63, &v72);
  if (v73 >= 0)
  {
    v26 = &v72;
  }

  else
  {
    v26 = v72;
  }

  if (v73 >= 0)
  {
    v27 = HIBYTE(v73);
  }

  else
  {
    v27 = *(&v72 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v26, v27);
  if (SHIBYTE(v73) < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v64 < 0 && v63)
  {
    (*(*v65 + 24))(v65, v63, 0, 8);
  }

  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  JSONS::JSONfromRigBalanceTask(a1 + 128, &v72);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v57, "balance_task_");
  v56 = v74;
  if (SHIBYTE(v73) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, v72, *(&v72 + 1));
  }

  else
  {
    __dst = v72;
    v55 = v73;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v51, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v48, ",");
  JSONS::JSONLine(v57, &__dst, v51, v48, &v69);
  if (v70 >= 0)
  {
    v28 = &v69;
  }

  else
  {
    v28 = v69;
  }

  if (v70 >= 0)
  {
    v29 = HIBYTE(v70);
  }

  else
  {
    v29 = *(&v69 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v28, v29);
  if (SHIBYTE(v70) < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v49 < 0 && v48[0])
  {
    (*(*v50 + 24))(v50, v48[0], 0, 8);
  }

  if (v52 < 0 && v51[0])
  {
    (*(*v53 + 24))(v53, v51[0], 0, 8);
  }

  if (SHIBYTE(v55) < 0 && __dst)
  {
    (*(*v56 + 24))(v56, __dst, 0, 8);
  }

  if (v58 < 0 && v57[0])
  {
    (*(*v59 + 24))(v59, v57[0], 0, 8);
  }

  JSONS::JSONfromSolverSettings((a1 + 64), &v69);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v45, "solver_conf_");
  v44 = v71;
  if (SHIBYTE(v70) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v42, v69, *(&v69 + 1));
  }

  else
  {
    v42 = v69;
    v43 = v70;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v39, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v36, &unk_245A04BAE);
  JSONS::JSONLine(v45, &v42, v39, v36, &v66);
  if ((v67 & 0x80u) == 0)
  {
    v30 = &v66;
  }

  else
  {
    v30 = v66;
  }

  if ((v67 & 0x80u) == 0)
  {
    v31 = v67;
  }

  else
  {
    v31 = *(&v66 + 1);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v30, v31);
  if (v67 < 0 && v66)
  {
    (*(*v68 + 24))(v68, v66, 0, 8);
  }

  if (v37 < 0 && v36[0])
  {
    (*(*v38 + 24))(v38, v36[0], 0, 8);
  }

  if (v40 < 0 && v39[0])
  {
    (*(*v41 + 24))(v41, v39[0], 0, 8);
  }

  if (SHIBYTE(v43) < 0 && v42)
  {
    (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v46 < 0 && v45[0])
  {
    (*(*v47 + 24))(v47, v45[0], 0, 8);
  }

  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_207;
    }
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_207;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, ",", 1uLL);
  v32 = *(a2 + 23);
  if (v32 >= 0)
  {
    v33 = a2;
  }

  else
  {
    v33 = *a2;
  }

  if (v32 >= 0)
  {
    v34 = *(a2 + 23);
  }

  else
  {
    v34 = a2[1];
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v33, v34);
LABEL_207:
  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, "}", 1uLL);
  if (SHIBYTE(v70) < 0 && v69)
  {
    result = (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (SHIBYTE(v73) < 0)
  {
    if (v72)
    {
      return (*(*v74 + 24))(v74, v72, 0, 8);
    }
  }

  return result;
}

void *JSONS::JSONfromMoCapRig@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src = 0uLL;
  v89 = 0;
  v90 = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v81, "bones_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v78, "[");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v75, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v72, &unk_245A04BAE);
  JSONS::JSONLine(v81, v78, v75, v72, &v84);
  if ((v86 & 0x80u) == 0)
  {
    v4 = &v84;
  }

  else
  {
    v4 = v84;
  }

  if ((v86 & 0x80u) == 0)
  {
    v5 = v86;
  }

  else
  {
    v5 = v85;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v4, v5);
  if (v86 < 0 && v84)
  {
    (*(*v87 + 24))(v87, v84, 0, 8);
  }

  if (v73 < 0 && v72[0])
  {
    (*(*v74 + 24))(v74, v72[0], 0, 8);
  }

  if (v76 < 0 && v75[0])
  {
    (*(*v77 + 24))(v77, v75[0], 0, 8);
  }

  if (v79 < 0 && v78[0])
  {
    (*(*v80 + 24))(v80, v78[0], 0, 8);
  }

  if (v82 < 0 && v81[0])
  {
    (*(*v83 + 24))(v83, v81[0], 0, 8);
  }

  if (*(a1 + 208))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      JSONS::JSONfromMoCapBone((*(a1 + 224) + v6), &v84);
      if ((v86 & 0x80u) == 0)
      {
        v8 = &v84;
      }

      else
      {
        v8 = v84;
      }

      if ((v86 & 0x80u) == 0)
      {
        v9 = v86;
      }

      else
      {
        v9 = v85;
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v8, v9);
      if (v86 < 0 && v84)
      {
        (*(*v87 + 24))(v87, v84, 0, 8);
      }

      v10 = *(a1 + 208);
      if (v7 < v10 - 1)
      {
        std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
        v10 = *(a1 + 208);
      }

      ++v7;
      v6 += 544;
    }

    while (v7 < v10);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "],", 2uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v69, "sources");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v66, "[");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v63, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v60, &unk_245A04BAE);
  JSONS::JSONLine(v69, v66, v63, v60, &v84);
  if ((v86 & 0x80u) == 0)
  {
    v11 = &v84;
  }

  else
  {
    v11 = v84;
  }

  if ((v86 & 0x80u) == 0)
  {
    v12 = v86;
  }

  else
  {
    v12 = v85;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v11, v12);
  if (v86 < 0 && v84)
  {
    (*(*v87 + 24))(v87, v84, 0, 8);
  }

  if (v61 < 0 && v60[0])
  {
    (*(*v62 + 24))(v62, v60[0], 0, 8);
  }

  if (v64 < 0 && v63[0])
  {
    (*(*v65 + 24))(v65, v63[0], 0, 8);
  }

  if (v67 < 0 && v66[0])
  {
    (*(*v68 + 24))(v68, v66[0], 0, 8);
  }

  if (v70 < 0 && v69[0])
  {
    (*(*v71 + 24))(v71, v69[0], 0, 8);
  }

  if (*(a1 + 240))
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = (*(a1 + 256) + 96 * v13);
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v57, &unk_245A04BAE);
      JSONS::JSONfromRigBoneBase(v15, &v57, &v84);
      if ((v86 & 0x80u) == 0)
      {
        v16 = &v84;
      }

      else
      {
        v16 = v84;
      }

      if ((v86 & 0x80u) == 0)
      {
        v17 = v86;
      }

      else
      {
        v17 = v85;
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v16, v17);
      if (v86 < 0 && v84)
      {
        (*(*v87 + 24))(v87, v84, 0, 8);
      }

      if (v58 < 0 && v57)
      {
        (*(*v59 + 24))(v59, v57, 0, 8);
      }

      v18 = *(a1 + 240);
      if (v18 - 1 > v13)
      {
        std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
        v18 = *(a1 + 240);
      }

      v13 = v14;
      v19 = v18 > v14++;
    }

    while (v19);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "],", 2uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v54, "tasks_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v51, "[");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v48, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v45, &unk_245A04BAE);
  JSONS::JSONLine(v54, v51, v48, v45, &v84);
  if ((v86 & 0x80u) == 0)
  {
    v20 = &v84;
  }

  else
  {
    v20 = v84;
  }

  if ((v86 & 0x80u) == 0)
  {
    v21 = v86;
  }

  else
  {
    v21 = v85;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v20, v21);
  if (v86 < 0 && v84)
  {
    (*(*v87 + 24))(v87, v84, 0, 8);
  }

  if (v46 < 0 && v45[0])
  {
    (*(*v47 + 24))(v47, v45[0], 0, 8);
  }

  if (v49 < 0 && v48[0])
  {
    (*(*v50 + 24))(v50, v48[0], 0, 8);
  }

  if (v52 < 0 && v51[0])
  {
    (*(*v53 + 24))(v53, v51[0], 0, 8);
  }

  if (v55 < 0 && v54[0])
  {
    (*(*v56 + 24))(v56, v54[0], 0, 8);
  }

  if (*(a1 + 176))
  {
    v22 = 0;
    v23 = 1;
    do
    {
      JSONS::JSONfromMoCapTask(*(a1 + 192) + (v22 << 8), &v84);
      if ((v86 & 0x80u) == 0)
      {
        v24 = &v84;
      }

      else
      {
        v24 = v84;
      }

      if ((v86 & 0x80u) == 0)
      {
        v25 = v86;
      }

      else
      {
        v25 = v85;
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v24, v25);
      if (v86 < 0 && v84)
      {
        (*(*v87 + 24))(v87, v84, 0, 8);
      }

      v26 = *(a1 + 176);
      if (v26 - 1 > v22)
      {
        std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
        v26 = *(a1 + 176);
      }

      v22 = v23;
      v19 = v26 > v23++;
    }

    while (v19);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "],", 2uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v57, "source_transform");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v42, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, ",");
  JSONS::JSONLineTransform(&v57, (a1 + 272), &v42, &v39, &v84);
  if ((v86 & 0x80u) == 0)
  {
    v27 = &v84;
  }

  else
  {
    v27 = v84;
  }

  if ((v86 & 0x80u) == 0)
  {
    v28 = v86;
  }

  else
  {
    v28 = v85;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v27, v28);
  if (v86 < 0 && v84)
  {
    (*(*v87 + 24))(v87, v84, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  if (v43 < 0 && v42)
  {
    (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v58 < 0 && v57)
  {
    (*(*v59 + 24))(v59, v57, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v57, "rigid_body_solve");
  v29 = *(a1 + 304);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v42, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, ",");
  JSONS::JSONLineBool(&v57, v29, &v42, &v39, &v84);
  if ((v86 & 0x80u) == 0)
  {
    v30 = &v84;
  }

  else
  {
    v30 = v84;
  }

  if ((v86 & 0x80u) == 0)
  {
    v31 = v86;
  }

  else
  {
    v31 = v85;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v30, v31);
  if (v86 < 0 && v84)
  {
    (*(*v87 + 24))(v87, v84, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  if (v43 < 0 && v42)
  {
    (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v58 < 0 && v57)
  {
    (*(*v59 + 24))(v59, v57, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v57, "source_scale");
  v32 = *(a1 + 308);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v42, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v39, &unk_245A04BAE);
  JSONS::JSONLineReal(&v57, &v42, &v39, 8, &v84);
  if ((v86 & 0x80u) == 0)
  {
    v33 = &v84;
  }

  else
  {
    v33 = v84;
  }

  if ((v86 & 0x80u) == 0)
  {
    v34 = v86;
  }

  else
  {
    v34 = v85;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v33, v34);
  if (v86 < 0 && v84)
  {
    (*(*v87 + 24))(v87, v84, 0, 8);
  }

  if (v40 < 0 && v39)
  {
    (*(*v41 + 24))(v41, v39, 0, 8);
  }

  if (v43 < 0 && v42)
  {
    (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v58 < 0 && v57)
  {
    (*(*v59 + 24))(v59, v57, 0, 8);
  }

  v38 = v90;
  if (SHIBYTE(v89) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v36, __src, *(&__src + 1));
  }

  else
  {
    v36 = __src;
    v37 = v89;
  }

  result = JSONS::JSONfromIKRig(a1, &v36, a2);
  if (SHIBYTE(v37) < 0 && v36)
  {
    result = (*(*v38 + 3))(v38, v36, 0, 8);
  }

  if (SHIBYTE(v89) < 0)
  {
    if (__src)
    {
      return (*(*v90 + 3))(v90, __src, 0, 8);
    }
  }

  return result;
}

void *JSONS::JSONfromGameRig@<X0>(FIK *a1@<X0>, void *a2@<X8>)
{
  __src = 0uLL;
  v58 = 0;
  v59 = FIK::defaultAllocator(a1);
  JSONS::JSONfromFootPlacement(a1 + 240, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v4 = &v53;
  }

  else
  {
    v4 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v5 = v55;
  }

  else
  {
    v5 = v54;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v4, v5);
  if (v55 < 0 && v53)
  {
    (*(*v56 + 24))(v56, v53, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v50, "bones_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v47, "[");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v44, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v41, &unk_245A04BAE);
  JSONS::JSONLine(v50, v47, v44, v41, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v6 = &v53;
  }

  else
  {
    v6 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v7 = v55;
  }

  else
  {
    v7 = v54;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v6, v7);
  if (v55 < 0 && v53)
  {
    (*(*v56 + 24))(v56, v53, 0, 8);
  }

  if (v42 < 0 && v41[0])
  {
    (*(*v43 + 24))(v43, v41[0], 0, 8);
  }

  if (v45 < 0 && v44[0])
  {
    (*(*v46 + 24))(v46, v44[0], 0, 8);
  }

  if (v48 < 0 && v47[0])
  {
    (*(*v49 + 24))(v49, v47[0], 0, 8);
  }

  if (v51 < 0 && v50[0])
  {
    (*(*v52 + 24))(v52, v50[0], 0, 8);
  }

  if (*(a1 + 26))
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = *(a1 + 28) + (v8 << 8);
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v38, &unk_245A04BAE);
      JSONS::JSONfromRigBone(v10, v38, &v53);
      if ((v55 & 0x80u) == 0)
      {
        v11 = &v53;
      }

      else
      {
        v11 = v53;
      }

      if ((v55 & 0x80u) == 0)
      {
        v12 = v55;
      }

      else
      {
        v12 = v54;
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v11, v12);
      if (v55 < 0 && v53)
      {
        (*(*v56 + 24))(v56, v53, 0, 8);
      }

      if (v39 < 0 && v38[0])
      {
        (*(*v40 + 24))(v40, v38[0], 0, 8);
      }

      v13 = *(a1 + 26);
      if (v13 - 1 > v8)
      {
        std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
        v13 = *(a1 + 26);
      }

      v8 = v9;
      v14 = v13 > v9++;
    }

    while (v14);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "],", 2uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v35, "tasks_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v32, "[");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v29, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v26, &unk_245A04BAE);
  JSONS::JSONLine(v35, v32, v29, v26, &v53);
  if ((v55 & 0x80u) == 0)
  {
    v15 = &v53;
  }

  else
  {
    v15 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v16 = v55;
  }

  else
  {
    v16 = v54;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v15, v16);
  if (v55 < 0 && v53)
  {
    (*(*v56 + 24))(v56, v53, 0, 8);
  }

  if (v27 < 0 && v26[0])
  {
    (*(*v28 + 24))(v28, v26[0], 0, 8);
  }

  if (v30 < 0 && v29[0])
  {
    (*(*v31 + 24))(v31, v29[0], 0, 8);
  }

  if (v33 < 0 && v32[0])
  {
    (*(*v34 + 24))(v34, v32[0], 0, 8);
  }

  if (v36 < 0 && v35[0])
  {
    (*(*v37 + 24))(v37, v35[0], 0, 8);
  }

  if (*(a1 + 22))
  {
    v17 = 0;
    v18 = 1;
    do
    {
      JSONS::JSONfromGameTask(*(a1 + 24) + 240 * v17, &v53);
      if ((v55 & 0x80u) == 0)
      {
        v19 = &v53;
      }

      else
      {
        v19 = v53;
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54;
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v19, v20);
      if (v55 < 0 && v53)
      {
        (*(*v56 + 24))(v56, v53, 0, 8);
      }

      v21 = *(a1 + 22);
      if (v21 - 1 > v17)
      {
        std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
        v21 = *(a1 + 22);
      }

      v17 = v18;
      v14 = v21 > v18++;
    }

    while (v14);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "]", 1uLL);
  v25 = v59;
  if (SHIBYTE(v58) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v23, __src, *(&__src + 1));
  }

  else
  {
    v23 = __src;
    v24 = v58;
  }

  result = JSONS::JSONfromIKRig(a1, &v23, a2);
  if (SHIBYTE(v24) < 0 && v23)
  {
    result = (*(*v25 + 3))(v25, v23, 0, 8);
  }

  if (SHIBYTE(v58) < 0)
  {
    if (__src)
    {
      return (*(*v59 + 3))(v59, __src, 0, 8);
    }
  }

  return result;
}

void JSONS::ObjectFromJSON<IKString>(FIK *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if ((*(a2 + 22) & 0x1000) != 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = v5;
  v6 = strlen(v4);

  IKString::assign(a3, v4, v6);
}

void JSONS::ObjectFromJSON<FIK::Item>(uint64_t a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = (a3 + 8);
  *(a3 + 24) = a1;
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a2, "index");
  if ((*(a2 + 1) + 48 * *a2) != Member && (*(Member + 23) & 0x10) != 0)
  {
    v7 = Member[6];
  }

  else
  {
    v7 = -1;
  }

  *a3 = v7;
  v9 = JSONS::StringFromJSON(a2, "name");

  IKString::assign(v5, v9, v8);
}

uint64_t JSONS::ObjectFromJSON<FIK::AimSetup>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  *(a4 + 32) = 0;
  *(a4 + 24) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = a2;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = a2;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = a2;
  *(a4 + 120) = 0;
  v8 = JSONS::StringFromJSON(a3, "name");
  IKString::assign(a4, v8, v9);
  *(a4 + 120) = JSONS::AimingModeFromJSON(a3, "mode");
  *&v24 = 0x405000000000000;
  *(&v23 + 1) = "controller_task";
  *&v23 = 15;
  v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a3, &v23);
  JSONS::ObjectFromJSON<FIK::Item>(a2, v10, &v23);
  *(a4 + 24) = v23;
  IKString::operator=((a4 + 32), &v23 + 8);
  if (v24)
  {
    (*(**(&v24 + 1) + 24))(*(&v24 + 1), *(&v23 + 1), 0, 8);
  }

  JSONS::ArrayFromJSON<FIK::Item>("trigger_hand_tasks", a1, a2, a3, &v21);
  v11 = v21;
  v12 = v22;
  v21 = 0u;
  *&v22 = 0;
  v13 = *(a4 + 56);
  *(a4 + 56) = v11;
  v14 = *(a4 + 72);
  *(a4 + 72) = v12;
  v23 = v13;
  v24 = v14;
  FIK::IKArray<FIK::Item>::~IKArray(&v23);
  FIK::IKArray<FIK::Item>::~IKArray(&v21);
  JSONS::ArrayFromJSON<FIK::Item>("handle_hand_tasks", a1, a2, a3, &v21);
  v15 = v21;
  v16 = v22;
  v21 = 0u;
  *&v22 = 0;
  v17 = *(a4 + 88);
  *(a4 + 88) = v15;
  v18 = *(a4 + 104);
  *(a4 + 104) = v16;
  v23 = v17;
  v24 = v18;
  FIK::IKArray<FIK::Item>::~IKArray(&v23);
  result = FIK::IKArray<FIK::Item>::~IKArray(&v21);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void JSONS::ArrayFromJSON<FIK::Item>(char *__s@<X3>, int *a2@<X0>, uint64_t a3@<X1>, int *a4@<X2>, void *a5@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  if ((*(a4 + 1) + 48 * *a4) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s))
  {
    v19 = __s;
    v20 = 0x405000000000000;
    v18 = strlen(__s);
    v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v18);
    if (*(v10 + 11) == 4 && *v10 != 0)
    {
      v12 = v10;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        JSONS::ObjectFromJSON<FIK::Item>(a3, (v12[1] + v13), &v18);
        v16 = *a2;
        if (*a2)
        {
          v15 = 1;
        }

        else
        {
          FIK::IKArray<FIK::Item>::push_back<FIK::Item&,void>(a5, &v18);
        }

        if (v20)
        {
          (*(*v21 + 24))(v21, v19, 0, 8);
        }

        if (v16)
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v14 >= *v12)
        {
          goto LABEL_17;
        }
      }

      if ((v15 & 1) == 0)
      {
        FIK::IKArray<FIK::Item>::~IKArray(a5);
      }
    }
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t JSONS::FootPlacementFromJSON@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = a2;
  a4[4] = 0;
  a4[5] = 0;
  a4[6] = 0;
  a4[7] = a2;
  a4[8] = 0;
  a4[9] = 0;
  a4[10] = 0;
  a4[11] = a2;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "foot_placement_");
  if (*(a3 + 1) + 48 * *a3 != result)
  {
    *(&v23 + 1) = "foot_placement_";
    *&v24 = 0x405000000000000;
    *&v23 = 15;
    v9 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a3, &v23);
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v9, "raytracing_tasks");
    if (v9[1] + 48 * *v9 != result)
    {
      *(&v23 + 1) = "raytracing_tasks";
      *&v24 = 0x405000000000000;
      *&v23 = 16;
      if ((*(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(v9, &v23) + 11) & 7) == 5)
      {
        JSONS::ArrayFromJSON<IKString>("raytracing_tasks", a1, a2, v9, &v21);
        v23 = 0u;
        v10 = v21;
        v11 = v22;
        v21 = 0u;
        *&v22 = 0;
        *a4 = v10;
        *(a4 + 1) = v11;
        *&v24 = 0;
        *(&v24 + 1) = a2;
      }

      else
      {
        *(&v23 + 1) = "raytracing_tasks";
        *&v24 = 0x405000000000000;
        *&v23 = 16;
        if ((*(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(v9, &v23) + 11) & 7) != 6)
        {
          *(&v23 + 1) = "raytracing_tasks";
          *&v24 = 0x405000000000000;
          *&v23 = 16;
          if ((*(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(v9, &v23) + 11) & 7) != 4)
          {
            goto LABEL_12;
          }
        }

        JSONS::ArrayFromJSON<int>("raytracing_tasks", a1, a2, v9, &v23);
        FIK::IKArray<unsigned int>::operator=((a4 + 4), &v23);
        *&v23 = 0;
        if (v24)
        {
          (*(**(&v24 + 1) + 24))(*(&v24 + 1), v24, 0, 8);
        }

        JSONS::ArrayFromJSON<IKString>("raytracing_task_names", a1, a2, v9, &v21);
        v12 = v21;
        v13 = v22;
        v21 = 0uLL;
        *&v22 = 0;
        v14 = *a4;
        v15 = *(a4 + 1);
        *a4 = v12;
        *(a4 + 1) = v13;
        v23 = v14;
        v24 = v15;
      }

      FIK::IKArray<IKString>::~IKArray(&v23);
      FIK::IKArray<IKString>::~IKArray(&v21);
LABEL_12:
      JSONS::ArrayFromJSON<FIK::AimSetup>("aiming_setups", a1, a2, v9, &v21);
      v16 = v21;
      v17 = v22;
      v21 = 0uLL;
      *&v22 = 0;
      v18 = *(a4 + 4);
      v19 = *(a4 + 5);
      *(a4 + 4) = v16;
      *(a4 + 5) = v17;
      v23 = v18;
      v24 = v19;
      FIK::IKArray<FIK::AimSetup>::~IKArray(&v23);
      result = FIK::IKArray<FIK::AimSetup>::~IKArray(&v21);
      goto LABEL_13;
    }

    *a1 = 3;
  }

LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *JSONS::ArrayFromJSON<int>@<X0>(char *__s@<X3>, _DWORD *a2@<X0>, uint64_t a3@<X1>, unsigned int *a4@<X2>, uint64_t *a5@<X8>)
{
  v19[3] = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s);
  if ((*(a4 + 1) + 48 * *a4) != result)
  {
    v19[1] = __s;
    v19[2] = 0x405000000000000;
    v19[0] = strlen(__s);
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, v19);
    if (*(result + 11) == 4)
    {
      v10 = result;
      if (*result)
      {
        if (!*a2)
        {
          v11 = 0;
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = *(*(v10 + 1) + v11);
            result = FIK::IKArray<unsigned int>::reserve(a5, v12 + 1);
            v15 = *a5;
            *(a5[2] + 4 * *a5) = v14;
            v12 = v15 + 1;
            *a5 = v15 + 1;
            v11 += 24;
          }

          while (v13++ < *v10 && *a2 == 0);
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *JSONS::ArrayFromJSON<FIK::AimSetup>@<X0>(char *__s@<X3>, int *a2@<X0>, uint64_t a3@<X1>, unsigned int *a4@<X2>, void *a5@<X8>)
{
  v25[5] = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s);
  if ((*(a4 + 1) + 48 * *a4) != result)
  {
    v19 = __s;
    v20 = 0x405000000000000;
    v18 = strlen(__s);
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v18);
    if (*(result + 11) == 4 && *result != 0)
    {
      v12 = result;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        JSONS::ObjectFromJSON<FIK::AimSetup>(a2, a3, (*(v12 + 1) + v13), &v18);
        v16 = *a2;
        if (*a2)
        {
          v15 = 1;
        }

        else
        {
          FIK::IKArray<FIK::AimSetup>::push_back<FIK::AimSetup&,void>(a5, &v18);
        }

        FIK::IKArray<FIK::Item>::~IKArray(v25);
        result = FIK::IKArray<FIK::Item>::~IKArray(&v24);
        if (v22)
        {
          result = (*(*v23 + 24))(v23, v21, 0, 8);
          v21 = 0;
          v22 = 0;
        }

        if (v19)
        {
          result = (*(*v20 + 24))(v20, v18, 0, 8);
        }

        if (v16)
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v14 >= *v12)
        {
          goto LABEL_19;
        }
      }

      if ((v15 & 1) == 0)
      {
        result = FIK::IKArray<FIK::AimSetup>::~IKArray(a5);
      }
    }
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FIK::SerialisationJson::LoadJSON(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = std::string_view::find[abi:nn200100](&v20, "\\"", 0);
  if (v4 == -1)
  {
    if (*(rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Parse<0u,rapidjson::UTF8<char>>(a1, v20, v21) + 88))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 22) == 3;
    }

    if (!v5)
    {
      return 3;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = FIK::defaultAllocator(v4);
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::reserve(&v16, v21);
    v7 = -1;
    do
    {
      v8 = v7 + 1;
      v9 = std::string_view::find[abi:nn200100](&v20, "\\"", v7 + 1);
      v10 = v21 - (v7 + 1);
      if (v21 < v7 + 1)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v7 = v9;
      if (v10 >= v9 - v8)
      {
        v11 = v9 - v8;
      }

      else
      {
        v11 = v21 - v8;
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v16, &v20[v8], v11);
    }

    while (v7 != -1);
    if (v18 >= 0)
    {
      v12 = &v16;
    }

    else
    {
      v12 = v16;
    }

    if (v18 >= 0)
    {
      v13 = HIBYTE(v18);
    }

    else
    {
      v13 = v17;
    }

    if (*(rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Parse<0u,rapidjson::UTF8<char>>(a1, v12, v13) + 88))
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 22) == 3;
    }

    v15 = v14;
    if (SHIBYTE(v18) < 0 && v16)
    {
      (*(*v19 + 3))(v19, v16, 0, 8);
    }

    if (!v15)
    {
      return 3;
    }
  }

  return 0;
}

unint64_t std::string_view::find[abi:nn200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = strlen(__s);
  v8 = v5 - a3;
  if (v5 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v6 + v5);
    if (v8 >= v7)
    {
      v13 = (v6 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_6;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_6:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v6];
    }
  }

  return a3;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::reserve(void *result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (*(result + 23) < 0)
  {
    v3 = (result[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v3 = 22;
  }

  if (v3 < a2)
  {
    v4 = a2 | 7;
    if ((a2 | 7) == 0x17)
    {
      v4 = 24;
    }

    if (a2 <= 0x16)
    {
      v5 = 22;
    }

    else
    {
      v5 = v4;
    }

    return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__shrink_or_extend(result, v5);
  }

  return result;
}

void FIK::SerialisationJson::GetMoCapRig(FIK::Allocator *a1@<X2>, int *a2@<X0>, unsigned int *a3@<X1>, uint64_t a4@<X8>)
{
  FIK::IKRig::IKRig(a4, a1);
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0;
  *(a4 + 200) = a1;
  *(a4 + 208) = 0;
  *(a4 + 216) = 0u;
  *(a4 + 232) = a1;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 264) = a1;
  *(a4 + 272) = 0u;
  *(a4 + 288) = xmmword_245A01E80;
  *(a4 + 304) = 0;
  *(a4 + 308) = 1065353216;
  *(a4 + 48) = 1;
  JSONS::IKRigFromJSON(a2, a4, a3);
  JSONS::ArrayFromJSON<FIK::MoCapBone>("bones_", a2, a1, a3, &v23);
  v8 = v23;
  v9 = v24;
  v23 = 0u;
  *&v24 = 0;
  v10 = *(a4 + 208);
  v11 = *(a4 + 224);
  *(a4 + 208) = v8;
  *(a4 + 224) = v9;
  v25 = v10;
  v26 = v11;
  FIK::IKArray<FIK::MoCapBone>::~IKArray(&v25);
  FIK::IKArray<FIK::MoCapBone>::~IKArray(&v23);
  JSONS::ArrayFromJSON<FIK::MoCapTask>("tasks_", a2, a1, a3, &v23);
  v12 = v23;
  v13 = v24;
  v23 = 0u;
  *&v24 = 0;
  v14 = *(a4 + 176);
  v15 = *(a4 + 192);
  *(a4 + 176) = v12;
  *(a4 + 192) = v13;
  v25 = v14;
  v26 = v15;
  FIK::IKArray<FIK::MoCapTask>::~IKArray(&v25);
  FIK::IKArray<FIK::MoCapTask>::~IKArray(&v23);
  JSONS::ArrayFromJSON<FIK::RigBoneBase>("sources", a2, a1, a3, &v23);
  v16 = v23;
  v17 = v24;
  v23 = 0u;
  *&v24 = 0;
  v18 = *(a4 + 240);
  v19 = *(a4 + 256);
  *(a4 + 240) = v16;
  *(a4 + 256) = v17;
  v25 = v18;
  v26 = v19;
  FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v25);
  FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v23);
  JSONS::TransformFromJSON(a3, "source_transform", &v25);
  v20 = v26;
  *(a4 + 272) = v25;
  *(a4 + 288) = v20;
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "rigid_body_solve");
  v22 = (*(a3 + 1) + 48 * *a3) != Member && *(Member + 23) == 10;
  *(a4 + 304) = v22;
  *(a4 + 308) = JSONS::RealFromJSON(a3, "source_scale", 0.0);
}

unsigned int *JSONS::ArrayFromJSON<FIK::MoCapBone>@<X0>(char *__s@<X3>, int *a2@<X0>, FIK::Allocator *a3@<X1>, unsigned int *a4@<X2>, void *a5@<X8>)
{
  v28[17] = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s);
  if ((*(a4 + 1) + 48 * *a4) != result)
  {
    v19 = __s;
    v20 = 0x405000000000000;
    v18 = strlen(__s);
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v18);
    if (*(result + 11) == 4 && *result != 0)
    {
      v12 = result;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        JSONS::MoCapBoneFromJSON(a2, a3, (*(v12 + 1) + v13), &v18);
        v16 = *a2;
        if (*a2)
        {
          v15 = 1;
        }

        else
        {
          FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone&,void>(a5, &v18);
        }

        result = FIK::IKArray<IKString>::~IKArray(v28);
        if (v26)
        {
          result = (*(*v27 + 24))(v27, v25, 0, 8);
          v25 = 0;
          v26 = 0;
        }

        if (v23)
        {
          result = (*(*v24 + 24))(v24, v22, 0, 8);
          v22 = 0;
          v23 = 0;
        }

        if (v20)
        {
          result = (*(*v21 + 24))(v21, v19, 0, 8);
        }

        if (v16)
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v14 >= *v12)
        {
          goto LABEL_21;
        }
      }

      if ((v15 & 1) == 0)
      {
        result = FIK::IKArray<FIK::MoCapBone>::~IKArray(a5);
      }
    }
  }

LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *JSONS::ArrayFromJSON<FIK::MoCapTask>@<X0>(char *__s@<X3>, int *a2@<X0>, FIK::Allocator *a3@<X1>, unsigned int *a4@<X2>, void *a5@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s);
  if ((*(a4 + 1) + 48 * *a4) != result)
  {
    v19 = __s;
    v20 = 0x405000000000000;
    v18 = strlen(__s);
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v18);
    if (*(result + 11) == 4 && *result != 0)
    {
      v12 = result;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        result = JSONS::MoCapTaskFromJSON(a2, a3, (*(v12 + 1) + v13), &v18);
        v16 = *a2;
        if (*a2)
        {
          v15 = 1;
        }

        else
        {
          result = FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask&,void>(a5, &v18);
        }

        if (v25)
        {
          result = (*(*v26 + 24))(v26, v24, 0, 8);
          v24 = 0;
          v25 = 0;
        }

        if (v22)
        {
          result = (*(*v23 + 24))(v23, v21, 0, 8);
          v21 = 0;
          v22 = 0;
        }

        if (v19)
        {
          result = (*(*v20 + 24))(v20, v18, 0, 8);
        }

        if (v16)
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v14 >= *v12)
        {
          goto LABEL_21;
        }
      }

      if ((v15 & 1) == 0)
      {
        result = FIK::IKArray<FIK::MoCapTask>::~IKArray(a5);
      }
    }
  }

LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void JSONS::ArrayFromJSON<FIK::RigBoneBase>(char *__s@<X3>, int *a2@<X0>, uint64_t a3@<X1>, int *a4@<X2>, void *a5@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  if ((*(a4 + 1) + 48 * *a4) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s))
  {
    v20.i64[1] = __s;
    v21 = 0x405000000000000;
    v20.i64[0] = strlen(__s);
    v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v20);
    if (*(v10 + 11) == 4 && *v10 != 0)
    {
      v12 = v10;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = v12[1];
        v20 = 0xFFFFFFFFFFFFFFFFLL;
        v21 = 0;
        v23 = 0;
        v24 = 0;
        v22 = a3;
        v25 = a3;
        v26 = 0;
        v27 = 0;
        v28 = xmmword_245A01E80;
        v17.n128_f64[0] = JSONS::RigBoneBaseFromJSON(&v20, (v16 + v13));
        v18 = *a2;
        if (*a2)
        {
          v15 = 1;
        }

        else
        {
          FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase&,void>(a5, &v20);
        }

        if (v24)
        {
          (*(*v25 + 24))(v25, v23, 0, 8, v17);
          v23 = 0;
          v24 = 0;
        }

        if (v21)
        {
          (*(*v22 + 24))(v22, v20.i64[1], 0, 8, v17);
        }

        if (v18)
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v14 >= *v12)
        {
          goto LABEL_19;
        }
      }

      if ((v15 & 1) == 0)
      {
        FIK::IKArray<FIK::RigBoneBase>::~IKArray(a5);
      }
    }
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t FIK::SerialisationJson::GetGameRig@<X0>(FIK::Allocator *a1@<X2>, int *a2@<X0>, unsigned int *a3@<X1>, uint64_t a4@<X8>)
{
  FIK::IKRig::IKRig(a4, a1);
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0;
  *(a4 + 200) = a1;
  *(a4 + 208) = 0;
  *(a4 + 216) = 0u;
  *(a4 + 232) = a1;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 264) = a1;
  *(a4 + 272) = 0;
  *(a4 + 280) = 0u;
  *(a4 + 296) = a1;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0;
  *(a4 + 328) = a1;
  *(a4 + 48) = 2;
  JSONS::IKRigFromJSON(a2, a4, a3);
  JSONS::FootPlacementFromJSON(a2, a1, a3, &v25);
  v8 = v25;
  v9 = v26;
  v25 = 0u;
  *&v26 = 0;
  v10 = *(a4 + 240);
  v11 = *(a4 + 256);
  *(a4 + 240) = v8;
  *(a4 + 256) = v9;
  v32 = v10;
  v33 = v11;
  FIK::IKArray<IKString>::~IKArray(&v32);
  FIK::IKArray<unsigned int>::operator=(a4 + 272, &v27);
  v12 = v30;
  v13 = v31;
  v30 = 0u;
  *&v31 = 0;
  v14 = *(a4 + 304);
  v15 = *(a4 + 320);
  *(a4 + 304) = v12;
  *(a4 + 320) = v13;
  v32 = v14;
  v33 = v15;
  FIK::IKArray<FIK::AimSetup>::~IKArray(&v32);
  FIK::IKArray<FIK::AimSetup>::~IKArray(&v30);
  *&v27 = 0;
  if (v28)
  {
    (*(*v29 + 24))(v29, v28, 0, 8);
  }

  FIK::IKArray<IKString>::~IKArray(&v25);
  JSONS::ArrayFromJSON<FIK::RigBone>("bones_", a2, a1, a3, &v32);
  v16 = v32;
  v17 = v33;
  v32 = 0u;
  *&v33 = 0;
  v18 = *(a4 + 208);
  v19 = *(a4 + 224);
  *(a4 + 208) = v16;
  *(a4 + 224) = v17;
  v25 = v18;
  v26 = v19;
  FIK::IKArray<FIK::RigBone>::~IKArray(&v25);
  FIK::IKArray<FIK::RigBone>::~IKArray(&v32);
  JSONS::ArrayFromJSON<FIK::GameTask>("tasks_", a2, a1, a3, &v32);
  v20 = v32;
  v21 = v33;
  v32 = 0u;
  *&v33 = 0;
  v22 = *(a4 + 176);
  v23 = *(a4 + 192);
  *(a4 + 176) = v20;
  *(a4 + 192) = v21;
  v25 = v22;
  v26 = v23;
  FIK::IKArray<FIK::GameTask>::~IKArray(&v25);
  return FIK::IKArray<FIK::GameTask>::~IKArray(&v32);
}

void JSONS::ArrayFromJSON<FIK::RigBone>(char *__s@<X3>, int *a2@<X0>, uint64_t a3@<X1>, int *a4@<X2>, void *a5@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  if ((*(a4 + 1) + 48 * *a4) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s))
  {
    v22 = __s;
    v23 = 0x405000000000000;
    v21 = strlen(__s);
    v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v21);
    if (*(v10 + 11) == 4 && *v10 != 0)
    {
      v12 = v10;
      v13 = 0;
      v14 = 0;
      v20 = 0;
      v15 = vdup_n_s32(0x43B40000u);
      while (1)
      {
        v16 = v12[1];
        v21 = -1;
        v22 = 0;
        v23 = 0;
        v25 = 0;
        v26 = 0;
        v24 = a3;
        v27 = a3;
        v28 = 0;
        v29 = 0;
        v30 = xmmword_245A01E80;
        v31 = 16843009;
        v32 = 1;
        v33 = 0;
        v34 = xmmword_245A022E0;
        v35 = 0x3F80000000000000;
        v36 = xmmword_245A01EF0;
        v37 = xmmword_245A01EF0;
        v38 = xmmword_245A022F0;
        v39 = v15;
        v40 = 1135869952;
        v44 = 0;
        v43 = 0u;
        v42 = 0u;
        v41 = 0u;
        v17.n128_f64[0] = JSONS::RigBoneFromJSON(a2, &v21, (v16 + v13));
        v18 = *a2;
        if (*a2)
        {
          v20 = 1;
        }

        else
        {
          FIK::IKArray<FIK::RigBone>::push_back<FIK::RigBone&,void>(a5, &v21);
        }

        if (v26)
        {
          (*(*v27 + 24))(v27, v25, 0, 8, v17);
          v25 = 0;
          v26 = 0;
        }

        if (v23)
        {
          (*(*v24 + 24))(v24, v22, 0, 8, v17);
        }

        if (v18)
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v14 >= *v12)
        {
          goto LABEL_19;
        }
      }

      if ((v20 & 1) == 0)
      {
        FIK::IKArray<FIK::RigBone>::~IKArray(a5);
      }
    }
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

void JSONS::ArrayFromJSON<FIK::GameTask>(char *__s@<X3>, int *a2@<X0>, FIK::Allocator *a3@<X1>, int *a4@<X2>, void *a5@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  if ((*(a4 + 1) + 48 * *a4) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s))
  {
    v19 = __s;
    v20 = 0x405000000000000;
    v18 = strlen(__s);
    v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v18);
    if (*(v10 + 11) == 4 && *v10 != 0)
    {
      v12 = v10;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        JSONS::GameTaskFromJSON(a2, a3, (v12[1] + v13), &v18);
        v16 = *a2;
        if (*a2)
        {
          v15 = 1;
        }

        else
        {
          FIK::IKArray<FIK::GameTask>::push_back<FIK::GameTask&,void>(a5, &v18);
        }

        if (v22)
        {
          (*(*v23 + 24))(v23, v21, 0, 8);
          v21 = 0;
          v22 = 0;
        }

        if (v19)
        {
          (*(*v20 + 24))(v20, v18, 0, 8);
        }

        if (v16)
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v14 >= *v12)
        {
          goto LABEL_19;
        }
      }

      if ((v15 & 1) == 0)
      {
        FIK::IKArray<FIK::GameTask>::~IKArray(a5);
      }
    }
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
}

void FIK::SerialisationJson::LoadIKRigFromString()
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  v5 = 1024;
  v6 = 0;
  v7 = 0;
  operator new();
}

void FIK::SerialisationJson::LoadMoCapRigFromString()
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  v5 = 1024;
  v6 = 0;
  v7 = 0;
  operator new();
}

uint64_t FIK::Serialisation::fixUpRigIndices(uint64_t a1)
{
  v3 = (a1 + 208);
  v2 = *(a1 + 208);
  if (v2)
  {
    v4 = *(a1 + 224);
    v5 = 1;
    do
    {
      *v4 = v5 - 1;
      v4 += 136;
      v6 = v2 > v5++;
    }

    while (v6);
  }

  v7 = *(a1 + 240);
  if (v7)
  {
    v8 = *(a1 + 256);
    v9 = 1;
    do
    {
      *v8 = v9 - 1;
      v8 += 24;
      v6 = v7 > v9++;
    }

    while (v6);
  }

  FIK::IKRigUtils::updateParentIndices<FIK::MoCapBone>((a1 + 208));
  FIK::IKRigUtils::updateParentIndices<FIK::RigBoneBase>((a1 + 240));
  FIK::IKRigUtils::updateTargetIndices<FIK::MoCapTask,FIK::MoCapBone>((a1 + 176), v3);
  if (FIK::IKRigUtils::updateSourceIndices(v3, (a1 + 176), (a1 + 240)))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

{
  v3 = (a1 + 208);
  v2 = *(a1 + 208);
  if (v2)
  {
    v4 = *(a1 + 224);
    v5 = 1;
    do
    {
      *v4 = v5 - 1;
      v4 += 64;
    }

    while (v2 > v5++);
  }

  FIK::IKRigUtils::updateParentIndices<FIK::RigBone>((a1 + 208));
  FIK::IKRigUtils::updateTargetIndices<FIK::GameTask,FIK::RigBone>((a1 + 176), v3);
  return 0;
}

void FIK::SerialisationJson::LoadGameRigFromString()
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  v5 = 1024;
  v6 = 0;
  v7 = 0;
  operator new();
}

uint64_t FIK::SerialisationJson::ReadFile(uint64_t a1)
{
  v13[19] = *MEMORY[0x277D85DE8];
  v13[6] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  v13[0] = MEMORY[0x277D82858] + 64;
  v4 = MEMORY[0x277D82808];
  v5 = *(MEMORY[0x277D82808] + 16);
  v11[0] = *(MEMORY[0x277D82808] + 8);
  *(v11 + *(v11[0] - 24)) = v5;
  v11[1] = 0;
  v6 = (v11 + *(v11[0] - 24));
  std::ios_base::init(v6, v12);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v11[0] = v2;
  v13[0] = v3;
  MEMORY[0x245D77E10](v12);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v11 + *(v11[0] - 24)), *(&v12[2] + *(v11[0] - 24)) | 4);
  }

  if (v12[15])
  {
    std::getline[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>(v11, a1, 0);
    v7 = *(a1 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 8);
    }

    v8 = 2 * (v7 == 0);
  }

  else
  {
    v8 = 1;
  }

  v11[0] = *v4;
  *(v11 + *(v11[0] - 24)) = v4[3];
  MEMORY[0x245D77E20](v12);
  std::istream::~istream();
  MEMORY[0x245D77F30](v13);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void FIK::SerialisationJson::LoadMoCapRigFromFile(FIK *a1@<X0>, FIK::Allocator *a2@<X3>, uint64_t a3@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v9 = FIK::defaultAllocator(a1);
  File = FIK::SerialisationJson::ReadFile(v7);
  *a1 = File;
  if (!File)
  {
    FIK::SerialisationJson::LoadMoCapRigFromString();
  }

  FIK::IKRig::IKRig(a3, a2);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = a2;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = a2;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  *(a3 + 264) = a2;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = xmmword_245A01E80;
  *(a3 + 304) = 0;
  *(a3 + 308) = 1065353216;
  *(a3 + 48) = 1;
  if (SHIBYTE(v8) < 0)
  {
    if (v7[0])
    {
      (*(*v9 + 3))(v9, v7[0], 0, 8);
    }
  }
}

void FIK::SerialisationJson::LoadGameRigFromFile(FIK *a1@<X0>, FIK::Allocator *a2@<X3>, uint64_t a3@<X8>)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  v10 = FIK::defaultAllocator(a1);
  File = FIK::SerialisationJson::ReadFile(v8);
  *a1 = File;
  if (!File)
  {
    FIK::SerialisationJson::LoadGameRigFromString();
  }

  v7 = FIK::IKRig::IKRig(a3, a2);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = a2;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = a2;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  *(a3 + 264) = a2;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 296) = a2;
  *(a3 + 304) = 0;
  *(a3 + 312) = 0;
  *(a3 + 320) = 0;
  *(a3 + 328) = a2;
  *(a3 + 48) = 2;
  if (SHIBYTE(v9) < 0)
  {
    if (v8[0])
    {
      (*(*v10 + 3))(v10, v8[0], 0, 8, v7);
    }
  }
}

uint64_t FIK::IKArray<IKString>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v18 = v2;
    v19 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (*(*v5 + 16))(*(result + 24), 24 * v6, 8);
      v8 = v7;
      if (24 * v6)
      {
        bzero(v7, 24 * v6);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = v8;
      do
      {
        v11 = IKString::IKString(v11, v9, v9[2]) + 3;
        v9 += 3;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v12 = *v4;
    }

    else
    {
      v12 = 0;
    }

    v13 = v4[1];
    v14 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v15 = v13;
    v16 = v9;
    v17 = v14;
    result = FIK::IKArray<IKString>::destroyBufferObjects(&v15, v12);
    if (v16)
    {
      return (*(*v17 + 24))(v17, v16, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::SerialisationJson::WriteFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[19] = *MEMORY[0x277D85DE8];
  v16[6] = 0;
  v4 = MEMORY[0x277D82860] + 24;
  v5 = MEMORY[0x277D82860] + 64;
  v16[0] = MEMORY[0x277D82860] + 64;
  v6 = MEMORY[0x277D82810];
  v7 = *(MEMORY[0x277D82810] + 16);
  v14 = *(MEMORY[0x277D82810] + 8);
  *&v15[*(v14 - 24) - 8] = v7;
  v8 = &v15[*(v14 - 24) - 8];
  std::ios_base::init(v8, v15);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v14 = v4;
  v16[0] = v5;
  MEMORY[0x245D77E10](v15);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&v15[*(v14 - 24) - 8], *&v15[*(v14 - 24) + 24] | 4);
  }

  if ((v15[*(v14 - 24) + 24] & 5) == 0)
  {
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, v10, v11);
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v15[*(v14 - 24) - 8], *&v15[*(v14 - 24) + 24] | 4);
    }
  }

  v14 = *v6;
  *&v15[*(v14 - 24) - 8] = v6[3];
  MEMORY[0x245D77E20](v15);
  std::ostream::~ostream();
  result = MEMORY[0x245D77F30](v16);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FIK::SerialisationJson::SaveMoCapRig(uint64_t a1, const char *a2, int a3)
{
  JSONS::JSONfromMoCapRig(a1, &v13);
  if (a3)
  {
    v12 = v15;
    if (SHIBYTE(v14) < 0)
    {
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, v13, *(&v13 + 1));
    }

    else
    {
      __dst = v13;
      v11 = v14;
    }

    JSONS::PrettyPrint();
  }

  v5 = strlen(a2);
  v9 = v15;
  if (SHIBYTE(v14) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v7, v13, *(&v13 + 1));
  }

  else
  {
    v7 = v13;
    v8 = v14;
  }

  result = FIK::SerialisationJson::WriteFile(a2, v5, &v7);
  if (SHIBYTE(v8) < 0 && v7)
  {
    result = (*(*v9 + 24))(v9, v7, 0, 8);
  }

  if (SHIBYTE(v14) < 0 && v13)
  {
    return (*(*v15 + 24))(v15, v13, 0, 8);
  }

  return result;
}

uint64_t FIK::SerialisationJson::SaveGameRig(FIK *a1, const char *a2, int a3)
{
  JSONS::JSONfromGameRig(a1, &v13);
  if (a3)
  {
    v12 = v15;
    if (SHIBYTE(v14) < 0)
    {
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, v13, *(&v13 + 1));
    }

    else
    {
      __dst = v13;
      v11 = v14;
    }

    JSONS::PrettyPrint();
  }

  v5 = strlen(a2);
  v9 = v15;
  if (SHIBYTE(v14) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v7, v13, *(&v13 + 1));
  }

  else
  {
    v7 = v13;
    v8 = v14;
  }

  result = FIK::SerialisationJson::WriteFile(a2, v5, &v7);
  if (SHIBYTE(v8) < 0 && v7)
  {
    result = (*(*v9 + 24))(v9, v7, 0, 8);
  }

  if (SHIBYTE(v14) < 0 && v13)
  {
    return (*(*v15 + 24))(v15, v13, 0, 8);
  }

  return result;
}

void FIK::SerialisationJson::GetMoCapRigJson(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = JSONS::JSONfromMoCapRig(a1, &v12);
  if (a2)
  {
    v11 = v14;
    if (SHIBYTE(v13) < 0)
    {
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v9, v12, *(&v12 + 1));
    }

    else
    {
      v9 = v12;
      v10 = v13;
    }

    JSONS::PrettyPrint();
  }

  if (v13 >= 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12;
  }

  v7 = FIK::defaultAllocator(v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = v7;
  v8 = strlen(v6);
  IKString::assign(a3, v6, v8);
  if (SHIBYTE(v13) < 0 && v12)
  {
    (*(*v14 + 24))(v14, v12, 0, 8);
  }
}

void FIK::SerialisationJson::GetGameRigJson(FIK *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = JSONS::JSONfromGameRig(a1, &v12);
  if (a2)
  {
    v11 = v14;
    if (SHIBYTE(v13) < 0)
    {
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v9, v12, *(&v12 + 1));
    }

    else
    {
      v9 = v12;
      v10 = v13;
    }

    JSONS::PrettyPrint();
  }

  if (v13 >= 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12;
  }

  v7 = FIK::defaultAllocator(v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = v7;
  v8 = strlen(v6);
  IKString::assign(a3, v6, v8);
  if (SHIBYTE(v13) < 0 && v12)
  {
    (*(*v14 + 24))(v14, v12, 0, 8);
  }
}

void *std::getline[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x245D77E30](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

unsigned int *FIK::IKRigUtils::updateParentIndices<FIK::MoCapBone>(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    v2 = 0;
    v3 = *(result + 2);
    v4 = 1;
    do
    {
      v5 = v3 + 544 * v2;
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = *(v5 + 32);
      }

      else
      {
        v7 = &unk_245A04BAE;
      }

      result = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(v7, v6, v1);
      v3 = *(v1 + 2);
      *(v3 + 544 * v2 + 4) = result;
      v2 = v4;
    }

    while (*v1 > v4++);
  }

  return result;
}

unsigned int *FIK::IKRigUtils::updateParentIndices<FIK::RigBoneBase>(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    v2 = 0;
    v3 = *(result + 2);
    v4 = 1;
    do
    {
      v5 = v3 + 96 * v2;
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = *(v5 + 32);
      }

      else
      {
        v7 = &unk_245A04BAE;
      }

      result = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(v7, v6, v1);
      v3 = *(v1 + 2);
      *(v3 + 96 * v2 + 4) = result;
      v2 = v4;
    }

    while (*v1 > v4++);
  }

  return result;
}

unint64_t *FIK::IKRigUtils::updateTargetIndices<FIK::MoCapTask,FIK::MoCapBone>(unint64_t *result, unsigned int *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 0;
    v6 = result[2];
    v7 = 1;
    do
    {
      v8 = v6 + (v5 << 8);
      if ((*(v8 + 48) & 0x80000000) != 0)
      {
        v9 = *(v8 + 32);
        if (v9)
        {
          v10 = *(v8 + 24);
        }

        else
        {
          v10 = &unk_245A04BAE;
        }

        result = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(v10, v9, a2);
        v6 = v4[2];
        *(v6 + (v5 << 8) + 48) = result;
        v2 = *v4;
      }

      v5 = v7;
    }

    while (v2 > v7++);
  }

  return result;
}

uint64_t FIK::IKRigUtils::updateSourceIndices(void *a1, void *a2, unsigned int *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v6 = (a1[2] + 280);
    v7 = 544 * *a1;
    do
    {
      v8 = *(v6 - 2);
      if (v8)
      {
        v9 = *(v6 - 3);
      }

      else
      {
        v9 = &unk_245A04BAE;
      }

      *v6 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(v9, v8, a3);
      v6 += 136;
      v7 -= 544;
    }

    while (v7);
  }

  if (*a2)
  {
    v10 = (a2[2] + 200);
    v11 = *a2 << 8;
    do
    {
      v12 = *(v10 - 2);
      if (v12)
      {
        v13 = *(v10 - 3);
      }

      else
      {
        v13 = &unk_245A04BAE;
      }

      v14 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(v13, v12, a3);
      *v10 = v14;
      if (v14 == -1)
      {
        v15 = *(v10 - 38);
        if (v15 == -1)
        {
          v16 = ikinemaLogObject();
          ikinemaAssertHandler(*v16, 0, "updateSourceIndices", "(task.target_index_ != kInvalidRigIndex) Task without target index detected, you need to call updateTargetIndices first");
          v15 = *(v10 - 38);
        }

        if (*a1 < v15)
        {
          v17 = ikinemaLogObject();
          ikinemaAssertHandler(*v17, 0, "updateSourceIndices", "(static_cast<size_t>(task.target_index_) <= bones.size()) Task with invalid target bone");
          v15 = *(v10 - 38);
        }

        if (v15 == -1)
        {
          v20 = *ikinemaLogObject();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          result = 0;
          if (v21)
          {
            if (*(v10 - 24))
            {
              v23 = *(v10 - 25);
            }

            else
            {
              v23 = &unk_245A04BAE;
            }

            v26 = *(v10 - 38);
            v27 = 136315650;
            v28 = "updateSourceIndices";
            v29 = 2080;
            v30 = v23;
            v31 = 1024;
            v32 = v26;
            _os_log_impl(&dword_245976000, v20, OS_LOG_TYPE_DEFAULT, "%s: Task %s contains invalid target index: %d\n", &v27, 0x1Cu);
            result = 0;
          }

          goto LABEL_31;
        }

        *v10 = *(a1[2] + 544 * v15 + 280);
      }

      v10 += 64;
      v11 -= 256;
    }

    while (v11);
    if (*a2)
    {
      v18 = *a2 << 8;
      v19 = (a2[2] + 200);
      while (*v19 != -1)
      {
        v19 += 64;
        v18 -= 256;
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      v24 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        FIK::IKRigUtils::updateSourceIndices(v24);
      }
    }
  }

LABEL_30:
  result = 1;
LABEL_31:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *FIK::IKRigUtils::updateParentIndices<FIK::RigBone>(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    v2 = 0;
    v3 = *(result + 2);
    v4 = 1;
    do
    {
      v5 = v3 + (v2 << 8);
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = *(v5 + 32);
      }

      else
      {
        v7 = &unk_245A04BAE;
      }

      result = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v7, v6, v1);
      v3 = *(v1 + 2);
      *(v3 + (v2 << 8) + 4) = result;
      v2 = v4;
    }

    while (*v1 > v4++);
  }

  return result;
}

unint64_t *FIK::IKRigUtils::updateTargetIndices<FIK::GameTask,FIK::RigBone>(unint64_t *result, unsigned int *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 0;
    v6 = result[2];
    v7 = 1;
    do
    {
      v8 = v6 + 240 * v5;
      if ((*(v8 + 48) & 0x80000000) != 0)
      {
        v9 = *(v8 + 32);
        if (v9)
        {
          v10 = *(v8 + 24);
        }

        else
        {
          v10 = &unk_245A04BAE;
        }

        result = FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(v10, v9, a2);
        v6 = v4[2];
        *(v6 + 240 * v5 + 48) = result;
        v2 = *v4;
      }

      v5 = v7;
    }

    while (v2 > v7++);
  }

  return result;
}

void FIK::IKArray<IKString>::push_back<IKString&,void>(void *a1, char **a2)
{
  FIK::IKArray<IKString>::reserve(a1, *a1 + 1);
  v4 = a1[3];
  v5 = (a1[2] + 24 * *a1);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = v4;
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    v8 = *a2;
  }

  else
  {
    v8 = &unk_245A04BAE;
  }

  IKString::assign(v5, v8, v6);
  ++*a1;
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  free(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    JUMPOUT(0x245D77F60);
  }

  return result;
}

double FIK::MoCapBone::MoCapBone(FIK::MoCapBone *this, FIK::Allocator *a2)
{
  FIK::RigBone::RigBone(this, a2);
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  *(v3 + 272) = a2;
  *(v3 + 280) = -1;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  *(v3 + 304) = xmmword_245A01E80;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = xmmword_245A01E80;
  *(v3 + 352) = 0;
  *(v3 + 354) = 0;
  *(v3 + 356) = 0;
  *(v3 + 360) = 0;
  *(v3 + 364) = 0;
  *(v3 + 372) = 0;
  *(v3 + 384) = 0;
  *(v3 + 388) = 0;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0;
  *(v3 + 440) = a2;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v3 + 464) = xmmword_245A01E80;
  *(v3 + 480) = 0x3DCCCCCD00000000;
  *(v3 + 496) = xmmword_245A022C0;
  *(v3 + 512) = xmmword_245A022C0;
  *(v3 + 528) = -1;
  result = 2.00000048;
  *(v3 + 536) = 0x4000000040000000;
  return result;
}

double FIK::RigBone::RigBone(FIK::RigBone *this, FIK::Allocator *a2)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = xmmword_245A01E80;
  *(this + 24) = 16843009;
  *(this + 100) = 1;
  *(this + 101) = 0;
  *(this + 7) = xmmword_245A022E0;
  *(this + 16) = 0x3F80000000000000;
  *(this + 9) = xmmword_245A01EF0;
  *(this + 10) = xmmword_245A01EF0;
  *(this + 11) = xmmword_245A022F0;
  *(this + 24) = vdup_n_s32(0x43B40000u);
  *(this + 50) = 1135869952;
  *(this + 63) = 0;
  result = 0.0;
  *(this + 236) = 0u;
  *(this + 220) = 0u;
  *(this + 204) = 0u;
  return result;
}

double FIK::RigTask::RigTask(FIK::RigTask *this, FIK::Allocator *a2)
{
  *this = 0u;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 12) = -1;
  *(this + 26) = 257;
  *(this + 54) = 0;
  *(this + 55) = 16843009;
  *(this + 59) = 257;
  *(this + 8) = -1;
  *(this + 5) = xmmword_245A02300;
  *(this + 6) = xmmword_245A02310;
  *(this + 7) = xmmword_245A022D0;
  result = 2.00000048;
  *(this + 16) = 0x4000000040000000;
  *(this + 34) = 0x40000000;
  *(this + 156) = 0;
  *(this + 164) = 0;
  *(this + 140) = 0;
  *(this + 148) = 0;
  *(this + 21) = 5;
  return result;
}

void virtual thunk tostd::basic_ostringstream<char,std::char_traits<char>,FIK::FIKAllocator<char>>::~basic_ostringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_28589B950;
  v1[15].__locale_ = &unk_28589B978;
  v1[1].__locale_ = &unk_28589BA20;
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    locale = v1[9].__locale_;
    if (locale)
    {
      (*(*v1[12].__locale_ + 24))(v1[12].__locale_, locale, 0, 8);
    }
  }

  v1[1].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 2);
  std::ostream::~ostream();

  JUMPOUT(0x245D77F30);
}

{
  v1 = (a1 + *(*a1 - 24));
  v1->__locale_ = &unk_28589B950;
  v1[15].__locale_ = &unk_28589B978;
  v1[1].__locale_ = &unk_28589BA20;
  if (SHIBYTE(v1[11].__locale_) < 0)
  {
    locale = v1[9].__locale_;
    if (locale)
    {
      (*(*v1[12].__locale_ + 24))(v1[12].__locale_, locale, 0, 8);
    }
  }

  v1[1].__locale_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v1 + 2);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](&v1[15]);

  JUMPOUT(0x245D77F60);
}

void std::basic_ostringstream<char,std::char_traits<char>,FIK::FIKAllocator<char>>::~basic_ostringstream(uint64_t a1)
{
  *a1 = &unk_28589B950;
  v2 = a1 + 120;
  *(a1 + 120) = &unk_28589B978;
  *(a1 + 8) = &unk_28589BA20;
  if (*(a1 + 95) < 0)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      (*(**(a1 + 96) + 24))(*(a1 + 96), v3, 0, 8);
    }
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v2);

  JUMPOUT(0x245D77F60);
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_28589BA20;
  if (*(a1 + 87) < 0)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(**(a1 + 88) + 24))(*(a1 + 88), v2, 0, 8);
    }
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::~basic_stringbuf(uint64_t a1)
{
  *a1 = &unk_28589BA20;
  if (*(a1 + 87) < 0)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(**(a1 + 88) + 24))(*(a1 + 88), v2, 0, 8);
    }
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));

  JUMPOUT(0x245D77F60);
}

double std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::seekoff@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 96);
  v6 = *(a1 + 48);
  if (v5 < v6)
  {
    *(a1 + 96) = v6;
    v5 = v6;
  }

  if ((a4 & 0x18) == 0 || a3 == 1 && (a4 & 0x18) == 0x18)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_17:
    v11 = a3;
    goto LABEL_20;
  }

  v9 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v9 = *v9;
  }

  v10 = v5 - v9;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a3 == 2)
  {
    v11 = v10;
  }

  else
  {
    if (a3 != 1)
    {
LABEL_6:
      v7 = -1;
      goto LABEL_7;
    }

    if ((a4 & 8) != 0)
    {
      v11 = *(a1 + 24) - *(a1 + 16);
    }

    else
    {
      v11 = v6 - *(a1 + 40);
    }
  }

LABEL_20:
  v7 = -1;
  v12 = v11 + a2;
  if (v12 >= 0 && v10 >= v12 && (!v12 || ((a4 & 8) == 0 || *(a1 + 24)) && ((a4 & 0x10) == 0 || v6)))
  {
    if ((a4 & 8) != 0)
    {
      *(a1 + 24) = *(a1 + 16) + v12;
      *(a1 + 32) = v5;
    }

    if ((a4 & 0x10) != 0)
    {
      *(a1 + 48) = *(a1 + 40) + v12;
    }

    v7 = v12;
  }

LABEL_7:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::underflow(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 48);
  if (v1 < v2)
  {
    *(a1 + 96) = v2;
    v1 = v2;
  }

  if ((*(a1 + 104) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  if (v3 < v1)
  {
    *(a1 + 32) = v1;
    v3 = v1;
  }

  v4 = *(a1 + 24);
  if (v4 < v3)
  {
    return *v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::pbackfail(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 48);
  if (v2 < v3)
  {
    *(a1 + 96) = v3;
    v2 = v3;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = 0;
    *(a1 + 24) = v4 - 1;
    *(a1 + 32) = v2;
    return a2;
  }

  if ((*(a1 + 104) & 0x10) == 0 && *(v4 - 1) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = v4 - 1;
  *(a1 + 32) = v2;
  *(v4 - 1) = a2;
  return a2;
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::overflow(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 == v6)
  {
    if ((*(a1 + 104) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 96);
    v12 = a1 + 64;
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back((a1 + 64), 0);
    if (*(a1 + 87) < 0)
    {
      v13 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v13 = 22;
    }

    v14 = &v7[-v10];
    v15 = v11 - v10;
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::resize((a1 + 64), v13, 0);
    v16 = *(a1 + 87);
    if (v16 < 0)
    {
      v12 = *(a1 + 64);
      v16 = *(a1 + 72);
    }

    v6 = (v12 + v16);
    v7 = &v14[v12];
    *(a1 + 40) = v12;
    *(a1 + 48) = v7;
    *(a1 + 56) = v6;
    v8 = v12 + v15;
  }

  else
  {
    v8 = *(a1 + 96);
  }

  if ((v7 + 1) >= v8)
  {
    v8 = (v7 + 1);
  }

  *(a1 + 96) = v8;
  if ((*(a1 + 104) & 8) != 0)
  {
    v17 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v17 = *v17;
    }

    *(a1 + 16) = v17;
    *(a1 + 24) = v17 + v4 - v5;
    *(a1 + 32) = v8;
  }

  if (v7 == v6)
  {
    v18 = *(*a1 + 104);

    return v18(a1, v2);
  }

  else
  {
    *(a1 + 48) = v7 + 1;
    *v7 = v2;
    return v2;
  }
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(void *__src, char a2)
{
  v3 = __src;
  if ((*(__src + 23) & 0x80000000) == 0)
  {
    if (*(__src + 23) != 22)
    {
      v5 = *(__src + 23);
      *(__src + 23) = (*(__src + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v4 = 22;
    goto LABEL_5;
  }

  v5 = __src[1];
  v4 = (__src[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v5 == v4)
  {
LABEL_5:
    __src = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by(__src, v4, 1uLL, v4, v4, 0, 0);
    v5 = v4;
  }

  v3[1] = v5 + 1;
  v3 = *v3;
LABEL_8:
  v6 = v3 + v5;
  *v6 = a2;
  v6[1] = 0;
  return __src;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by(void *__src, unint64_t a2, unint64_t a3, uint64_t a4, size_t __len, uint64_t a6, uint64_t a7)
{
  v7 = 0x7FFFFFFFFFFFFFF7;
  if (0x7FFFFFFFFFFFFFF7 - a2 < a3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = __src;
  v14 = __src;
  if (*(__src + 23) < 0)
  {
    v14 = *__src;
  }

  if (a2 >= 0x3FFFFFFFFFFFFFF3)
  {
    v17 = __src + 3;
    goto LABEL_17;
  }

  v15 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v15 = 2 * a2;
  }

  if ((v15 | 7) == 0x17)
  {
    v16 = 25;
  }

  else
  {
    v16 = (v15 | 7) + 1;
  }

  if (v15 >= 0x17)
  {
    v7 = v16;
  }

  else
  {
    v7 = 23;
  }

  v17 = __src + 3;
  if (v7)
  {
LABEL_17:
    __src = (*(**v17 + 16))(*v17, v7, 128);
    v18 = __src;
    v19 = v7 | 0x8000000000000000;
    if (!__len)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = 0;
  v19 = 0x8000000000000000;
  if (__len)
  {
LABEL_18:
    __src = memmove(v18, v14, __len);
  }

LABEL_19:
  if (a4 != a6 + __len)
  {
    __src = memmove(&v18[__len + a7], &v14[__len + a6], a4 - (a6 + __len));
  }

  if (a2 != 22 && v14)
  {
    __src = (*(**v17 + 24))(*v17, v14, 0, 8);
  }

  *v13 = v18;
  v13[2] = v19;
  return __src;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::resize(void *result, unint64_t a2, int a3)
{
  v3 = *(result + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = result[1];
    if (v3 >= a2)
    {
      result[1] = a2;
      result = *result;
      goto LABEL_7;
    }

    return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(result, a2 - v3, a3);
  }

  if (v3 < a2)
  {
    return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(result, a2 - v3, a3);
  }

  *(result + 23) = a2;
LABEL_7:
  *(result + a2) = 0;
  return result;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(void *__src, size_t __len, int __c)
{
  if (__len)
  {
    v6 = *(__src + 23);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v6 = __src[1];
      v9 = __src[2];
      v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = HIBYTE(v9);
    }

    else
    {
      v7 = 22;
      LOBYTE(v8) = *(__src + 23);
    }

    if (v7 - v6 < __len)
    {
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by(__src, v7, __len - v7 + v6, v6, v6, 0, 0);
      __src[1] = v6;
      LOBYTE(v8) = *(__src + 23);
    }

    v10 = __src;
    if ((v8 & 0x80) != 0)
    {
      v10 = *__src;
    }

    memset(v10 + v6, __c, __len);
    v11 = v6 + __len;
    if (*(__src + 23) < 0)
    {
      __src[1] = v11;
    }

    else
    {
      *(__src + 23) = v11 & 0x7F;
    }

    *(v10 + v11) = 0;
  }

  return __src;
}

void *FIK::IKArray<FIK::Item>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 32 * a2;
    v6 = (*(*a3 + 16))(a3, 32 * a2, 8);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

double FIK::IKRig::IKRig(FIK::IKRig *this, FIK::Allocator *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 6) = 1065353216;
  *(this + 28) = xmmword_245A02320;
  *(this + 44) = 1;
  *(this + 12) = 0;
  *(this + 8) = 0x3727C5AC3E4CCCCDLL;
  *(this + 9) = 0x1E3F800000;
  *(this + 10) = 0x3F80000040800000;
  *(this + 44) = 1;
  *(this + 90) = 0;
  *(this + 100) = 0;
  *(this + 92) = 0;
  *(this + 108) = 0x3F80000000000000;
  *(this + 58) = 0;
  *(this + 30) = 1117782016;
  *(this + 32) = 1;
  *(this + 66) = 257;
  *(this + 134) = 1;
  result = 524288.127;
  *(this + 9) = xmmword_245A022C0;
  *(this + 10) = xmmword_245A022D0;
  return result;
}

uint64_t FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>(void *__s2, size_t __n, unsigned int *a3)
{
  if (!__n)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a3;
  if (!*a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *(a3 + 2) + 16;
  v8 = v7;
  while (1)
  {
    v10 = *v8;
    v8 += 12;
    v9 = v10;
    v11 = v10 ? *(v7 - 8) : &unk_245A04BAE;
    if (v9 == __n && !memcmp(v11, __s2, __n))
    {
      break;
    }

    ++v6;
    v7 = v8;
    if (v3 == v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

void *FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 24 * a2;
    v6 = (*(*a3 + 16))(a3, 24 * a2, 8);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

uint64_t FIK::IKArray<IKString>::~IKArray(uint64_t a1)
{
  FIK::IKArray<IKString>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::Item>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::Item>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::Item>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8) + 16;
    do
    {
      if (*v3)
      {
        result = (*(**(v3 + 8) + 24))(*(v3 + 8), *(v3 - 8), 0, 8);
        *(v3 - 8) = 0;
        *v3 = 0;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::AimSetup>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::AimSetup>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::AimSetup>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8) + 88;
    do
    {
      FIK::IKArray<FIK::Item>::~IKArray(v3);
      result = FIK::IKArray<FIK::Item>::~IKArray(v3 - 32);
      if (*(v3 - 48))
      {
        result = (*(**(v3 - 40) + 24))(*(v3 - 40), *(v3 - 56), 0, 8);
        *(v3 - 56) = 0;
        *(v3 - 48) = 0;
      }

      if (*(v3 - 80))
      {
        result = (*(**(v3 - 72) + 24))(*(v3 - 72), *(v3 - 88), 0, 8);
        *(v3 - 88) = 0;
        *(v3 - 80) = 0;
      }

      v3 += 128;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::MoCapTask>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::MoCapTask>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::MoCapTask>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8);
    do
    {
      if (*(v3 + 184))
      {
        result = (*(**(v3 + 192) + 24))(*(v3 + 192), *(v3 + 176), 0, 8);
        *(v3 + 176) = 0;
        *(v3 + 184) = 0;
      }

      if (*(v3 + 32))
      {
        result = (*(**(v3 + 40) + 24))(*(v3 + 40), *(v3 + 24), 0, 8);
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
      }

      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      v3 += 256;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::MoCapBone>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::MoCapBone>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::MoCapBone>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8) + 256;
    do
    {
      result = FIK::IKArray<IKString>::~IKArray(v3 + 160);
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      if (*(v3 - 216))
      {
        result = (*(**(v3 - 208) + 24))(*(v3 - 208), *(v3 - 224), 0, 8);
        *(v3 - 224) = 0;
        *(v3 - 216) = 0;
      }

      if (*(v3 - 240))
      {
        result = (*(**(v3 - 232) + 24))(*(v3 - 232), *(v3 - 248), 0, 8);
        *(v3 - 248) = 0;
        *(v3 - 240) = 0;
      }

      v3 += 544;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::RigBoneBase>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::RigBoneBase>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::RigBoneBase>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (*(result + 8) + 24);
    do
    {
      if (v3[2])
      {
        result = (*(*v3[3] + 24))(v3[3], v3[1], 0, 8);
        v3[1] = 0;
        v3[2] = 0;
      }

      if (*(v3 - 1))
      {
        result = (*(**v3 + 24))(*v3, *(v3 - 2), 0, 8);
        *(v3 - 2) = 0;
        *(v3 - 1) = 0;
      }

      v3 += 12;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::GameTask>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::GameTask>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::GameTask>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8) + 24;
    do
    {
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      if (*(v3 - 16))
      {
        result = (*(**(v3 - 8) + 24))(*(v3 - 8), *(v3 - 24), 0, 8);
        *(v3 - 24) = 0;
        *(v3 - 16) = 0;
      }

      v3 += 240;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::RigBone>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::RigBone>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::RigBone>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = (*(result + 8) + 24);
    do
    {
      if (v3[2])
      {
        result = (*(*v3[3] + 24))(v3[3], v3[1], 0, 8);
        v3[1] = 0;
        v3[2] = 0;
      }

      if (*(v3 - 1))
      {
        result = (*(**v3 + 24))(*v3, *(v3 - 2), 0, 8);
        *(v3 - 2) = 0;
        *(v3 - 1) = 0;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::MemoryPoolAllocator(void *a1, uint64_t a2, FIK *this)
{
  *a1 = a2;
  v5 = this;
  if (!this)
  {
    v6 = FIK::defaultAllocator(0);
    v5 = (*(*v6 + 2))(v6, 1, 8);
  }

  a1[1] = v5;
  v7 = FIK::defaultAllocator(v5);
  v8 = (*(*v7 + 2))(v7, 56, 8);
  a1[2] = v8;
  if (this)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1[1];
  }

  *(v8 + 32) = 0;
  *v8 = v8 + 32;
  *(v8 + 8) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 24) = 1;
  *(v8 + 16) = 1;
  return a1;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::~GenericDocument(void *a1, void *a2)
{
  if (a1[4])
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Destroy(a1, a2);
  rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Destroy((a1 + 5), v3);
  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Destroy(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::~MemoryPoolAllocator(result, a2);

    JUMPOUT(0x245D77F60);
  }

  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::~MemoryPoolAllocator(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4 < 2)
    {
      rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::Clear(a1, a2);
      v6 = *(a1 + 16);
      v7 = *(v6 + 1);
      if (*(v6 + 24) == 1)
      {
        v6 = FIK::RapidJsonAllocator::Free(v6, v5);
      }

      if (v7)
      {
        v8 = FIK::defaultAllocator(v6);
        (*(*v8 + 3))(v8, v7, 0, 8);
      }
    }

    else
    {
      *(v3 + 16) = v4 - 1;
    }
  }

  return a1;
}

FIK *rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::Clear(uint64_t a1, void *a2)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    result = *i;
    v5 = *(*i + 2);
    if (!v5)
    {
      break;
    }

    *i = v5;
    FIK::RapidJsonAllocator::Free(result, a2);
  }

  *(result + 1) = 0;
  return result;
}

FIK *FIK::RapidJsonAllocator::Free(FIK *this, void *a2)
{
  if (this)
  {
    v2 = *(*FIK::defaultAllocator(this) + 3);

    return v2();
  }

  return this;
}

FIK *rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Destroy(uint64_t a1, void *a2)
{
  result = FIK::RapidJsonAllocator::Free(*(a1 + 16), a2);
  if (*(a1 + 8))
  {
    v4 = *(*FIK::defaultAllocator(result) + 3);

    return v4();
  }

  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::SkipWhitespaceAndComments<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>>(uint64_t a1, unsigned __int8 ***a2)
{
  v2 = **a2;
  v3 = (*a2)[2];
  if (v2 != v3)
  {
    v4 = *v2;
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (!v5 && v6 != 0)
    {
      v8 = v2 + 1;
      if (v2 + 1 > v3 - 16)
      {
LABEL_12:
        if (v8 != v3)
        {
          v2 = (*a2)[2];
          while (1)
          {
            v17 = *v8;
            v5 = v17 > 0x20;
            v18 = (1 << v17) & 0x100002600;
            if (v5 || v18 == 0)
            {
              break;
            }

            if (++v8 == v3)
            {
              goto LABEL_23;
            }
          }
        }

        v2 = v8;
      }

      else
      {
        v9 = v2 + 9;
        v10.i64[0] = 0xFBFBFBFBFBFBFBFBLL;
        v10.i64[1] = 0xFBFBFBFBFBFBFBFBLL;
        v11.i64[0] = 0x2020202020202020;
        v11.i64[1] = 0x2020202020202020;
        v12.i64[0] = 0xA0A0A0A0A0A0A0ALL;
        v12.i64[1] = 0xA0A0A0A0A0A0A0ALL;
        v13.i64[0] = 0x909090909090909;
        v13.i64[1] = 0x909090909090909;
        while (1)
        {
          v14 = vrev64q_s8(vbicq_s8(vbicq_s8(vmvnq_s8(vceqq_s8(*(v9 - 8), v11)), vceqq_s8(*(v9 - 8), v12)), vceqq_s8(vandq_s8(*(v9 - 8), v10), v13)));
          if (v14.i64[0])
          {
            v2 = &v9[(__clz(v14.u64[0]) >> 3) - 8];
            goto LABEL_23;
          }

          if (v14.i64[1])
          {
            break;
          }

          v15 = v9 + 16;
          v16 = (v9 + 8);
          v9 += 16;
          if (v16 > (v3 - 16))
          {
            v8 = v15 - 8;
            goto LABEL_12;
          }
        }

        v2 = &v9[__clz(v14.u64[1]) >> 3];
      }
    }
  }

LABEL_23:
  **a2 = v2;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseValue<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(FIK::RapidJsonAllocator *result, void **a2, uint64_t a3)
{
  v3 = **a2;
  if (v3 == (*a2)[2])
  {
LABEL_11:
    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseNumber<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(result, a2, a3);
    return;
  }

  v4 = *v3;
  if (v4 > 109)
  {
    switch(v4)
    {
      case '{':
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseObject<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(result, a2, a3);
        break;
      case 't':
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseTrue<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(result, a2, a3);
        break;
      case 'n':
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseNull<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(result, a2, a3);
        return;
      default:
        goto LABEL_11;
    }
  }

  else
  {
    switch(v4)
    {
      case '""':
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseString<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(result, a2, a3);
        break;
      case '[':
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseArray<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(result, a2, a3);
        break;
      case 'f':
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseFalse<0u,rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>>(result, a2, a3);
        return;
      default:
        goto LABEL_11;
    }
  }
}

FIK::RapidJsonAllocator *rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32) - v4;
    v6 = v5 + ((v5 + 1) >> 1);
    v7 = *a1;
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      v4 = 0;
    }

    else
    {
      v8 = FIK::defaultAllocator(0);
      v7 = (*(*v8 + 2))(v8, 1, 8);
      *a1 = v7;
      *(a1 + 8) = v7;
      v4 = *(a1 + 16);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 32) - v4;
  }

  v9 = *(a1 + 24) - v4;
  if (v6 <= v9 + 24 * a2)
  {
    v10 = (v9 + 24 * a2);
  }

  else
  {
    v10 = v6;
  }

  result = FIK::RapidJsonAllocator::Realloc(v7, v4, v5, v10);
  *(a1 + 16) = result;
  *(a1 + 24) = result + v9;
  *(a1 + 32) = v10 + result;
  return result;
}

FIK::RapidJsonAllocator *FIK::RapidJsonAllocator::Realloc(FIK::RapidJsonAllocator *this, char *a2, unint64_t a3, FIK::RapidJsonAllocator *a4)
{
  v4 = a4;
  if (!a4)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    if (a4 <= a3)
    {
      return a2;
    }

    v7 = FIK::defaultAllocator(this);
    this = (*(*v7 + 2))(v7, v4, 8);
    v4 = this;
    if (a3)
    {
      v8 = a3;
      v9 = this;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9 = v11;
        v9 = (v9 + 1);
        --v8;
      }

      while (v8);
    }

LABEL_7:
    v12 = FIK::defaultAllocator(this);
    (*(*v12 + 3))(v12, a2, a3, 8);
    return v4;
  }

  v13 = *(*FIK::defaultAllocator(this) + 2);

  return v13();
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::String(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = a1 + 64;
  v7 = *(a1 + 64);
  v9 = *(v8 + 8) - v7;
  if (a4)
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
      v7 = *(a1 + 64);
    }

    *(a1 + 64) = v7 + 24;
    v10 = *(a1 + 24);
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v11 = &rapidjson::GenericStringRef<char>::emptyString;
    if (a2)
    {
      v11 = a2;
    }

    v14 = v11;
    v15 = a3;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::SetStringRaw(v7, &v14, v10);
  }

  else
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
      v7 = *(a1 + 64);
    }

    *(a1 + 64) = v7 + 24;
    *(v7 + 16) = 0;
    v12 = &rapidjson::GenericStringRef<char>::emptyString;
    *(v7 + 22) = 1029;
    if (a2)
    {
      v12 = a2;
    }

    *v7 = 0;
    *(v7 + 8) = v12;
    *v7 = a3;
  }

  return 1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::ParseHex4<rapidjson::EncodedInputStream<rapidjson::UTF8<char>,rapidjson::MemoryStream>>(uint64_t result, unsigned __int8 ***a2, uint64_t a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = *a2;
  v5 = (*a2)[2];
  v6 = **a2;
  v7 = 4;
  while (v6 != v5)
  {
    v8 = *v6;
    if ((v8 - 48) >= 0xA)
    {
      if (*v6 - 65 >= 6)
      {
        if (*v6 - 97 >= 6)
        {
          break;
        }

        v9 = -87;
      }

      else
      {
        v9 = -55;
      }
    }

    else
    {
      v9 = -48;
    }

    result = (v8 + 16 * result + v9);
    *v4 = ++v6;
    if (!--v7)
    {
      return result;
    }
  }

  result = 0;
  *(v3 + 48) = 8;
  *(v3 + 56) = a3;
  return result;
}

uint64_t *rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,FIK::RapidJsonAllocator>::StackStream<char>>(uint64_t *result, unsigned int a2)
{
  v3 = result;
  if (a2 <= 0x7F)
  {
    v4 = *result;
    v5 = *(*result + 24);
    if ((*(*result + 32) - v5) <= 0)
    {
      result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(*result, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = a2;
    v6 = v3 + 1;
    goto LABEL_27;
  }

  if (a2 <= 0x7FF)
  {
    v7 = (a2 >> 6) | 0xFFFFFFC0;
    v8 = *result;
    v9 = *(*result + 24);
    if ((*(*result + 32) - v9) <= 0)
    {
      result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(*result, 1);
      v9 = *(v8 + 24);
    }

    *(v8 + 24) = v9 + 1;
    *v9 = v7;
    v6 = v3 + 1;
    ++*(v3 + 2);
LABEL_24:
    v28 = *v3;
    v29 = *(v28 + 24);
    if ((*(v28 + 32) - v29) <= 0)
    {
      result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(v28, 1);
      v29 = *(v28 + 24);
    }

    *(v28 + 24) = v29 + 1;
    *v29 = a2 & 0x3F | 0x80;
    goto LABEL_27;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11;
  if (HIWORD(a2))
  {
    v21 = (a2 >> 18) | 0xFFFFFFF0;
    v14 = *(*result + 32) == v11;
    if (v12 <= 0)
    {
      result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(*result, 1);
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 + 1;
    *v11 = v21;
    v6 = v3 + 1;
    ++*(v3 + 2);
    v22 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
    v23 = *v3;
    v24 = *(*v3 + 24);
    if ((*(*v3 + 32) - v24) <= 0)
    {
      result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(*v3, 1);
      v22 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
      v24 = *(v23 + 24);
    }

    *(v23 + 24) = v24 + 1;
    *v24 = v22;
    ++*(v3 + 2);
    v25 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v26 = *v3;
    v27 = *(*v3 + 24);
    if ((*(*v3 + 32) - v27) <= 0)
    {
      result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(*v3, 1);
      v25 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      v27 = *(v26 + 24);
    }

    *(v26 + 24) = v27 + 1;
    *v27 = v25;
    ++*(v3 + 2);
    goto LABEL_24;
  }

  v13 = (a2 >> 12) | 0xFFFFFFE0;
  v14 = *(*result + 32) == v11;
  if (v12 <= 0)
  {
    result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(*result, 1);
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11 + 1;
  *v11 = v13;
  v6 = v3 + 1;
  ++*(v3 + 2);
  v15 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
  v16 = *v3;
  v17 = *(*v3 + 24);
  if ((*(*v3 + 32) - v17) <= 0)
  {
    result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(*v3, 1);
    v15 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v17 = *(v16 + 24);
  }

  *(v16 + 24) = v17 + 1;
  *v17 = v15;
  ++*(v3 + 2);
  v18 = a2 & 0x3F | 0x80;
  v19 = *v3;
  v20 = *(v19 + 24);
  if ((*(v19 + 32) - v20) <= 0)
  {
    result = rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(v19, 1);
    v18 = a2 & 0x3F | 0x80;
    v20 = *(v19 + 24);
  }

  *(v19 + 24) = v20 + 1;
  *v20 = v18;
LABEL_27:
  ++*v6;
  return result;
}

FIK::RapidJsonAllocator *rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<char>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32) - v4;
    v6 = (v5 + ((v5 + 1) >> 1));
    v7 = *a1;
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      v4 = 0;
    }

    else
    {
      v8 = FIK::defaultAllocator(0);
      v7 = (*(*v8 + 2))(v8, 1, 8);
      *a1 = v7;
      *(a1 + 8) = v7;
      v4 = *(a1 + 16);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 32) - v4;
  }

  v9 = *(a1 + 24) - v4;
  if (v6 <= v9 + a2)
  {
    v10 = (v9 + a2);
  }

  else
  {
    v10 = v6;
  }

  result = FIK::RapidJsonAllocator::Realloc(v7, v4, v5, v10);
  *(a1 + 16) = result;
  *(a1 + 24) = result + v9;
  *(a1 + 32) = v10 + result;
  return result;
}

void *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::SetStringRaw(_WORD *__dst, uint64_t a2, unint64_t *a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::Malloc(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::Malloc(unint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *a1[2];
  v5 = v4[1];
  v6 = v5 + v3;
  if (v5 + v3 <= *v4)
  {
LABEL_3:
    result = v4 + v5 + 24;
    v4[1] = v6;
    return result;
  }

  if (*a1 <= v3)
  {
    v8 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = *a1;
  }

  if (rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::AddChunk(a1, v8))
  {
    v4 = *a1[2];
    v5 = v4[1];
    v6 = v5 + v3;
    goto LABEL_3;
  }

  return 0;
}

uint64_t rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::AddChunk(FIK *a1, uint64_t a2)
{
  v3 = a1;
  if (!*(a1 + 1))
  {
    v4 = FIK::defaultAllocator(a1);
    a1 = (*(*v4 + 2))(v4, 1, 8);
    *(v3 + 1) = a1;
    *(*(v3 + 2) + 8) = a1;
  }

  if (a2 == -24)
  {
    return 0;
  }

  v5 = FIK::defaultAllocator(a1);
  result = (*(*v5 + 2))(v5, a2 + 24, 8);
  if (result)
  {
    *result = a2;
    *(result + 8) = 0;
    v7 = *(v3 + 2);
    *(result + 16) = *v7;
    *v7 = result;
    return 1;
  }

  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::StartObject(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) - v2 <= 23)
  {
    rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
    v2 = *(a1 + 64);
  }

  *(a1 + 64) = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 3;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::EndObject(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 48 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 3;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::StartArray(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) - v2 <= 23)
  {
    rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
    v2 = *(a1 + 64);
  }

  *(a1 + 64) = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 4;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::EndArray(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 24 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 4;
  if (a2)
  {
    v5 = 24 * a2;
    v6 = rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Double(uint64_t a1, double a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 534;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Int64(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 150;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a2))
    {
      v5 = 406;
    }

    else
    {
      v5 = 470;
    }

    if (!(a2 >> 31))
    {
      v5 = 502;
    }

    goto LABEL_12;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v5 = 182;
LABEL_12:
    *(v4 + 22) = v5;
  }

  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Uint64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 278;
  }

  else
  {
    v5 = 406;
  }

  if (a2 >> 31)
  {
    v6 = 470;
  }

  else
  {
    v6 = 502;
  }

  if (!HIDWORD(a2))
  {
    v5 = v6;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Int(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 182;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>,FIK::RapidJsonAllocator>::Uint(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (*(a1 + 72) - v4 <= 23)
  {
    rapidjson::internal::Stack<FIK::RapidJsonAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>>(a1 + 40, 1);
    v4 = *(a1 + 64);
  }

  *(a1 + 64) = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 470;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

FIK *rapidjson::internal::Stack<FIK::RapidJsonAllocator>::ShrinkToFit(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (a1 + 16);
  v4 = (v2 - v1);
  if (v2 == v1)
  {
    result = FIK::RapidJsonAllocator::Free(*(a1 + 16), v1);
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  else
  {
    result = FIK::RapidJsonAllocator::Realloc(*a1, v1, *(a1 + 32) - v1, v4);
    *(a1 + 16) = result;
    *(a1 + 24) = v4 + result;
    *(a1 + 32) = v4 + result;
  }

  return result;
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::StartObject(uint64_t a1)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  v2 = *(a1 + 32);
  if (*(a1 + 40) - v2 <= 15)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>((a1 + 8), 1);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 0;

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteStartObject(a1);
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::EndObject(void **a1)
{
  v2 = a1[4];
  v3 = *(v2 - 2);
  a1[4] = v2 - 2;
  if (v3)
  {
    v4 = *a1;
    v5 = (*a1)[3];
    if (((*a1)[4] - v5) <= 0)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = 10;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(a1);
  }

  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteEndObject(a1);
  return 1;
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::StartArray(uint64_t a1)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  v2 = *(a1 + 32);
  if (*(a1 + 40) - v2 <= 15)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>((a1 + 8), 1);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 1;

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteStartArray(a1);
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::EndArray(void **a1)
{
  v2 = a1[4];
  v3 = *(v2 - 2);
  a1[4] = v2 - 2;
  if (v3 && (*(a1 + 68) & 1) == 0)
  {
    v4 = *a1;
    v5 = (*a1)[3];
    if (((*a1)[4] - v5) <= 0)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = 10;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(a1);
  }

  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteEndArray(a1);
  return 1;
}

BOOL rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Double(void **a1, double a2)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  v4 = *&a2;
  if ((*&a2 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    v5 = *a1;
    v6 = (*a1)[3];
    if (((*a1)[4] - v6) <= 24)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 25);
      v6 = *(v5 + 24);
    }

    *(v5 + 24) = v6 + 25;
    if (a2 == 0.0)
    {
      v7 = v6;
      if ((*&a2 & 0x8000000000000000) != 0)
      {
        *v6 = 45;
        v7 = v6 + 1;
      }

      *v7 = 11824;
      v7[2] = 48;
      v8 = v7 + 3;
    }

    else
    {
      v9 = *(a1 + 14);
      v10 = v6;
      if (a2 < 0.0)
      {
        *v6 = 45;
        v10 = (v6 + 1);
        v4 = *&a2 ^ 0x8000000000000000;
      }

      v11 = ((v4 >> 52) & 0x7FF) - 1075;
      v12 = ((v4 >> 52) & 0x7FF) == 0;
      v31 = 0;
      if (((v4 >> 52) & 0x7FF) != 0)
      {
        v13 = v4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
      }

      else
      {
        v13 = v4 & 0xFFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v14 = -1074;
      }

      else
      {
        v14 = v11;
      }

      v40 = (2 * (v13 & 0x1FFFFFFFFFFFFFLL)) | 1;
      v41 = v14 - 1;
      v15 = rapidjson::internal::DiyFp::NormalizeBoundary(&v40);
      v17 = 2 * v13 - 1;
      if (v13 == 0x10000000000000)
      {
        v18 = -2;
      }

      else
      {
        v18 = -1;
      }

      if (v13 == 0x10000000000000)
      {
        v17 = 0x3FFFFFFFFFFFFFLL;
      }

      v38 = v15;
      v39 = v16;
      v40 = v17 << (v18 + v14 - v16);
      v41 = v16;
      v19 = (-61 - v16) * 0.301029996 + 347.0;
      v20 = v19;
      if (v19 > v19)
      {
        ++v20;
      }

      v21 = (v20 >> 3) + 1;
      v22 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_F[v21];
      v30 = 348 - 8 * v21;
      v23 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_E[v21];
      v36 = v22;
      v37 = v23;
      v24 = __clz(v13);
      v32 = v13 << v24;
      v33 = v14 - v24;
      v34 = rapidjson::internal::DiyFp::operator*(&v32, &v36);
      v35 = v25;
      v26 = rapidjson::internal::DiyFp::operator*(&v38, &v36);
      v33 = v27;
      v28 = rapidjson::internal::DiyFp::operator*(&v40, &v36);
      v32 = v26 - 1;
      rapidjson::internal::DigitGen(&v34, &v32, v26 - 1 + ~v28, v10, &v31, &v30);
      v8 = rapidjson::internal::Prettify(v10, v31, v30, v9);
    }

    (*a1)[3] = (*a1)[3] + v8 - v6 - 25;
  }

  return (*&a2 & 0x7FF0000000000000) != 0x7FF0000000000000;
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int(_BYTE *a1, rapidjson::internal *a2)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  v5 = *a1;
  v6 = *(*a1 + 24);
  if ((*(*a1 + 32) - v6) <= 10)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 11);
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 + 11;
  if ((a2 & 0x80000000) != 0)
  {
    *v6 = 45;
    v7 = v6 + 1;
    a2 = -a2;
  }

  else
  {
    v7 = v6;
  }

  *(*a1 + 24) = *(*a1 + 24) + rapidjson::internal::u32toa(a2, v7, v4) - v6 - 11;
  return 1;
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint(_BYTE *a1, rapidjson::internal *a2)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  v5 = *a1;
  v6 = *(*a1 + 24);
  if ((*(*a1 + 32) - v6) <= 9)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 10);
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 + 10;
  *(*a1 + 24) = *(*a1 + 24) + rapidjson::internal::u32toa(a2, v6, v4) - v6 - 10;
  return 1;
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int64(_BYTE *a1, unint64_t a2)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  v5 = *a1;
  v6 = *(*a1 + 24);
  if ((*(*a1 + 32) - v6) <= 20)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 21);
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 + 21;
  if ((a2 & 0x8000000000000000) != 0)
  {
    *v6 = 45;
    v7 = v6 + 1;
    a2 = -a2;
  }

  else
  {
    v7 = v6;
  }

  *(*a1 + 24) = *(*a1 + 24) + rapidjson::internal::u64toa(a2, v7, v4) - v6 - 21;
  return 1;
}

uint64_t rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint64(_BYTE *a1, unint64_t a2)
{
  rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  v5 = *a1;
  v6 = *(*a1 + 24);
  if ((*(*a1 + 32) - v6) <= 19)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 20);
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 + 20;
  *(*a1 + 24) = *(*a1 + 24) + rapidjson::internal::u64toa(a2, v6, v4) - v6 - 20;
  return 1;
}

_BYTE *rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(_BYTE *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2 == *(result + 3))
  {
    result[60] = 1;
    return result;
  }

  v3 = *(v2 - 16);
  if (*(v2 - 8) == 1)
  {
    if (v3)
    {
      v4 = *result;
      v5 = *(*result + 24);
      if ((*(*result + 32) - v5) <= 0)
      {
        v18 = *result;
        result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v4, 1);
        v4 = v18;
        v5 = v18[3];
      }

      v4[3] = v5 + 1;
      *v5 = 44;
      if (v1[68])
      {
        v6 = *v1;
        v7 = *(*v1 + 24);
        if ((*(*v1 + 32) - v7) <= 0)
        {
          v20 = *v1;
          result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v6, 1);
          v6 = v20;
          v7 = v20[3];
        }

        v6[3] = v7 + 1;
        *v7 = 32;
      }
    }

    if (v1[68])
    {
      goto LABEL_30;
    }

    v8 = *v1;
    v9 = *(*v1 + 24);
    if ((*(*v1 + 32) - v9) <= 0)
    {
      v19 = *v1;
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v8, 1);
      v8 = v19;
      v9 = v19[3];
    }

    v8[3] = v9 + 1;
    *v9 = 10;
    goto LABEL_29;
  }

  if (!v3)
  {
    goto LABEL_20;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11 <= 0;
  if ((v3 & 1) == 0)
  {
    if ((*(*result + 32) - v11) <= 0)
    {
      v21 = *result;
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v10, 1);
      v10 = v21;
      v11 = v21[3];
    }

    v10[3] = v11 + 1;
    *v11 = 44;
LABEL_20:
    v13 = *v1;
    v14 = *(*v1 + 24);
    if ((*(*v1 + 32) - v14) <= 0)
    {
      v17 = *v1;
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v13, 1);
      v13 = v17;
      v14 = v17[3];
    }

    v13[3] = v14 + 1;
    v15 = 10;
    goto LABEL_28;
  }

  if ((*(*result + 32) - v11) <= 0)
  {
    v22 = *result;
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v10, 1);
    v10 = v22;
    v11 = v22[3];
  }

  v10[3] = v11 + 1;
  *v11 = 58;
  v16 = *v1;
  v14 = *(*v1 + 24);
  if ((*(*v1 + 32) - v14) <= 0)
  {
    v23 = *v1;
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v16, 1);
    v16 = v23;
    v14 = v23[3];
  }

  v16[3] = v14 + 1;
  v15 = 32;
LABEL_28:
  *v14 = v15;
  if ((*(v2 - 16) & 1) == 0)
  {
LABEL_29:
    result = rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(v1);
  }

LABEL_30:
  ++*(v2 - 16);
  return result;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteNull(uint64_t a1)
{
  v2 = *a1;
  v3 = v2[3];
  if ((v2[4] - v3) <= 3)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v2, 4);
    v2 = *a1;
    v3 = *(*a1 + 24);
  }

  v2[3] = v3 + 1;
  *v3 = 110;
  v4 = *(*a1 + 24);
  *(*a1 + 24) = v4 + 1;
  *v4 = 117;
  v5 = *(*a1 + 24);
  *(*a1 + 24) = v5 + 1;
  *v5 = 108;
  v6 = *(*a1 + 24);
  *(*a1 + 24) = v6 + 1;
  *v6 = 108;
  return 1;
}

void *rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(uint64_t a1)
{
  v1 = ((*(a1 + 32) - *(a1 + 24)) >> 4) * *(a1 + 64);
  v2 = *a1;
  v3 = *(a1 + 61);
  v4 = *(*a1 + 24);
  if (v2[4] - v4 < v1)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v2, v1);
    v4 = v2[3];
  }

  v2[3] = &v4[v1];

  return memset(v4, v3, v1);
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a1[3] + a2 - v2;
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(void *a1, size_t size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (size)
  {
    result = malloc_type_realloc(v4, size, 0xD5BB006EuLL);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[size];
  return result;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteBool(uint64_t a1, int a2)
{
  v3 = *a1;
  v4 = v3[3];
  v5 = v3[4] - v4;
  if (a2)
  {
    if (v5 <= 3)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v3, 4);
      v3 = *a1;
      v4 = *(*a1 + 24);
    }

    v3[3] = v4 + 1;
    *v4 = 116;
    v6 = 117;
    v7 = 114;
  }

  else
  {
    if (v5 <= 4)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v3, 5);
      v3 = *a1;
      v4 = *(*a1 + 24);
    }

    v3[3] = v4 + 1;
    *v4 = 102;
    v8 = *(*a1 + 24);
    *(*a1 + 24) = v8 + 1;
    *v8 = 97;
    v6 = 115;
    v7 = 108;
  }

  v9 = *(*a1 + 24);
  *(*a1 + 24) = v9 + 1;
  *v9 = v7;
  v10 = *(*a1 + 24);
  *(*a1 + 24) = v10 + 1;
  *v10 = v6;
  v11 = *(*a1 + 24);
  *(*a1 + 24) = v11 + 1;
  *v11 = 101;
  return 1;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteStartObject(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 123;
  return 1;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a1[3] + 16 * a2 - v2;
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteEndObject(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 125;
  return 1;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteStartArray(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 91;
  return 1;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteEndArray(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  if (((*a1)[4] - v2) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 1);
    v2 = *(v1 + 24);
  }

  *(v1 + 24) = v2 + 1;
  *v2 = 93;
  return 1;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(uint64_t a1, int8x16_t *a2, unsigned int a3)
{
  v6 = *a1;
  v7 = 6 * a3 + 2;
  v8 = v6[3];
  if (v6[4] - v8 < v7)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v6, v7);
    v6 = *a1;
    v8 = *(*a1 + 24);
  }

  v6[3] = v8 + 1;
  *v8 = 34;
  v9 = a2->u64 + a3;
  v10.i64[0] = 0x2222222222222222;
  v10.i64[1] = 0x2222222222222222;
  v11.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v11.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v12.i64[0] = 0x2020202020202020;
  v12.i64[1] = 0x2020202020202020;
  for (i = a2; ; i = (i + 1))
  {
    v14 = i - a2;
    if (a3 < 0x10 || v14 >= a3)
    {
      if (a3 > 0xF)
      {
        break;
      }
    }

    else
    {
      v15 = (&i->u64[1] + 7) & 0xFFFFFFFFFFFFFFF0;
      if (v9 < v15)
      {
        goto LABEL_27;
      }

      while (1)
      {
        if (i == v15)
        {
          while (1)
          {
            if (i == (v9 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_25;
            }

            v19 = *i;
            v20 = vrev64q_s8(vorrq_s8(vorrq_s8(vceqq_s8(*i, v10), vceqq_s8(*i, v11)), vcgtq_u8(v12, *i)));
            if (v20.i64[0])
            {
              break;
            }

            if (v20.i64[1])
            {
              v21 = (__clz(v20.u64[1]) >> 3) | 8;
              v22 = *(*a1 + 24);
              *(*a1 + 24) = v22 + v21;
LABEL_22:
              v24 = 0;
              do
              {
                *(v22 + v24) = i->i8[v24];
                ++v24;
              }

              while (v21 != v24);
              goto LABEL_24;
            }

            v18 = *(*a1 + 24);
            *(*a1 + 24) = v18 + 1;
            *v18 = v19;
            ++i;
          }

          v23 = __clz(v20.u64[0]);
          v22 = *(*a1 + 24);
          *(*a1 + 24) = v22 + (v23 >> 3);
          if (!HIBYTE(v20.i64[0]))
          {
            v21 = v23 >> 3;
            goto LABEL_22;
          }

          v21 = 0;
LABEL_24:
          i = (i + v21);
          break;
        }

        v16 = i->i8[0];
        if (v16 < 32 || v16 == 34 || i->i8[0] == 92)
        {
          break;
        }

        i = (i + 1);
        v17 = *(*a1 + 24);
        *(*a1 + 24) = v17 + 1;
        *v17 = v16;
      }

LABEL_25:
      v14 = i - a2;
    }

    if (v14 >= a3)
    {
      break;
    }

LABEL_27:
    v25 = i->u8[0];
    v26 = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::escape[v25];
    v27 = *(*a1 + 24);
    *(*a1 + 24) = v27 + 1;
    if (v26)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(v27, a1, v26, v25);
      v12.i64[0] = 0x2020202020202020;
      v12.i64[1] = 0x2020202020202020;
      v11.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
      v11.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
      v10.i64[0] = 0x2222222222222222;
      v10.i64[1] = 0x2222222222222222;
    }

    else
    {
      *v27 = v25;
    }
  }

  v28 = *(*a1 + 24);
  *(*a1 + 24) = v28 + 1;
  *v28 = 34;
  return 1;
}

char *rapidjson::internal::Prettify(rapidjson::internal *this, char *a2, int a3, int a4)
{
  v6 = a2;
  v8 = a3 + a2;
  if ((a3 & 0x80000000) == 0 && v8 <= 21)
  {
    if (a3)
    {
      v9 = this + a2;
      if (v8 <= a2 + 1)
      {
        v10 = a2 + 1;
      }

      else
      {
        v10 = a3 + a2;
      }

      memset(v9, 48, (v10 + ~a2) + 1);
    }

    v11 = this + v8;
    v12 = 12334;
    goto LABEL_9;
  }

  v14 = v8 - 1;
  if ((v8 - 1) > 0x14)
  {
    if (v8 == 0 || v8 >= 0xFFFFFFFB)
    {
      v18 = 2 - v8;
      memmove(this + v18, this, a2);
      *this = 11824;
      if (v8 < 0)
      {
        if (v18 <= 3)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2 - v8;
        }

        memset(this + 2, 48, (v19 - 2));
      }

      if (-a3 <= a4)
      {
        return this + v18 + v6;
      }

      if (a4 >= 2)
      {
        LODWORD(v20) = a4 + 2;
        while (1)
        {
          v20 = (v20 - 1);
          if (*(this + v20) != 48)
          {
            break;
          }

          if (v20 < 4)
          {
            return this + 3;
          }
        }

        v17 = this + v20;
        return v17 + 1;
      }

      return this + 3;
    }

    if (v8 < -a4)
    {
      *this = 11824;
      *(this + 2) = 48;
      return this + 3;
    }

    if (a2 == 1)
    {
      *(this + 1) = 101;
      if ((v14 & 0x80000000) == 0)
      {
        v11 = this + 2;
        goto LABEL_44;
      }

      v11 = this + 3;
      *(this + 2) = 45;
    }

    else
    {
      memmove(this + 2, this + 1, a2 - 1);
      *(this + 1) = 46;
      v22 = this + v6;
      v22[1] = 101;
      if ((v14 & 0x80000000) == 0)
      {
        v11 = v22 + 2;
        goto LABEL_44;
      }

      v11 = v22 + 3;
      v22[2] = 45;
    }

    v14 = 1 - v8;
LABEL_44:
    if (v14 < 0x64)
    {
      if (v14 >= 0xA)
      {
        v12 = rapidjson::internal::GetDigitsLut(void)::cDigitsLut[v14];
LABEL_9:
        *v11 = v12;
        return v11 + 2;
      }

      *v11 = v14 | 0x30;
      return v11 + 1;
    }

    else
    {
      *v11 = v14 / 0x64 + 48;
      *(v11 + 1) = rapidjson::internal::GetDigitsLut(void)::cDigitsLut[v14 % 0x64];
      return v11 + 3;
    }
  }

  v15 = (v8 + 1);
  v16 = this + v8;
  memmove(this + v15, v16, -a3);
  *v16 = 46;
  if (a4 + a3 >= 0)
  {
    v17 = this + v6;
    return v17 + 1;
  }

  if (a4 < 2)
  {
    return v16 + 2;
  }

  v21 = v8 + a4;
  result = this + v8 + a4 + 1;
  while (*(this + v21) == 48)
  {
    --v21;
    --result;
    if (v21 <= v15)
    {
      return v16 + 2;
    }
  }

  return result;
}

unint64_t rapidjson::internal::DiyFp::operator*(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((((*a2 * *a1) >> 32) + v5 + v4 + 0x80000000) >> 32);
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return v6;
}

uint64_t rapidjson::internal::DigitGen(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, int *a5, _DWORD *a6)
{
  v6 = -*(a2 + 2);
  v7 = 1;
  v8 = 1 << -*(a2 + 8);
  v9 = *a2;
  v10 = *a1;
  result = *a2 >> -*(a2 + 8);
  v12 = (v8 - 1) & *a2;
  if (result >= 0xA)
  {
    if (result >= 0x64)
    {
      if (result >= 0x3E8)
      {
        if (result >> 4 >= 0x271)
        {
          if (result >= 0x186A0)
          {
            if (result >= 0xF4240)
            {
              if (result >= 0x989680)
              {
                if (result < 0x5F5E100)
                {
                  v7 = 8;
                }

                else
                {
                  v7 = 9;
                }
              }

              else
              {
                v7 = 7;
              }
            }

            else
            {
              v7 = 6;
            }
          }

          else
          {
            v7 = 5;
          }
        }

        else
        {
          v7 = 4;
        }
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
    }
  }

  v13 = v9 - v10;
  *a5 = 0;
  while (v7 > 0)
  {
    if (v7 <= 4)
    {
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v14 = result / 0x64;
          v16 = result % 0x64;
        }

        else
        {
          v14 = result / 0x3E8;
          v16 = result % 0x3E8;
        }

        goto LABEL_38;
      }

      if (v7 != 1)
      {
        v14 = result / 0xA;
        v16 = result % 0xA;
        goto LABEL_38;
      }

      v16 = 0;
LABEL_39:
      v17 = *a5;
      if (result)
      {
        v18 = result + 48;
        result = v16;
      }

      else
      {
        result = v16;
        if (!v17)
        {
          goto LABEL_46;
        }

LABEL_44:
        v18 = 48;
      }

      *a5 = v17 + 1;
      *(a4 + v17) = v18;
      goto LABEL_46;
    }

    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v14 = result / 0x2710;
        v16 = result % 0x2710;
      }

      else
      {
        v14 = result / 0x186A0;
        v16 = result % 0x186A0;
      }

      goto LABEL_38;
    }

    switch(v7)
    {
      case 7:
        v14 = result / 0xF4240;
        v15 = 1000000;
        goto LABEL_37;
      case 8:
        v14 = result / 0x989680;
        v15 = 10000000;
LABEL_37:
        v16 = result - v14 * v15;
LABEL_38:
        LODWORD(result) = v14;
        goto LABEL_39;
      case 9:
        v14 = result / 0x5F5E100;
        v15 = 100000000;
        goto LABEL_37;
    }

    v17 = *a5;
    if (*a5)
    {
      goto LABEL_44;
    }

LABEL_46:
    --v7;
    v19 = result << v6;
    if (a3 >= v19 + v12)
    {
      *a6 += v7;
      if (v19 + v12 < v13)
      {
        v20 = rapidjson::internal::DigitGen(rapidjson::internal::DiyFp const&,rapidjson::internal::DiyFp const&,unsigned long long,char *,int *,int *)::kPow10[v7] << v6;
        if (a3 - (v19 + v12) >= v20)
        {
          v21 = *a5;
          v22 = v12 + v19;
          v23 = v13 - v22;
          v24 = v22 + v20;
          v25 = a3 - v24;
          v26 = v10 - v9;
          do
          {
            if (v24 >= v13 && v23 <= v26 + v24)
            {
              break;
            }

            --*(a4 - 1 + v21);
            if (v24 >= v13)
            {
              break;
            }

            v23 -= v20;
            v24 += v20;
            v27 = v25 >= v20;
            v25 -= v20;
          }

          while (v27);
        }
      }

      return result;
    }
  }

  v28 = 0;
  do
  {
    v29 = a3;
    v30 = 10 * v12;
    v31 = *a5;
    if ((v30 >> v6))
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 == 0;
    }

    if (!v32)
    {
      *a5 = v31 + 1;
      *(a4 + v31) = (v30 >> v6) + 48;
    }

    a3 *= 10;
    v12 = v30 & (v8 - 1);
    ++v28;
  }

  while (10 * v29 <= v12);
  *a6 -= v28;
  if ((1 - v28) < -18)
  {
    v33 = 0;
  }

  else
  {
    v33 = rapidjson::internal::DigitGen(rapidjson::internal::DiyFp const&,rapidjson::internal::DiyFp const&,unsigned long long,char *,int *,int *)::kPow10[v28];
  }

  if (10 * v29 - v12 >= v8)
  {
    v34 = v33 * v13;
    v35 = v33 * v13 - v12;
    if (v33 * v13 > v12)
    {
      v36 = *a5;
      v37 = v8 + v12;
      result = -v37;
      v38 = 10 * v29 - v37;
      v39 = -(v33 * v13);
      do
      {
        if (v37 >= v34 && v35 <= v39 + v37)
        {
          break;
        }

        --*(a4 - 1 + v36);
        if (v37 >= v34)
        {
          break;
        }

        v35 -= v8;
        v37 += v8;
        v27 = v38 >= v8;
        v38 -= v8;
      }

      while (v27);
    }
  }

  return result;
}

uint64_t rapidjson::internal::DiyFp::NormalizeBoundary(rapidjson::internal::DiyFp *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if ((*this & 0x20000000000000) == 0)
  {
    v3 = __clz(v2 & 0x1FFFFFFFFFFFFFLL) ^ 0x3F;
    v2 <<= 53 - v3;
    v4 = v3 - 53;
    do
    {
      v1 = (v1 - 1) | v1 & 0xFFFFFFFF00000000;
    }

    while (!__CFADD__(v4++, 1));
  }

  return v2 << 10;
}

_BYTE *rapidjson::internal::u32toa(rapidjson::internal *this, _BYTE *a2, char *a3)
{
  if (this >> 4 <= 0x270)
  {
    if (this < 0x3E8)
    {
      if (this < 0x64)
      {
        if (this < 0xA)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this / 0x64u));
    }

    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this / 0x64u) + 1);
LABEL_9:
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x64u));
LABEL_10:
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (this % 0x64u)) + 1);
    return a2 + 1;
  }

  if (this < 0x5F5E100)
  {
    v3 = (this / 0x7A120uLL) & 0x3FFE;
    if (this < 0x989680)
    {
      if (this < 0xF4240)
      {
        if (this >> 5 < 0xC35)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3);
    }

    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3 + 1);
LABEL_15:
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * ((this / 0x2710) % 0x64u));
LABEL_16:
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * ((this / 0x2710) % 0x64u)) + 1);
    a2[1] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64));
    a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64) + 1);
    a2[3] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 % 0x64));
    a2[4] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (this % 0x2710 % 0x64)) + 1);
    return a2 + 5;
  }

  v5 = this / 0x5F5E100;
  v6 = this % 0x5F5E100;
  if (this < 0x3B9ACA00)
  {
    *a2 = v5 | 0x30;
    v7 = a2 + 1;
  }

  else
  {
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v5);
    v7 = a2 + 2;
  }

  v8 = v7;
  *v7 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + ((v6 / 0x7A120uLL) & 0x3FFE));
  *(v7 + 1) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v6 / 0x2710) % 0x64u);
  *(v7 + 2) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v6 % 0x2710 / 0x64);
  v7[6] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v6 % 0x2710 % 0x64));
  v4 = v7 + 8;
  v8[7] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v6 % 0x2710 % 0x64)) + 1);
  return v4;
}

_BYTE *rapidjson::internal::u64toa(unint64_t this, _BYTE *a2, char *a3)
{
  if (this >= 0x5F5E100)
  {
    if (this < 0x2386F26FC10000)
    {
      v4 = this % 0x5F5E100;
      v5 = this / 0x5F5E100;
      v6 = (v5 / 0x7A120uLL) & 0x3FFE;
      v7 = 2 * ((v5 / 0x2710) % 0x64u);
      v8 = 2 * (v5 % 0x2710 / 0x64);
      v9 = 2 * (v5 % 0x2710 % 0x64);
      v10 = v4 % 0x2710;
      v11 = (v4 / 0x7A120uLL) & 0x3FFE;
      v12 = 2 * ((v4 / 0x2710) % 0x64u);
      if (this < 0x38D7EA4C68000)
      {
        if (this < 0x5AF3107A4000)
        {
          if (this < 0x9184E72A000)
          {
            if (this < 0xE8D4A51000)
            {
              if (this < 0x174876E800)
              {
                if (this < 0x2540BE400)
                {
                  if (this < 0x3B9ACA00)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v8 + 1);
LABEL_22:
                *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v9);
LABEL_23:
                *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v9 + 1);
                a2[1] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v11);
                a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v11 + 1);
                a2[3] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v12);
                a2[4] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v12 + 1);
                a2[5] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v10 / 0x64u));
                a2[6] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v10 / 0x64u) + 1);
                a2[7] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v10 % 0x64u));
                a2[8] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v10 % 0x64u)) + 1);
                return a2 + 9;
              }

LABEL_20:
              *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v8);
              goto LABEL_21;
            }

LABEL_19:
            *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v7 + 1);
            goto LABEL_20;
          }

LABEL_18:
          *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v7);
          goto LABEL_19;
        }
      }

      else
      {
        *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v6);
      }

      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v6 + 1);
      goto LABEL_18;
    }

    v14 = this / 0x2386F26FC10000;
    v15 = this % 0x2386F26FC10000;
    if (this > 0x16345785D89FFFFLL)
    {
      if (this > 0xDE0B6B3A763FFFFLL)
      {
        v22 = (1311 * v14) >> 17;
        if (this > 0x8AC7230489E7FFFFLL)
        {
          v23 = 2 * (v14 - 100 * v22);
          *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v22);
          a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v23);
          v24 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v23 & 0xFFFE) + 1);
          v18 = a2 + 4;
          a2[3] = v24;
        }

        else
        {
          *a2 = v22 + 48;
          *(a2 + 1) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v14 - 100 * v22));
          v18 = a2 + 3;
        }

        goto LABEL_31;
      }

      *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v14);
      v16 = a2 + 2;
    }

    else
    {
      *a2 = v14 | 0x30;
      v16 = a2 + 1;
    }

    v18 = v16;
LABEL_31:
    v19 = v15 % 0x5F5E100;
    v20 = v15 / 0x5F5E100;
    *v18 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + ((v20 / 0x7A120uLL) & 0x3FFE));
    *(v18 + 1) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v20 / 0x2710) % 0x64u);
    *(v18 + 2) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v20 % 0x2710 / 0x64);
    v18[6] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v20 % 0x2710 % 0x64));
    v18[7] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v20 % 0x2710 % 0x64)) + 1);
    *(v18 + 4) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + ((v19 / 0x7A120uLL) & 0x3FFE));
    *(v18 + 5) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (v19 / 0x2710) % 0x64u);
    *(v18 + 6) = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v19 % 0x2710 / 0x64);
    v18[14] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (v19 % 0x2710 % 0x64));
    v17 = v18 + 16;
    v18[15] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (v19 % 0x2710 % 0x64)) + 1);
    return v17;
  }

  if (this >> 4 > 0x270)
  {
    v13 = (this / 0x7A120uLL) & 0x3FFE;
    if (this < 0x989680)
    {
      if (this < 0xF4240)
      {
        if (this >> 5 < 0xC35)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v13);
    }

    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v13 + 1);
LABEL_26:
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * ((this / 0x2710) % 0x64u));
LABEL_27:
    *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * ((this / 0x2710) % 0x64u)) + 1);
    a2[1] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64));
    a2[2] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 / 0x64) + 1);
    a2[3] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x2710 % 0x64));
    a2[4] = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + (2 * (this % 0x2710 % 0x64)) + 1);
    return a2 + 5;
  }

  v3 = 2 * (this / 0x64uLL);
  if (this < 0x3E8)
  {
    if (this < 0x64)
    {
      if (this < 0xA)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3);
  }

  *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + v3 + 1);
LABEL_14:
  *a2++ = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x64));
LABEL_15:
  *a2 = *(&rapidjson::internal::GetDigitsLut(void)::cDigitsLut + 2 * (this % 0x64) + 1);
  return a2 + 1;
}

uint64_t std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(uint64_t a1, const char *a2)
{
  v4 = FIK::defaultAllocator(a1);
  *(a1 + 24) = v4;
  v5 = strlen(a2);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = (*(*v4 + 2))(v4, v8, 128);
    *(a1 + 8) = v6;
    *(a1 + 16) = v8 | 0x8000000000000000;
    *a1 = v7;
  }

  else
  {
    *(a1 + 23) = v5;
    v7 = a1;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  memmove(v7, a2, v6);
LABEL_10:
  *(v7 + v6) = 0;
  return a1;
}

BOOL rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(unsigned int *a1, int *a2)
{
  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v2 = 21 - *(a1 + 21);
  }

  else
  {
    v2 = *a1;
  }

  v3 = 21 - *(a2 + 21);
  if ((*(a2 + 11) & 0x1000) == 0)
  {
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  if ((*(a1 + 11) & 0x1000) == 0)
  {
    a1 = *(a1 + 1);
  }

  if ((*(a2 + 11) & 0x1000) == 0)
  {
    a2 = *(a2 + 1);
  }

  return a1 == a2 || memcmp(a1, a2, v2) == 0;
}

double rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble(_WORD *a1, double a2)
{
  v2 = a1[11];
  if ((v2 & 0x200) != 0)
  {
    return *a1;
  }

  if ((v2 & 0x20) != 0)
  {
    return *a1;
  }

  if ((v2 & 0x40) != 0)
  {
    LODWORD(a2) = *a1;
    return *&a2;
  }

  else
  {
    v3 = *a1;
    if ((v2 & 0x80) != 0)
    {
      return v3;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100](uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 24) = *a3;
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a2 | 7) + 1;
    }

    v7 = (*(*v4 + 16))(v4, v6, 128);
    *(a1 + 8) = a2;
    *(a1 + 16) = v6 | 0x8000000000000000;
    *a1 = v7;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(void *__src, void *a2, size_t a3)
{
  v6 = *(__src + 23);
  if (v6 < 0)
  {
    v8 = __src[1];
    v7 = (__src[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 22;
    v8 = *(__src + 23);
  }

  if (v7 - v8 >= a3)
  {
    if (a3)
    {
      v9 = __src;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = *__src;
      }

      memmove(v9 + v8, a2, a3);
      v10 = v8 + a3;
      if (*(__src + 23) < 0)
      {
        __src[1] = v10;
      }

      else
      {
        *(__src + 23) = v10 & 0x7F;
      }

      *(v9 + v10) = 0;
    }
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by_and_replace(__src, v7, a3 - v7 + v8, v8, v8, 0, a3, a2);
  }

  return __src;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by_and_replace(void *__src, unint64_t a2, unint64_t a3, uint64_t a4, size_t __len, uint64_t a6, size_t a7, const void *a8)
{
  if (0x7FFFFFFFFFFFFFF6 - a2 < a3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = __src;
  v14 = __src;
  if (*(__src + 23) < 0)
  {
    v14 = *__src;
  }

  if (a2 >= 0x3FFFFFFFFFFFFFF3)
  {
    v18 = __src + 3;
    v17 = 0x7FFFFFFFFFFFFFF7;
    goto LABEL_17;
  }

  v15 = a3 + a2;
  if (a3 + a2 <= 2 * a2)
  {
    v15 = 2 * a2;
  }

  if ((v15 | 7) == 0x17)
  {
    v16 = 25;
  }

  else
  {
    v16 = (v15 | 7) + 1;
  }

  if (v15 >= 0x17)
  {
    v17 = v16;
  }

  else
  {
    v17 = 23;
  }

  v18 = __src + 3;
  if (v17)
  {
LABEL_17:
    __src = (*(**v18 + 16))(*v18, v17, 128);
    v19 = __src;
    v20 = v17 | 0x8000000000000000;
    if (!__len)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = 0;
  v20 = 0x8000000000000000;
  if (__len)
  {
LABEL_18:
    __src = memmove(v19, v14, __len);
  }

LABEL_19:
  if (a7)
  {
    __src = memmove(&v19[__len], a8, a7);
  }

  v21 = a4 - (a6 + __len);
  if (v21)
  {
    __src = memmove(&v19[__len + a7], &v14[__len + a6], v21);
  }

  if (a2 != 22 && v14)
  {
    __src = (*(**v18 + 24))(*v18, v14, 0, 8);
  }

  v22 = a7 + __len + v21;
  *v13 = v19;
  v13[1] = v22;
  v13[2] = v20;
  v19[v22] = 0;
  return __src;
}

void **std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__assign_no_alias<false>(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v2 = *a2;
      result[2] = a2[2];
      *result = v2;
    }
  }

  return result;
}

_BYTE *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__assign_no_alias<true>(_BYTE *__src, void *a2, size_t a3)
{
  v5 = a3 > 0x16;
  v6 = a3 - 22;
  if (v5)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by_and_replace(__src, 0x16uLL, v6, __src[23] & 0x7F, 0, __src[23] & 0x7F, a3, a2);
  }

  else
  {
    __src[23] = a3;
    if (a3)
    {
      memmove(__src, a2, a3);
    }

    __src[a3] = 0;
  }

  return __src;
}

void **std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__assign_no_alias<false>(void **__src, void *a2, size_t a3)
{
  v5 = __src[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= a3)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by_and_replace(__src, v5 - 1, a3 - v5 + 1, __src[1], 0, __src[1], a3, a2);
  }

  else
  {
    v6 = *__src;
    __src[1] = a3;
    if (a3)
    {
      memmove(v6, a2, a3);
    }

    *(v6 + a3) = 0;
  }

  return __src;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(void **__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = (*(*__dst[3] + 16))(__dst[3], v6, 128);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    *(__dst + 23) = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

uint64_t std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_stringbuf[abi:nn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  v4 = MEMORY[0x245D77EE0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_28589BA20;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = FIK::defaultAllocator(v4);
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void *std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 96) = 0;
  result = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = result;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 104);
  if ((v6 & 8) != 0)
  {
    *(a1 + 96) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 96) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::resize(result, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 104) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }

  return result;
}

void *std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::str@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = result[12];
    v5 = result[6];
    if (v4 < v5)
    {
      result[12] = v5;
      v4 = v5;
    }

    v6 = result[5];
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = result[11];
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = v3;
      return result;
    }

    v6 = result[2];
    v4 = result[4];
  }

  a2[3] = result[11];
  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_with_size[abi:nn200100]<char *,char *>(a2, v6, v4, v4 - v6);
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_with_size[abi:nn200100]<char *,char *>(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = (*(*__dst[3] + 16))(__dst[3], v8, 128);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::insert(void *__src, size_t __len, char *a3, size_t a4)
{
  v5 = a3;
  v8 = *(__src + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8 >= __len)
    {
      v9 = 22;
      v10 = *(__src + 23);
      goto LABEL_6;
    }

LABEL_24:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = __src[1];
  if (v10 < __len)
  {
    goto LABEL_24;
  }

  v9 = (__src[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
LABEL_6:
  if (v9 - v10 >= a4)
  {
    if (a4)
    {
      v11 = __src;
      if ((v8 & 0x80000000) != 0)
      {
        v11 = *__src;
      }

      if (v10 != __len)
      {
        v12 = v11 + __len;
        if (v11 + v10 <= a3 || v12 > a3)
        {
          v14 = 0;
        }

        else
        {
          v14 = a4;
        }

        v5 = &a3[v14];
        memmove(&v12[a4], v12, v10 - __len);
      }

      memmove(v11 + __len, v5, a4);
      v15 = v10 + a4;
      if (*(__src + 23) < 0)
      {
        __src[1] = v15;
      }

      else
      {
        *(__src + 23) = v15 & 0x7F;
      }

      *(v11 + v15) = 0;
    }
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__grow_by_and_replace(__src, v9, v10 + a4 - v9, v10, __len, 0, a4, a3);
  }

  return __src;
}