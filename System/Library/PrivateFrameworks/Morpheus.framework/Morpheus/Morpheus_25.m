void std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = (a1 + 264);
  v3 = *(a1 + 264);
  v4 = *v3;
  v5 = *v3 == 1 && v3[1] == 1 && v3[2] == 1;
  v165 = v5;
  v6 = *(a1 + 240);
  v7 = (a1 + 216);
  v8 = (a1 + 60);
  v9 = (a1 + 68);
  v148 = (a1 + 240);
  v10 = *v6;
  v144 = a1;
  v136 = (a1 + 64);
  if (*(a1 + 288))
  {
    v11 = -v10;
    v13 = v6[1];
    v12 = v6[2];
    v14 = -v13;
    v15 = -v12;
    v16 = (*v8 - 1) * v10;
    v154 = (*(a1 + 64) - 1) * v13;
    v17 = (*v9 - 1) * v12;
  }

  else
  {
    v154 = 0;
    v16 = 0;
    v17 = 0;
    v14 = v6[1];
    v15 = v6[2];
    v11 = *v6;
  }

  v18 = std::lcm[abi:ne200100]<int,int>(v4, v10);
  v19 = *(*v148 + 4);
  v164 = v18 / **v148;
  v20 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v19);
  v21 = *(*v148 + 8);
  v163 = v20 / *(*v148 + 4);
  v162 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v21) / *(*v148 + 8);
  v22 = std::lcm[abi:ne200100]<int,int>(**v2, **v7);
  v23 = (*v7)[1];
  v161 = v22 / **v7;
  v24 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v23);
  v25 = (*v7)[2];
  v160 = v24 / (*v7)[1];
  v159 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v25) / (*v7)[2];
  std::vector<int>::vector[abi:ne200100](v158, v161);
  std::vector<int>::vector[abi:ne200100](v157, v160);
  std::vector<int>::vector[abi:ne200100](v156, v159);
  v26 = (v148 - 48);
  if (v161 >= 1)
  {
    v27 = 0;
    v28 = *v7;
    v29 = *v26;
    v30 = v158[0];
    v31 = *v2;
    do
    {
      if (*v8 < 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = v16 + *v28 * v27 - *v29;
        while (v33 % *v31)
        {
          ++v32;
          v33 += v11;
          if (*v8 == v32)
          {
            v32 = *v8;
            break;
          }
        }
      }

      v30[v27++] = v32;
    }

    while (v27 < v161);
  }

  v147 = v148 + 48;
  v146 = (v148 - 184);
  if (v160 >= 1)
  {
    v34 = 0;
    v35 = *v7;
    v36 = *v26;
    v37 = v157[0];
    v38 = *v2;
    do
    {
      if (*v136 < 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = 0;
        v40 = v154 + v35[1] * v34 - v36[1];
        while (v40 % v38[1])
        {
          ++v39;
          v40 += v14;
          if (*v136 == v39)
          {
            v39 = *v136;
            break;
          }
        }
      }

      v37[v34++] = v39;
    }

    while (v34 < v160);
  }

  if (v159 >= 1)
  {
    v41 = 0;
    v42 = *v7;
    v43 = *v26;
    v44 = v156[0];
    v45 = *v2;
    do
    {
      if (*v9 < 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = 0;
        v47 = v17 + v42[2] * v41 - v43[2];
        while (v47 % v45[2])
        {
          ++v46;
          v47 += v15;
          if (*v9 == v46)
          {
            v46 = *v9;
            break;
          }
        }
      }

      v44[v41++] = v46;
    }

    while (v41 < v159);
  }

  v155[0] = v148 - 80;
  v155[1] = v148 - 72;
  v155[2] = v148 - 64;
  v155[3] = v7;
  v155[4] = v148 - 48;
  v155[5] = v158;
  v155[6] = &v161;
  v155[7] = v157;
  v155[8] = &v160;
  v155[9] = v156;
  v155[10] = &v159;
  v155[11] = v148 - 188;
  v155[12] = v8;
  v155[13] = &v164;
  v155[14] = v136;
  v155[15] = &v163;
  v155[16] = v9;
  v155[17] = &v162;
  v155[18] = v148 + 48;
  v155[19] = v148;
  v48 = v144;
  v155[20] = v144 + 28;
  v155[21] = v144 + 32;
  v155[22] = v144 + 36;
  v155[23] = v148 - 120;
  v155[24] = v148 - 112;
  v155[25] = v148 - 104;
  v155[26] = &v165;
  v155[27] = v2;
  v155[28] = v148 - 160;
  v155[29] = v148 - 152;
  v155[30] = v148 - 144;
  v155[31] = v148 - 184;
  v155[32] = v148 - 136;
  v155[33] = v148 - 96;
  v155[34] = v148 - 56;
  v155[35] = v148 - 128;
  v49 = *(v144 + 192);
  v50 = *(v144 + 216);
  v51 = *v50;
  if (v165)
  {
    v52 = (*v49 + v51 - 1) / v51;
    v127 = *(v144 + 40);
  }

  else
  {
    v127 = *(v144 + 40);
    v52 = v127;
  }

  v53 = *v148;
  v54 = (*(v144 + 28) + *v49 - **v148 * *v8) / v51;
  v123 = v54;
  if (v52 > v54)
  {
    v54 = v52;
  }

  v128 = v54;
  v55 = v49[1];
  v56 = v50[1];
  v131 = *(v144 + 44);
  if (v165)
  {
    v57 = (v55 + v56 - 1) / v56;
  }

  else
  {
    v57 = *(v144 + 44);
  }

  v58 = (*(v144 + 32) + v55 - *(v53 + 4) * *(v144 + 64)) / v56;
  v129 = v57;
  v126 = v58;
  if (v57 > v58)
  {
    v58 = v57;
  }

  v132 = v58;
  if (v165)
  {
    v59 = v49[2];
    v60 = v50[2];
    v61 = *(v144 + 48);
    v62 = (v59 + v60 - 1) / v60;
  }

  else
  {
    v61 = *(v144 + 48);
    v59 = v49[2];
    v60 = v50[2];
    v62 = v61;
  }

  v63 = (*(v144 + 36) + v59 - *(v53 + 8) * *(v144 + 68)) / v60;
  v142 = v62;
  v130 = v63;
  if (v62 > v63)
  {
    v63 = v62;
  }

  v133 = v63;
  if (*(v144 + 24) >= 1)
  {
    v64 = 0;
    v125 = v52;
    v122 = v52;
    v141 = v61;
    v145 = v9;
    do
    {
      v124 = v64;
      if (v52 >= 1)
      {
        v65 = 0;
        v66 = *(v48 + 44);
        do
        {
          if (v66 >= 1)
          {
            v67 = 0;
            v68 = *(v48 + 48);
            do
            {
              if (v68 >= 1)
              {
                for (i = 0; i < v68; ++i)
                {
                  v48 = v144;
                  v68 = *(v144 + 48);
                }

                v66 = *(v144 + 44);
              }

              ++v67;
            }

            while (v67 < v66);
          }

          ++v65;
        }

        while (v65 != v52);
      }

      v70 = v122;
      if (v123 > v52)
      {
        do
        {
          v135 = v70;
          v71 = v129;
          if (v129 >= 1)
          {
            v72 = 0;
            v73 = *(v48 + 48);
            do
            {
              if (v73 >= 1)
              {
                for (j = 0; j < v73; ++j)
                {
                  v48 = v144;
                  v73 = *(v144 + 48);
                }

                v71 = v129;
              }

              ++v72;
            }

            while (v72 != v71);
          }

          if (v126 > v71)
          {
            v75 = v129;
            do
            {
              v76 = v142;
              if (v142 >= 1)
              {
                v77 = v48;
                for (k = 0; k != v142; ++k)
                {
                  v76 = v142;
                }
              }

              v134 = v75;
              if (v130 > v76)
              {
                v79 = *(v144 + 216);
                v80 = *(v144 + 192);
                v151 = *(v144 + 52);
                v81 = *(v144 + 8);
                v139 = *v144;
                v138 = *(v144 + 16) + 2 * *(v144 + 160) * v135 + 2 * *(v144 + 168) * v75;
                v82 = *(v144 + 60);
                v137 = *(v144 + 176);
                v150 = *(v144 + 184);
                v83 = v135 * *v79 - *v80;
                v84 = v79[1] * v75 - v80[1];
                v140 = v79[2];
                v85 = v142 * v140 - v80[2];
                v149 = 2 * *(v144 + 112);
                v143 = v142;
                do
                {
                  if (v151 >= 1)
                  {
                    v86 = 0;
                    v87 = v139;
                    v88 = (v138 + 2 * v143 * v137);
                    v89 = *v136;
                    do
                    {
                      if (v82 < 1)
                      {
                        _H0 = 0;
                      }

                      else
                      {
                        v153 = v88;
                        v90 = 0;
                        v91 = *v9;
                        _S0 = 0.0;
                        v152 = v87;
                        do
                        {
                          if (v89 >= 1)
                          {
                            v93 = 0;
                            if (*v147)
                            {
                              v94 = v82 + ~v90;
                            }

                            else
                            {
                              v94 = v90;
                            }

                            v95 = v87;
                            do
                            {
                              if (v91 >= 1)
                              {
                                v96 = 0;
                                v97 = v89 + ~v93;
                                if ((*v147 & 1) == 0)
                                {
                                  v97 = v93;
                                }

                                v98 = v95;
                                do
                                {
                                  if (*v146 >= 1)
                                  {
                                    v99 = v91 + ~v96;
                                    if ((*v147 & 1) == 0)
                                    {
                                      v99 = v96;
                                    }

                                    v100 = (v81 + 2 * *(v148 - 19) * (v84 + *(*v148 + 4) * v97) + 2 * *(v148 - 20) * (v83 + **v148 * v94) + 2 * *(v148 - 18) * (v85 + v99 * *(*v148 + 8)));
                                    v101 = v98;
                                    v102 = *v146;
                                    do
                                    {
                                      _H1 = *v100;
                                      __asm { FCVT            S1, H1 }

                                      _H2 = *v101;
                                      __asm { FCVT            S2, H2 }

                                      _S0 = _S0 + (_S1 * _S2);
                                      v100 += *(v148 - 17);
                                      v101 += *(v148 - 12);
                                      --v102;
                                    }

                                    while (v102);
                                  }

                                  ++v96;
                                  v98 += *(v148 - 13);
                                }

                                while (v96 != v91);
                              }

                              ++v93;
                              v95 += *(v148 - 14);
                            }

                            while (v93 != v89);
                          }

                          ++v90;
                          v87 += 2 * *(v148 - 15);
                        }

                        while (v90 != v82);
                        __asm { FCVT            H0, S0 }

                        v9 = v145;
                        v87 = v152;
                        v88 = v153;
                      }

                      *v88 = _H0;
                      v88 += v150;
                      ++v86;
                      v87 += v149;
                    }

                    while (v86 != v151);
                  }

                  v85 += v140;
                  ++v143;
                }

                while (v143 != v133);
              }

              if (v133 < v141)
              {
                v112 = v133;
                do
                {
                }

                while (v141 != v112);
              }

              ++v75;
              v48 = v144;
            }

            while (v132 != v134 + 1);
          }

          v52 = v125;
          if (v132 < v131)
          {
            v113 = *(v48 + 48);
            v114 = v132;
            do
            {
              if (v113 >= 1)
              {
                for (m = 0; m < v113; ++m)
                {
                  v48 = v144;
                  v113 = *(v144 + 48);
                }
              }

              ++v114;
            }

            while (v114 != v131);
          }

          v70 = v135 + 1;
        }

        while (v128 != v135 + 1);
      }

      if (v128 < v127)
      {
        v116 = *(v48 + 44);
        v117 = v128;
        do
        {
          if (v116 >= 1)
          {
            v118 = 0;
            v119 = *(v48 + 48);
            do
            {
              if (v119 >= 1)
              {
                for (n = 0; n < v119; ++n)
                {
                  v48 = v144;
                  v119 = *(v144 + 48);
                }

                v116 = *(v144 + 44);
              }

              ++v118;
            }

            while (v118 < v116);
          }

          ++v117;
        }

        while (v117 != v127);
      }

      v121 = *(v48 + 16) + 2 * *(v48 + 152);
      *(v48 + 8) += 2 * *(v48 + 72);
      *(v48 + 16) = v121;
      v64 = v124 + 1;
    }

    while (v124 + 1 < *(v48 + 24));
  }

  if (v156[0])
  {
    v156[1] = v156[0];
    operator delete(v156[0]);
  }

  if (v157[0])
  {
    v157[1] = v157[0];
    operator delete(v157[0]);
  }

  if (v158[0])
  {
    v158[1] = v158[0];
    operator delete(v158[0]);
  }
}

void sub_25A40D5AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(half const*,half const*,half *,int,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = **(result + 88);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = **(result + 24);
    v10 = **(result + 32);
    v64 = *v9 * a5 - *v10;
    v63 = v9[1] * a6 - v10[1];
    v11 = v9[2] * a7 - v10[2];
    v12 = *(**(result + 56) + 4 * (a6 % **(result + 64)));
    v13 = *(**(result + 72) + 4 * (a7 % **(result + 80)));
    v14 = *(**(result + 40) + 4 * (a5 % **(result + 48)));
    v15 = (a4 + 2 * **result * a5 + 2 * **(result + 8) * a6 + 2 * **(result + 16) * a7);
    v62 = **(result + 96);
    v16 = 2 * **(result + 280);
    v53 = 2 * v14;
    v54 = v16;
    v17 = **(result + 272);
    v59 = 2 * v12;
    v60 = v12;
    v56 = **(result + 88);
    v55 = v14;
    v52 = v17;
    do
    {
      _H0 = 0;
      if (v14 < v62)
      {
        v57 = v15;
        v58 = v8;
        v19 = **(result + 112);
        v61 = **(result + 104);
        _S0 = 0.0;
        v21 = v53;
        do
        {
          if (v12 < v19)
          {
            v22 = **(result + 128);
            v23 = **(result + 120);
            v24 = v59;
            do
            {
              if (v13 < v22)
              {
                v25 = **(result + 152);
                v26 = *v25;
                v27 = v25[1];
                v28 = v25[2];
                v29 = **(result + 136);
                if (**(result + 144))
                {
                  v30 = v19 + ~v12;
                }

                else
                {
                  v30 = v12;
                }

                v31 = v62 + ~v14;
                if (!**(result + 144))
                {
                  v31 = v14;
                }

                v32 = v64 + v26 * v31;
                v33 = v63 + v27 * v30;
                v34 = 2 * v13;
                v35 = v13;
                do
                {
                  v36 = v22 + ~v35;
                  if (!**(result + 144))
                  {
                    v36 = v35;
                  }

                  if ((v32 & 0x80000000) == 0 && v32 < **(result + 160) && (v33 & 0x80000000) == 0 && v33 < **(result + 168))
                  {
                    v37 = v11 + v28 * v36;
                    if ((v37 & 0x80000000) == 0 && v37 < **(result + 176))
                    {
                      v38 = v33;
                      v39 = v32;
                      if ((**(result + 208) & 1) == 0)
                      {
                        v40 = **(result + 216);
                        v39 = v32 / *v40;
                        v38 = v33 / v40[1];
                        v37 /= v40[2];
                      }

                      v41 = **(result + 248);
                      if (v41 >= 1)
                      {
                        v42 = (a2 + 2 * **(result + 224) * v39 + 2 * **(result + 232) * v38 + 2 * **(result + 240) * v37);
                        v43 = v24 * **(result + 192) + v21 * **(result + 184) + **(result + 200) * v34;
                        do
                        {
                          _H1 = *v42;
                          _H2 = *(a3 + v43);
                          __asm
                          {
                            FCVT            S1, H1
                            FCVT            S2, H2
                          }

                          _S0 = _S0 + (_S1 * _S2);
                          v42 += **(result + 256);
                          v43 += 2 * **(result + 264);
                          --v41;
                        }

                        while (v41);
                      }
                    }
                  }

                  v35 += v29;
                  v34 += 2 * v29;
                }

                while (v35 < v22);
              }

              v12 += v23;
              v24 += 2 * v23;
            }

            while (v12 < v19);
          }

          v14 += v61;
          v21 += 2 * v61;
          v12 = v60;
        }

        while (v14 < v62);
        __asm { FCVT            H0, S0 }

        v7 = v56;
        v8 = v58;
        v16 = v54;
        v14 = v55;
        v15 = v57;
        v17 = v52;
      }

      *v15 = _H0;
      v15 += v17;
      ++v8;
      a3 += v16;
    }

    while (v8 != v7);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5170;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5170;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5170;
  *(a2 + 308) = 0;
  *(a2 + 305) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[34];
  if (v2)
  {
    __p[35] = v2;
    operator delete(v2);
  }

  v3 = __p[31];
  if (v3)
  {
    __p[32] = v3;
    operator delete(v3);
  }

  v4 = __p[28];
  if (v4)
  {
    __p[29] = v4;
    operator delete(v4);
  }

  v5 = __p[25];
  if (v5)
  {
    __p[26] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40DDA8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF5268;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF5268;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5268;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[36];
  if (v2)
  {
    __p[37] = v2;
    operator delete(v2);
  }

  v3 = __p[33];
  if (v3)
  {
    __p[34] = v3;
    operator delete(v3);
  }

  v4 = __p[30];
  if (v4)
  {
    __p[31] = v4;
    operator delete(v4);
  }

  v5 = __p[27];
  if (v5)
  {
    __p[28] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_3DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v9;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v12;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

void sub_25A40E240(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[31] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[28] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[25] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = (a1 + 264);
  v3 = *(a1 + 264);
  v4 = *v3;
  v5 = *v3 == 1 && v3[1] == 1 && v3[2] == 1;
  v157 = v5;
  v6 = *(a1 + 240);
  v7 = (a1 + 216);
  v8 = (a1 + 60);
  v9 = (a1 + 68);
  v140 = (a1 + 240);
  v10 = *v6;
  v136 = a1;
  v128 = (a1 + 64);
  if (*(a1 + 288))
  {
    v11 = -v10;
    v13 = v6[1];
    v12 = v6[2];
    v14 = -v13;
    v15 = -v12;
    v16 = (*v8 - 1) * v10;
    v17 = (*(a1 + 64) - 1) * v13;
    v145 = (*v9 - 1) * v12;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v145 = 0;
    v14 = v6[1];
    v15 = v6[2];
    v11 = *v6;
  }

  v18 = std::lcm[abi:ne200100]<int,int>(v4, v10);
  v19 = *(*v140 + 4);
  v156 = v18 / **v140;
  v20 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v19);
  v21 = *(*v140 + 8);
  v155 = v20 / *(*v140 + 4);
  v154 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v21) / *(*v140 + 8);
  v22 = std::lcm[abi:ne200100]<int,int>(**v2, **v7);
  v23 = (*v7)[1];
  v153 = v22 / **v7;
  v24 = std::lcm[abi:ne200100]<int,int>((*v2)[1], v23);
  v25 = (*v7)[2];
  v152 = v24 / (*v7)[1];
  v151 = std::lcm[abi:ne200100]<int,int>((*v2)[2], v25) / (*v7)[2];
  std::vector<int>::vector[abi:ne200100](v150, v153);
  std::vector<int>::vector[abi:ne200100](v149, v152);
  std::vector<int>::vector[abi:ne200100](v148, v151);
  v26 = (v140 - 48);
  v27 = v128;
  if (v153 >= 1)
  {
    v28 = 0;
    v29 = *v7;
    v30 = *v26;
    v31 = v150[0];
    v32 = *v2;
    do
    {
      if (*v8 < 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = 0;
        v34 = v16 + *v29 * v28 - *v30;
        while (v34 % *v32)
        {
          ++v33;
          v34 += v11;
          if (*v8 == v33)
          {
            v33 = *v8;
            break;
          }
        }

        v27 = v128;
      }

      v31[v28++] = v33;
    }

    while (v28 < v153);
  }

  v139 = v140 + 48;
  v138 = (v140 - 184);
  if (v152 >= 1)
  {
    v35 = 0;
    v36 = *v7;
    v37 = *v26;
    v38 = v149[0];
    v39 = *v2;
    do
    {
      v40 = *v27;
      if (*v27 < 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        v42 = v17 + v36[1] * v35 - v37[1];
        while (v42 % v39[1])
        {
          ++v41;
          v42 += v14;
          if (v40 == v41)
          {
            v41 = v40;
            break;
          }
        }

        v27 = v128;
      }

      v38[v35++] = v41;
    }

    while (v35 < v152);
  }

  if (v151 >= 1)
  {
    v43 = 0;
    v44 = *v7;
    v45 = *v26;
    v46 = v148[0];
    v47 = *v2;
    do
    {
      if (*v9 < 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = 0;
        v49 = v145 + v44[2] * v43 - v45[2];
        while (v49 % v47[2])
        {
          ++v48;
          v49 += v15;
          if (*v9 == v48)
          {
            v48 = *v9;
            break;
          }
        }
      }

      v46[v43++] = v48;
    }

    while (v43 < v151);
  }

  v147[0] = v140 - 80;
  v147[1] = v140 - 72;
  v147[2] = v140 - 64;
  v147[3] = v7;
  v147[4] = v140 - 48;
  v147[5] = v150;
  v147[6] = &v153;
  v147[7] = v149;
  v147[8] = &v152;
  v147[9] = v148;
  v147[10] = &v151;
  v147[11] = v140 - 188;
  v147[12] = v8;
  v147[13] = &v156;
  v147[14] = v128;
  v147[15] = &v155;
  v147[16] = v9;
  v147[17] = &v154;
  v147[18] = v140 + 48;
  v147[19] = v140;
  v50 = v136;
  v147[20] = v136 + 28;
  v147[21] = v136 + 32;
  v147[22] = v136 + 36;
  v147[23] = v140 - 120;
  v147[24] = v140 - 112;
  v147[25] = v140 - 104;
  v147[26] = &v157;
  v147[27] = v2;
  v147[28] = v140 - 160;
  v147[29] = v140 - 152;
  v147[30] = v140 - 144;
  v147[31] = v140 - 184;
  v147[32] = v140 - 136;
  v147[33] = v140 - 96;
  v147[34] = v140 - 56;
  v147[35] = v140 - 128;
  v51 = *(v136 + 192);
  v52 = *(v136 + 216);
  v53 = *v52;
  if (v157)
  {
    v54 = (*v51 + v53 - 1) / v53;
    v119 = *(v136 + 40);
  }

  else
  {
    v119 = *(v136 + 40);
    v54 = v119;
  }

  v55 = *v140;
  v56 = (*(v136 + 28) + *v51 - **v140 * *v8) / v53;
  v115 = v56;
  if (v54 > v56)
  {
    v56 = v54;
  }

  v120 = v56;
  v57 = v51[1];
  v58 = v52[1];
  v123 = *(v136 + 44);
  if (v157)
  {
    v59 = (v57 + v58 - 1) / v58;
  }

  else
  {
    v59 = *(v136 + 44);
  }

  v60 = (*(v136 + 32) + v57 - *(v55 + 4) * *(v136 + 64)) / v58;
  v121 = v59;
  v118 = v60;
  if (v59 > v60)
  {
    v60 = v59;
  }

  v124 = v60;
  if (v157)
  {
    v61 = v51[2];
    v62 = v52[2];
    v63 = *(v136 + 48);
    v64 = (v61 + v62 - 1) / v62;
  }

  else
  {
    v63 = *(v136 + 48);
    v61 = v51[2];
    v62 = v52[2];
    v64 = v63;
  }

  v65 = (*(v136 + 36) + v61 - *(v55 + 8) * *(v136 + 68)) / v62;
  v134 = v64;
  v122 = v65;
  if (v64 > v65)
  {
    v65 = v64;
  }

  v125 = v65;
  if (*(v136 + 24) >= 1)
  {
    v66 = 0;
    v117 = v54;
    v114 = v54;
    v133 = v63;
    v137 = v9;
    do
    {
      v116 = v66;
      if (v54 >= 1)
      {
        v67 = 0;
        v68 = *(v50 + 44);
        do
        {
          if (v68 >= 1)
          {
            v69 = 0;
            v70 = *(v50 + 48);
            do
            {
              if (v70 >= 1)
              {
                for (i = 0; i < v70; ++i)
                {
                  v50 = v136;
                  v70 = *(v136 + 48);
                }

                v68 = *(v136 + 44);
              }

              ++v69;
            }

            while (v69 < v68);
          }

          ++v67;
        }

        while (v67 != v54);
      }

      v72 = v114;
      if (v115 > v54)
      {
        do
        {
          v127 = v72;
          v73 = v121;
          if (v121 >= 1)
          {
            v74 = 0;
            v75 = *(v50 + 48);
            do
            {
              if (v75 >= 1)
              {
                for (j = 0; j < v75; ++j)
                {
                  v50 = v136;
                  v75 = *(v136 + 48);
                }

                v73 = v121;
              }

              ++v74;
            }

            while (v74 != v73);
          }

          if (v118 > v73)
          {
            v77 = v121;
            do
            {
              v78 = v134;
              if (v134 >= 1)
              {
                v79 = v50;
                for (k = 0; k != v134; ++k)
                {
                  v78 = v134;
                }
              }

              v126 = v77;
              if (v122 > v78)
              {
                v81 = *(v136 + 216);
                v82 = *(v136 + 192);
                v143 = *(v136 + 52);
                v83 = *(v136 + 8);
                v131 = *v136;
                v130 = *(v136 + 16) + 2 * *(v136 + 160) * v127 + 2 * *(v136 + 168) * v77;
                v146 = *(v136 + 60);
                v129 = *(v136 + 176);
                v142 = *(v136 + 184);
                v84 = v127 * *v81 - *v82;
                v85 = v81[1] * v77 - v82[1];
                v132 = v81[2];
                v86 = v134 * v132 - v82[2];
                v141 = 2 * *(v136 + 112);
                v135 = v134;
                do
                {
                  if (v143 >= 1)
                  {
                    v87 = 0;
                    v88 = v131;
                    v89 = (v130 + 2 * v135 * v129);
                    v90 = *v128;
                    do
                    {
                      if (v146 < 1)
                      {
                        v93 = 0.0;
                      }

                      else
                      {
                        v91 = 0;
                        v92 = *v9;
                        v93 = 0.0;
                        v144 = v88;
                        do
                        {
                          if (v90 >= 1)
                          {
                            v94 = 0;
                            if (*v139)
                            {
                              v95 = v146 + ~v91;
                            }

                            else
                            {
                              v95 = v91;
                            }

                            v96 = v88;
                            do
                            {
                              if (v92 >= 1)
                              {
                                v97 = 0;
                                v98 = v90 + ~v94;
                                if ((*v139 & 1) == 0)
                                {
                                  v98 = v94;
                                }

                                v99 = v96;
                                do
                                {
                                  if (*v138 >= 1)
                                  {
                                    v100 = v92 + ~v97;
                                    if ((*v139 & 1) == 0)
                                    {
                                      v100 = v97;
                                    }

                                    v101 = (v83 + 2 * *(v140 - 19) * (v85 + *(*v140 + 4) * v98) + 2 * *(v140 - 20) * (v84 + **v140 * v95) + 2 * *(v140 - 18) * (v86 + v100 * *(*v140 + 8)));
                                    v102 = v99;
                                    v103 = *v138;
                                    do
                                    {
                                      v93 = v93 + (COERCE_FLOAT(*v101 << 16) * COERCE_FLOAT(*v102 << 16));
                                      v101 += *(v140 - 17);
                                      v102 += *(v140 - 12);
                                      --v103;
                                    }

                                    while (v103);
                                  }

                                  ++v97;
                                  v99 += *(v140 - 13);
                                }

                                while (v97 != v92);
                              }

                              ++v94;
                              v96 += *(v140 - 14);
                            }

                            while (v94 != v90);
                          }

                          ++v91;
                          v88 += 2 * *(v140 - 15);
                        }

                        while (v91 != v146);
                        v9 = v137;
                        v88 = v144;
                      }

                      *v89 = (LODWORD(v93) + (HIWORD(LODWORD(v93)) & 1u) + 0x7FFF) >> 16;
                      v89 += v142;
                      ++v87;
                      v88 += v141;
                    }

                    while (v87 != v143);
                  }

                  v86 += v132;
                  ++v135;
                }

                while (v135 != v125);
              }

              if (v125 < v133)
              {
                v104 = v125;
                do
                {
                }

                while (v133 != v104);
              }

              ++v77;
              v50 = v136;
            }

            while (v124 != v126 + 1);
          }

          v54 = v117;
          if (v124 < v123)
          {
            v105 = *(v50 + 48);
            v106 = v124;
            do
            {
              if (v105 >= 1)
              {
                for (m = 0; m < v105; ++m)
                {
                  v50 = v136;
                  v105 = *(v136 + 48);
                }
              }

              ++v106;
            }

            while (v106 != v123);
          }

          v72 = v127 + 1;
        }

        while (v120 != v127 + 1);
      }

      if (v120 < v119)
      {
        v108 = *(v50 + 44);
        v109 = v120;
        do
        {
          if (v108 >= 1)
          {
            v110 = 0;
            v111 = *(v50 + 48);
            do
            {
              if (v111 >= 1)
              {
                for (n = 0; n < v111; ++n)
                {
                  v50 = v136;
                  v111 = *(v136 + 48);
                }

                v108 = *(v136 + 44);
              }

              ++v110;
            }

            while (v110 < v108);
          }

          ++v109;
        }

        while (v109 != v119);
      }

      v113 = *(v50 + 16) + 2 * *(v50 + 152);
      *(v50 + 8) += 2 * *(v50 + 72);
      *(v50 + 16) = v113;
      v66 = v116 + 1;
    }

    while (v116 + 1 < *(v50 + 24));
  }

  if (v148[0])
  {
    v148[1] = v148[0];
    operator delete(v148[0]);
  }

  if (v149[0])
  {
    v149[1] = v149[0];
    operator delete(v149[0]);
  }

  if (v150[0])
  {
    v150[1] = v150[0];
    operator delete(v150[0]);
  }
}

void sub_25A40EE74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(mlx::core::_MLX_BFloat16 const*,mlx::core::_MLX_BFloat16 const*,mlx::core::_MLX_BFloat16*,int,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = **(result + 88);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = **(result + 24);
    v10 = **(result + 32);
    v56 = *v9 * a5 - *v10;
    v55 = v9[1] * a6 - v10[1];
    v11 = v9[2] * a7 - v10[2];
    v12 = *(**(result + 56) + 4 * (a6 % **(result + 64)));
    v13 = *(**(result + 72) + 4 * (a7 % **(result + 80)));
    v14 = *(**(result + 40) + 4 * (a5 % **(result + 48)));
    v15 = (a4 + 2 * **result * a5 + 2 * **(result + 8) * a6 + 2 * **(result + 16) * a7);
    v54 = **(result + 96);
    v16 = 2 * **(result + 280);
    v45 = 2 * v14;
    v46 = v16;
    v17 = **(result + 272);
    v51 = 2 * v12;
    v52 = v12;
    v48 = **(result + 88);
    v47 = v14;
    v44 = v17;
    do
    {
      v18 = 0.0;
      if (v14 < v54)
      {
        v49 = v15;
        v50 = v8;
        v19 = **(result + 112);
        v53 = **(result + 104);
        v20 = v45;
        do
        {
          if (v12 < v19)
          {
            v21 = **(result + 128);
            v22 = **(result + 120);
            v23 = v51;
            v24 = v12;
            do
            {
              if (v13 < v21)
              {
                v25 = **(result + 152);
                v26 = *v25;
                v27 = v25[1];
                v28 = v25[2];
                v29 = **(result + 136);
                if (**(result + 144))
                {
                  v30 = v19 + ~v24;
                }

                else
                {
                  v30 = v24;
                }

                v31 = v54 + ~v14;
                if (!**(result + 144))
                {
                  v31 = v14;
                }

                v32 = v56 + v26 * v31;
                v33 = v55 + v27 * v30;
                v34 = 2 * v13;
                v35 = v13;
                do
                {
                  v36 = v21 + ~v35;
                  if (!**(result + 144))
                  {
                    v36 = v35;
                  }

                  if ((v32 & 0x80000000) == 0 && v32 < **(result + 160) && (v33 & 0x80000000) == 0 && v33 < **(result + 168))
                  {
                    v37 = v11 + v28 * v36;
                    if ((v37 & 0x80000000) == 0 && v37 < **(result + 176))
                    {
                      v38 = v33;
                      v39 = v32;
                      if ((**(result + 208) & 1) == 0)
                      {
                        v40 = **(result + 216);
                        v39 = v32 / *v40;
                        v38 = v33 / v40[1];
                        v37 /= v40[2];
                      }

                      v41 = **(result + 248);
                      if (v41 >= 1)
                      {
                        v42 = (a2 + 2 * **(result + 224) * v39 + 2 * **(result + 232) * v38 + 2 * **(result + 240) * v37);
                        v43 = v23 * **(result + 192) + v20 * **(result + 184) + **(result + 200) * v34;
                        do
                        {
                          v18 = v18 + (COERCE_FLOAT(*v42 << 16) * COERCE_FLOAT(*(a3 + v43) << 16));
                          v42 += **(result + 256);
                          v43 += 2 * **(result + 264);
                          --v41;
                        }

                        while (v41);
                      }
                    }
                  }

                  v35 += v29;
                  v34 += 2 * v29;
                }

                while (v35 < v21);
              }

              v24 += v22;
              v23 += 2 * v22;
            }

            while (v24 < v19);
          }

          v14 += v53;
          v20 += 2 * v53;
          v12 = v52;
        }

        while (v14 < v54);
        v7 = v48;
        v8 = v50;
        v16 = v46;
        v14 = v47;
        v15 = v49;
        v17 = v44;
      }

      *v15 = (LODWORD(v18) + (HIWORD(LODWORD(v18)) & 1u) + 0x7FFF) >> 16;
      v15 += v17;
      ++v8;
      a3 += v16;
    }

    while (v8 != v7);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF52E8;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF52E8;
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF52E8;
  *(a2 + 308) = 0;
  *(a2 + 305) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[25];
  if (v5)
  {
    a1[26] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[34];
  if (v2)
  {
    __p[35] = v2;
    operator delete(v2);
  }

  v3 = __p[31];
  if (v3)
  {
    __p[32] = v3;
    operator delete(v3);
  }

  v4 = __p[28];
  if (v4)
  {
    __p[29] = v4;
    operator delete(v4);
  }

  v5 = __p[25];
  if (v5)
  {
    __p[26] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_3D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::~Stream(void *a1)
{
  v2 = a1[30];
  if (v2)
  {
    a1[31] = v2;
    operator delete(v2);
  }

  v3 = a1[27];
  if (v3)
  {
    a1[28] = v3;
    operator delete(v3);
  }

  v4 = a1[24];
  if (v4)
  {
    a1[25] = v4;
    operator delete(v4);
  }

  v5 = a1[21];
  if (v5)
  {
    a1[22] = v5;
    operator delete(v5);
  }

  return a1;
}

void *mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>(void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1} &&)::{lambda(void)#1}::~dispatch(void *a1)
{
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  v4 = a1[26];
  if (v4)
  {
    a1[27] = v4;
    operator delete(v4);
  }

  v5 = a1[23];
  if (v5)
  {
    a1[24] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_25A40F774(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[28] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[25] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF53E0;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF53E0;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF53E0;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[33];
  if (v2)
  {
    __p[34] = v2;
    operator delete(v2);
  }

  v3 = __p[30];
  if (v3)
  {
    __p[31] = v3;
    operator delete(v3);
  }

  v4 = __p[27];
  if (v4)
  {
    __p[28] = v4;
    operator delete(v4);
  }

  v5 = __p[24];
  if (v5)
  {
    __p[25] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_25A40FC14(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[28] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[25] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v1 = a1;
  v3 = (a1 + 240);
  v2 = *(a1 + 240);
  v4 = *v2;
  v5 = *v2 == 1 && v2[1] == 1;
  v126 = v5;
  v125 = *(v1 + 48) / *(v1 + 60);
  v6 = (v1 + 192);
  v7 = (v1 + 52);
  v110 = (v1 + 264);
  v8 = *(v1 + 216);
  v111 = v1 + 216;
  v9 = *v8;
  v100 = (v1 + 56);
  if (*(v1 + 264))
  {
    v10 = -v9;
    v11 = v8[1];
    v12 = -v11;
    v13 = (*v7 - 1) * v9;
    v14 = (*(v1 + 56) - 1) * v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = v8[1];
    v10 = *v8;
  }

  v15 = std::lcm[abi:ne200100]<int,int>(v4, v9);
  v16 = *(*v111 + 4);
  v124 = v15 / **v111;
  v123 = std::lcm[abi:ne200100]<int,int>((*v3)[1], v16) / *(*v111 + 4);
  v17 = std::lcm[abi:ne200100]<int,int>(**v3, **v6);
  v18 = (*v6)[1];
  v122 = v17 / **v6;
  v121 = std::lcm[abi:ne200100]<int,int>((*v3)[1], v18) / (*v6)[1];
  std::vector<int>::vector[abi:ne200100](v120, v122);
  std::vector<int>::vector[abi:ne200100](v119, v121);
  v19 = (v1 + 168);
  v109 = (v1 + 112);
  v108 = (v1 + 120);
  v107 = (v1 + 80);
  v106 = (v1 + 88);
  v105 = (v1 + 64);
  v104 = (v1 + 96);
  v103 = (v1 + 128);
  v94 = (v1 + 160);
  v93 = (v1 + 104);
  if (v122 >= 1)
  {
    v20 = 0;
    v21 = *v6;
    v22 = *v19;
    v23 = v120[0];
    v24 = *v3;
    do
    {
      if (*v7 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v26 = v13 + *v21 * v20 - *v22;
        while (v26 % *v24)
        {
          ++v25;
          v26 += v10;
          if (*v7 == v25)
          {
            v25 = *v7;
            break;
          }
        }
      }

      v23[v20++] = v25;
    }

    while (v20 < v122);
  }

  if (v121 >= 1)
  {
    v27 = 0;
    v28 = *v6;
    v29 = *v19;
    v30 = v119[0];
    v31 = *v3;
    do
    {
      if (*v100 < 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = v14 + v28[1] * v27 - v29[1];
        while (v33 % v31[1])
        {
          ++v32;
          v33 += v12;
          if (*v100 == v32)
          {
            v32 = *v100;
            break;
          }
        }
      }

      v30[v27++] = v32;
    }

    while (v27 < v121);
  }

  v118[0] = v1 + 144;
  v118[1] = v1 + 152;
  v118[2] = v1 + 192;
  v118[3] = v1 + 168;
  v118[4] = v120;
  v118[5] = &v122;
  v118[6] = v119;
  v118[7] = &v121;
  v118[8] = v1 + 60;
  v118[9] = &v125;
  v118[10] = v1 + 52;
  v118[11] = &v124;
  v118[12] = v1 + 56;
  v118[13] = &v123;
  v118[14] = v1 + 264;
  v118[15] = v1 + 216;
  v118[16] = v1 + 28;
  v118[17] = v1 + 32;
  v118[18] = v1 + 112;
  v118[19] = v1 + 120;
  v118[20] = &v126;
  v118[21] = v3;
  v118[22] = v1 + 80;
  v118[23] = v1 + 88;
  v118[24] = v1 + 64;
  v118[25] = v1 + 96;
  v118[26] = v1 + 128;
  v118[27] = v1 + 160;
  v118[28] = v1 + 104;
  v34 = *(v1 + 168);
  v35 = *(v1 + 192);
  v36 = *v35;
  if (v126)
  {
    v37 = (*v34 + v36 - 1) / v36;
    v86 = *(v1 + 40);
  }

  else
  {
    v86 = *(v1 + 40);
    v37 = v86;
  }

  v38 = (*(v1 + 28) + *v34 - **v111 * *v7) / v36;
  v84 = v37;
  v81 = v38;
  if (v37 > v38)
  {
    v38 = v37;
  }

  v87 = v38;
  if (v126)
  {
    v39 = v34[1];
    v40 = v35[1];
    v41 = *(v1 + 44);
    v42 = (v39 + v40 - 1) / v40;
  }

  else
  {
    v41 = *(v1 + 44);
    v39 = v34[1];
    v40 = v35[1];
    v42 = v41;
  }

  v43 = (*(v1 + 32) + v39 - *(*v111 + 4) * *(v1 + 56)) / v40;
  v85 = v43;
  if (v42 > v43)
  {
    v43 = v42;
  }

  v90 = v43;
  v44 = v37;
  if (*(v1 + 24) >= 1)
  {
    v82 = 0;
    v83 = v42;
    v88 = v42;
    v89 = v1;
    v92 = (v1 + 52);
    do
    {
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = *(v1 + 44);
        do
        {
          if (v46 >= 1)
          {
            for (i = 0; i < v46; ++i)
            {
              v46 = *(v1 + 44);
            }

            v44 = v84;
          }

          ++v45;
        }

        while (v45 != v44);
      }

      v48 = v84;
      if (v81 > v44)
      {
        do
        {
          if (v42 >= 1)
          {
            for (j = 0; j != v42; ++j)
            {
            }
          }

          v91 = v48;
          if (v85 > v42)
          {
            v50 = *(v89 + 192);
            v51 = *(v89 + 168);
            v102 = *(v89 + 60);
            v52 = v125;
            v96 = *(v89 + 16) + 4 * *(v89 + 144) * v48;
            v97 = *(v89 + 152);
            v112 = *(v89 + 8);
            v95 = *v89;
            v53 = *v50 * v48 - *v51;
            v98 = v50[1];
            v54 = v88 * v98 - v51[1];
            v99 = v83;
            v101 = v125;
            do
            {
              if (v102 >= 1)
              {
                v55 = 0;
                v56 = v95;
                v57 = (v96 + 4 * v99 * v97);
                v58 = *v92;
                v115 = *v93;
                v116 = *v94;
                v114 = 1;
                v117 = v52;
                do
                {
                  v59 = v55 * v52;
                  v113 = v55 + 1;
                  if (v55 * v52 < (v55 + 1) * v52)
                  {
                    v60 = *v100;
                    do
                    {
                      if (v58 < 1)
                      {
                        v68 = 0.0;
                      }

                      else
                      {
                        v61 = 0;
                        v62 = *v111;
                        v63 = *v107;
                        v64 = *v106;
                        v65 = *v105;
                        v66 = *v105 * v55;
                        v67 = 4 * *v104;
                        v68 = 0.0;
                        do
                        {
                          if (v60 >= 1)
                          {
                            v69 = 0;
                            if (*v110)
                            {
                              v70 = v58 + ~v61;
                            }

                            else
                            {
                              v70 = v61;
                            }

                            v71 = v112 + v67 * v66 + 4 * *v107 * (v53 + *v62 * v70);
                            do
                            {
                              v72 = v60 + ~v69;
                              if ((*v110 & 1) == 0)
                              {
                                v72 = v69;
                              }

                              if (v66 < *v105 * v113)
                              {
                                v73 = (v71 + 4 * *v106 * (v54 + v72 * v62[1]));
                                v74 = v65 * v55;
                                v75 = v114 * *v105 - v66;
                                do
                                {
                                  v68 = v68 + (*v73 * *(v56 + 4 * v61 * *v109 + 4 * v69 * *v108 + 4 * *v103 * (v74 % v65)));
                                  ++v74;
                                  v73 = (v73 + v67);
                                  --v75;
                                }

                                while (v75);
                              }

                              ++v69;
                            }

                            while (v69 != v60);
                          }

                          ++v61;
                        }

                        while (v61 != v58);
                      }

                      *v57 = v68;
                      v57 += v116;
                      v56 += 4 * v115;
                      ++v59;
                    }

                    while (v59 != v117);
                  }

                  ++v114;
                  v52 = v101;
                  v117 += v101;
                  ++v55;
                }

                while (v113 != v102);
              }

              v54 += v98;
              ++v99;
            }

            while (v99 != v90);
          }

          v1 = v89;
          if (v90 < v41)
          {
            v76 = v90;
            do
            {
            }

            while (v41 != v76);
          }

          ++v48;
          v42 = v88;
        }

        while (v87 != v91 + 1);
      }

      if (v87 < v86)
      {
        v77 = *(v1 + 44);
        v78 = v87;
        do
        {
          if (v77 >= 1)
          {
            for (k = 0; k < v77; ++k)
            {
              v77 = *(v1 + 44);
            }
          }

          ++v78;
        }

        while (v78 != v86);
      }

      v80 = *(v1 + 16) + 4 * *(v1 + 136);
      *(v1 + 8) += 4 * *(v1 + 72);
      *(v1 + 16) = v80;
      ++v82;
      v44 = v84;
    }

    while (v82 < *(v1 + 24));
  }

  if (v119[0])
  {
    v119[1] = v119[0];
    operator delete(v119[0]);
  }

  if (v120[0])
  {
    v120[1] = v120[0];
    operator delete(v120[0]);
  }
}

void sub_25A4104FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(float const*,float const*,float *,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v40 = **(result + 64);
  if (v40 >= 1)
  {
    v6 = 0;
    v7 = **(result + 16);
    v8 = **(result + 24);
    v9 = v8[1];
    v10 = *v7 * a5 - *v8;
    v11 = v7[1] * a6 - v9;
    v44 = *(**(result + 32) + 4 * (a5 % **(result + 40)));
    v12 = *(**(result + 48) + 4 * (a6 % **(result + 56)));
    v13 = (a4 + 4 * **result * a5 + 4 * **(result + 8) * a6);
    v14 = **(result + 72);
    v15 = 1;
    v43 = v14;
    v39 = v14;
    do
    {
      v16 = v14 * v6;
      v17 = v6 + 1;
      if (v14 * v6 < v14 * (v6 + 1))
      {
        v18 = **(result + 80);
        v42 = **(result + 216);
        v41 = **(result + 224);
        do
        {
          v19 = 0.0;
          if (v44 < v18)
          {
            v20 = **(result + 96);
            v21 = v44;
            do
            {
              if (v12 < v20)
              {
                v22 = v18 + ~v21;
                if (!**(result + 112))
                {
                  v22 = v21;
                }

                v23 = **(result + 120);
                v24 = v23[1];
                v25 = v10 + *v23 * v22;
                v26 = v12;
                do
                {
                  v27 = v20 + ~v26;
                  if (!**(result + 112))
                  {
                    v27 = v26;
                  }

                  if ((v25 & 0x80000000) == 0 && v25 < **(result + 128))
                  {
                    v28 = v11 + v24 * v27;
                    if ((v28 & 0x80000000) == 0 && v28 < **(result + 136))
                    {
                      v29 = v25;
                      if ((**(result + 160) & 1) == 0)
                      {
                        v30 = **(result + 168);
                        v31 = v30[1];
                        v29 = v25 / *v30;
                        v28 /= v31;
                      }

                      v32 = **(result + 192);
                      if (v32 * v6 < v32 * v17)
                      {
                        v33 = v29;
                        v34 = v6 * v32;
                        v35 = 4 * **(result + 184) * v28 + 4 * **(result + 176) * v33;
                        v36 = 4 * **(result + 200);
                        v37 = (a2 + v35 + v36 * v6 * v32);
                        v38 = v15 * v32 - (v6 * v32);
                        do
                        {
                          v19 = v19 + (*v37 * *(a3 + 4 * **(result + 144) * v21 + 4 * **(result + 152) * v26 + 4 * **(result + 208) * (v34 % v32)));
                          ++v34;
                          v37 = (v37 + v36);
                          --v38;
                        }

                        while (v38);
                      }
                    }
                  }

                  v26 += **(result + 104);
                }

                while (v26 < v20);
              }

              v21 += **(result + 88);
            }

            while (v21 < v18);
          }

          *v13 = v19;
          v13 += v42;
          a3 += 4 * v41;
          ++v16;
        }

        while (v16 != v43);
      }

      ++v15;
      v14 = v39;
      v43 += v39;
      ++v6;
    }

    while (v17 != v40);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5460;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5460;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5460;
  *(a2 + 284) = 0;
  *(a2 + 281) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[31];
  if (v2)
  {
    __p[32] = v2;
    operator delete(v2);
  }

  v3 = __p[28];
  if (v3)
  {
    __p[29] = v3;
    operator delete(v3);
  }

  v4 = __p[25];
  if (v4)
  {
    __p[26] = v4;
    operator delete(v4);
  }

  v5 = __p[22];
  if (v5)
  {
    __p[23] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_25A410C2C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[28] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[25] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF5558;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF5558;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5558;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[33];
  if (v2)
  {
    __p[34] = v2;
    operator delete(v2);
  }

  v3 = __p[30];
  if (v3)
  {
    __p[31] = v3;
    operator delete(v3);
  }

  v4 = __p[27];
  if (v4)
  {
    __p[28] = v4;
    operator delete(v4);
  }

  v5 = __p[24];
  if (v5)
  {
    __p[25] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_25A4110CC(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[28] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[25] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v3 = (a1 + 240);
  v2 = *(a1 + 240);
  v4 = *v2;
  v5 = *v2 == 1 && v2[1] == 1;
  v133 = v5;
  v6 = a1 + 60;
  v132 = *(a1 + 48) / *(a1 + 60);
  v7 = (a1 + 192);
  v116 = (a1 + 264);
  v8 = *(a1 + 216);
  v117 = a1 + 216;
  v9 = *v8;
  v109 = a1;
  v110 = (a1 + 56);
  v101 = (a1 + 52);
  if (*(a1 + 264))
  {
    v10 = -v9;
    v11 = v8[1];
    v12 = -v11;
    v13 = (*(a1 + 52) - 1) * v9;
    v14 = (*(a1 + 56) - 1) * v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = v8[1];
    v10 = *v8;
  }

  v15 = std::lcm[abi:ne200100]<int,int>(v4, v9);
  v16 = *(*v117 + 4);
  v131 = v15 / **v117;
  v130 = std::lcm[abi:ne200100]<int,int>((*v3)[1], v16) / *(*v117 + 4);
  v17 = std::lcm[abi:ne200100]<int,int>(**v3, **v7);
  v18 = (*v7)[1];
  v129 = v17 / **v7;
  v128 = std::lcm[abi:ne200100]<int,int>((*v3)[1], v18) / (*v7)[1];
  std::vector<int>::vector[abi:ne200100](v127, v129);
  std::vector<int>::vector[abi:ne200100](v126, v128);
  v19 = (v6 + 108);
  v115 = (v6 + 20);
  v114 = (v6 + 28);
  v113 = (v6 + 4);
  if (v129 >= 1)
  {
    v20 = 0;
    v21 = *v7;
    v22 = *v19;
    v23 = v127[0];
    v24 = *v3;
    do
    {
      if (*v101 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v26 = v13 + *v21 * v20 - *v22;
        while (v26 % *v24)
        {
          ++v25;
          v26 += v10;
          if (*v101 == v25)
          {
            v25 = *v101;
            break;
          }
        }
      }

      v23[v20++] = v25;
    }

    while (v20 < v129);
  }

  if (v128 >= 1)
  {
    v27 = 0;
    v28 = *v7;
    v29 = *v19;
    v30 = v126[0];
    v31 = *v3;
    do
    {
      if (*v110 < 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = v14 + v28[1] * v27 - v29[1];
        while (v33 % v31[1])
        {
          ++v32;
          v33 += v12;
          if (*v110 == v32)
          {
            v32 = *v110;
            break;
          }
        }
      }

      v30[v27++] = v32;
    }

    while (v27 < v128);
  }

  v125[0] = v6 + 84;
  v125[1] = v6 + 92;
  v125[2] = v7;
  v125[3] = v6 + 108;
  v125[4] = v127;
  v125[5] = &v129;
  v125[6] = v126;
  v125[7] = &v128;
  v125[8] = v6;
  v125[9] = &v132;
  v125[10] = v101;
  v125[11] = &v131;
  v34 = v109;
  v125[12] = v110;
  v125[13] = &v130;
  v125[14] = v116;
  v125[15] = v117;
  v125[16] = v109 + 28;
  v125[17] = v109 + 32;
  v125[18] = v6 + 52;
  v125[19] = v6 + 60;
  v125[20] = &v133;
  v125[21] = v3;
  v125[22] = v6 + 20;
  v125[23] = v6 + 28;
  v125[24] = v6 + 4;
  v125[25] = v6 + 36;
  v125[26] = v6 + 68;
  v125[27] = v6 + 100;
  v125[28] = v6 + 44;
  if (v133)
  {
    v35 = *(v109 + 168);
    v36 = *v35;
    v37 = *(v109 + 192);
    v38 = *v37;
    v39 = (*v35 + v38 - 1) / v38;
    v40 = *(v109 + 40);
  }

  else
  {
    v40 = *(v109 + 40);
    v35 = *(v109 + 168);
    v36 = *v35;
    v37 = *(v109 + 192);
    v38 = *v37;
    v39 = v40;
  }

  v41 = (*(v109 + 28) + v36 - **v117 * *v101) / v38;
  v94 = v39;
  v93 = v41;
  if (v39 > v41)
  {
    v41 = v39;
  }

  v98 = v41;
  if (v133)
  {
    v42 = v35[1];
    v43 = v37[1];
    v44 = *(v109 + 44);
    v45 = (v42 + v43 - 1) / v43;
  }

  else
  {
    v44 = *(v109 + 44);
    v42 = v35[1];
    v43 = v37[1];
    v45 = v44;
  }

  v46 = (*(v109 + 32) + v42 - *(*v117 + 4) * *(v109 + 56)) / v43;
  v97 = v46;
  if (v45 > v46)
  {
    v46 = v45;
  }

  v99 = v46;
  if (*(v109 + 24) >= 1)
  {
    v95 = 0;
    v96 = v45;
    v106 = v44;
    v107 = v45;
    v92 = v40;
    do
    {
      if (v94 >= 1)
      {
        v47 = 0;
        v48 = *(v34 + 44);
        do
        {
          if (v48 >= 1)
          {
            for (i = 0; i < v48; ++i)
            {
              v34 = v109;
              v48 = *(v109 + 44);
            }

            v45 = v107;
          }

          ++v47;
        }

        while (v47 != v94);
      }

      v50 = v94;
      if (v93 > v94)
      {
        do
        {
          if (v45 >= 1)
          {
            v51 = v34;
            v52 = 0;
            do
            {
              v45 = v107;
              ++v52;
            }

            while (v107 != v52);
          }

          v100 = v50;
          if (v97 > v45)
          {
            v53 = *(v109 + 192);
            v54 = *(v109 + 168);
            v112 = *(v109 + 60);
            v104 = *(v109 + 152);
            v103 = *(v109 + 16) + 2 * *(v109 + 144) * v50;
            v55 = v132;
            v118 = *(v109 + 8);
            v102 = *v109;
            v56 = *v53 * v50 - *v54;
            v105 = v53[1];
            v57 = v107 * v105 - v54[1];
            v108 = v96;
            v111 = v132;
            do
            {
              if (v112 >= 1)
              {
                v58 = 0;
                v59 = v102;
                v60 = (v103 + 2 * v108 * v104);
                v61 = *v101;
                v122 = *(v6 + 44);
                v123 = *(v6 + 100);
                v121 = 1;
                v124 = v55;
                do
                {
                  v62 = v58 * v55;
                  v120 = v58 + 1;
                  if (v58 * v55 < (v58 + 1) * v55)
                  {
                    v63 = *v110;
                    v119 = v58;
                    do
                    {
                      if (v61 < 1)
                      {
                        _H0 = 0;
                      }

                      else
                      {
                        v64 = 0;
                        v65 = *v117;
                        v66 = *v115;
                        v67 = *v114;
                        v68 = *v113 * v58;
                        v69 = 2 * *(v6 + 36);
                        _S0 = 0.0;
                        do
                        {
                          if (v63 >= 1)
                          {
                            v71 = 0;
                            if (*v116)
                            {
                              v72 = v61 + ~v64;
                            }

                            else
                            {
                              v72 = v64;
                            }

                            v73 = v118 + v69 * v68 + 2 * *v115 * (v56 + *v65 * v72);
                            do
                            {
                              v74 = v63 + ~v71;
                              if ((*v116 & 1) == 0)
                              {
                                v74 = v71;
                              }

                              if (v68 < *v113 * v120)
                              {
                                v75 = (v73 + 2 * *v114 * (v57 + v74 * v65[1]));
                                v76 = *v113 * v58;
                                v77 = v121 * *v113 - v68;
                                do
                                {
                                  _H1 = *v75;
                                  _H2 = *(v59 + 2 * v64 * *(v6 + 52) + 2 * v71 * *(v6 + 60) + 2 * *(v6 + 68) * (v76 % *v113));
                                  __asm
                                  {
                                    FCVT            S1, H1
                                    FCVT            S2, H2
                                  }

                                  _S0 = _S0 + (_S1 * _S2);
                                  ++v76;
                                  v75 = (v75 + v69);
                                  --v77;
                                }

                                while (v77);
                              }

                              ++v71;
                            }

                            while (v71 != v63);
                          }

                          ++v64;
                        }

                        while (v64 != v61);
                        __asm { FCVT            H0, S0 }

                        v58 = v119;
                      }

                      *v60 = _H0;
                      v60 += v123;
                      v59 += 2 * v122;
                      ++v62;
                    }

                    while (v62 != v124);
                  }

                  ++v121;
                  v55 = v111;
                  v124 += v111;
                  v58 = v120;
                }

                while (v120 != v112);
              }

              v57 += v105;
              ++v108;
            }

            while (v108 != v99);
          }

          if (v99 < v106)
          {
            v87 = v99;
            do
            {
            }

            while (v106 != v87);
          }

          v50 = v100 + 1;
          v34 = v109;
          v45 = v107;
        }

        while (v98 != v100 + 1);
      }

      if (v98 < v92)
      {
        v88 = *(v34 + 44);
        v89 = v98;
        do
        {
          if (v88 >= 1)
          {
            for (j = 0; j < v88; ++j)
            {
              v34 = v109;
              v88 = *(v109 + 44);
            }

            v45 = v107;
          }

          ++v89;
        }

        while (v89 != v92);
      }

      v91 = *(v34 + 16) + 2 * *(v34 + 136);
      *(v34 + 8) += 2 * *(v34 + 72);
      *(v34 + 16) = v91;
      ++v95;
    }

    while (v95 < *(v34 + 24));
  }

  if (v126[0])
  {
    v126[1] = v126[0];
    operator delete(v126[0]);
  }

  if (v127[0])
  {
    v127[1] = v127[0];
    operator delete(v127[0]);
  }
}

void sub_25A4119E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(half const*,half const*,half *,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v52 = **(result + 64);
  if (v52 >= 1)
  {
    v6 = 0;
    v7 = **(result + 16);
    v8 = **(result + 24);
    v9 = v8[1];
    v10 = *v7 * a5 - *v8;
    v11 = v7[1] * a6 - v9;
    v12 = *(**(result + 32) + 4 * (a5 % **(result + 40)));
    v13 = *(**(result + 48) + 4 * (a6 % **(result + 56)));
    v14 = (a4 + 2 * **result * a5 + 2 * **(result + 8) * a6);
    v15 = **(result + 72);
    v16 = 1;
    v17 = v15;
    v53 = v12;
    v51 = v15;
    do
    {
      v18 = v15 * v6;
      v19 = v6 + 1;
      if (v15 * v6 < v15 * (v6 + 1))
      {
        v20 = **(result + 80);
        v21 = **(result + 216);
        v22 = **(result + 224);
        v56 = v17;
        v54 = v22;
        v55 = v21;
        do
        {
          _H0 = 0;
          if (v12 < v20)
          {
            v24 = **(result + 96);
            _S0 = 0.0;
            do
            {
              if (v13 < v24)
              {
                v26 = v20 + ~v12;
                if (!**(result + 112))
                {
                  v26 = v12;
                }

                v27 = **(result + 120);
                v28 = v27[1];
                v29 = v10 + *v27 * v26;
                v30 = v13;
                do
                {
                  v31 = v24 + ~v30;
                  if (!**(result + 112))
                  {
                    v31 = v30;
                  }

                  if ((v29 & 0x80000000) == 0 && v29 < **(result + 128))
                  {
                    v32 = v11 + v28 * v31;
                    if ((v32 & 0x80000000) == 0 && v32 < **(result + 136))
                    {
                      v33 = v29;
                      if ((**(result + 160) & 1) == 0)
                      {
                        v34 = **(result + 168);
                        v35 = v34[1];
                        v33 = v29 / *v34;
                        v32 /= v35;
                      }

                      v36 = **(result + 192);
                      if (v36 * v6 < v36 * v19)
                      {
                        v37 = v33;
                        v38 = v6 * v36;
                        v39 = 2 * **(result + 184) * v32 + 2 * **(result + 176) * v37;
                        v40 = 2 * **(result + 200);
                        v41 = (a2 + v39 + v40 * v6 * v36);
                        v42 = v16 * v36 - (v6 * v36);
                        do
                        {
                          _H1 = *v41;
                          _H2 = *(a3 + 2 * **(result + 144) * v12 + 2 * **(result + 152) * v30 + 2 * **(result + 208) * (v38 % v36));
                          __asm
                          {
                            FCVT            S1, H1
                            FCVT            S2, H2
                          }

                          _S0 = _S0 + (_S1 * _S2);
                          ++v38;
                          v41 = (v41 + v40);
                          --v42;
                        }

                        while (v42);
                      }
                    }
                  }

                  v30 += **(result + 104);
                }

                while (v30 < v24);
              }

              v12 += **(result + 88);
            }

            while (v12 < v20);
            __asm { FCVT            H0, S0 }

            v12 = v53;
            v22 = v54;
            v17 = v56;
            v21 = v55;
          }

          *v14 = _H0;
          v14 += v21;
          a3 += 2 * v22;
          ++v18;
        }

        while (v18 != v17);
      }

      ++v16;
      v15 = v51;
      v17 += v51;
      ++v6;
    }

    while (v19 != v52);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF55D8;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF55D8;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF55D8;
  *(a2 + 284) = 0;
  *(a2 + 281) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[31];
  if (v2)
  {
    __p[32] = v2;
    operator delete(v2);
  }

  v3 = __p[28];
  if (v3)
  {
    __p[29] = v3;
    operator delete(v3);
  }

  v4 = __p[25];
  if (v4)
  {
    __p[26] = v4;
    operator delete(v4);
  }

  v5 = __p[22];
  if (v5)
  {
    __p[23] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::Stream(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_25A412110(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[28] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[25] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF56D0;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF56D0;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF56D0;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  v4 = a1[27];
  if (v4)
  {
    a1[28] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[33];
  if (v2)
  {
    __p[34] = v2;
    operator delete(v2);
  }

  v3 = __p[30];
  if (v3)
  {
    __p[31] = v3;
    operator delete(v3);
  }

  v4 = __p[27];
  if (v4)
  {
    __p[28] = v4;
    operator delete(v4);
  }

  v5 = __p[24];
  if (v5)
  {
    __p[25] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_2DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::__bind(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 240, *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_25A4125B0(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[28] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[25] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[22] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v3 = (a1 + 240);
  v2 = *(a1 + 240);
  v4 = *v2;
  v5 = *v2 == 1 && v2[1] == 1;
  v130 = v5;
  v6 = a1 + 60;
  v129 = *(a1 + 48) / *(a1 + 60);
  v7 = (a1 + 192);
  v113 = (a1 + 264);
  v8 = *(a1 + 216);
  v114 = a1 + 216;
  v9 = *v8;
  v102 = a1;
  v103 = (a1 + 56);
  v94 = (a1 + 52);
  if (*(a1 + 264))
  {
    v10 = -v9;
    v11 = v8[1];
    v12 = -v11;
    v13 = (*(a1 + 52) - 1) * v9;
    v14 = (*(a1 + 56) - 1) * v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = v8[1];
    v10 = *v8;
  }

  v15 = std::lcm[abi:ne200100]<int,int>(v4, v9);
  v16 = *(*v114 + 4);
  v128 = v15 / **v114;
  v127 = std::lcm[abi:ne200100]<int,int>((*v3)[1], v16) / *(*v114 + 4);
  v17 = std::lcm[abi:ne200100]<int,int>(**v3, **v7);
  v18 = (*v7)[1];
  v126 = v17 / **v7;
  v125 = std::lcm[abi:ne200100]<int,int>((*v3)[1], v18) / (*v7)[1];
  std::vector<int>::vector[abi:ne200100](v124, v126);
  std::vector<int>::vector[abi:ne200100](v123, v125);
  v19 = (v6 + 108);
  v112 = (v6 + 52);
  v111 = (v6 + 60);
  v110 = (v6 + 20);
  v109 = (v6 + 28);
  v108 = (v6 + 4);
  v107 = (v6 + 36);
  v106 = (v6 + 68);
  v93 = (v6 + 100);
  v92 = (v6 + 44);
  if (v126 >= 1)
  {
    v20 = 0;
    v21 = *v7;
    v22 = *v19;
    v23 = v124[0];
    v24 = *v3;
    do
    {
      if (*v94 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v26 = v13 + *v21 * v20 - *v22;
        while (v26 % *v24)
        {
          ++v25;
          v26 += v10;
          if (*v94 == v25)
          {
            v25 = *v94;
            break;
          }
        }
      }

      v23[v20++] = v25;
    }

    while (v20 < v126);
  }

  if (v125 >= 1)
  {
    v27 = 0;
    v28 = *v7;
    v29 = *v19;
    v30 = v123[0];
    v31 = *v3;
    do
    {
      if (*v103 < 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = v14 + v28[1] * v27 - v29[1];
        while (v33 % v31[1])
        {
          ++v32;
          v33 += v12;
          if (*v103 == v32)
          {
            v32 = *v103;
            break;
          }
        }
      }

      v30[v27++] = v32;
    }

    while (v27 < v125);
  }

  v122[0] = v6 + 84;
  v122[1] = v6 + 92;
  v122[2] = v7;
  v122[3] = v6 + 108;
  v122[4] = v124;
  v122[5] = &v126;
  v122[6] = v123;
  v122[7] = &v125;
  v122[8] = v6;
  v122[9] = &v129;
  v122[10] = v94;
  v122[11] = &v128;
  v34 = v102;
  v122[12] = v103;
  v122[13] = &v127;
  v122[14] = v113;
  v122[15] = v114;
  v122[16] = v102 + 28;
  v122[17] = v102 + 32;
  v122[18] = v6 + 52;
  v122[19] = v6 + 60;
  v122[20] = &v130;
  v122[21] = v3;
  v122[22] = v6 + 20;
  v122[23] = v6 + 28;
  v122[24] = v6 + 4;
  v122[25] = v6 + 36;
  v122[26] = v6 + 68;
  v122[27] = v6 + 100;
  v122[28] = v6 + 44;
  if (v130)
  {
    v35 = *(v102 + 168);
    v36 = *v35;
    v37 = *(v102 + 192);
    v38 = *v37;
    v39 = (*v35 + v38 - 1) / v38;
    v40 = *(v102 + 40);
  }

  else
  {
    v40 = *(v102 + 40);
    v35 = *(v102 + 168);
    v36 = *v35;
    v37 = *(v102 + 192);
    v38 = *v37;
    v39 = v40;
  }

  v41 = (*(v102 + 28) + v36 - **v114 * *v94) / v38;
  v86 = v39;
  v85 = v41;
  if (v39 > v41)
  {
    v41 = v39;
  }

  v89 = v41;
  if (v130)
  {
    v42 = v35[1];
    v43 = v37[1];
    v44 = *(v102 + 44);
    v45 = (v42 + v43 - 1) / v43;
  }

  else
  {
    v44 = *(v102 + 44);
    v42 = v35[1];
    v43 = v37[1];
    v45 = v44;
  }

  v46 = (*(v102 + 32) + v42 - *(*v114 + 4) * *(v102 + 56)) / v43;
  v100 = v45;
  v88 = v46;
  if (v45 > v46)
  {
    v46 = v45;
  }

  v90 = v46;
  if (*(v102 + 24) >= 1)
  {
    v87 = 0;
    v99 = v44;
    v84 = v40;
    do
    {
      if (v86 >= 1)
      {
        v47 = 0;
        v48 = *(v34 + 44);
        do
        {
          if (v48 >= 1)
          {
            for (i = 0; i < v48; ++i)
            {
              v34 = v102;
              v48 = *(v102 + 44);
            }
          }

          ++v47;
        }

        while (v47 != v86);
      }

      v50 = v86;
      if (v85 > v86)
      {
        do
        {
          v51 = v100;
          if (v100 >= 1)
          {
            v52 = v34;
            for (j = 0; j != v100; ++j)
            {
              v51 = v100;
            }
          }

          v91 = v50;
          if (v88 > v51)
          {
            v54 = *(v102 + 192);
            v55 = *(v102 + 168);
            v105 = *(v102 + 60);
            v97 = *(v102 + 152);
            v96 = *(v102 + 16) + 2 * *(v102 + 144) * v50;
            v56 = v129;
            v115 = *(v102 + 8);
            v95 = *v102;
            v57 = *v54 * v50 - *v55;
            v98 = v54[1];
            v58 = v100 * v98 - v55[1];
            v101 = v100;
            v104 = v129;
            do
            {
              if (v105 >= 1)
              {
                v59 = 0;
                v60 = v95;
                v61 = (v96 + 2 * v101 * v97);
                v62 = *v94;
                v119 = *v92;
                v120 = *v93;
                v118 = 1;
                v121 = v56;
                do
                {
                  v63 = v59 * v56;
                  v117 = v59 + 1;
                  if (v59 * v56 < (v59 + 1) * v56)
                  {
                    v64 = *v103;
                    v116 = v59;
                    do
                    {
                      if (v62 < 1)
                      {
                        v71 = 0.0;
                      }

                      else
                      {
                        v65 = 0;
                        v66 = *v114;
                        v67 = *v110;
                        v68 = *v109;
                        v69 = *v108 * v59;
                        v70 = 2 * *v107;
                        v71 = 0.0;
                        do
                        {
                          if (v64 >= 1)
                          {
                            v72 = 0;
                            if (*v113)
                            {
                              v73 = v62 + ~v65;
                            }

                            else
                            {
                              v73 = v65;
                            }

                            v74 = v115 + v70 * v69 + 2 * *v110 * (v57 + *v66 * v73);
                            do
                            {
                              v75 = v64 + ~v72;
                              if ((*v113 & 1) == 0)
                              {
                                v75 = v72;
                              }

                              if (v69 < *v108 * v117)
                              {
                                v76 = (v74 + 2 * *v109 * (v58 + v75 * v66[1]));
                                v77 = *v108 * v59;
                                v78 = v118 * *v108 - v69;
                                do
                                {
                                  v71 = v71 + (COERCE_FLOAT(*v76 << 16) * COERCE_FLOAT(*(v60 + 2 * v65 * *v112 + 2 * v72 * *v111 + 2 * *v106 * (v77 % *v108)) << 16));
                                  ++v77;
                                  v76 = (v76 + v70);
                                  --v78;
                                }

                                while (v78);
                              }

                              ++v72;
                            }

                            while (v72 != v64);
                          }

                          ++v65;
                        }

                        while (v65 != v62);
                        v59 = v116;
                      }

                      *v61 = (LODWORD(v71) + (HIWORD(LODWORD(v71)) & 1u) + 0x7FFF) >> 16;
                      v61 += v120;
                      v60 += 2 * v119;
                      ++v63;
                    }

                    while (v63 != v121);
                  }

                  ++v118;
                  v56 = v104;
                  v121 += v104;
                  v59 = v117;
                }

                while (v117 != v105);
              }

              v58 += v98;
              ++v101;
            }

            while (v101 != v90);
          }

          if (v90 < v99)
          {
            v79 = v90;
            do
            {
            }

            while (v99 != v79);
          }

          ++v50;
          v34 = v102;
        }

        while (v89 != v91 + 1);
      }

      if (v89 < v84)
      {
        v80 = *(v34 + 44);
        v81 = v89;
        do
        {
          if (v80 >= 1)
          {
            for (k = 0; k < v80; ++k)
            {
              v34 = v102;
              v80 = *(v102 + 44);
            }
          }

          ++v81;
        }

        while (v81 != v84);
      }

      v83 = *(v34 + 16) + 2 * *(v34 + 136);
      *(v34 + 8) += 2 * *(v34 + 72);
      *(v34 + 16) = v83;
      ++v87;
    }

    while (v87 < *(v34 + 24));
  }

  if (v123[0])
  {
    v123[1] = v123[0];
    operator delete(v123[0]);
  }

  if (v124[0])
  {
    v124[1] = v124[0];
    operator delete(v124[0]);
  }
}

void sub_25A412EEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}::operator()(void)::{lambda(mlx::core::_MLX_BFloat16 const*,mlx::core::_MLX_BFloat16 const*,mlx::core::_MLX_BFloat16*,int,int)#2}::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v43 = **(result + 64);
  if (v43 >= 1)
  {
    v6 = 0;
    v7 = **(result + 16);
    v8 = **(result + 24);
    v9 = v8[1];
    v10 = *v7 * a5 - *v8;
    v11 = *(**(result + 32) + 4 * (a5 % **(result + 40)));
    v12 = v7[1] * a6 - v9;
    v13 = *(**(result + 48) + 4 * (a6 % **(result + 56)));
    v14 = (a4 + 2 * **result * a5 + 2 * **(result + 8) * a6);
    v15 = **(result + 72);
    v16 = 1;
    v17 = v15;
    v44 = v11;
    v42 = v15;
    do
    {
      v18 = v15 * v6;
      v19 = v6 + 1;
      if (v15 * v6 < v15 * (v6 + 1))
      {
        v20 = **(result + 80);
        v21 = **(result + 216);
        v22 = **(result + 224);
        v47 = v17;
        v45 = v22;
        v46 = v21;
        do
        {
          v23 = 0.0;
          if (v11 < v20)
          {
            v24 = **(result + 96);
            do
            {
              if (v13 < v24)
              {
                v25 = v20 + ~v11;
                if (!**(result + 112))
                {
                  v25 = v11;
                }

                v26 = **(result + 120);
                v27 = v26[1];
                v28 = v10 + *v26 * v25;
                v29 = v13;
                do
                {
                  v30 = v24 + ~v29;
                  if (!**(result + 112))
                  {
                    v30 = v29;
                  }

                  if ((v28 & 0x80000000) == 0 && v28 < **(result + 128))
                  {
                    v31 = v12 + v27 * v30;
                    if ((v31 & 0x80000000) == 0 && v31 < **(result + 136))
                    {
                      v32 = v28;
                      if ((**(result + 160) & 1) == 0)
                      {
                        v33 = **(result + 168);
                        v34 = v33[1];
                        v32 = v28 / *v33;
                        v31 /= v34;
                      }

                      v35 = **(result + 192);
                      if (v35 * v6 < v35 * v19)
                      {
                        v36 = v32;
                        v37 = v6 * v35;
                        v38 = 2 * **(result + 184) * v31 + 2 * **(result + 176) * v36;
                        v39 = 2 * **(result + 200);
                        v40 = (a2 + v38 + v39 * v6 * v35);
                        v41 = v16 * v35 - (v6 * v35);
                        do
                        {
                          v23 = v23 + (COERCE_FLOAT(*v40 << 16) * COERCE_FLOAT(*(a3 + 2 * **(result + 144) * v11 + 2 * **(result + 152) * v29 + 2 * **(result + 208) * (v37 % v35)) << 16));
                          ++v37;
                          v40 = (v40 + v39);
                          --v41;
                        }

                        while (v41);
                      }
                    }
                  }

                  v29 += **(result + 104);
                }

                while (v29 < v24);
              }

              v11 += **(result + 88);
            }

            while (v11 < v20);
            v11 = v44;
            v22 = v45;
            v17 = v47;
            v21 = v46;
          }

          *v14 = (LODWORD(v23) + (HIWORD(LODWORD(v23)) & 1u) + 0x7FFF) >> 16;
          v14 += v21;
          a3 += 2 * v22;
          ++v18;
        }

        while (v18 != v17);
      }

      ++v16;
      v15 = v42;
      v17 += v42;
      ++v6;
    }

    while (v19 != v43);
  }

  return result;
}

void *std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5750;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5750;
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5750;
  *(a2 + 284) = 0;
  *(a2 + 281) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[31];
  if (v2)
  {
    __p[32] = v2;
    operator delete(v2);
  }

  v3 = __p[28];
  if (v3)
  {
    __p[29] = v3;
    operator delete(v3);
  }

  v4 = __p[25];
  if (v4)
  {
    __p[26] = v4;
    operator delete(v4);
  }

  v5 = __p[22];
  if (v5)
  {
    __p[23] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_2D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_1D_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_NS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE7__cloneEPNS0_6__baseISQ_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5848;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_1D_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_NS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_125explicit_gemm_conv_1D_cpuERKNS3_5arrayESA_S8_RKNS_6vectorIiNS_9allocatorIiEEEESG_SG_NS3_6StreamEE3__0JEEEvOT_DpOT0_EUlvE_NSC_ISO_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_1D_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,mlx::core::Stream)::$_0>::operator()[abi:ne200100]<>(uint64_t result)
{
  if (*(result + 24) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1 + 44);
      v4 = *(v1 + 40);
      v5 = *v1;
      v6 = (*(v1 + 36) * v4);
      v7 = *(v1 + 28);
      v10 = *(v1 + 32);
      v9 = *(v1 + 16) + 4 * v3 * v2;
      v8 = *(v1 + 8) + 4 * v4 * *(v1 + 48) * v3 * v2;
      result = cblas_sgemm_NEWLAPACK();
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  return result;
}

__n128 std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_1D_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_1D_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,mlx::core::Stream)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF58C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_1D_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,mlx::core::Stream)::$_0>,std::allocator<std::__bind<mlx::core::anonymous namespace::explicit_gemm_conv_1D_cpu(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,mlx::core::Stream)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF59C0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  result = *(a1 + 120);
  v8 = *(a1 + 136);
  v9 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 152) = v9;
  *(a2 + 136) = v8;
  *(a2 + 120) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DIfEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(unint64_t result)
{
  v23 = *(result + 24);
  if (v23 >= 1)
  {
    v1 = 0;
    v30 = *(result + 40);
    v2 = *(result + 44) / v30;
    v26 = *(result + 32);
    v22 = *(result + 104);
    v3 = *(result + 8);
    v34 = result;
    v25 = *(result + 16);
    v28 = v2;
    v29 = v2;
    v21 = 4 * *(result + 56);
    do
    {
      v24 = v1;
      if (v26 >= 1)
      {
        for (i = 0; i != v26; ++i)
        {
          if (v30 >= 1)
          {
            v4 = 0;
            v33 = *v34;
            v31 = 0;
            v32 = *(v34 + 80);
            v5 = *(v34 + 36);
            v39 = *(v34 + 120);
            v38 = v25 + 4 * *(v34 + 112) * i;
            v37 = 1;
            v40 = v2;
            do
            {
              v35 = v4;
              v36 = v4 + 1;
              if (v4 * v2 < (v4 + 1) * v2)
              {
                v42 = *(v34 + 88);
                v47 = *(v34 + 128);
                v46 = *(v34 + 136) * i - *(v34 + 132);
                v7 = *(v34 + 140);
                v6 = *(v34 + 144);
                v8 = v31;
                do
                {
                  v41 = v8;
                  if (v5 < 1)
                  {
                    v13 = 0.0;
                  }

                  else
                  {
                    v9 = 0;
                    v44 = v33 + 4 * v8 * v32;
                    v45 = *(v34 + 28);
                    v10 = *(v34 + 48);
                    v11 = *(v34 + 96);
                    v12 = 4 * *(v34 + 72);
                    v43 = 4 * *(v34 + 64);
                    v13 = 0.0;
                    do
                    {
                      v14 = v5 + ~v9;
                      if ((v47 & 1) == 0)
                      {
                        v14 = v9;
                      }

                      v15 = v46 + v14 * v7;
                      result = div(v15, v6).quot;
                      if ((v15 & 0x80000000) == 0 && v15 < v45 && HIDWORD(result) == 0 && v10 * v35 < v10 * v36)
                      {
                        v18 = v12 * v10 * v35 + v43 * result;
                        v19 = v10 * v35;
                        v20 = v37 * v10 - (v10 * v35);
                        do
                        {
                          v13 = v13 + (*(v3 + v18) * *(v44 + 4 * v9 * v42 + 4 * v11 * (v19 % v10)));
                          ++v19;
                          v18 += v12;
                          --v20;
                        }

                        while (v20);
                      }

                      ++v9;
                    }

                    while (v9 != v5);
                  }

                  *(v38 + 4 * v41 * v39) = v13;
                  v8 = v41 + 1;
                }

                while (v40 != v41 + 1);
              }

              ++v37;
              v2 = v29;
              v31 += v28;
              v40 += v29;
              v4 = v36;
            }

            while (v36 != v30);
          }
        }
      }

      v3 += v21;
      v25 += 4 * v22;
      v1 = v24 + 1;
    }

    while (v24 + 1 != v23);
    *(v34 + 8) = v3;
    *(v34 + 16) = v25;
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5A40;
  result = *(a1 + 104);
  v3 = *(a1 + 120);
  v4 = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  v5 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 40) = v6;
  *(a2 + 136) = v4;
  *(a2 + 120) = v3;
  *(a2 + 104) = result;
  *(a2 + 161) = 0;
  *(a2 + 164) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<float>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5B38;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  result = *(a1 + 120);
  v8 = *(a1 + 136);
  v9 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 152) = v9;
  *(a2 + 136) = v8;
  *(a2 + 120) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DIDhEEvRKNS3_5arrayESB_S9_RKNS_6vectorIiNS_9allocatorIiEEEESH_SH_SH_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSD_ISP_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t *result)
{
  v33 = *(result + 6);
  if (v33 >= 1)
  {
    v1 = 0;
    v40 = *(result + 10);
    v2 = *(result + 11) / v40;
    v36 = *(result + 8);
    v32 = result[13];
    v3 = result[1];
    v35 = result[2];
    v38 = v2;
    v39 = v2;
    v31 = 2 * result[7];
    v42 = result;
    do
    {
      v34 = v1;
      if (v36 >= 1)
      {
        for (i = 0; i != v36; ++i)
        {
          if (v40 >= 1)
          {
            v41 = 0;
            v4 = 0;
            v43 = result[10];
            v44 = *result;
            v5 = *(result + 9);
            v49 = result[15];
            v48 = v35 + 2 * result[14] * i;
            v47 = 1;
            v50 = v2;
            do
            {
              v46 = v4 + 1;
              if (v4 * v2 < (v4 + 1) * v2)
              {
                v52 = result[11];
                v59 = *(result + 128);
                v58 = *(result + 34) * i - *(result + 33);
                v7 = *(result + 35);
                v6 = *(result + 36);
                v8 = v41;
                v45 = v4;
                do
                {
                  if (v5 < 1)
                  {
                    _H0 = 0;
                  }

                  else
                  {
                    v9 = 0;
                    v51 = v8;
                    v56 = v44 + 2 * v8 * v43;
                    v57 = *(result + 7);
                    v10 = *(result + 12);
                    v11 = v10 * v4;
                    v12 = result[12];
                    v13 = 2 * result[9];
                    v54 = v13 * v10 * v4;
                    v55 = v47 * v10 - (v10 * v4);
                    v53 = 2 * result[8];
                    _S8 = 0.0;
                    do
                    {
                      v15 = v5 + ~v9;
                      if ((v59 & 1) == 0)
                      {
                        v15 = v9;
                      }

                      v16 = v58 + v15 * v7;
                      quot = div(v16, v6).quot;
                      if ((v16 & 0x80000000) == 0 && v16 < v57 && HIDWORD(quot) == 0 && v11 < v10 * v46)
                      {
                        v20 = v54 + v53 * quot;
                        v21 = v11;
                        v22 = v55;
                        do
                        {
                          _H0 = *(v3 + v20);
                          _H1 = *(v56 + 2 * v9 * v52 + 2 * v12 * (v21 % v10));
                          __asm
                          {
                            FCVT            S0, H0
                            FCVT            S1, H1
                          }

                          _S8 = _S8 + (_S0 * _S1);
                          ++v21;
                          v20 += v13;
                          --v22;
                        }

                        while (v22);
                      }

                      ++v9;
                    }

                    while (v9 != v5);
                    __asm { FCVT            H0, S8 }

                    result = v42;
                    v4 = v45;
                    v8 = v51;
                  }

                  *(v48 + 2 * v8 * v49) = _H0;
                  ++v8;
                }

                while (v50 != v8);
              }

              ++v47;
              v2 = v39;
              v41 += v38;
              v50 += v39;
              v4 = v46;
            }

            while (v46 != v40);
          }
        }
      }

      v3 += v31;
      v35 += 2 * v32;
      v1 = v34 + 1;
    }

    while (v34 + 1 != v33);
    result[1] = v3;
    result[2] = v35;
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5BB8;
  result = *(a1 + 104);
  v3 = *(a1 + 120);
  v4 = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  v5 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 40) = v6;
  *(a2 + 136) = v4;
  *(a2 + 120) = v3;
  *(a2 + 104) = result;
  *(a2 + 161) = 0;
  *(a2 + 164) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<half>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5CB0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  result = *(a1 + 120);
  v8 = *(a1 + 136);
  v9 = *(a1 + 152);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 152) = v9;
  *(a2 + 136) = v8;
  *(a2 + 120) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_12_GLOBAL__N_112slow_conv_1DINS3_13_MLX_BFloat16EEEvRKNS3_5arrayESC_SA_RKNS_6vectorIiNS_9allocatorIiEEEESI_SI_SI_bNS3_6StreamEEUlvE_JEEEvOT_DpOT0_EUlvE_NSE_ISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t *result)
{
  v25 = *(result + 6);
  if (v25 >= 1)
  {
    v1 = 0;
    v32 = *(result + 10);
    v2 = *(result + 11) / v32;
    v28 = *(result + 8);
    v24 = result[13];
    v3 = result[1];
    v27 = result[2];
    v30 = v2;
    v31 = v2;
    v23 = 2 * result[7];
    v34 = result;
    do
    {
      v26 = v1;
      if (v28 >= 1)
      {
        for (i = 0; i != v28; ++i)
        {
          if (v32 >= 1)
          {
            v33 = 0;
            v4 = 0;
            v35 = result[10];
            v36 = *result;
            v5 = *(result + 9);
            v41 = result[15];
            v40 = v27 + 2 * result[14] * i;
            v39 = 1;
            v42 = v2;
            do
            {
              v38 = v4 + 1;
              if (v4 * v2 < (v4 + 1) * v2)
              {
                v44 = result[11];
                v51 = *(result + 128);
                v50 = *(result + 34) * i - *(result + 33);
                v7 = *(result + 35);
                v6 = *(result + 36);
                v8 = v33;
                v37 = v4;
                do
                {
                  if (v5 < 1)
                  {
                    v14 = 0.0;
                  }

                  else
                  {
                    v9 = 0;
                    v43 = v8;
                    v48 = v36 + 2 * v8 * v35;
                    v49 = *(result + 7);
                    v10 = *(result + 12);
                    v11 = v10 * v4;
                    v12 = result[12];
                    v13 = 2 * result[9];
                    v46 = v13 * v10 * v4;
                    v47 = v39 * v10 - (v10 * v4);
                    v45 = 2 * result[8];
                    v14 = 0.0;
                    do
                    {
                      v15 = v5 + ~v9;
                      if ((v51 & 1) == 0)
                      {
                        v15 = v9;
                      }

                      v16 = v50 + v15 * v7;
                      quot = div(v16, v6).quot;
                      if ((v16 & 0x80000000) == 0 && v16 < v49 && HIDWORD(quot) == 0 && v11 < v10 * v38)
                      {
                        v20 = v46 + v45 * quot;
                        v21 = v11;
                        v22 = v47;
                        do
                        {
                          v14 = v14 + (COERCE_FLOAT(*(v3 + v20) << 16) * COERCE_FLOAT(*(v48 + 2 * v9 * v44 + 2 * v12 * (v21 % v10)) << 16));
                          ++v21;
                          v20 += v13;
                          --v22;
                        }

                        while (v22);
                      }

                      ++v9;
                    }

                    while (v9 != v5);
                    result = v34;
                    v4 = v37;
                    v8 = v43;
                  }

                  *(v40 + 2 * v8 * v41) = (LODWORD(v14) + (HIWORD(LODWORD(v14)) & 1u) + 0x7FFF) >> 16;
                  ++v8;
                }

                while (v42 != v8);
              }

              ++v39;
              v2 = v31;
              v33 += v30;
              v42 += v31;
              v4 = v38;
            }

            while (v38 != v32);
          }
        }
      }

      v3 += v23;
      v27 += 2 * v24;
      v1 = v26 + 1;
    }

    while (v26 + 1 != v25);
    result[1] = v3;
    result[2] = v27;
  }

  return result;
}

__n128 std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF5D30;
  result = *(a1 + 104);
  v3 = *(a1 + 120);
  v4 = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  v5 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v8;
  *(a2 + 56) = v7;
  *(a2 + 40) = v6;
  *(a2 + 136) = v4;
  *(a2 + 120) = v3;
  *(a2 + 104) = result;
  *(a2 + 161) = 0;
  *(a2 + 164) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::anonymous namespace::slow_conv_1D<mlx::core::_MLX_BFloat16>(mlx::core::array const&,mlx::core::array const&,mlx::core::array,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,BOOL,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::ArgReduce::eval_cpu(uint64_t a1, void *a2, uint64_t a3)
{
  v5[27] = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 16)
  {
    v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
    v5[0] = &unk_286BE3468;
    v5[1] = mlx::core::allocator::free;
    v5[3] = v5;
    mlx::core::array::set_data(a3, v4);
  }

  mlx::core::ArgReduce::eval_cpu();
}

void sub_25A4150D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  mlx::core::array::~array((v34 + 32));
  mlx::core::array::~array((v34 + 16));
  mlx::core::array::~array((v33 + 16));
  mlx::core::array::~array(&a31);
  mlx::core::array::~array((v35 + 16));
  mlx::core::array::~array(&a13);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9ArgReduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF5EB0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9ArgReduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF5EB0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9ArgReduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF5EB0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = *(result + 56);
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9ArgReduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9ArgReduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9ArgReduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_9ArgReduce8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::operator()(uint64_t a1)
{
  v1 = *a1;
  switch(*(*a1 + 56))
  {
    case 0:
      v3 = *(a1 + 32);
      v4 = *(a1 + 36);
      if (v3 == 1)
      {
        v546 = *(*v1 + 4 * v4);
        v547 = v1[3];
        v548 = v1[4];
        v549 = *(v547 + 8 * v4);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v547, v548, (v548 - v547) >> 3);
        v550 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v550, v550[1], (v550[1] - *v550) >> 2);
        v551 = __p + 8 * v4;
        v552 = v755 - (v551 + 8);
        if (v755 != v551 + 8)
        {
          memmove(__p + 8 * v4, v551 + 8, v755 - (v551 + 8));
        }

        v755 = &v551[v552];
        v12 = v751;
        v553 = &v751[v4];
        v554 = (v752 - (v553 + 1));
        if (v752 != v553 + 1)
        {
          memmove(v553, v553 + 1, v752 - (v553 + 1));
          v12 = v751;
        }

        v555 = *(a1 + 16);
        v556 = *(v555 + 48);
        if (v556)
        {
          v557 = 0;
          v744 = *(*a1 + 152);
          v558 = *(v555 + 152);
          v559 = ((&v554[v553] - v12) >> 2) - 1;
          v560 = __p;
          do
          {
            v561 = 0;
            if ((v559 & 0x80000000) == 0)
            {
              v562 = v559;
              quot = v557;
              do
              {
                v564 = ldiv(quot, *&v12[4 * v562]);
                quot = v564.quot;
                v561 += v560[v562--] * v564.rem;
              }

              while (v562 != -1);
            }

            if (v546)
            {
              v565 = 0;
              v566 = 0;
              v567 = (v744 + v561);
              v568 = *(v744 + v561);
              do
              {
                if (((v568 == 0) & *v567) != 0)
                {
                  v566 = v565;
                  v568 = 1;
                }

                ++v565;
                v567 += v549;
              }

              while (v546 != v565);
            }

            else
            {
              v566 = 0;
            }

            *(v558 + 4 * v557) = v566;
            v557 = (v557 + 1);
          }

          while (v556 > v557);
        }

        goto LABEL_575;
      }

      if (!v3)
      {
        v5 = *(*v1 + 4 * v4);
        v6 = v1[3];
        v7 = v1[4];
        v8 = *(v6 + 8 * v4);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v6, v7, (v7 - v6) >> 3);
        v9 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v9, v9[1], (v9[1] - *v9) >> 2);
        v10 = __p + 8 * v4;
        v11 = v755 - (v10 + 8);
        if (v755 != v10 + 8)
        {
          memmove(__p + 8 * v4, v10 + 8, v755 - (v10 + 8));
        }

        v755 = &v10[v11];
        v12 = v751;
        v13 = &v751[v4];
        v14 = (v752 - (v13 + 1));
        if (v752 != v13 + 1)
        {
          memmove(v13, v13 + 1, v752 - (v13 + 1));
          v12 = v751;
        }

        v15 = *(a1 + 16);
        v16 = *(v15 + 48);
        if (v16)
        {
          v17 = 0;
          v723 = *(*a1 + 152);
          v18 = *(v15 + 152);
          v19 = ((&v14[v13] - v12) >> 2) - 1;
          v20 = __p;
          do
          {
            v21 = 0;
            if ((v19 & 0x80000000) == 0)
            {
              v22 = v19;
              v23 = v17;
              do
              {
                v24 = ldiv(v23, *&v12[4 * v22]);
                v23 = v24.quot;
                v21 += v20[v22--] * v24.rem;
              }

              while (v22 != -1);
            }

            if (v5)
            {
              v25 = 0;
              v26 = 0;
              v27 = (v723 + v21);
              v28 = *(v723 + v21);
              do
              {
                v29 = *v27;
                if (v28 > v29)
                {
                  v26 = v25;
                }

                if (v28 >= v29)
                {
                  v28 = *v27;
                }

                ++v25;
                v27 += v8;
              }

              while (v5 != v25);
            }

            else
            {
              v26 = 0;
            }

            *(v18 + 4 * v17) = v26;
            v17 = (v17 + 1);
          }

          while (v16 > v17);
        }

        goto LABEL_575;
      }

      break;
    case 1:
      v213 = *(a1 + 32);
      v214 = *(a1 + 36);
      if (v213 == 1)
      {
        v569 = *(*v1 + 4 * v214);
        v570 = v1[3];
        v571 = v1[4];
        v572 = *(v570 + 8 * v214);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v570, v571, (v571 - v570) >> 3);
        v573 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v573, v573[1], (v573[1] - *v573) >> 2);
        v574 = __p + 8 * v214;
        v575 = v755 - (v574 + 8);
        if (v755 != v574 + 8)
        {
          memmove(__p + 8 * v214, v574 + 8, v755 - (v574 + 8));
        }

        v755 = &v574[v575];
        v12 = v751;
        v576 = &v751[v214];
        v577 = (v752 - (v576 + 1));
        if (v752 != v576 + 1)
        {
          memmove(v576, v576 + 1, v752 - (v576 + 1));
          v12 = v751;
        }

        v578 = &v577[v576];
        v752 = &v577[v576];
        v579 = *(a1 + 16);
        v580 = *(v579 + 48);
        if (v580)
        {
          v581 = 0;
          v745 = *(*a1 + 152);
          v582 = *(v579 + 152);
          v583 = ((v578 - v12) >> 2) - 1;
          v584 = __p;
          do
          {
            v585 = 0;
            if ((v583 & 0x80000000) == 0)
            {
              v586 = v583;
              v587 = v581;
              do
              {
                v588 = ldiv(v587, *&v12[4 * v586]);
                v587 = v588.quot;
                v585 += v584[v586--] * v588.rem;
              }

              while (v586 != -1);
            }

            if (v569)
            {
              v589 = 0;
              v590 = 0;
              v591 = (v745 + v585);
              v592 = *(v745 + v585);
              do
              {
                v593 = *v591;
                if (v592 < v593)
                {
                  v590 = v589;
                }

                if (v592 <= v593)
                {
                  v592 = *v591;
                }

                ++v589;
                v591 += v572;
              }

              while (v569 != v589);
            }

            else
            {
              v590 = 0;
            }

            *(v582 + 4 * v581) = v590;
            v581 = (v581 + 1);
          }

          while (v580 > v581);
        }

        goto LABEL_575;
      }

      if (!v213)
      {
        v215 = *(*v1 + 4 * v214);
        v216 = v1[3];
        v217 = v1[4];
        v218 = *(v216 + 8 * v214);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v216, v217, (v217 - v216) >> 3);
        v219 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v219, v219[1], (v219[1] - *v219) >> 2);
        v220 = __p + 8 * v214;
        v221 = v755 - (v220 + 8);
        if (v755 != v220 + 8)
        {
          memmove(__p + 8 * v214, v220 + 8, v755 - (v220 + 8));
        }

        v755 = &v220[v221];
        v12 = v751;
        v222 = &v751[v214];
        v223 = (v752 - (v222 + 1));
        if (v752 != v222 + 1)
        {
          memmove(v222, v222 + 1, v752 - (v222 + 1));
          v12 = v751;
        }

        v224 = &v223[v222];
        v752 = &v223[v222];
        v225 = *(a1 + 16);
        v226 = *(v225 + 48);
        if (v226)
        {
          v227 = 0;
          v731 = *(*a1 + 152);
          v228 = *(v225 + 152);
          v229 = ((v224 - v12) >> 2) - 1;
          v230 = __p;
          do
          {
            v231 = 0;
            if ((v229 & 0x80000000) == 0)
            {
              v232 = v229;
              v233 = v227;
              do
              {
                v234 = ldiv(v233, *&v12[4 * v232]);
                v233 = v234.quot;
                v231 += v230[v232--] * v234.rem;
              }

              while (v232 != -1);
            }

            if (v215)
            {
              v235 = 0;
              v236 = 0;
              v237 = (v731 + v231);
              v238 = *(v731 + v231);
              do
              {
                v239 = *v237;
                if (v238 > v239)
                {
                  v236 = v235;
                }

                if (v238 >= v239)
                {
                  v238 = *v237;
                }

                ++v235;
                v237 += v218;
              }

              while (v215 != v235);
            }

            else
            {
              v236 = 0;
            }

            *(v228 + 4 * v227) = v236;
            v227 = (v227 + 1);
          }

          while (v226 > v227);
        }

        goto LABEL_575;
      }

      break;
    case 2:
      v134 = *(a1 + 32);
      v135 = *(a1 + 36);
      if (v134 == 1)
      {
        v473 = *(*v1 + 4 * v135);
        v474 = v1[3];
        v475 = v1[4];
        v476 = *(v474 + 8 * v135);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v474, v475, (v475 - v474) >> 3);
        v477 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v477, v477[1], (v477[1] - *v477) >> 2);
        v478 = __p + 8 * v135;
        v479 = v755 - (v478 + 8);
        if (v755 != v478 + 8)
        {
          memmove(__p + 8 * v135, v478 + 8, v755 - (v478 + 8));
        }

        v755 = &v478[v479];
        v12 = v751;
        v480 = &v751[v135];
        v481 = (v752 - (v480 + 1));
        if (v752 != v480 + 1)
        {
          memmove(v480, v480 + 1, v752 - (v480 + 1));
          v12 = v751;
        }

        v482 = *(a1 + 16);
        v483 = *(v482 + 48);
        if (v483)
        {
          v484 = 0;
          v741 = *(*a1 + 152);
          v485 = *(v482 + 152);
          v486 = ((&v481[v480] - v12) >> 2) - 1;
          v487 = __p;
          v488 = 2 * v476;
          do
          {
            v489 = 0;
            if ((v486 & 0x80000000) == 0)
            {
              v490 = v486;
              v491 = v484;
              do
              {
                v492 = ldiv(v491, *&v12[4 * v490]);
                v491 = v492.quot;
                v489 += v487[v490--] * v492.rem;
              }

              while (v490 != -1);
            }

            if (v473)
            {
              v493 = 0;
              v494 = 0;
              v495 = (v741 + 2 * v489);
              v496 = *v495;
              do
              {
                v497 = *v495;
                if (v496 < v497)
                {
                  v494 = v493;
                }

                if (v496 <= v497)
                {
                  v496 = *v495;
                }

                ++v493;
                v495 = (v495 + v488);
              }

              while (v473 != v493);
            }

            else
            {
              v494 = 0;
            }

            *(v485 + 4 * v484) = v494;
            v484 = (v484 + 1);
          }

          while (v483 > v484);
        }

        goto LABEL_575;
      }

      if (!v134)
      {
        v136 = *(*v1 + 4 * v135);
        v137 = v1[3];
        v138 = v1[4];
        v139 = *(v137 + 8 * v135);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v137, v138, (v138 - v137) >> 3);
        v140 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v140, v140[1], (v140[1] - *v140) >> 2);
        v141 = __p + 8 * v135;
        v142 = v755 - (v141 + 8);
        if (v755 != v141 + 8)
        {
          memmove(__p + 8 * v135, v141 + 8, v755 - (v141 + 8));
        }

        v755 = &v141[v142];
        v12 = v751;
        v143 = &v751[v135];
        v144 = (v752 - (v143 + 1));
        if (v752 != v143 + 1)
        {
          memmove(v143, v143 + 1, v752 - (v143 + 1));
          v12 = v751;
        }

        v145 = *(a1 + 16);
        v146 = *(v145 + 48);
        if (v146)
        {
          v147 = 0;
          v728 = *(*a1 + 152);
          v148 = *(v145 + 152);
          v149 = ((&v144[v143] - v12) >> 2) - 1;
          v150 = __p;
          v151 = 2 * v139;
          do
          {
            v152 = 0;
            if ((v149 & 0x80000000) == 0)
            {
              v153 = v149;
              v154 = v147;
              do
              {
                v155 = ldiv(v154, *&v12[4 * v153]);
                v154 = v155.quot;
                v152 += v150[v153--] * v155.rem;
              }

              while (v153 != -1);
            }

            if (v136)
            {
              v156 = 0;
              v157 = 0;
              v158 = (v728 + 2 * v152);
              v159 = *v158;
              do
              {
                v160 = *v158;
                if (v159 > v160)
                {
                  v157 = v156;
                }

                if (v159 >= v160)
                {
                  v159 = *v158;
                }

                ++v156;
                v158 = (v158 + v151);
              }

              while (v136 != v156);
            }

            else
            {
              v157 = 0;
            }

            *(v148 + 4 * v147) = v157;
            v147 = (v147 + 1);
          }

          while (v146 > v147);
        }

        goto LABEL_575;
      }

      break;
    case 3:
      v161 = *(a1 + 32);
      v162 = *(a1 + 36);
      if (v161 == 1)
      {
        v498 = *(*v1 + 4 * v162);
        v499 = v1[3];
        v500 = v1[4];
        v501 = *(v499 + 8 * v162);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v499, v500, (v500 - v499) >> 3);
        v502 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v502, v502[1], (v502[1] - *v502) >> 2);
        v503 = __p + 8 * v162;
        v504 = v755 - (v503 + 8);
        if (v755 != v503 + 8)
        {
          memmove(__p + 8 * v162, v503 + 8, v755 - (v503 + 8));
        }

        v755 = &v503[v504];
        v12 = v751;
        v505 = &v751[v162];
        v506 = (v752 - (v505 + 1));
        if (v752 != v505 + 1)
        {
          memmove(v505, v505 + 1, v752 - (v505 + 1));
          v12 = v751;
        }

        v507 = *(a1 + 16);
        v508 = *(v507 + 48);
        if (v508)
        {
          v509 = 0;
          v742 = *(*a1 + 152);
          v510 = *(v507 + 152);
          v511 = ((&v506[v505] - v12) >> 2) - 1;
          v512 = __p;
          v513 = 4 * v501;
          do
          {
            v514 = 0;
            if ((v511 & 0x80000000) == 0)
            {
              v515 = v511;
              v516 = v509;
              do
              {
                v517 = ldiv(v516, *&v12[4 * v515]);
                v516 = v517.quot;
                v514 += v512[v515--] * v517.rem;
              }

              while (v515 != -1);
            }

            if (v498)
            {
              v518 = 0;
              v519 = 0;
              v520 = (v742 + 4 * v514);
              v521 = *v520;
              do
              {
                if (v521 < *v520)
                {
                  v519 = v518;
                }

                if (v521 <= *v520)
                {
                  v521 = *v520;
                }

                ++v518;
                v520 = (v520 + v513);
              }

              while (v498 != v518);
            }

            else
            {
              v519 = 0;
            }

            *(v510 + 4 * v509) = v519;
            v509 = (v509 + 1);
          }

          while (v508 > v509);
        }

        goto LABEL_575;
      }

      if (!v161)
      {
        v163 = *(*v1 + 4 * v162);
        v164 = v1[3];
        v165 = v1[4];
        v166 = *(v164 + 8 * v162);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v164, v165, (v165 - v164) >> 3);
        v167 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v167, v167[1], (v167[1] - *v167) >> 2);
        v168 = __p + 8 * v162;
        v169 = v755 - (v168 + 8);
        if (v755 != v168 + 8)
        {
          memmove(__p + 8 * v162, v168 + 8, v755 - (v168 + 8));
        }

        v755 = &v168[v169];
        v12 = v751;
        v170 = &v751[v162];
        v171 = (v752 - (v170 + 1));
        if (v752 != v170 + 1)
        {
          memmove(v170, v170 + 1, v752 - (v170 + 1));
          v12 = v751;
        }

        v172 = *(a1 + 16);
        v173 = *(v172 + 48);
        if (v173)
        {
          v174 = 0;
          v729 = *(*a1 + 152);
          v175 = *(v172 + 152);
          v176 = ((&v171[v170] - v12) >> 2) - 1;
          v177 = __p;
          v178 = 4 * v166;
          do
          {
            v179 = 0;
            if ((v176 & 0x80000000) == 0)
            {
              v180 = v176;
              v181 = v174;
              do
              {
                v182 = ldiv(v181, *&v12[4 * v180]);
                v181 = v182.quot;
                v179 += v177[v180--] * v182.rem;
              }

              while (v180 != -1);
            }

            if (v163)
            {
              v183 = 0;
              v184 = 0;
              v185 = (v729 + 4 * v179);
              v186 = *v185;
              do
              {
                if (v186 > *v185)
                {
                  v184 = v183;
                }

                if (v186 >= *v185)
                {
                  v186 = *v185;
                }

                ++v183;
                v185 = (v185 + v178);
              }

              while (v163 != v183);
            }

            else
            {
              v184 = 0;
            }

            *(v175 + 4 * v174) = v184;
            v174 = (v174 + 1);
          }

          while (v173 > v174);
        }

        goto LABEL_575;
      }

      break;
    case 4:
      v56 = *(a1 + 32);
      v57 = *(a1 + 36);
      if (v56 == 1)
      {
        v401 = *(*v1 + 4 * v57);
        v402 = v1[3];
        v403 = v1[4];
        v404 = *(v402 + 8 * v57);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v402, v403, (v403 - v402) >> 3);
        v405 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v405, v405[1], (v405[1] - *v405) >> 2);
        v406 = __p + 8 * v57;
        v407 = v755 - (v406 + 8);
        if (v755 != v406 + 8)
        {
          memmove(__p + 8 * v57, v406 + 8, v755 - (v406 + 8));
        }

        v755 = &v406[v407];
        v12 = v751;
        v408 = &v751[v57];
        v409 = (v752 - (v408 + 1));
        if (v752 != v408 + 1)
        {
          memmove(v408, v408 + 1, v752 - (v408 + 1));
          v12 = v751;
        }

        v410 = *(a1 + 16);
        v411 = *(v410 + 48);
        if (v411)
        {
          v412 = 0;
          v738 = *(*a1 + 152);
          v413 = *(v410 + 152);
          v414 = ((&v409[v408] - v12) >> 2) - 1;
          v415 = __p;
          v416 = 8 * v404;
          do
          {
            v417 = 0;
            if ((v414 & 0x80000000) == 0)
            {
              v418 = v414;
              v419 = v412;
              do
              {
                v420 = ldiv(v419, *&v12[4 * v418]);
                v419 = v420.quot;
                v417 += v415[v418--] * v420.rem;
              }

              while (v418 != -1);
            }

            if (v401)
            {
              v421 = 0;
              v422 = 0;
              v423 = (v738 + 8 * v417);
              v424 = *v423;
              do
              {
                if (v424 < *v423)
                {
                  v422 = v421;
                }

                if (v424 <= *v423)
                {
                  v424 = *v423;
                }

                ++v421;
                v423 = (v423 + v416);
              }

              while (v401 != v421);
            }

            else
            {
              v422 = 0;
            }

            *(v413 + 4 * v412) = v422;
            v412 = (v412 + 1);
          }

          while (v411 > v412);
        }

        goto LABEL_575;
      }

      if (!v56)
      {
        v58 = *(*v1 + 4 * v57);
        v59 = v1[3];
        v60 = v1[4];
        v61 = *(v59 + 8 * v57);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v59, v60, (v60 - v59) >> 3);
        v62 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v62, v62[1], (v62[1] - *v62) >> 2);
        v63 = __p + 8 * v57;
        v64 = v755 - (v63 + 8);
        if (v755 != v63 + 8)
        {
          memmove(__p + 8 * v57, v63 + 8, v755 - (v63 + 8));
        }

        v755 = &v63[v64];
        v12 = v751;
        v65 = &v751[v57];
        v66 = (v752 - (v65 + 1));
        if (v752 != v65 + 1)
        {
          memmove(v65, v65 + 1, v752 - (v65 + 1));
          v12 = v751;
        }

        v67 = *(a1 + 16);
        v68 = *(v67 + 48);
        if (v68)
        {
          v69 = 0;
          v725 = *(*a1 + 152);
          v70 = *(v67 + 152);
          v71 = ((&v66[v65] - v12) >> 2) - 1;
          v72 = __p;
          v73 = 8 * v61;
          do
          {
            v74 = 0;
            if ((v71 & 0x80000000) == 0)
            {
              v75 = v71;
              v76 = v69;
              do
              {
                v77 = ldiv(v76, *&v12[4 * v75]);
                v76 = v77.quot;
                v74 += v72[v75--] * v77.rem;
              }

              while (v75 != -1);
            }

            if (v58)
            {
              v78 = 0;
              v79 = 0;
              v80 = (v725 + 8 * v74);
              v81 = *v80;
              do
              {
                if (v81 > *v80)
                {
                  v79 = v78;
                }

                if (v81 >= *v80)
                {
                  v81 = *v80;
                }

                ++v78;
                v80 = (v80 + v73);
              }

              while (v58 != v78);
            }

            else
            {
              v79 = 0;
            }

            *(v70 + 4 * v69) = v79;
            v69 = (v69 + 1);
          }

          while (v68 > v69);
        }

        goto LABEL_575;
      }

      break;
    case 5:
      v240 = *(a1 + 32);
      v241 = *(a1 + 36);
      if (v240 == 1)
      {
        v594 = *(*v1 + 4 * v241);
        v595 = v1[3];
        v596 = v1[4];
        v597 = *(v595 + 8 * v241);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v595, v596, (v596 - v595) >> 3);
        v598 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v598, v598[1], (v598[1] - *v598) >> 2);
        v599 = __p + 8 * v241;
        v600 = v755 - (v599 + 8);
        if (v755 != v599 + 8)
        {
          memmove(__p + 8 * v241, v599 + 8, v755 - (v599 + 8));
        }

        v755 = &v599[v600];
        v12 = v751;
        v601 = &v751[v241];
        v602 = (v752 - (v601 + 1));
        if (v752 != v601 + 1)
        {
          memmove(v601, v601 + 1, v752 - (v601 + 1));
          v12 = v751;
        }

        v603 = &v602[v601];
        v752 = &v602[v601];
        v604 = *(a1 + 16);
        v605 = *(v604 + 48);
        if (v605)
        {
          v606 = 0;
          v746 = *(*a1 + 152);
          v607 = *(v604 + 152);
          v608 = ((v603 - v12) >> 2) - 1;
          v609 = __p;
          do
          {
            v610 = 0;
            if ((v608 & 0x80000000) == 0)
            {
              v611 = v608;
              v612 = v606;
              do
              {
                v613 = ldiv(v612, *&v12[4 * v611]);
                v612 = v613.quot;
                v610 += v609[v611--] * v613.rem;
              }

              while (v611 != -1);
            }

            if (v594)
            {
              v614 = 0;
              v615 = 0;
              v616 = (v746 + v610);
              LOBYTE(v617) = *(v746 + v610);
              do
              {
                v618 = *v616;
                v617 = v617;
                if (v617 < v618)
                {
                  v615 = v614;
                }

                if (v617 <= v618)
                {
                  LOBYTE(v617) = *v616;
                }

                ++v614;
                v616 += v597;
              }

              while (v594 != v614);
            }

            else
            {
              v615 = 0;
            }

            *(v607 + 4 * v606) = v615;
            v606 = (v606 + 1);
          }

          while (v605 > v606);
        }

        goto LABEL_575;
      }

      if (!v240)
      {
        v242 = *(*v1 + 4 * v241);
        v243 = v1[3];
        v244 = v1[4];
        v245 = *(v243 + 8 * v241);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v243, v244, (v244 - v243) >> 3);
        v246 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v246, v246[1], (v246[1] - *v246) >> 2);
        v247 = __p + 8 * v241;
        v248 = v755 - (v247 + 8);
        if (v755 != v247 + 8)
        {
          memmove(__p + 8 * v241, v247 + 8, v755 - (v247 + 8));
        }

        v755 = &v247[v248];
        v12 = v751;
        v249 = &v751[v241];
        v250 = (v752 - (v249 + 1));
        if (v752 != v249 + 1)
        {
          memmove(v249, v249 + 1, v752 - (v249 + 1));
          v12 = v751;
        }

        v251 = &v250[v249];
        v752 = &v250[v249];
        v252 = *(a1 + 16);
        v253 = *(v252 + 48);
        if (v253)
        {
          v254 = 0;
          v732 = *(*a1 + 152);
          v255 = *(v252 + 152);
          v256 = ((v251 - v12) >> 2) - 1;
          v257 = __p;
          do
          {
            v258 = 0;
            if ((v256 & 0x80000000) == 0)
            {
              v259 = v256;
              v260 = v254;
              do
              {
                v261 = ldiv(v260, *&v12[4 * v259]);
                v260 = v261.quot;
                v258 += v257[v259--] * v261.rem;
              }

              while (v259 != -1);
            }

            if (v242)
            {
              v262 = 0;
              v263 = 0;
              v264 = (v732 + v258);
              LOBYTE(v265) = *(v732 + v258);
              do
              {
                v266 = *v264;
                v265 = v265;
                if (v265 > v266)
                {
                  v263 = v262;
                }

                if (v265 >= v266)
                {
                  LOBYTE(v265) = *v264;
                }

                ++v262;
                v264 += v245;
              }

              while (v242 != v262);
            }

            else
            {
              v263 = 0;
            }

            *(v255 + 4 * v254) = v263;
            v254 = (v254 + 1);
          }

          while (v253 > v254);
        }

        goto LABEL_575;
      }

      break;
    case 6:
      v298 = *(a1 + 32);
      v299 = *(a1 + 36);
      if (v298 == 1)
      {
        v648 = *(*v1 + 4 * v299);
        v649 = v1[3];
        v650 = v1[4];
        v651 = *(v649 + 8 * v299);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v649, v650, (v650 - v649) >> 3);
        v652 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v652, v652[1], (v652[1] - *v652) >> 2);
        v653 = __p + 8 * v299;
        v654 = v755 - (v653 + 8);
        if (v755 != v653 + 8)
        {
          memmove(__p + 8 * v299, v653 + 8, v755 - (v653 + 8));
        }

        v755 = &v653[v654];
        v12 = v751;
        v655 = &v751[v299];
        v656 = (v752 - (v655 + 1));
        if (v752 != v655 + 1)
        {
          memmove(v655, v655 + 1, v752 - (v655 + 1));
          v12 = v751;
        }

        v657 = *(a1 + 16);
        v658 = *(v657 + 48);
        if (v658)
        {
          v659 = 0;
          v748 = *(*a1 + 152);
          v660 = *(v657 + 152);
          v661 = ((&v656[v655] - v12) >> 2) - 1;
          v662 = __p;
          v663 = 2 * v651;
          do
          {
            v664 = 0;
            if ((v661 & 0x80000000) == 0)
            {
              v665 = v661;
              v666 = v659;
              do
              {
                v667 = ldiv(v666, *&v12[4 * v665]);
                v666 = v667.quot;
                v664 += v662[v665--] * v667.rem;
              }

              while (v665 != -1);
            }

            if (v648)
            {
              v668 = 0;
              v669 = 0;
              v670 = (v748 + 2 * v664);
              v671 = *v670;
              do
              {
                v672 = *v670;
                if (v671 < v672)
                {
                  v669 = v668;
                }

                if (v671 <= v672)
                {
                  v671 = *v670;
                }

                ++v668;
                v670 = (v670 + v663);
              }

              while (v648 != v668);
            }

            else
            {
              v669 = 0;
            }

            *(v660 + 4 * v659) = v669;
            v659 = (v659 + 1);
          }

          while (v658 > v659);
        }

        goto LABEL_575;
      }

      if (!v298)
      {
        v300 = *(*v1 + 4 * v299);
        v301 = v1[3];
        v302 = v1[4];
        v303 = *(v301 + 8 * v299);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v301, v302, (v302 - v301) >> 3);
        v304 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v304, v304[1], (v304[1] - *v304) >> 2);
        v305 = __p + 8 * v299;
        v306 = v755 - (v305 + 8);
        if (v755 != v305 + 8)
        {
          memmove(__p + 8 * v299, v305 + 8, v755 - (v305 + 8));
        }

        v755 = &v305[v306];
        v12 = v751;
        v307 = &v751[v299];
        v308 = (v752 - (v307 + 1));
        if (v752 != v307 + 1)
        {
          memmove(v307, v307 + 1, v752 - (v307 + 1));
          v12 = v751;
        }

        v309 = *(a1 + 16);
        v310 = *(v309 + 48);
        if (v310)
        {
          v311 = 0;
          v734 = *(*a1 + 152);
          v312 = *(v309 + 152);
          v313 = ((&v308[v307] - v12) >> 2) - 1;
          v314 = __p;
          v315 = 2 * v303;
          do
          {
            v316 = 0;
            if ((v313 & 0x80000000) == 0)
            {
              v317 = v313;
              v318 = v311;
              do
              {
                v319 = ldiv(v318, *&v12[4 * v317]);
                v318 = v319.quot;
                v316 += v314[v317--] * v319.rem;
              }

              while (v317 != -1);
            }

            if (v300)
            {
              v320 = 0;
              v321 = 0;
              v322 = (v734 + 2 * v316);
              v323 = *v322;
              do
              {
                v324 = *v322;
                if (v323 > v324)
                {
                  v321 = v320;
                }

                if (v323 >= v324)
                {
                  v323 = *v322;
                }

                ++v320;
                v322 = (v322 + v315);
              }

              while (v300 != v320);
            }

            else
            {
              v321 = 0;
            }

            *(v312 + 4 * v311) = v321;
            v311 = (v311 + 1);
          }

          while (v310 > v311);
        }

        goto LABEL_575;
      }

      break;
    case 7:
      v187 = *(a1 + 32);
      v188 = *(a1 + 36);
      if (v187 == 1)
      {
        v522 = *(*v1 + 4 * v188);
        v523 = v1[3];
        v524 = v1[4];
        v525 = *(v523 + 8 * v188);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v523, v524, (v524 - v523) >> 3);
        v526 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v526, v526[1], (v526[1] - *v526) >> 2);
        v527 = __p + 8 * v188;
        v528 = v755 - (v527 + 8);
        if (v755 != v527 + 8)
        {
          memmove(__p + 8 * v188, v527 + 8, v755 - (v527 + 8));
        }

        v755 = &v527[v528];
        v12 = v751;
        v529 = &v751[v188];
        v530 = (v752 - (v529 + 1));
        if (v752 != v529 + 1)
        {
          memmove(v529, v529 + 1, v752 - (v529 + 1));
          v12 = v751;
        }

        v531 = *(a1 + 16);
        v532 = *(v531 + 48);
        if (v532)
        {
          v533 = 0;
          v743 = *(*a1 + 152);
          v534 = *(v531 + 152);
          v535 = ((&v530[v529] - v12) >> 2) - 1;
          v536 = __p;
          v537 = 4 * v525;
          do
          {
            v538 = 0;
            if ((v535 & 0x80000000) == 0)
            {
              v539 = v535;
              v540 = v533;
              do
              {
                v541 = ldiv(v540, *&v12[4 * v539]);
                v540 = v541.quot;
                v538 += v536[v539--] * v541.rem;
              }

              while (v539 != -1);
            }

            if (v522)
            {
              v542 = 0;
              v543 = 0;
              v544 = (v743 + 4 * v538);
              v545 = *v544;
              do
              {
                if (v545 < *v544)
                {
                  v543 = v542;
                }

                if (v545 <= *v544)
                {
                  v545 = *v544;
                }

                ++v542;
                v544 = (v544 + v537);
              }

              while (v522 != v542);
            }

            else
            {
              v543 = 0;
            }

            *(v534 + 4 * v533) = v543;
            v533 = (v533 + 1);
          }

          while (v532 > v533);
        }

        goto LABEL_575;
      }

      if (!v187)
      {
        v189 = *(*v1 + 4 * v188);
        v190 = v1[3];
        v191 = v1[4];
        v192 = *(v190 + 8 * v188);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v190, v191, (v191 - v190) >> 3);
        v193 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v193, v193[1], (v193[1] - *v193) >> 2);
        v194 = __p + 8 * v188;
        v195 = v755 - (v194 + 8);
        if (v755 != v194 + 8)
        {
          memmove(__p + 8 * v188, v194 + 8, v755 - (v194 + 8));
        }

        v755 = &v194[v195];
        v12 = v751;
        v196 = &v751[v188];
        v197 = (v752 - (v196 + 1));
        if (v752 != v196 + 1)
        {
          memmove(v196, v196 + 1, v752 - (v196 + 1));
          v12 = v751;
        }

        v198 = *(a1 + 16);
        v199 = *(v198 + 48);
        if (v199)
        {
          v200 = 0;
          v730 = *(*a1 + 152);
          v201 = *(v198 + 152);
          v202 = ((&v197[v196] - v12) >> 2) - 1;
          v203 = __p;
          v204 = 4 * v192;
          do
          {
            v205 = 0;
            if ((v202 & 0x80000000) == 0)
            {
              v206 = v202;
              v207 = v200;
              do
              {
                v208 = ldiv(v207, *&v12[4 * v206]);
                v207 = v208.quot;
                v205 += v203[v206--] * v208.rem;
              }

              while (v206 != -1);
            }

            if (v189)
            {
              v209 = 0;
              v210 = 0;
              v211 = (v730 + 4 * v205);
              v212 = *v211;
              do
              {
                if (v212 > *v211)
                {
                  v210 = v209;
                }

                if (v212 >= *v211)
                {
                  v212 = *v211;
                }

                ++v209;
                v211 = (v211 + v204);
              }

              while (v189 != v209);
            }

            else
            {
              v210 = 0;
            }

            *(v201 + 4 * v200) = v210;
            v200 = (v200 + 1);
          }

          while (v199 > v200);
        }

        goto LABEL_575;
      }

      break;
    case 8:
      v351 = *(a1 + 32);
      v352 = *(a1 + 36);
      if (v351 == 1)
      {
        v697 = *(*v1 + 4 * v352);
        v698 = v1[3];
        v699 = v1[4];
        v700 = *(v698 + 8 * v352);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v698, v699, (v699 - v698) >> 3);
        v701 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v701, v701[1], (v701[1] - *v701) >> 2);
        v702 = __p + 8 * v352;
        v703 = v755 - (v702 + 8);
        if (v755 != v702 + 8)
        {
          memmove(__p + 8 * v352, v702 + 8, v755 - (v702 + 8));
        }

        v755 = &v702[v703];
        v12 = v751;
        v704 = &v751[v352];
        v705 = (v752 - (v704 + 1));
        if (v752 != v704 + 1)
        {
          memmove(v704, v704 + 1, v752 - (v704 + 1));
          v12 = v751;
        }

        v706 = *(a1 + 16);
        v707 = *(v706 + 48);
        if (v707)
        {
          v708 = 0;
          v750 = *(*a1 + 152);
          v709 = *(v706 + 152);
          v710 = ((&v705[v704] - v12) >> 2) - 1;
          v711 = __p;
          v712 = 8 * v700;
          do
          {
            v713 = 0;
            if ((v710 & 0x80000000) == 0)
            {
              v714 = v710;
              v715 = v708;
              do
              {
                v716 = ldiv(v715, *&v12[4 * v714]);
                v715 = v716.quot;
                v713 += v711[v714--] * v716.rem;
              }

              while (v714 != -1);
            }

            if (v697)
            {
              v717 = 0;
              v718 = 0;
              v719 = (v750 + 8 * v713);
              v720 = *v719;
              do
              {
                if (v720 < *v719)
                {
                  v718 = v717;
                }

                if (v720 <= *v719)
                {
                  v720 = *v719;
                }

                ++v717;
                v719 = (v719 + v712);
              }

              while (v697 != v717);
            }

            else
            {
              v718 = 0;
            }

            *(v709 + 4 * v708) = v718;
            v708 = (v708 + 1);
          }

          while (v707 > v708);
        }

        goto LABEL_575;
      }

      if (!v351)
      {
        v353 = *(*v1 + 4 * v352);
        v354 = v1[3];
        v355 = v1[4];
        v356 = *(v354 + 8 * v352);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v354, v355, (v355 - v354) >> 3);
        v357 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v357, v357[1], (v357[1] - *v357) >> 2);
        v358 = __p + 8 * v352;
        v359 = v755 - (v358 + 8);
        if (v755 != v358 + 8)
        {
          memmove(__p + 8 * v352, v358 + 8, v755 - (v358 + 8));
        }

        v755 = &v358[v359];
        v12 = v751;
        v360 = &v751[v352];
        v361 = (v752 - (v360 + 1));
        if (v752 != v360 + 1)
        {
          memmove(v360, v360 + 1, v752 - (v360 + 1));
          v12 = v751;
        }

        v362 = *(a1 + 16);
        v363 = *(v362 + 48);
        if (v363)
        {
          v364 = 0;
          v736 = *(*a1 + 152);
          v365 = *(v362 + 152);
          v366 = ((&v361[v360] - v12) >> 2) - 1;
          v367 = __p;
          v368 = 8 * v356;
          do
          {
            v369 = 0;
            if ((v366 & 0x80000000) == 0)
            {
              v370 = v366;
              v371 = v364;
              do
              {
                v372 = ldiv(v371, *&v12[4 * v370]);
                v371 = v372.quot;
                v369 += v367[v370--] * v372.rem;
              }

              while (v370 != -1);
            }

            if (v353)
            {
              v373 = 0;
              v374 = 0;
              v375 = (v736 + 8 * v369);
              v376 = *v375;
              do
              {
                if (v376 > *v375)
                {
                  v374 = v373;
                }

                if (v376 >= *v375)
                {
                  v376 = *v375;
                }

                ++v373;
                v375 = (v375 + v368);
              }

              while (v353 != v373);
            }

            else
            {
              v374 = 0;
            }

            *(v365 + 4 * v364) = v374;
            v364 = (v364 + 1);
          }

          while (v363 > v364);
        }

        goto LABEL_575;
      }

      break;
    case 9:
      v108 = *(a1 + 32);
      v109 = *(a1 + 36);
      if (v108 == 1)
      {
        v449 = *(*v1 + 4 * v109);
        v450 = v1[3];
        v451 = v1[4];
        v452 = *(v450 + 8 * v109);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v450, v451, (v451 - v450) >> 3);
        v453 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v453, v453[1], (v453[1] - *v453) >> 2);
        v454 = __p + 8 * v109;
        v455 = v755 - (v454 + 8);
        if (v755 != v454 + 8)
        {
          memmove(__p + 8 * v109, v454 + 8, v755 - (v454 + 8));
        }

        v755 = &v454[v455];
        v12 = v751;
        v456 = &v751[v109];
        v457 = (v752 - (v456 + 1));
        if (v752 != v456 + 1)
        {
          memmove(v456, v456 + 1, v752 - (v456 + 1));
          v12 = v751;
        }

        v458 = *(a1 + 16);
        v459 = *(v458 + 48);
        if (v459)
        {
          v460 = 0;
          v740 = *(*a1 + 152);
          v461 = *(v458 + 152);
          v462 = ((&v457[v456] - v12) >> 2) - 1;
          v463 = __p;
          v464 = 2 * v452;
          do
          {
            v465 = 0;
            if ((v462 & 0x80000000) == 0)
            {
              v466 = v462;
              v467 = v460;
              do
              {
                v468 = ldiv(v467, *&v12[4 * v466]);
                v467 = v468.quot;
                v465 += v463[v466--] * v468.rem;
              }

              while (v466 != -1);
            }

            if (v449)
            {
              v469 = 0;
              v470 = 0;
              v471 = (v740 + 2 * v465);
              v472 = *v471;
              do
              {
                if (v472 < *v471)
                {
                  v470 = v469;
                  v472 = *v471;
                }

                ++v469;
                v471 = (v471 + v464);
              }

              while (v449 != v469);
            }

            else
            {
              v470 = 0;
            }

            *(v461 + 4 * v460) = v470;
            v460 = (v460 + 1);
          }

          while (v459 > v460);
        }

        goto LABEL_575;
      }

      if (!v108)
      {
        v110 = *(*v1 + 4 * v109);
        v111 = v1[3];
        v112 = v1[4];
        v113 = *(v111 + 8 * v109);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v111, v112, (v112 - v111) >> 3);
        v114 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v114, v114[1], (v114[1] - *v114) >> 2);
        v115 = __p + 8 * v109;
        v116 = v755 - (v115 + 8);
        if (v755 != v115 + 8)
        {
          memmove(__p + 8 * v109, v115 + 8, v755 - (v115 + 8));
        }

        v755 = &v115[v116];
        v12 = v751;
        v117 = &v751[v109];
        v118 = (v752 - (v117 + 1));
        if (v752 != v117 + 1)
        {
          memmove(v117, v117 + 1, v752 - (v117 + 1));
          v12 = v751;
        }

        v119 = *(a1 + 16);
        v120 = *(v119 + 48);
        if (v120)
        {
          v121 = 0;
          v727 = *(*a1 + 152);
          v122 = *(v119 + 152);
          v123 = ((&v118[v117] - v12) >> 2) - 1;
          v124 = __p;
          v125 = 2 * v113;
          do
          {
            v126 = 0;
            if ((v123 & 0x80000000) == 0)
            {
              v127 = v123;
              v128 = v121;
              do
              {
                v129 = ldiv(v128, *&v12[4 * v127]);
                v128 = v129.quot;
                v126 += v124[v127--] * v129.rem;
              }

              while (v127 != -1);
            }

            if (v110)
            {
              v130 = 0;
              v131 = 0;
              v132 = (v727 + 2 * v126);
              v133 = *v132;
              do
              {
                if (v133 > *v132)
                {
                  v131 = v130;
                  v133 = *v132;
                }

                ++v130;
                v132 = (v132 + v125);
              }

              while (v110 != v130);
            }

            else
            {
              v131 = 0;
            }

            *(v122 + 4 * v121) = v131;
            v121 = (v121 + 1);
          }

          while (v120 > v121);
        }

        goto LABEL_575;
      }

      break;
    case 0xA:
      v325 = *(a1 + 32);
      v326 = *(a1 + 36);
      if (v325 == 1)
      {
        v673 = *(*v1 + 4 * v326);
        v674 = v1[3];
        v675 = v1[4];
        v676 = *(v674 + 8 * v326);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v674, v675, (v675 - v674) >> 3);
        v677 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v677, v677[1], (v677[1] - *v677) >> 2);
        v678 = __p + 8 * v326;
        v679 = v755 - (v678 + 8);
        if (v755 != v678 + 8)
        {
          memmove(__p + 8 * v326, v678 + 8, v755 - (v678 + 8));
        }

        v755 = &v678[v679];
        v12 = v751;
        v680 = &v751[v326];
        v681 = (v752 - (v680 + 1));
        if (v752 != v680 + 1)
        {
          memmove(v680, v680 + 1, v752 - (v680 + 1));
          v12 = v751;
        }

        v682 = *(a1 + 16);
        v683 = *(v682 + 48);
        if (v683)
        {
          v684 = 0;
          v749 = *(*a1 + 152);
          v685 = *(v682 + 152);
          v686 = ((&v681[v680] - v12) >> 2) - 1;
          v687 = __p;
          v688 = 4 * v676;
          do
          {
            v689 = 0;
            if ((v686 & 0x80000000) == 0)
            {
              v690 = v686;
              v691 = v684;
              do
              {
                v692 = ldiv(v691, *&v12[4 * v690]);
                v691 = v692.quot;
                v689 += v687[v690--] * v692.rem;
              }

              while (v690 != -1);
            }

            if (v673)
            {
              v693 = 0;
              v694 = 0;
              v695 = (v749 + 4 * v689);
              v696 = *v695;
              do
              {
                if (v696 < *v695)
                {
                  v694 = v693;
                  v696 = *v695;
                }

                ++v693;
                v695 = (v695 + v688);
              }

              while (v673 != v693);
            }

            else
            {
              v694 = 0;
            }

            *(v685 + 4 * v684) = v694;
            v684 = (v684 + 1);
          }

          while (v683 > v684);
        }

        goto LABEL_575;
      }

      if (!v325)
      {
        v327 = *(*v1 + 4 * v326);
        v328 = v1[3];
        v329 = v1[4];
        v330 = *(v328 + 8 * v326);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v328, v329, (v329 - v328) >> 3);
        v331 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v331, v331[1], (v331[1] - *v331) >> 2);
        v332 = __p + 8 * v326;
        v333 = v755 - (v332 + 8);
        if (v755 != v332 + 8)
        {
          memmove(__p + 8 * v326, v332 + 8, v755 - (v332 + 8));
        }

        v755 = &v332[v333];
        v12 = v751;
        v334 = &v751[v326];
        v335 = (v752 - (v334 + 1));
        if (v752 != v334 + 1)
        {
          memmove(v334, v334 + 1, v752 - (v334 + 1));
          v12 = v751;
        }

        v336 = *(a1 + 16);
        v337 = *(v336 + 48);
        if (v337)
        {
          v338 = 0;
          v735 = *(*a1 + 152);
          v339 = *(v336 + 152);
          v340 = ((&v335[v334] - v12) >> 2) - 1;
          v341 = __p;
          v342 = 4 * v330;
          do
          {
            v343 = 0;
            if ((v340 & 0x80000000) == 0)
            {
              v344 = v340;
              v345 = v338;
              do
              {
                v346 = ldiv(v345, *&v12[4 * v344]);
                v345 = v346.quot;
                v343 += v341[v344--] * v346.rem;
              }

              while (v344 != -1);
            }

            if (v327)
            {
              v347 = 0;
              v348 = 0;
              v349 = (v735 + 4 * v343);
              v350 = *v349;
              do
              {
                if (v350 > *v349)
                {
                  v348 = v347;
                  v350 = *v349;
                }

                ++v347;
                v349 = (v349 + v342);
              }

              while (v327 != v347);
            }

            else
            {
              v348 = 0;
            }

            *(v339 + 4 * v338) = v348;
            v338 = (v338 + 1);
          }

          while (v337 > v338);
        }

        goto LABEL_575;
      }

      break;
    case 0xB:
      v30 = *(a1 + 32);
      v31 = *(a1 + 36);
      if (v30 == 1)
      {
        v377 = *(*v1 + 4 * v31);
        v378 = v1[3];
        v379 = v1[4];
        v380 = *(v378 + 8 * v31);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v378, v379, (v379 - v378) >> 3);
        v381 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v381, v381[1], (v381[1] - *v381) >> 2);
        v382 = __p + 8 * v31;
        v383 = v755 - (v382 + 8);
        if (v755 != v382 + 8)
        {
          memmove(__p + 8 * v31, v382 + 8, v755 - (v382 + 8));
        }

        v755 = &v382[v383];
        v12 = v751;
        v384 = &v751[v31];
        v385 = (v752 - (v384 + 1));
        if (v752 != v384 + 1)
        {
          memmove(v384, v384 + 1, v752 - (v384 + 1));
          v12 = v751;
        }

        v386 = *(a1 + 16);
        v387 = *(v386 + 48);
        if (v387)
        {
          v388 = 0;
          v737 = *(*a1 + 152);
          v389 = *(v386 + 152);
          v390 = ((&v385[v384] - v12) >> 2) - 1;
          v391 = __p;
          v392 = 8 * v380;
          do
          {
            v393 = 0;
            if ((v390 & 0x80000000) == 0)
            {
              v394 = v390;
              v395 = v388;
              do
              {
                v396 = ldiv(v395, *&v12[4 * v394]);
                v395 = v396.quot;
                v393 += v391[v394--] * v396.rem;
              }

              while (v394 != -1);
            }

            if (v377)
            {
              v397 = 0;
              v398 = 0;
              v399 = (v737 + 8 * v393);
              v400 = *v399;
              do
              {
                if (v400 < *v399)
                {
                  v398 = v397;
                  v400 = *v399;
                }

                ++v397;
                v399 = (v399 + v392);
              }

              while (v377 != v397);
            }

            else
            {
              v398 = 0;
            }

            *(v389 + 4 * v388) = v398;
            v388 = (v388 + 1);
          }

          while (v387 > v388);
        }

        goto LABEL_575;
      }

      if (!v30)
      {
        v32 = *(*v1 + 4 * v31);
        v33 = v1[3];
        v34 = v1[4];
        v35 = *(v33 + 8 * v31);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v33, v34, (v34 - v33) >> 3);
        v36 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v36, v36[1], (v36[1] - *v36) >> 2);
        v37 = __p + 8 * v31;
        v38 = v755 - (v37 + 8);
        if (v755 != v37 + 8)
        {
          memmove(__p + 8 * v31, v37 + 8, v755 - (v37 + 8));
        }

        v755 = &v37[v38];
        v12 = v751;
        v39 = &v751[v31];
        v40 = (v752 - (v39 + 1));
        if (v752 != v39 + 1)
        {
          memmove(v39, v39 + 1, v752 - (v39 + 1));
          v12 = v751;
        }

        v41 = *(a1 + 16);
        v42 = *(v41 + 48);
        if (v42)
        {
          v43 = 0;
          v724 = *(*a1 + 152);
          v44 = *(v41 + 152);
          v45 = ((&v40[v39] - v12) >> 2) - 1;
          v46 = __p;
          v47 = 8 * v35;
          do
          {
            v48 = 0;
            if ((v45 & 0x80000000) == 0)
            {
              v49 = v45;
              v50 = v43;
              do
              {
                v51 = ldiv(v50, *&v12[4 * v49]);
                v50 = v51.quot;
                v48 += v46[v49--] * v51.rem;
              }

              while (v49 != -1);
            }

            if (v32)
            {
              v52 = 0;
              v53 = 0;
              v54 = (v724 + 8 * v48);
              v55 = *v54;
              do
              {
                if (v55 > *v54)
                {
                  v53 = v52;
                  v55 = *v54;
                }

                ++v52;
                v54 = (v54 + v47);
              }

              while (v32 != v52);
            }

            else
            {
              v53 = 0;
            }

            *(v44 + 4 * v43) = v53;
            v43 = (v43 + 1);
          }

          while (v42 > v43);
        }

        goto LABEL_575;
      }

      break;
    case 0xC:
      v82 = *(a1 + 32);
      v83 = *(a1 + 36);
      if (v82 == 1)
      {
        v425 = *(*v1 + 4 * v83);
        v426 = v1[3];
        v427 = v1[4];
        v428 = *(v426 + 8 * v83);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v426, v427, (v427 - v426) >> 3);
        v429 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v429, v429[1], (v429[1] - *v429) >> 2);
        v430 = __p + 8 * v83;
        v431 = v755 - (v430 + 8);
        if (v755 != v430 + 8)
        {
          memmove(__p + 8 * v83, v430 + 8, v755 - (v430 + 8));
        }

        v755 = &v430[v431];
        v12 = v751;
        v432 = &v751[v83];
        v433 = (v752 - (v432 + 1));
        if (v752 != v432 + 1)
        {
          memmove(v432, v432 + 1, v752 - (v432 + 1));
          v12 = v751;
        }

        v434 = *(a1 + 16);
        v435 = *(v434 + 48);
        if (v435)
        {
          v436 = 0;
          v739 = *(*a1 + 152);
          v437 = *(v434 + 152);
          v438 = ((&v433[v432] - v12) >> 2) - 1;
          v439 = __p;
          v440 = 2 * v428;
          do
          {
            v441 = 0;
            if ((v438 & 0x80000000) == 0)
            {
              v442 = v438;
              v443 = v436;
              do
              {
                v444 = ldiv(v443, *&v12[4 * v442]);
                v443 = v444.quot;
                v441 += v439[v442--] * v444.rem;
              }

              while (v442 != -1);
            }

            if (v425)
            {
              v445 = 0;
              v446 = 0;
              v447 = (v739 + 2 * v441);
              v448 = *v447;
              do
              {
                if (COERCE_FLOAT(*v447 << 16) > COERCE_FLOAT(v448 << 16))
                {
                  v446 = v445;
                  v448 = *v447;
                }

                ++v445;
                v447 = (v447 + v440);
              }

              while (v425 != v445);
            }

            else
            {
              v446 = 0;
            }

            *(v437 + 4 * v436) = v446;
            v436 = (v436 + 1);
          }

          while (v435 > v436);
        }

        goto LABEL_575;
      }

      if (!v82)
      {
        v84 = *(*v1 + 4 * v83);
        v85 = v1[3];
        v86 = v1[4];
        v87 = *(v85 + 8 * v83);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v85, v86, (v86 - v85) >> 3);
        v88 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v88, v88[1], (v88[1] - *v88) >> 2);
        v89 = __p + 8 * v83;
        v90 = v755 - (v89 + 8);
        if (v755 != v89 + 8)
        {
          memmove(__p + 8 * v83, v89 + 8, v755 - (v89 + 8));
        }

        v755 = &v89[v90];
        v12 = v751;
        v91 = &v751[v83];
        v92 = (v752 - (v91 + 1));
        if (v752 != v91 + 1)
        {
          memmove(v91, v91 + 1, v752 - (v91 + 1));
          v12 = v751;
        }

        v93 = *(a1 + 16);
        v94 = *(v93 + 48);
        if (v94)
        {
          v95 = 0;
          v726 = *(*a1 + 152);
          v96 = *(v93 + 152);
          v97 = ((&v92[v91] - v12) >> 2) - 1;
          v98 = __p;
          v99 = 2 * v87;
          do
          {
            v100 = 0;
            if ((v97 & 0x80000000) == 0)
            {
              v101 = v97;
              v102 = v95;
              do
              {
                v103 = ldiv(v102, *&v12[4 * v101]);
                v102 = v103.quot;
                v100 += v98[v101--] * v103.rem;
              }

              while (v101 != -1);
            }

            if (v84)
            {
              v104 = 0;
              v105 = 0;
              v106 = (v726 + 2 * v100);
              v107 = *v106;
              do
              {
                if (COERCE_FLOAT(*v106 << 16) < COERCE_FLOAT(v107 << 16))
                {
                  v105 = v104;
                  v107 = *v106;
                }

                ++v104;
                v106 = (v106 + v99);
              }

              while (v84 != v104);
            }

            else
            {
              v105 = 0;
            }

            *(v96 + 4 * v95) = v105;
            v95 = (v95 + 1);
          }

          while (v94 > v95);
        }

        goto LABEL_575;
      }

      break;
    case 0xD:
      v267 = *(a1 + 32);
      v268 = *(a1 + 36);
      if (v267 == 1)
      {
        v619 = *(*v1 + 4 * v268);
        v620 = v1[3];
        v621 = v1[4];
        v622 = *(v620 + 8 * v268);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v620, v621, (v621 - v620) >> 3);
        v623 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v623, v623[1], (v623[1] - *v623) >> 2);
        v624 = __p + 8 * v268;
        v625 = v755 - (v624 + 8);
        if (v755 != v624 + 8)
        {
          memmove(__p + 8 * v268, v624 + 8, v755 - (v624 + 8));
        }

        v755 = &v624[v625];
        v12 = v751;
        v626 = &v751[v268];
        v627 = (v752 - (v626 + 1));
        if (v752 != v626 + 1)
        {
          memmove(v626, v626 + 1, v752 - (v626 + 1));
          v12 = v751;
        }

        v628 = &v627[v626];
        v752 = &v627[v626];
        v629 = *(a1 + 16);
        v630 = *(v629 + 48);
        if (v630)
        {
          v631 = 0;
          v632 = *(v629 + 152);
          v633 = ((v628 - v12) >> 2) - 1;
          v634 = __p;
          v722 = *(*a1 + 152) + 4;
          v747 = *(*a1 + 152);
          v635 = 8 * v622;
          do
          {
            v636 = 0;
            if ((v633 & 0x80000000) == 0)
            {
              v637 = v633;
              v638 = v631;
              do
              {
                v639 = ldiv(v638, *&v12[4 * v637]);
                v638 = v639.quot;
                v636 += v634[v637--] * v639.rem;
              }

              while (v637 != -1);
            }

            if (v619)
            {
              v640 = 0;
              v641 = 0;
              v642 = (v747 + 8 * v636);
              v644 = *v642;
              v643 = v642[1];
              v645 = (v722 + 8 * v636);
              do
              {
                v646 = *(v645 - 1);
                if (v646 > v644 || (v646 == v644 ? (v647 = *v645 <= v643) : (v647 = 1), !v647))
                {
                  v641 = v640;
                  v643 = *v645;
                  v644 = *(v645 - 1);
                }

                ++v640;
                v645 = (v645 + v635);
              }

              while (v619 != v640);
            }

            else
            {
              v641 = 0;
            }

            *(v632 + 4 * v631) = v641;
            v631 = (v631 + 1);
          }

          while (v630 > v631);
        }
      }

      else
      {
        if (v267)
        {
          return;
        }

        v269 = *(*v1 + 4 * v268);
        v270 = v1[3];
        v271 = v1[4];
        v272 = *(v270 + 8 * v268);
        __p = 0;
        v755 = 0;
        v756 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v270, v271, (v271 - v270) >> 3);
        v273 = *a1;
        v752 = 0;
        v753 = 0;
        v751 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v751, *v273, v273[1], (v273[1] - *v273) >> 2);
        v274 = __p + 8 * v268;
        v275 = v755 - (v274 + 8);
        if (v755 != v274 + 8)
        {
          memmove(__p + 8 * v268, v274 + 8, v755 - (v274 + 8));
        }

        v755 = &v274[v275];
        v12 = v751;
        v276 = &v751[v268];
        v277 = (v752 - (v276 + 1));
        if (v752 != v276 + 1)
        {
          memmove(v276, v276 + 1, v752 - (v276 + 1));
          v12 = v751;
        }

        v278 = &v277[v276];
        v752 = &v277[v276];
        v279 = *(a1 + 16);
        v280 = *(v279 + 48);
        if (v280)
        {
          v281 = 0;
          v282 = *(v279 + 152);
          v283 = ((v278 - v12) >> 2) - 1;
          v284 = __p;
          v721 = *(*a1 + 152) + 4;
          v733 = *(*a1 + 152);
          v285 = 8 * v272;
          do
          {
            v286 = 0;
            if ((v283 & 0x80000000) == 0)
            {
              v287 = v283;
              v288 = v281;
              do
              {
                v289 = ldiv(v288, *&v12[4 * v287]);
                v288 = v289.quot;
                v286 += v284[v287--] * v289.rem;
              }

              while (v287 != -1);
            }

            if (v269)
            {
              v290 = 0;
              v291 = 0;
              v292 = (v733 + 8 * v286);
              v294 = *v292;
              v293 = v292[1];
              v295 = (v721 + 8 * v286);
              do
              {
                v296 = *(v295 - 1);
                if (v294 > v296 || (v294 == v296 ? (v297 = v293 <= *v295) : (v297 = 1), !v297))
                {
                  v291 = v290;
                  v293 = *v295;
                  v294 = *(v295 - 1);
                }

                ++v290;
                v295 = (v295 + v285);
              }

              while (v269 != v290);
            }

            else
            {
              v291 = 0;
            }

            *(v282 + 4 * v281) = v291;
            v281 = (v281 + 1);
          }

          while (v280 > v281);
        }
      }

LABEL_575:
      if (v12)
      {
        v752 = v12;
        operator delete(v12);
      }

      if (__p)
      {
        v755 = __p;
        operator delete(__p);
      }

      break;
    default:
      return;
  }
}

void sub_25A417B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5F30;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BF5F30;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BF5F30;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = result[5];
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::ArgReduce::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::Gather::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[51] = *MEMORY[0x277D85DE8];
  v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
  v5[0] = &unk_286BE3468;
  v5[1] = mlx::core::allocator::free;
  v5[3] = v5;
  mlx::core::array::set_data(a3, v4);
}

void sub_25A4186B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  __cxa_free_exception(v62);
  std::mutex::unlock(v61);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(&a45);
  mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a61);
  mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a23);
  a45 = &a37;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(uint64_t a1)
{
  mlx::core::array::~array((a1 + 88));
  v5 = (a1 + 64);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void mlx::core::GatherAxis::eval_cpu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[32] = *MEMORY[0x277D85DE8];
  v4 = mlx::core::allocator::malloc((*(*a3 + 60) * *(*a3 + 48)));
  v5[0] = &unk_286BE3468;
  v5[1] = mlx::core::allocator::free;
  v5[3] = v5;
  mlx::core::array::set_data(a3, v4);
}

void sub_25A418D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  __cxa_free_exception(v36);
  std::mutex::unlock(v35);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(&a25);
  mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a35);
  mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a14);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));
  return a1;
}

void mlx::core::Scatter::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *a3)
{
  v15[14] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((v5 - *a2) > 0x10)
  {
    if ((*(*v4 + 168) & 2) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    mlx::core::copy(v4, a3, v8, *(a1 + 8), *(a1 + 16));
    mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
    v13[4] = 0uLL;
    v14 = 0;
    v9 = (*a2 + 16);
    if (v9 < *(a2 + 8) - 16)
    {
      mlx::core::array::unsafe_weak_copy(v9, v15);
    }

    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v10, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    v12 = *(a1 + 20);
    mlx::core::array::unsafe_weak_copy((v5 - 16), v13);
  }

  mlx::core::Scatter::eval_cpu();
}

void sub_25A419584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _Unwind_Exception *exception_object, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  __cxa_free_exception(v50);
  std::mutex::unlock(v49);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(&a35);
  mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a49);
  mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&__p);
  a35 = &a31;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a35);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(uint64_t a1)
{
  mlx::core::array::~array((a1 + 72));
  v4 = (a1 + 48);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void mlx::core::ScatterAxis::eval_cpu(uint64_t a1, uint64_t a2, mlx::core::array *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (*(a2 + 8) - *a2 > 0x10uLL)
  {
    if ((*(*v3 + 168) & 2) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    mlx::core::copy(*a2, a3, v6, *(a1 + 8), *(a1 + 16));
    mlx::core::cpu::get_command_encoder(*(a1 + 8), *(a1 + 16));
    v7 = vrev64_s32(*(a1 + 20));
    mlx::core::array::unsafe_weak_copy(v3 + 2, &v8);
  }

  mlx::core::ScatterAxis::eval_cpu();
}

void sub_25A419BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  std::mutex::unlock(v31);
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(&a21);
  mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a31);
  mlx::core::GatherAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0::~$_0(&a14);
  _Unwind_Resume(a1);
}

void mlx::core::Gather::~Gather(mlx::core::Gather *this)
{
  *this = &unk_286BF6028;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_286BF6028;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F851760);
}

void *mlx::core::Scatter::print(uint64_t a1, void *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Scatter", 7);
  v5 = *(a1 + 20);
  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v6 = " Prod";
      v7 = a2;
      v8 = 5;
      goto LABEL_12;
    }

    if (v5 != 2)
    {
      return result;
    }

    v6 = " Sum";
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      return result;
    }

    v6 = " Min";
  }

  else
  {
    v6 = " Max";
  }

  v7 = a2;
  v8 = 4;
LABEL_12:

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6, v8);
}

void mlx::core::Scatter::~Scatter(mlx::core::Scatter *this)
{
  *this = &unk_286BF6138;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_286BF6138;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F851760);
}

void *mlx::core::ScatterAxis::print(uint64_t a1, void *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ScatterAxis", 11);
  if (!*(a1 + 20))
  {

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " Sum", 4);
  }

  return result;
}

uint64_t mlx::core::cpu::CommandEncoder::dispatch<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>(mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0 &&)::{lambda(void)#1}::~dispatch(uint64_t a1)
{
  mlx::core::array::~array((a1 + 104));
  v5 = (a1 + 80);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 64));
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Gather8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(uint64_t a1)
{
  *a1 = &unk_286BF6248;
  mlx::core::array::~array((a1 + 112));
  v5 = (a1 + 88);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Gather8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_286BF6248;
  mlx::core::array::~array((a1 + 112));
  v5 = (a1 + 88);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v5);
  mlx::core::array::~array((a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return MEMORY[0x25F851760](a1, 0x10B1C40AAABBEEFLL);
}

void *_ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Gather8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF6248;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::__bind((a2 + 24), (a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Gather8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 112));
  v4 = (a1 + 88);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Gather8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 112));
  v4 = (a1 + 88);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Gather8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_6Gather8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::__bind(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  v4 = a2[7];
  a1[6] = a2[6];
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>((a1 + 8), a2[8], a2[9], (a2[9] - a2[8]) >> 4);
  v5 = a2[12];
  a1[11] = a2[11];
  a1[12] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_25A41A430(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void std::__bind<mlx::core::Gather::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(void *a1)
{
  v3 = a1[8];
  v2 = a1 + 8;
  if (v3 == a1[9])
  {
LABEL_9:
    v6 = (a1 + 6);

    mlx::core::dispatch_gather<unsigned char>(v6, v2, a1 + 11, a1, a1 + 3);
    return;
  }

  v4 = *(*v3 + 56);
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 == 7)
      {
        v12 = (a1 + 6);

        mlx::core::dispatch_gather<int>(v12, v2, a1 + 11, a1, a1 + 3);
      }

      else
      {
        if (v4 != 8)
        {
          goto LABEL_35;
        }

        v9 = (a1 + 6);

        mlx::core::dispatch_gather<long long>(v9, v2, a1 + 11, a1, a1 + 3);
      }
    }

    else if (v4 == 5)
    {
      v10 = (a1 + 6);

      mlx::core::dispatch_gather<signed char>(v10, v2, a1 + 11, a1, a1 + 3);
    }

    else
    {
      v7 = (a1 + 6);

      mlx::core::dispatch_gather<short>(v7, v2, a1 + 11, a1, a1 + 3);
    }
  }

  else
  {
    if (v4 <= 2)
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v5 = (a1 + 6);

          mlx::core::dispatch_gather<unsigned short>(v5, v2, a1 + 11, a1, a1 + 3);
          return;
        }

LABEL_35:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "[Gather::eval_cpu] Cannot gather with indices type.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      goto LABEL_9;
    }

    if (v4 == 3)
    {
      v11 = (a1 + 6);

      mlx::core::dispatch_gather<unsigned int>(v11, v2, a1 + 11, a1, a1 + 3);
    }

    else
    {
      v8 = (a1 + 6);

      mlx::core::dispatch_gather<unsigned long long>(v8, v2, a1 + 11, a1, a1 + 3);
    }
  }
}

void mlx::core::dispatch_gather<unsigned char>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather<BOOL,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 1:
    case 5:
      mlx::core::gather<unsigned char,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather<unsigned short,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 3:
    case 7:
      mlx::core::gather<unsigned int,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 4:
    case 8:
      mlx::core::gather<unsigned long long,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 9:
      mlx::core::gather<half,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 0xA:
      mlx::core::gather<float,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 0xB:
      mlx::core::gather<double,unsigned char>(this, a2, a3, a4, a5);
      break;
    case 0xD:
      mlx::core::gather<mlx::core::complex64_t,unsigned char>(this, a2, a3, a4, a5);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather<unsigned short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather<BOOL,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 1:
    case 5:
      mlx::core::gather<unsigned char,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather<unsigned short,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 3:
    case 7:
      mlx::core::gather<unsigned int,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 4:
    case 8:
      mlx::core::gather<unsigned long long,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 9:
      mlx::core::gather<half,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 0xA:
      mlx::core::gather<float,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 0xB:
      mlx::core::gather<double,unsigned short>(this, a2, a3, a4, a5);
      break;
    case 0xD:
      mlx::core::gather<mlx::core::complex64_t,unsigned short>(this, a2, a3, a4, a5);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather<unsigned int>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather<BOOL,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 1:
    case 5:
      mlx::core::gather<unsigned char,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather<unsigned short,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 3:
    case 7:
      mlx::core::gather<unsigned int,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 4:
    case 8:
      mlx::core::gather<unsigned long long,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 9:
      mlx::core::gather<half,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 0xA:
      mlx::core::gather<float,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 0xB:
      mlx::core::gather<double,unsigned int>(this, a2, a3, a4, a5);
      break;
    case 0xD:
      mlx::core::gather<mlx::core::complex64_t,unsigned int>(this, a2, a3, a4, a5);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather<unsigned long long>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather<BOOL,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 1:
    case 5:
      mlx::core::gather<unsigned char,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather<unsigned short,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 3:
    case 7:
      mlx::core::gather<unsigned int,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 4:
    case 8:
      mlx::core::gather<unsigned long long,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 9:
      mlx::core::gather<half,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 0xA:
      mlx::core::gather<float,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 0xB:
      mlx::core::gather<double,unsigned long long>(this, a2, a3, a4, a5);
      break;
    case 0xD:
      mlx::core::gather<mlx::core::complex64_t,unsigned long long>(this, a2, a3, a4, a5);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather<signed char>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather<BOOL,signed char>(this, a2, a3, a4, a5);
      break;
    case 1:
    case 5:
      mlx::core::gather<unsigned char,signed char>(this, a2, a3, a4, a5);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather<unsigned short,signed char>(this, a2, a3, a4, a5);
      break;
    case 3:
    case 7:
      mlx::core::gather<unsigned int,signed char>(this, a2, a3, a4, a5);
      break;
    case 4:
    case 8:
      mlx::core::gather<unsigned long long,signed char>(this, a2, a3, a4, a5);
      break;
    case 9:
      mlx::core::gather<half,signed char>(this, a2, a3, a4, a5);
      break;
    case 0xA:
      mlx::core::gather<float,signed char>(this, a2, a3, a4, a5);
      break;
    case 0xB:
      mlx::core::gather<double,signed char>(this, a2, a3, a4, a5);
      break;
    case 0xD:
      mlx::core::gather<mlx::core::complex64_t,signed char>(this, a2, a3, a4, a5);
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_gather<short>(uint64_t **this, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  switch(*(*a3 + 56))
  {
    case 0:
      mlx::core::gather<BOOL,short>(this, a2, a3, a4, a5);
      break;
    case 1:
    case 5:
      mlx::core::gather<unsigned char,short>(this, a2, a3, a4, a5);
      break;
    case 2:
    case 6:
    case 0xC:
      mlx::core::gather<unsigned short,short>(this, a2, a3, a4, a5);
      break;
    case 3:
    case 7:
      mlx::core::gather<unsigned int,short>(this, a2, a3, a4, a5);
      break;
    case 4:
    case 8:
      mlx::core::gather<unsigned long long,short>(this, a2, a3, a4, a5);
      break;
    case 9:
      mlx::core::gather<half,short>(this, a2, a3, a4, a5);
      break;
    case 0xA:
      mlx::core::gather<float,short>(this, a2, a3, a4, a5);
      break;
    case 0xB:
      mlx::core::gather<double,short>(this, a2, a3, a4, a5);
      break;
    case 0xD:
      mlx::core::gather<mlx::core::complex64_t,short>(this, a2, a3, a4, a5);
      break;
    default:
      return;
  }
}