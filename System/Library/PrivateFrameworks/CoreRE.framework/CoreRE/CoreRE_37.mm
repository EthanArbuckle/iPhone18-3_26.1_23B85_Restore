__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v62 = a2[-1].n128_u64[0];
        v61 = a2 - 1;
        if (*v62 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v136 = *v12;
        *v12 = *v61;
        result = v136;
LABEL_108:
        *v61 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v63 = v12 + 1;
      v67 = v12 + 2;
      v68 = v12[2].n128_u64[0];
      v69 = *v12[1].n128_u64[0];
      v70 = *v68;
      if (v69 >= *v12->n128_u64[0])
      {
        if (v70 < v69)
        {
          result = *v63;
          *v63 = *v67;
          *v67 = result;
          if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
          {
            v139 = *v12;
            *v12 = *v63;
            result = v139;
            *v63 = v139;
          }
        }
      }

      else
      {
        if (v70 < v69)
        {
          v137 = *v12;
          *v12 = *v67;
          result = v137;
          goto LABEL_187;
        }

        v141 = *v12;
        *v12 = *v63;
        result = v141;
        *v63 = v141;
        if (*v68 < *v12[1].n128_u64[0])
        {
          result = *v63;
          *v63 = *v67;
LABEL_187:
          *v67 = result;
        }
      }

      if (*v9->n128_u64[0] >= *v67->n128_u64[0])
      {
        return result;
      }

      result = *v67;
      *v67 = *v9;
      *v9 = result;
      if (*v67->n128_u64[0] >= *v63->n128_u64[0])
      {
        return result;
      }

      result = *v63;
      *v63 = *v67;
      *v67 = result;
LABEL_191:
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v142 = *v12;
        *v12 = *v63;
        result = v142;
        *v63 = v142;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = v12 + 1;
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = v12;
          do
          {
            v76 = v71;
            v77 = v75[1].n128_u64[0];
            if (*v77 < *v75->n128_u64[0])
            {
              v78 = v75[1].n128_u64[1];
              v79 = v74;
              while (1)
              {
                result = *(v12 + v79);
                *(v12 + v79 + 16) = result;
                if (!v79)
                {
                  break;
                }

                v80 = **(v12[-1].n128_u64 + v79);
                v79 -= 16;
                if (*v77 >= v80)
                {
                  v81 = (v12 + v79 + 16);
                  goto LABEL_127;
                }
              }

              v81 = v12;
LABEL_127:
              v81->n128_u64[0] = v77;
              v81->n128_u64[1] = v78;
            }

            v71 = v76 + 1;
            v74 += 16;
            v75 = v76;
          }

          while (&v76[1] != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v112 = v71;
          v113 = a1[1].n128_u64[0];
          if (*v113 < *a1->n128_u64[0])
          {
            v114 = a1[1].n128_u64[1];
            v115 = v112;
            do
            {
              result = v115[-1];
              *v115 = result;
              v116 = v115[-2].n128_u64[0];
              --v115;
            }

            while (*v113 < *v116);
            v115->n128_u64[0] = v113;
            v115->n128_u64[1] = v114;
          }

          v71 = v112 + 1;
          a1 = v112;
        }

        while (&v112[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v82 = (v13 - 2) >> 1;
        v83 = v82;
        do
        {
          v84 = v83;
          if (v82 >= v83)
          {
            v85 = (2 * v83) | 1;
            v86 = &v12[v85];
            if (2 * v84 + 2 >= v13)
            {
              LOWORD(v88) = *v86->n128_u64[0];
            }

            else
            {
              v87 = *v86->n128_u64[0];
              v88 = *v86[1].n128_u64[0];
              v89 = v87 < v88;
              if (v87 > v88)
              {
                LOWORD(v88) = *v86->n128_u64[0];
              }

              if (v89)
              {
                ++v86;
                v85 = 2 * v84 + 2;
              }
            }

            v90 = &v12[v84];
            v91 = v90->n128_u64[0];
            if (*v90->n128_u64[0] <= v88)
            {
              v92 = v90->n128_u64[1];
              do
              {
                v93 = v90;
                v90 = v86;
                *v93 = *v86;
                if (v82 < v85)
                {
                  break;
                }

                v94 = (2 * v85) | 1;
                v86 = &v12[v94];
                v85 = 2 * v85 + 2;
                if (v85 >= v13)
                {
                  LOWORD(v95) = *v86->n128_u64[0];
                  v85 = v94;
                }

                else
                {
                  v95 = *v86->n128_u64[0];
                  v96 = *v86[1].n128_u64[0];
                  v97 = v95 < v96;
                  if (v95 <= v96)
                  {
                    LOWORD(v95) = *v86[1].n128_u64[0];
                  }

                  if (v97)
                  {
                    ++v86;
                  }

                  else
                  {
                    v85 = v94;
                  }
                }
              }

              while (*v91 <= v95);
              v90->n128_u64[0] = v91;
              v90->n128_u64[1] = v92;
            }
          }

          v83 = v84 - 1;
        }

        while (v84);
        do
        {
          v98 = 0;
          v138 = *v12;
          v99 = v12;
          do
          {
            v100 = &v99[v98];
            v101 = v100 + 1;
            v102 = (2 * v98) | 1;
            v98 = 2 * v98 + 2;
            if (v98 >= v13)
            {
              v98 = v102;
            }

            else
            {
              v104 = v100[2].n128_u64[0];
              v103 = v100 + 2;
              if (*v103[-1].n128_u64[0] >= *v104)
              {
                v98 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v98 <= ((v13 - 2) >> 1));
          if (v101 == --a2)
          {
            result = v138;
            *v101 = v138;
          }

          else
          {
            *v101 = *a2;
            result = v138;
            *a2 = v138;
            v105 = (v101 - v12 + 16) >> 4;
            v89 = v105 < 2;
            v106 = v105 - 2;
            if (!v89)
            {
              v107 = v106 >> 1;
              v108 = &v12[v107];
              v109 = v101->n128_u64[0];
              if (*v108->n128_u64[0] < *v101->n128_u64[0])
              {
                v110 = v101->n128_u64[1];
                do
                {
                  v111 = v101;
                  v101 = v108;
                  result = *v108;
                  *v111 = *v108;
                  if (!v107)
                  {
                    break;
                  }

                  v107 = (v107 - 1) >> 1;
                  v108 = &v12[v107];
                }

                while (*v108->n128_u64[0] < *v109);
                v101->n128_u64[0] = v109;
                v101->n128_u64[1] = v110;
              }
            }
          }

          v89 = v13-- <= 2;
        }

        while (!v89);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0];
      if (v17 >= *v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v119 = *v14;
          *v14 = *v9;
          *v9 = v119;
          if (*v14->n128_u64[0] < *v12->n128_u64[0])
          {
            v120 = *v12;
            *v12 = *v14;
            *v14 = v120;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v117 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v123 = *v12;
        *v12 = *v14;
        *v14 = v123;
        if (*v9->n128_u64[0] < *v14->n128_u64[0])
        {
          v117 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v117;
        }
      }

      v19 = v12 + 1;
      v20 = &v14[-1];
      v21 = *v14[-1].n128_u64[0];
      v22 = *v10->n128_u64[0];
      if (v21 >= *v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v124 = *v20;
          *v20 = *v10;
          *v10 = v124;
          if (**v20 < *v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] < **v20)
        {
          v126 = *v20;
          *v20 = *v10;
          v23 = v126;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28;
      v30 = *v11->n128_u64[0];
      if (v29 >= *v12[2].n128_u64[0])
      {
        if (v30 < v29)
        {
          v127 = *v27;
          *v27 = *v11;
          *v11 = v127;
          if (*v27->n128_u64[0] < *v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] < *v27->n128_u64[0])
        {
          v128 = *v27;
          *v27 = *v11;
          v31 = v128;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = **v15;
      v35 = *v27->n128_u64[0];
      if (v34 >= **v20)
      {
        if (v35 < v34)
        {
          v130 = *v15;
          *v15 = *v27;
          *v27 = v130;
          if (**v15 < **v20)
          {
            v131 = *v20;
            *v20 = *v15;
            *v15 = v131;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v129 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v132 = *v20;
        *v20 = *v15;
        *v15 = v132;
        if (*v27->n128_u64[0] < **v15)
        {
          v129 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v129;
        }
      }

      v133 = *v12;
      *v12 = *v15;
      result = v133;
      *v15 = v133;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0];
    if (v18 >= *v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v121 = *v12;
        *v12 = *v9;
        result = v121;
        *v9 = v121;
        if (*v12->n128_u64[0] < *v14->n128_u64[0])
        {
          v122 = *v14;
          *v14 = *v12;
          result = v122;
          *v12 = v122;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v125 = *v14;
      *v14 = *v12;
      result = v125;
      *v12 = v125;
      if (*v9->n128_u64[0] >= *v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v118 = *v12;
      *v12 = *v9;
    }

    else
    {
      v118 = *v14;
      *v14 = *v9;
    }

    result = v118;
    *v9 = v118;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0];
    if ((a4 & 1) != 0 || *v12[-1].n128_u64[0] < v37)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v40 < v37);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v44 >= v37);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (*v43 >= v37);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v134 = *v12;
          *v12 = *v45;
          result = v134;
          *v45 = v134;
          v46 = *v36;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (*v47 < v46);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (*v48 >= v46);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0])
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55);
      }

      v56 = a1->n128_u64[1];
      while (v12 < v54)
      {
        v135 = *v12;
        *v12 = *v54;
        result = v135;
        *v54 = v135;
        v57 = *v36;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v63 = v12 + 1;
  v64 = a2[-1].n128_u64[0];
  v61 = a2 - 1;
  v65 = *v12[1].n128_u64[0];
  v66 = *v64;
  if (v65 >= *v12->n128_u64[0])
  {
    if (v66 >= v65)
    {
      return result;
    }

    result = *v63;
    *v63 = *v61;
    *v61 = result;
    goto LABEL_191;
  }

  if (v66 < v65)
  {
    goto LABEL_107;
  }

  v140 = *v12;
  *v12 = *v63;
  result = v140;
  *v63 = v140;
  if (*v61->n128_u64[0] < *v12[1].n128_u64[0])
  {
    result = *v63;
    *v63 = *v61;
    goto LABEL_108;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = *a2->n128_u64[0];
  v7 = *a3->n128_u64[0];
  if (v6 >= *a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3->n128_u64[0] < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4->n128_u64[0] < *a3->n128_u64[0])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3->n128_u64[0] < *a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] < *a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5->n128_u64[0] < *a4->n128_u64[0])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4->n128_u64[0] < *a3->n128_u64[0])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3->n128_u64[0] < *a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (*a2->n128_u64[0] < *a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = &a1[3];
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    if (**v32 < *v11->n128_u64[0])
    {
      v36 = v32[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 2;
  v132 = a2 - 6;
  v134 = a2 - 4;
  v9 = a1;
  v137 = a2;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 4;
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v67 = *(a2 - 2);
        v66 = a2 - 2;
        if (!re::DynamicString::operator<(v67, *a1))
        {
          return;
        }

LABEL_109:
        v158 = *a1;
        *a1 = *v66;
        v74 = v158;
        goto LABEL_110;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, v8);
      return;
    }

    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v62 = *(a2 - 2);
      v61 = a2 - 2;
      if (re::DynamicString::operator<(v62, a1[6]))
      {
        v63 = *(a1 + 3);
        *(a1 + 3) = *v61;
        *v61 = v63;
        if (re::DynamicString::operator<(a1[6], a1[4]))
        {
          v64 = *(a1 + 2);
          *(a1 + 2) = *(a1 + 3);
          *(a1 + 3) = v64;
          if (re::DynamicString::operator<(a1[4], a1[2]))
          {
            v65 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v65;
            if (re::DynamicString::operator<(a1[2], *a1))
            {
              v157 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v157;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v10 <= 23)
    {
      v75 = a1 + 2;
      v77 = a1 == a2 || v75 == a2;
      if (a4)
      {
        if (!v77)
        {
          v78 = 0;
          v79 = a1;
          do
          {
            v80 = v75;
            v81 = v79[2];
            if (re::DynamicString::operator<(v81, *v79))
            {
              v82 = v79[3];
              v83 = v78;
              while (1)
              {
                v84 = a1 + v83;
                *(a1 + v83 + 16) = *(a1 + v83);
                if (!v83)
                {
                  break;
                }

                v83 -= 16;
                if ((re::DynamicString::operator<(v81, *(v84 - 2)) & 1) == 0)
                {
                  v85 = (a1 + v83 + 16);
                  goto LABEL_129;
                }
              }

              v85 = a1;
LABEL_129:
              *v85 = v81;
              v85[1] = v82;
            }

            v75 = v80 + 2;
            v78 += 16;
            v79 = v80;
          }

          while (v80 + 2 != a2);
        }
      }

      else if (!v77)
      {
        do
        {
          v126 = v75;
          v127 = a1[2];
          if (re::DynamicString::operator<(v127, *a1))
          {
            v128 = a1[3];
            v129 = v126;
            do
            {
              v130 = v129 - 2;
              *v129 = *(v129 - 1);
              v131 = re::DynamicString::operator<(v127, *(v129 - 4));
              v129 = v130;
            }

            while ((v131 & 1) != 0);
            *v130 = v127;
            v130[1] = v128;
          }

          v75 = v126 + 2;
          a1 = v126;
        }

        while (v126 + 2 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v86 = v11 >> 1;
        v87 = v11 >> 1;
        v136 = a1;
        do
        {
          v88 = v87;
          if (v86 >= v87)
          {
            v89 = (2 * v87) | 1;
            v90 = &a1[2 * v89];
            v91 = 2 * v87 + 2;
            if (v91 >= v10)
            {
              v97 = *v90;
            }

            else
            {
              v92 = *v90;
              v93 = v87;
              v94 = v90[2];
              v95 = re::DynamicString::operator<(*v90, v94);
              v96 = v95 == 0;
              if (v95)
              {
                v97 = v94;
              }

              else
              {
                v97 = v92;
              }

              if (!v96)
              {
                v90 += 2;
              }

              v88 = v93;
              if (!v96)
              {
                v89 = v91;
              }
            }

            v98 = &a1[2 * v88];
            v99 = *v98;
            if ((re::DynamicString::operator<(v97, *v98) & 1) == 0)
            {
              v133 = v98[1];
              v135 = v88;
              do
              {
                v100 = v98;
                v98 = v90;
                *v100 = *v90;
                if (v86 < v89)
                {
                  break;
                }

                v101 = (2 * v89) | 1;
                v90 = &a1[2 * v101];
                v102 = 2 * v89 + 2;
                if (v102 >= v10)
                {
                  v107 = *v90;
                  v89 = (2 * v89) | 1;
                }

                else
                {
                  v103 = *v90;
                  v104 = v90[2];
                  v105 = re::DynamicString::operator<(*v90, v104);
                  v106 = v105 == 0;
                  if (v105)
                  {
                    v107 = v104;
                  }

                  else
                  {
                    v107 = v103;
                  }

                  if (!v106)
                  {
                    v90 += 2;
                  }

                  a1 = v136;
                  v89 = v106 ? v101 : v102;
                }
              }

              while (!re::DynamicString::operator<(v107, v99));
              v88 = v135;
              *v98 = v99;
              v98[1] = v133;
            }
          }

          v87 = v88 - 1;
        }

        while (v88);
        v108 = v137;
        do
        {
          v109 = 0;
          v159 = *a1;
          v110 = a1;
          do
          {
            v111 = &v110[2 * v109];
            v112 = v111 + 2;
            v113 = (2 * v109) | 1;
            v114 = 2 * v109 + 2;
            if (v114 >= v10)
            {
              v109 = (2 * v109) | 1;
            }

            else
            {
              v116 = v111[4];
              v115 = v111 + 4;
              if (re::DynamicString::operator<(*(v115 - 2), v116))
              {
                v112 = v115;
                v109 = v114;
              }

              else
              {
                v109 = v113;
              }
            }

            *v110 = *v112;
            v110 = v112;
          }

          while (v109 <= ((v10 - 2) >> 1));
          v108 -= 2;
          if (v112 == v108)
          {
            *v112 = v159;
          }

          else
          {
            *v112 = *v108;
            *v108 = v159;
            v117 = (v112 - a1 + 16) >> 4;
            v118 = v117 < 2;
            v119 = v117 - 2;
            if (!v118)
            {
              v120 = v119 >> 1;
              v121 = &a1[2 * (v119 >> 1)];
              v122 = *v112;
              if (re::DynamicString::operator<(*v121, *v112))
              {
                v123 = v112[1];
                do
                {
                  v124 = v112;
                  v112 = v121;
                  *v124 = *v121;
                  if (!v120)
                  {
                    break;
                  }

                  v120 = (v120 - 1) >> 1;
                  v121 = &a1[2 * v120];
                }

                while ((re::DynamicString::operator<(*v121, v122) & 1) != 0);
                *v112 = v122;
                v112[1] = v123;
              }
            }
          }

          v118 = v10-- <= 2;
        }

        while (!v118);
      }

      return;
    }

    v12 = &a1[2 * (v10 >> 1)];
    v13 = v12;
    v14 = *v8;
    if (v10 >= 0x81)
    {
      v15 = *v12;
      v16 = re::DynamicString::operator<(*v12, *a1);
      v17 = re::DynamicString::operator<(v14, v15);
      if (v16)
      {
        if (v17)
        {
          v138 = *a1;
          *a1 = *v8;
          goto LABEL_26;
        }

        v144 = *a1;
        *a1 = *v12;
        *v12 = v144;
        if (re::DynamicString::operator<(*v8, *v12))
        {
          v138 = *v12;
          *v12 = *v8;
LABEL_26:
          *v8 = v138;
        }
      }

      else if (v17)
      {
        v140 = *v12;
        *v12 = *v8;
        *v8 = v140;
        if (re::DynamicString::operator<(*v12, *a1))
        {
          v141 = *a1;
          *a1 = *v12;
          *v12 = v141;
        }
      }

      v21 = a1 + 2;
      v23 = v12 - 2;
      v22 = *(v12 - 2);
      v24 = re::DynamicString::operator<(v22, a1[2]);
      v25 = re::DynamicString::operator<(*v134, v22);
      if (v24)
      {
        if (v25)
        {
          v26 = *v21;
          v27 = v134;
          *v21 = *v134;
          goto LABEL_38;
        }

        v29 = *v21;
        *v21 = *v23;
        *v23 = v29;
        if (re::DynamicString::operator<(*v134, *v23))
        {
          v147 = *v23;
          v27 = v134;
          *v23 = *v134;
          v26 = v147;
LABEL_38:
          *v27 = v26;
        }
      }

      else if (v25)
      {
        v145 = *v23;
        *v23 = *v134;
        *v134 = v145;
        if (re::DynamicString::operator<(*v23, *v21))
        {
          v28 = *v21;
          *v21 = *v23;
          *v23 = v28;
        }
      }

      v30 = a1 + 4;
      v32 = v12[2];
      v31 = v12 + 2;
      v33 = re::DynamicString::operator<(v32, a1[4]);
      v34 = re::DynamicString::operator<(*v132, v32);
      if (v33)
      {
        if (v34)
        {
          v35 = *v30;
          v36 = v132;
          *v30 = *v132;
          goto LABEL_47;
        }

        v38 = *v30;
        *v30 = *v31;
        *v31 = v38;
        if (re::DynamicString::operator<(*v132, *v31))
        {
          v149 = *v31;
          v36 = v132;
          *v31 = *v132;
          v35 = v149;
LABEL_47:
          *v36 = v35;
        }
      }

      else if (v34)
      {
        v148 = *v31;
        *v31 = *v132;
        *v132 = v148;
        if (re::DynamicString::operator<(*v31, *v30))
        {
          v37 = *v30;
          *v30 = *v31;
          *v31 = v37;
        }
      }

      v39 = *v13;
      v40 = re::DynamicString::operator<(*v13, *v23);
      v41 = re::DynamicString::operator<(*v31, v39);
      if (v40)
      {
        if (v41)
        {
          v150 = *v23;
          *v23 = *v31;
          goto LABEL_56;
        }

        v153 = *v23;
        *v23 = *v13;
        *v13 = v153;
        if (re::DynamicString::operator<(*v31, *v13))
        {
          v150 = *v13;
          *v13 = *v31;
LABEL_56:
          *v31 = v150;
        }
      }

      else if (v41)
      {
        v151 = *v13;
        *v13 = *v31;
        *v31 = v151;
        if (re::DynamicString::operator<(*v13, *v23))
        {
          v152 = *v23;
          *v23 = *v13;
          *v13 = v152;
        }
      }

      v154 = *a1;
      *a1 = *v13;
      *v13 = v154;
      goto LABEL_58;
    }

    v18 = *a1;
    v19 = re::DynamicString::operator<(*a1, *v12);
    v20 = re::DynamicString::operator<(v14, v18);
    if ((v19 & 1) == 0)
    {
      if (v20)
      {
        v142 = *a1;
        *a1 = *v8;
        *v8 = v142;
        if (re::DynamicString::operator<(*a1, *v12))
        {
          v143 = *v12;
          *v12 = *a1;
          *a1 = v143;
        }
      }

      goto LABEL_58;
    }

    if (v20)
    {
      v139 = *v12;
      *v12 = *v8;
    }

    else
    {
      v146 = *v12;
      *v12 = *a1;
      *a1 = v146;
      if (!re::DynamicString::operator<(*v8, *a1))
      {
        goto LABEL_58;
      }

      v139 = *a1;
      *a1 = *v8;
    }

    *v8 = v139;
LABEL_58:
    --a3;
    v42 = *a1;
    if (a4 & 1) != 0 || (re::DynamicString::operator<(*(a1 - 2), *a1))
    {
      v43 = 0;
      v44 = a1[1];
      do
      {
        v45 = re::DynamicString::operator<(a1[v43 + 2], v42);
        v43 += 2;
      }

      while ((v45 & 1) != 0);
      v46 = &a1[v43];
      v47 = v137;
      if (v43 == 2)
      {
        v47 = v137;
        do
        {
          if (v46 >= v47)
          {
            break;
          }

          v49 = *(v47 - 2);
          v47 -= 2;
        }

        while ((re::DynamicString::operator<(v49, v42) & 1) == 0);
      }

      else
      {
        do
        {
          v48 = *(v47 - 2);
          v47 -= 2;
        }

        while (!re::DynamicString::operator<(v48, v42));
      }

      v9 = &a1[v43];
      if (v46 < v47)
      {
        v50 = v47;
        do
        {
          v155 = *v9;
          *v9 = *v50;
          *v50 = v155;
          do
          {
            v51 = v9[2];
            v9 += 2;
          }

          while ((re::DynamicString::operator<(v51, v42) & 1) != 0);
          do
          {
            v52 = *(v50 - 2);
            v50 -= 2;
          }

          while (!re::DynamicString::operator<(v52, v42));
        }

        while (v9 < v50);
      }

      if (v9 - 2 != a1)
      {
        *a1 = *(v9 - 1);
      }

      *(v9 - 2) = v42;
      *(v9 - 1) = v44;
      a2 = v137;
      if (v46 < v47)
      {
        goto LABEL_79;
      }

      v53 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(a1, v9 - 2);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(v9, v137))
      {
        a2 = v9 - 2;
        if (!v53)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v53)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(a1, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v54 = a1[1];
      if (re::DynamicString::operator<(v42, *v8))
      {
        v9 = a1;
        a2 = v137;
        do
        {
          v55 = v9[2];
          v9 += 2;
        }

        while ((re::DynamicString::operator<(v42, v55) & 1) == 0);
      }

      else
      {
        v56 = a1 + 2;
        a2 = v137;
        do
        {
          v9 = v56;
          if (v56 >= v137)
          {
            break;
          }

          v56 += 2;
        }

        while (!re::DynamicString::operator<(v42, *v9));
      }

      v57 = a2;
      if (v9 < a2)
      {
        v57 = a2;
        do
        {
          v58 = *(v57 - 2);
          v57 -= 2;
        }

        while ((re::DynamicString::operator<(v42, v58) & 1) != 0);
      }

      while (v9 < v57)
      {
        v156 = *v9;
        *v9 = *v57;
        *v57 = v156;
        do
        {
          v59 = v9[2];
          v9 += 2;
        }

        while (!re::DynamicString::operator<(v42, v59));
        do
        {
          v60 = *(v57 - 2);
          v57 -= 2;
        }

        while ((re::DynamicString::operator<(v42, v60) & 1) != 0);
      }

      if (v9 - 2 != a1)
      {
        *a1 = *(v9 - 1);
      }

      a4 = 0;
      *(v9 - 2) = v42;
      *(v9 - 1) = v54;
    }
  }

  v69 = a1 + 2;
  v70 = a1[2];
  v71 = re::DynamicString::operator<(v70, *a1);
  v72 = *(a2 - 2);
  v66 = a2 - 2;
  v73 = re::DynamicString::operator<(v72, v70);
  if (v71)
  {
    if (v73)
    {
      goto LABEL_109;
    }

    v161 = *a1;
    *a1 = *v69;
    *v69 = v161;
    if (!re::DynamicString::operator<(*v66, a1[2]))
    {
      return;
    }

    v74 = *v69;
    *v69 = *v66;
LABEL_110:
    *v66 = v74;
    return;
  }

  if (v73)
  {
    v125 = *v69;
    *v69 = *v66;
    *v66 = v125;
    if (re::DynamicString::operator<(a1[2], *a1))
    {
      v160 = *a1;
      *a1 = *v69;
      *v69 = v160;
    }
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = re::DynamicString::operator<(*a2, *a1);
  v10 = re::DynamicString::operator<(*a3, v8);
  if (v9)
  {
    if (v10)
    {
      v11 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v11;
      goto LABEL_10;
    }

    v14 = *a1;
    *a1 = *a2;
    *a2 = v14;
    if (re::DynamicString::operator<(*a3, *a2))
    {
      v11 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    if (re::DynamicString::operator<(*a2, *a1))
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
    }
  }

LABEL_10:
  if (re::DynamicString::operator<(*a4, *a3))
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    if (re::DynamicString::operator<(*a3, *a2))
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      if (re::DynamicString::operator<(*a2, *a1))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = (a1 + 2);
        v12 = a1[2];
        v14 = re::DynamicString::operator<(v12, *a1);
        v15 = *(a2 - 2);
        v5 = a2 - 2;
        v16 = re::DynamicString::operator<(v15, v12);
        if ((v14 & 1) == 0)
        {
          if (v16)
          {
            v26 = *v13;
            *v13 = *v5;
            *v5 = v26;
            if (re::DynamicString::operator<(a1[2], *a1))
            {
              v27 = *a1;
              *a1 = *v13;
              *v13 = v27;
            }
          }

          return 1;
        }

        if (!v16)
        {
          v30 = *a1;
          *a1 = *v13;
          *v13 = v30;
          if (!re::DynamicString::operator<(*v5, a1[2]))
          {
            return 1;
          }

          v17 = *v13;
          *v13 = *v5;
          goto LABEL_17;
        }

LABEL_16:
        v17 = *a1;
        *a1 = *v5;
LABEL_17:
        *v5 = v17;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v7 = *(a2 - 2);
        v6 = a2 - 2;
        if (re::DynamicString::operator<(v7, a1[6]))
        {
          v8 = *(a1 + 3);
          *(a1 + 3) = *v6;
          *v6 = v8;
          if (re::DynamicString::operator<(a1[6], a1[4]))
          {
            v9 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v9;
            if (re::DynamicString::operator<(a1[4], a1[2]))
            {
              v10 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v10;
              if (re::DynamicString::operator<(a1[2], *a1))
              {
                v11 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v11;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 2;
      if (!re::DynamicString::operator<(*(a2 - 2), *a1))
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v19 = a1 + 2;
  v18 = a1[2];
  v20 = *a1;
  v21 = re::DynamicString::operator<(v18, *a1);
  v23 = a1 + 4;
  v22 = a1[4];
  v24 = re::DynamicString::operator<(v22, v18);
  if (v21)
  {
    if (v24)
    {
      v25 = *a1;
      *a1 = *v23;
    }

    else
    {
      v31 = *a1;
      *a1 = *v19;
      *v19 = v31;
      if (!re::DynamicString::operator<(v22, a1[2]))
      {
        goto LABEL_33;
      }

      v25 = *v19;
      *v19 = *v23;
    }

    *v23 = v25;
  }

  else if (v24)
  {
    v28 = *v19;
    *v19 = *v23;
    *v23 = v28;
    if (re::DynamicString::operator<(*v19, v20))
    {
      v29 = *a1;
      *a1 = *v19;
      *v19 = v29;
    }
  }

LABEL_33:
  v32 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    if (re::DynamicString::operator<(*v32, *v23))
    {
      v36 = v32[1];
      v37 = v33;
      while (1)
      {
        v38 = a1 + v37;
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v37 -= 16;
        if ((re::DynamicString::operator<(v35, *(v38 + 2)) & 1) == 0)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v23 = v32;
    v33 += 16;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v64 = a2[-1].n128_u64[0];
        v63 = a2 - 1;
        if (*v64 >> 1 >= *v12->n128_u64[0] >> 1)
        {
          return result;
        }

LABEL_109:
        v134 = *v12;
        *v12 = *v63;
        result = v134;
LABEL_110:
        *v63 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, a2 - 1, result).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, result).n128_u64[0];
      v62 = a2[-1].n128_u64[0];
      v61 = a2 - 1;
      if (*v62 >> 1 < *v12[3].n128_u64[0] >> 1)
      {
        result = v12[3];
        v12[3] = *v61;
        *v61 = result;
        if (*v12[3].n128_u64[0] >> 1 < *v12[2].n128_u64[0] >> 1)
        {
          result = v12[2];
          v12[2] = v12[3];
          v12[3] = result;
          if (*v12[2].n128_u64[0] >> 1 < *v12[1].n128_u64[0] >> 1)
          {
            result = v12[1];
            v12[1] = v12[2];
            v12[2] = result;
            if (*v12[1].n128_u64[0] >> 1 < *v12->n128_u64[0] >> 1)
            {
              v133 = *v12;
              *v12 = v12[1];
              result = v133;
              v12[1] = v133;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v69 = v12 + 1;
      v71 = v12 == a2 || v69 == a2;
      if (a4)
      {
        if (!v71)
        {
          v72 = 0;
          v73 = v12;
          do
          {
            v74 = v69;
            v75 = v73[1].n128_u64[0];
            if (*v75 >> 1 < *v73->n128_u64[0] >> 1)
            {
              v76 = v73[1].n128_u64[1];
              v77 = v72;
              while (1)
              {
                result = *(v12 + v77);
                *(v12 + v77 + 16) = result;
                if (!v77)
                {
                  break;
                }

                v78 = **(v12[-1].n128_u64 + v77);
                v77 -= 16;
                if (*v75 >> 1 >= v78 >> 1)
                {
                  v79 = (v12 + v77 + 16);
                  goto LABEL_129;
                }
              }

              v79 = v12;
LABEL_129:
              v79->n128_u64[0] = v75;
              v79->n128_u64[1] = v76;
            }

            v69 = v74 + 1;
            v72 += 16;
            v73 = v74;
          }

          while (&v74[1] != a2);
        }
      }

      else if (!v71)
      {
        do
        {
          v109 = v69;
          v110 = a1[1].n128_u64[0];
          if (*v110 >> 1 < *a1->n128_u64[0] >> 1)
          {
            v111 = a1[1].n128_u64[1];
            v112 = v109;
            do
            {
              result = v112[-1];
              *v112 = result;
              v113 = v112[-2].n128_u64[0];
              --v112;
            }

            while (*v110 >> 1 < *v113 >> 1);
            v112->n128_u64[0] = v110;
            v112->n128_u64[1] = v111;
          }

          v69 = v109 + 1;
          a1 = v109;
        }

        while (&v109[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v80 = (v13 - 2) >> 1;
        v81 = v80;
        do
        {
          v82 = v81;
          if (v80 >= v81)
          {
            v83 = (2 * v81) | 1;
            v84 = &v12[v83];
            if (2 * v82 + 2 >= v13)
            {
              v86 = *v84->n128_u64[0];
            }

            else
            {
              v85 = *v84->n128_u64[0] >> 1;
              v86 = *v84[1].n128_u64[0];
              v87 = v85 >= v86 >> 1;
              if (v85 < v86 >> 1)
              {
                ++v84;
              }

              else
              {
                v86 = *v84->n128_u64[0];
              }

              if (!v87)
              {
                v83 = 2 * v82 + 2;
              }
            }

            v88 = &v12[v82];
            v89 = v88->n128_u64[0];
            if (v86 >> 1 >= *v88->n128_u64[0] >> 1)
            {
              v90 = v88->n128_u64[1];
              do
              {
                v91 = v88;
                v88 = v84;
                *v91 = *v84;
                if (v80 < v83)
                {
                  break;
                }

                v92 = (2 * v83) | 1;
                v84 = &v12[v92];
                v83 = 2 * v83 + 2;
                if (v83 >= v13)
                {
                  v93 = *v84->n128_u64[0];
                  v83 = v92;
                }

                else
                {
                  v93 = *v84->n128_u64[0];
                  if (v93 >> 1 >= *v84[1].n128_u64[0] >> 1)
                  {
                    v83 = v92;
                  }

                  else
                  {
                    v93 = *v84[1].n128_u64[0];
                    ++v84;
                  }
                }
              }

              while (v93 >> 1 >= *v89 >> 1);
              v88->n128_u64[0] = v89;
              v88->n128_u64[1] = v90;
            }
          }

          v81 = v82 - 1;
        }

        while (v82);
        do
        {
          v94 = 0;
          v135 = *v12;
          v95 = v12;
          do
          {
            v96 = &v95[v94];
            v97 = v96 + 1;
            v98 = (2 * v94) | 1;
            v94 = 2 * v94 + 2;
            if (v94 >= v13)
            {
              v94 = v98;
            }

            else
            {
              v100 = v96[2].n128_u64[0];
              v99 = v96 + 2;
              if (*v99[-1].n128_u64[0] >> 1 >= *v100 >> 1)
              {
                v94 = v98;
              }

              else
              {
                v97 = v99;
              }
            }

            *v95 = *v97;
            v95 = v97;
          }

          while (v94 <= ((v13 - 2) >> 1));
          if (v97 == --a2)
          {
            result = v135;
            *v97 = v135;
          }

          else
          {
            *v97 = *a2;
            result = v135;
            *a2 = v135;
            v101 = (v97 - v12 + 16) >> 4;
            v102 = v101 < 2;
            v103 = v101 - 2;
            if (!v102)
            {
              v104 = v103 >> 1;
              v105 = &v12[v104];
              v106 = v97->n128_u64[0];
              if (*v105->n128_u64[0] >> 1 < *v97->n128_u64[0] >> 1)
              {
                v107 = v97->n128_u64[1];
                do
                {
                  v108 = v97;
                  v97 = v105;
                  result = *v105;
                  *v108 = *v105;
                  if (!v104)
                  {
                    break;
                  }

                  v104 = (v104 - 1) >> 1;
                  v105 = &v12[v104];
                }

                while (*v105->n128_u64[0] >> 1 < *v106 >> 1);
                v97->n128_u64[0] = v106;
                v97->n128_u64[1] = v107;
              }
            }
          }

          v102 = v13-- <= 2;
        }

        while (!v102);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = *v9->n128_u64[0] >> 1;
    if (v13 >= 0x81)
    {
      v17 = *v14->n128_u64[0] >> 1;
      if (v17 >= *v12->n128_u64[0] >> 1)
      {
        if (v16 < v17)
        {
          v116 = *v14;
          *v14 = *v9;
          *v9 = v116;
          if (*v14->n128_u64[0] >> 1 < *v12->n128_u64[0] >> 1)
          {
            v117 = *v12;
            *v12 = *v14;
            *v14 = v117;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v114 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v120 = *v12;
        *v12 = *v14;
        *v14 = v120;
        if (*v9->n128_u64[0] >> 1 < *v14->n128_u64[0] >> 1)
        {
          v114 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v114;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = *v14[-1].n128_u64[0] >> 1;
      v22 = *v10->n128_u64[0] >> 1;
      if (v21 >= *v12[1].n128_u64[0] >> 1)
      {
        if (v22 < v21)
        {
          v121 = *v20;
          *v20 = *v10;
          *v10 = v121;
          if (*v20->n128_u64[0] >> 1 < *v19->n128_u64[0] >> 1)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10->n128_u64[0] >> 1 < *v20->n128_u64[0] >> 1)
        {
          v123 = *v20;
          *v20 = *v10;
          v23 = v123;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v28 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v29 = *v28 >> 1;
      v30 = *v11->n128_u64[0] >> 1;
      if (v29 >= *v12[2].n128_u64[0] >> 1)
      {
        if (v30 < v29)
        {
          v124 = *v27;
          *v27 = *v11;
          *v11 = v124;
          if (*v27->n128_u64[0] >> 1 < *v26->n128_u64[0] >> 1)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11->n128_u64[0] >> 1 < *v27->n128_u64[0] >> 1)
        {
          v125 = *v27;
          *v27 = *v11;
          v31 = v125;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15->n128_u64[0] >> 1;
      v35 = *v27->n128_u64[0] >> 1;
      if (v34 >= *v20->n128_u64[0] >> 1)
      {
        if (v35 < v34)
        {
          v127 = *v15;
          *v15 = *v27;
          *v27 = v127;
          if (*v15->n128_u64[0] >> 1 < *v20->n128_u64[0] >> 1)
          {
            v128 = *v20;
            *v20 = *v15;
            *v15 = v128;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v126 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v129 = *v20;
        *v20 = *v15;
        *v15 = v129;
        if (*v27->n128_u64[0] >> 1 < *v15->n128_u64[0] >> 1)
        {
          v126 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v126;
        }
      }

      v130 = *v12;
      *v12 = *v15;
      result = v130;
      *v15 = v130;
      goto LABEL_58;
    }

    v18 = *v12->n128_u64[0] >> 1;
    if (v18 >= *v14->n128_u64[0] >> 1)
    {
      if (v16 < v18)
      {
        v118 = *v12;
        *v12 = *v9;
        result = v118;
        *v9 = v118;
        if (*v12->n128_u64[0] >> 1 < *v14->n128_u64[0] >> 1)
        {
          v119 = *v14;
          *v14 = *v12;
          result = v119;
          *v12 = v119;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v122 = *v14;
      *v14 = *v12;
      result = v122;
      *v12 = v122;
      if (*v9->n128_u64[0] >> 1 >= *v12->n128_u64[0] >> 1)
      {
        goto LABEL_58;
      }

      v115 = *v12;
      *v12 = *v9;
    }

    else
    {
      v115 = *v14;
      *v14 = *v9;
    }

    result = v115;
    *v9 = v115;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    v37 = *v12->n128_u64[0] >> 1;
    if ((a4 & 1) != 0 || v37 > *v12[-1].n128_u64[0] >> 1)
    {
      v38 = 0;
      v39 = v12->n128_u64[1];
      do
      {
        v40 = *v12[++v38].n128_u64[0];
      }

      while (v37 > v40 >> 1);
      v41 = &v12[v38];
      v42 = a2;
      if (v38 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = v42[-1].n128_u64[0];
          --v42;
        }

        while (v37 <= *v44 >> 1);
      }

      else
      {
        do
        {
          v43 = v42[-1].n128_u64[0];
          --v42;
        }

        while (v37 <= *v43 >> 1);
      }

      v12 = (v12 + v38 * 16);
      if (v41 < v42)
      {
        v45 = v42;
        do
        {
          v131 = *v12;
          *v12 = *v45;
          result = v131;
          *v45 = v131;
          v46 = *v36 >> 1;
          do
          {
            v47 = v12[1].n128_u64[0];
            ++v12;
          }

          while (v46 > *v47 >> 1);
          do
          {
            v48 = v45[-1].n128_u64[0];
            --v45;
          }

          while (v46 <= *v48 >> 1);
        }

        while (v12 < v45);
      }

      v49 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v49;
        *a1 = *v49;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v39;
      if (v41 < v42)
      {
        goto LABEL_79;
      }

      v50 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(v12, a2, v51))
      {
        a2 = v12 - 1;
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v37 >= *v9->n128_u64[0] >> 1)
      {
        v53 = v12 + 1;
        do
        {
          v12 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v37 >= *v12->n128_u64[0] >> 1);
      }

      else
      {
        do
        {
          v52 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v37 >= *v52 >> 1);
      }

      v54 = a2;
      if (v12 < a2)
      {
        v54 = a2;
        do
        {
          v55 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v37 < *v55 >> 1);
      }

      v56 = a1->n128_u64[1];
      while (v12 < v54)
      {
        v132 = *v12;
        *v12 = *v54;
        result = v132;
        *v54 = v132;
        v57 = *v36 >> 1;
        do
        {
          v58 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v57 >= *v58 >> 1);
        do
        {
          v59 = v54[-1].n128_u64[0];
          --v54;
        }

        while (v57 < *v59 >> 1);
      }

      v60 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v60;
        *a1 = *v60;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v56;
    }
  }

  v65 = v12 + 1;
  v66 = a2[-1].n128_u64[0];
  v63 = a2 - 1;
  v67 = *v12[1].n128_u64[0] >> 1;
  v68 = *v66 >> 1;
  if (v67 >= *v12->n128_u64[0] >> 1)
  {
    if (v68 < v67)
    {
      result = *v65;
      *v65 = *v63;
      *v63 = result;
      if (*v12[1].n128_u64[0] >> 1 < *v12->n128_u64[0] >> 1)
      {
        v136 = *v12;
        *v12 = *v65;
        result = v136;
        *v65 = v136;
      }
    }
  }

  else
  {
    if (v68 < v67)
    {
      goto LABEL_109;
    }

    v137 = *v12;
    *v12 = *v65;
    result = v137;
    *v65 = v137;
    if (*v63->n128_u64[0] >> 1 < *v12[1].n128_u64[0] >> 1)
    {
      result = *v65;
      *v65 = *v63;
      goto LABEL_110;
    }
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = *a2->n128_u64[0] >> 1;
  v6 = *a3->n128_u64[0] >> 1;
  if (v5 >= *a1->n128_u64[0] >> 1)
  {
    if (v6 < v5)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] >> 1 < *a1->n128_u64[0] >> 1)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3->n128_u64[0] >> 1 < *a2->n128_u64[0] >> 1)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4->n128_u64[0] >> 1 < *a3->n128_u64[0] >> 1)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3->n128_u64[0] >> 1 < *a2->n128_u64[0] >> 1)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2->n128_u64[0] >> 1 < *a1->n128_u64[0] >> 1)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v13 = a1 + 1;
        v6 = a2 - 1;
        v14 = *a1[1].n128_u64[0] >> 1;
        v15 = *a2[-1].n128_u64[0] >> 1;
        if (v14 >= *a1->n128_u64[0] >> 1)
        {
          if (v15 < v14)
          {
            v24 = *v13;
            *v13 = *v6;
            *v6 = v24;
            if (*a1[1].n128_u64[0] >> 1 < *a1->n128_u64[0] >> 1)
            {
              v25 = *a1;
              *a1 = *v13;
              *v13 = v25;
            }
          }

          return 1;
        }

        if (v15 >= v14)
        {
          v28 = *a1;
          *a1 = *v13;
          *v13 = v28;
          if (*v6->n128_u64[0] >> 1 >= *a1[1].n128_u64[0] >> 1)
          {
            return 1;
          }

          v16 = *v13;
          *v13 = *v6;
          goto LABEL_17;
        }

LABEL_16:
        v16 = *a1;
        *a1 = *v6;
LABEL_17:
        *v6 = v16;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v8 = a2[-1].n128_u64[0];
        v7 = a2 - 1;
        if (*v8 >> 1 < *a1[3].n128_u64[0] >> 1)
        {
          v9 = a1[3];
          a1[3] = *v7;
          *v7 = v9;
          if (*a1[3].n128_u64[0] >> 1 < *a1[2].n128_u64[0] >> 1)
          {
            v10 = a1[2];
            a1[2] = a1[3];
            a1[3] = v10;
            if (*a1[2].n128_u64[0] >> 1 < *a1[1].n128_u64[0] >> 1)
            {
              v11 = a1[1];
              a1[1] = a1[2];
              a1[2] = v11;
              if (*a1[1].n128_u64[0] >> 1 < *a1->n128_u64[0] >> 1)
              {
                v12 = *a1;
                *a1 = a1[1];
                a1[1] = v12;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = a2 - 1;
      if (*a2[-1].n128_u64[0] >> 1 >= *a1->n128_u64[0] >> 1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v17 = a1 + 2;
  v18 = a1[2].n128_u64[0];
  v19 = a1 + 1;
  v20 = a1->n128_u64[0];
  v21 = *a1[1].n128_u64[0] >> 1;
  v22 = *v18 >> 1;
  if (v21 >= *a1->n128_u64[0] >> 1)
  {
    if (v22 < v21)
    {
      v26 = *v19;
      *v19 = *v17;
      *v17 = v26;
      if (*v19->n128_u64[0] >> 1 < *v20 >> 1)
      {
        v27 = *a1;
        *a1 = *v19;
        *v19 = v27;
      }
    }
  }

  else
  {
    if (v22 >= v21)
    {
      v29 = *a1;
      *a1 = *v19;
      *v19 = v29;
      if (*v18 >> 1 >= *a1[1].n128_u64[0] >> 1)
      {
        goto LABEL_33;
      }

      v23 = *v19;
      *v19 = *v17;
    }

    else
    {
      v23 = *a1;
      *a1 = *v17;
    }

    *v17 = v23;
  }

LABEL_33:
  v30 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (*v30->n128_u64[0] >> 1 < *v17->n128_u64[0] >> 1)
    {
      v34 = v30->n128_u64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = **(a1[1].n128_u64 + v35);
        v35 -= 16;
        if (*v33 >> 1 >= v36 >> 1)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      v37->n128_u64[0] = v33;
      v37->n128_u64[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v17 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(char *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v3 = 126 - 2 * __clz((a2 - a1) >> 4);
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(a1, a2, a3, v4, 1);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(char *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 16);
  v116 = (a2 - 48);
  v117 = (a2 - 32);
  v10 = a1;
  v123 = a2;
  while (1)
  {
    a1 = v10;
    v11 = (a2 - v10) >> 4;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v64 = *(a2 - 2);
        v63 = (a2 - 16);
        if (!(*a3)(v64, *a1))
        {
          return;
        }

LABEL_110:
        v147 = *a1;
        *a1 = *v63;
        v70 = v147;
        goto LABEL_111;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, v9, a3);
      return;
    }

    if (v11 == 5)
    {
      v57 = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
      v59 = *(a2 - 2);
      v58 = a2 - 16;
      if ((*a3)(v59, *(a1 + 6), v57))
      {
        v60 = *(a1 + 3);
        *(a1 + 3) = *v58;
        *v58 = v60;
        if ((*a3)(*(a1 + 6), *(a1 + 4)))
        {
          v61 = *(a1 + 2);
          *(a1 + 2) = *(a1 + 3);
          *(a1 + 3) = v61;
          if ((*a3)(*(a1 + 4), *(a1 + 2)))
          {
            v62 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v62;
            if ((*a3)(*(a1 + 2), *a1))
            {
              v146 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v146;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v71 = a1 + 16;
      v73 = a1 == a2 || v71 == a2;
      if (a5)
      {
        if (!v73)
        {
          v74 = 0;
          v75 = a1;
          do
          {
            v76 = *(v75 + 2);
            v77 = *v75;
            v75 = v71;
            if ((*a3)(v76, v77))
            {
              v124 = *v75;
              v78 = *v75;
              v79 = v74;
              while (1)
              {
                *&a1[v79 + 16] = *&a1[v79];
                if (!v79)
                {
                  break;
                }

                v80 = (*a3)(v78, *&a1[v79 - 16]);
                v79 -= 16;
                if ((v80 & 1) == 0)
                {
                  v81 = &a1[v79 + 16];
                  goto LABEL_130;
                }
              }

              v81 = a1;
LABEL_130:
              *v81 = v124;
            }

            v71 = v75 + 16;
            v74 += 16;
          }

          while (v75 + 16 != a2);
        }
      }

      else if (!v73)
      {
        do
        {
          v110 = *(a1 + 2);
          v111 = *a1;
          a1 = v71;
          if ((*a3)(v110, v111))
          {
            v126 = *a1;
            v112 = *a1;
            v113 = a1;
            do
            {
              v114 = v113 - 16;
              *v113 = *(v113 - 1);
              v115 = (*a3)(v112, *(v113 - 4));
              v113 = v114;
            }

            while ((v115 & 1) != 0);
            *v114 = v126;
          }

          v71 = a1 + 16;
        }

        while (a1 + 16 != a2);
      }

      return;
    }

    if (!a4)
    {
      if (a1 == a2)
      {
        return;
      }

      v82 = v12 >> 1;
      v83 = v12 >> 1;
      do
      {
        v84 = v83;
        if (v82 >= v83)
        {
          v122 = v83;
          v85 = (2 * v83) | 1;
          v86 = &a1[16 * v85];
          v87 = 2 * v83 + 2;
          if (v87 < v11 && (*a3)(*v86, *(v86 + 2)))
          {
            v86 += 16;
            v85 = v87;
          }

          v84 = v122;
          v88 = &a1[16 * v122];
          if (((*a3)(*v86, *v88) & 1) == 0)
          {
            v119 = *v88;
            v89 = *v88;
            do
            {
              v90 = v88;
              v88 = v86;
              *v90 = *v86;
              if (v82 < v85)
              {
                break;
              }

              v91 = (2 * v85) | 1;
              v86 = &a1[16 * v91];
              v92 = 2 * v85 + 2;
              if (v92 < v11 && (*a3)(*v86, *(v86 + 2)))
              {
                v86 += 16;
                v91 = v92;
              }

              v85 = v91;
            }

            while (!(*a3)(*v86, v89));
            *v88 = v119;
            a2 = v123;
            v84 = v122;
          }
        }

        v83 = v84 - 1;
      }

      while (v84);
      while (2)
      {
        v93 = 0;
        v148 = *a1;
        v94 = a1;
        do
        {
          v95 = &v94[16 * v93];
          v96 = v95 + 16;
          v97 = (2 * v93) | 1;
          v98 = 2 * v93 + 2;
          if (v98 >= v11)
          {
            v93 = (2 * v93) | 1;
          }

          else
          {
            v100 = *(v95 + 4);
            v99 = v95 + 32;
            if ((*a3)(*(v99 - 2), v100))
            {
              v96 = v99;
              v93 = v98;
            }

            else
            {
              v93 = v97;
            }
          }

          *v94 = *v96;
          v94 = v96;
        }

        while (v93 <= ((v11 - 2) >> 1));
        a2 -= 16;
        if (v96 != a2)
        {
          *v96 = *a2;
          *a2 = v148;
          v101 = (v96 - a1 + 16) >> 4;
          v102 = v101 < 2;
          v103 = v101 - 2;
          if (!v102)
          {
            v104 = v103 >> 1;
            v105 = &a1[16 * (v103 >> 1)];
            if ((*a3)(*v105, *v96))
            {
              v125 = *v96;
              v106 = *v96;
              do
              {
                v107 = v96;
                v96 = v105;
                *v107 = *v105;
                if (!v104)
                {
                  break;
                }

                v104 = (v104 - 1) >> 1;
                v105 = &a1[16 * v104];
              }

              while (((*a3)(*v105, v106) & 1) != 0);
              v108 = v125;
LABEL_163:
              *v96 = v108;
            }
          }

          v102 = v11-- <= 2;
          if (v102)
          {
            return;
          }

          continue;
        }

        break;
      }

      v108 = v148;
      goto LABEL_163;
    }

    v13 = &a1[16 * (v11 >> 1)];
    v14 = *a3;
    if (v11 >= 0x81)
    {
      v15 = v14(*v13, *a1);
      v16 = (*a3)(*v9, *v13);
      if (v15)
      {
        if (v16)
        {
          v127 = *a1;
          *a1 = *v9;
          goto LABEL_26;
        }

        v133 = *a1;
        *a1 = *v13;
        *v13 = v133;
        if ((*a3)(*v9, *v13))
        {
          v127 = *v13;
          *v13 = *v9;
LABEL_26:
          *v9 = v127;
        }
      }

      else if (v16)
      {
        v129 = *v13;
        *v13 = *v9;
        *v9 = v129;
        if ((*a3)(*v13, *a1))
        {
          v130 = *a1;
          *a1 = *v13;
          *v13 = v130;
        }
      }

      v19 = (a1 + 16);
      v20 = v13 - 2;
      v21 = (*a3)(*(v13 - 2), *(a1 + 2));
      v22 = (*a3)(*v117, *(v13 - 2));
      if (v21)
      {
        if (v22)
        {
          v23 = *v19;
          v24 = v117;
          *v19 = *v117;
          goto LABEL_38;
        }

        v26 = *v19;
        *v19 = *v20;
        *v20 = v26;
        if ((*a3)(*v117, *v20))
        {
          v136 = *v20;
          v24 = v117;
          *v20 = *v117;
          v23 = v136;
LABEL_38:
          *v24 = v23;
        }
      }

      else if (v22)
      {
        v134 = *v20;
        *v20 = *v117;
        *v117 = v134;
        if ((*a3)(*v20, *v19))
        {
          v25 = *v19;
          *v19 = *v20;
          *v20 = v25;
        }
      }

      v27 = (a1 + 32);
      v28 = v13 + 2;
      v29 = (*a3)(v13[2], *(a1 + 4));
      v30 = (*a3)(*v116, v13[2]);
      if (v29)
      {
        if (v30)
        {
          v31 = *v27;
          v32 = v116;
          *v27 = *v116;
          goto LABEL_47;
        }

        v34 = *v27;
        *v27 = *v28;
        *v28 = v34;
        if ((*a3)(*v116, *v28))
        {
          v138 = *v28;
          v32 = v116;
          *v28 = *v116;
          v31 = v138;
LABEL_47:
          *v32 = v31;
        }
      }

      else if (v30)
      {
        v137 = *v28;
        *v28 = *v116;
        *v116 = v137;
        if ((*a3)(*v28, *v27))
        {
          v33 = *v27;
          *v27 = *v28;
          *v28 = v33;
        }
      }

      v35 = (*a3)(*v13, *v20);
      v36 = (*a3)(*v28, *v13);
      if (v35)
      {
        if (v36)
        {
          v139 = *v20;
          *v20 = *v28;
          goto LABEL_56;
        }

        v142 = *v20;
        *v20 = *v13;
        *v13 = v142;
        if ((*a3)(*v28, *v13))
        {
          v139 = *v13;
          *v13 = *v28;
LABEL_56:
          *v28 = v139;
        }
      }

      else if (v36)
      {
        v140 = *v13;
        *v13 = *v28;
        *v28 = v140;
        if ((*a3)(*v13, *v20))
        {
          v141 = *v20;
          *v20 = *v13;
          *v13 = v141;
        }
      }

      v143 = *a1;
      *a1 = *v13;
      *v13 = v143;
      a2 = v123;
      goto LABEL_58;
    }

    v17 = v14(*a1, *v13);
    v18 = (*a3)(*v9, *a1);
    if ((v17 & 1) == 0)
    {
      if (v18)
      {
        v131 = *a1;
        *a1 = *v9;
        *v9 = v131;
        if ((*a3)(*a1, *v13))
        {
          v132 = *v13;
          *v13 = *a1;
          *a1 = v132;
        }
      }

      goto LABEL_58;
    }

    if (v18)
    {
      v128 = *v13;
      *v13 = *v9;
    }

    else
    {
      v135 = *v13;
      *v13 = *a1;
      *a1 = v135;
      if (!(*a3)(*v9, *a1))
      {
        goto LABEL_58;
      }

      v128 = *a1;
      *a1 = *v9;
    }

    *v9 = v128;
LABEL_58:
    --a4;
    if (a5 & 1) != 0 || ((*a3)(*(a1 - 2), *a1))
    {
      v37 = 0;
      v120 = *a1;
      v38 = *a1;
      do
      {
        v39 = (*a3)(*&a1[v37 + 16], v38);
        v37 += 16;
      }

      while ((v39 & 1) != 0);
      v40 = &a1[v37];
      if (v37 == 16)
      {
        a2 = v123;
        do
        {
          if (v40 >= a2)
          {
            break;
          }

          v42 = *(a2 - 2);
          a2 -= 16;
        }

        while (((*a3)(v42, v38) & 1) == 0);
      }

      else
      {
        do
        {
          v41 = *(a2 - 2);
          a2 -= 16;
        }

        while (!(*a3)(v41, v38));
      }

      v10 = &a1[v37];
      if (v40 < a2)
      {
        v43 = a2;
        do
        {
          v144 = *v10;
          *v10 = *v43;
          *v43 = v144;
          do
          {
            v44 = *(v10 + 2);
            v10 += 16;
          }

          while (((*a3)(v44, v38) & 1) != 0);
          do
          {
            v45 = *(v43 - 2);
            v43 -= 16;
          }

          while (!(*a3)(v45, v38));
        }

        while (v10 < v43);
      }

      v46 = v10 - 16;
      if (v10 - 16 != a1)
      {
        *a1 = *v46;
      }

      *v46 = v120;
      v47 = v40 >= a2;
      a2 = v123;
      if (!v47)
      {
        goto LABEL_80;
      }

      v48 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, v10 - 16, a3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(v10, v123, a3))
      {
        a2 = v10 - 16;
        if (v48)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v48)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(a1, v10 - 16, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v121 = *a1;
      v49 = *a1;
      if ((*a3)(*a1, *v9))
      {
        v10 = a1;
        do
        {
          v50 = *(v10 + 2);
          v10 += 16;
        }

        while (((*a3)(v49, v50) & 1) == 0);
      }

      else
      {
        v51 = a1 + 16;
        do
        {
          v10 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (!(*a3)(v49, *v10));
      }

      v52 = a2;
      if (v10 < a2)
      {
        v52 = a2;
        do
        {
          v53 = *(v52 - 2);
          v52 -= 16;
        }

        while (((*a3)(v49, v53) & 1) != 0);
      }

      while (v10 < v52)
      {
        v145 = *v10;
        *v10 = *v52;
        *v52 = v145;
        do
        {
          v54 = *(v10 + 2);
          v10 += 16;
        }

        while (!(*a3)(v49, v54));
        do
        {
          v55 = *(v52 - 2);
          v52 -= 16;
        }

        while (((*a3)(v49, v55) & 1) != 0);
      }

      v56 = v10 - 16;
      if (v10 - 16 != a1)
      {
        *a1 = *v56;
      }

      a5 = 0;
      *v56 = v121;
    }
  }

  v66 = a1 + 16;
  v67 = (*a3)(*(a1 + 2), *a1);
  v68 = *(a2 - 2);
  v63 = (a2 - 16);
  v69 = (*a3)(v68, *(a1 + 2));
  if (v67)
  {
    if (v69)
    {
      goto LABEL_110;
    }

    v150 = *a1;
    *a1 = *v66;
    *v66 = v150;
    if (!(*a3)(*v63, *(a1 + 2)))
    {
      return;
    }

    v70 = *v66;
    *v66 = *v63;
LABEL_111:
    *v63 = v70;
    return;
  }

  if (v69)
  {
    v109 = *v66;
    *v66 = *v63;
    *v63 = v109;
    if ((*a3)(*(a1 + 2), *a1))
    {
      v149 = *a1;
      *a1 = *v66;
      *v66 = v149;
    }
  }
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_14:
  if (a7)
  {
    v29 = 0;
    v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v29, 0);
    v20 = 0;
    if (v21)
    {
      if (v29)
      {
        v22 = a1 + 24;
        v23 = 0;
        v24 = 1;
LABEL_27:
        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v22, v23, v24);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v29 = v26;
    v27 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v29, 0);
    v20 = 0;
    if (v27)
    {
      if (v29)
      {
        if (*(a4 + 8))
        {
          v23 = *(a4 + 16);
        }

        else
        {
          v23 = a4 + 9;
        }

        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_27;
      }

LABEL_28:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      v20 = *(a1 + 64) ^ 1;
    }
  }

  return v20 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CBB088;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v14 = re::TypeMemberCollection::TypeMemberCollection(v29, *a5, a5[2]);
  re::TypeMemberCollection::operator[](v14, 0, &v27);
  v15 = *(v28 + 24);
  re::TypeRegistry::typeInfo(v27, *v28, v29);
  re::TypeInfo::TypeInfo(v26, v30);
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v18 = *a5[2];
    v19 = a6[2];
    v20 = *v19;
    if (v18 != *v19)
    {
      goto LABEL_14;
    }

    v22 = WORD1(v18) == WORD1(v20);
    v21 = (v20 ^ v18) & 0xFFFFFF00000000;
    v22 = v22 && v21 == 0;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v26, a7);
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, v16))
  {
    goto LABEL_4;
  }

  v19 = a6[2];
LABEL_14:
  if (*(v19 + 96) != 1)
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (a1[64])
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

__n128 re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 + 40 * *(a1 + 8);
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 32);
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CBB088;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(uint64_t *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((*(result[1] + 64) & 1) == 0)
  {
    v10 = result;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    re::DynamicString::setCapacity(&v16, 0);
    v15 = &a9;
    re::DynamicString::vappendf(&v16, a2, &a9);
    v11 = v10[1];
    *&v12 = 400;
    *(&v12 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v13, &v16);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v11 + 24, &v12);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    result = v16;
    if (v16)
    {
      if (v17)
      {
        return (*(*v16 + 40))(v16, v18);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 40 * v4 - 32) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 40 * v4 - 40) = a3;
  return 1;
}

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 32);
  v5 = *(v3 - 40);
  if (v4 || *v5 != 64)
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v5, v4, 0);
  }

  v7 = "";
  v8 = 0;
  v9 = 0;
  *&result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(a1 + 32, &v7).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  v2 = *(result + 5) - 1;
  *(result + 5) = v2;
  *(result + 12) = v1 + 2;
  if (v1)
  {
    v3 = result + 56;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = &v3[40 * v2];
  if (*(v4 - 8) || **(v4 - 5) != 64)
  {
    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((*(result + 1) + 24));
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(a1 + 32, v6 + 40 * *(a1 + 40) - 40);
  if (*(a1 + 48))
  {
    v7 = a1 + 56;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  v8 = v7 + 40 * *(a1 + 40) - 40;
  v9 = *(a1 + 8) + 24;

  return re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginDictionary(v8, v9, a2, a3);
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  v2 = v1 + 40 * *(a1 + 40);
  if (*(v2 - 28))
  {
    v3 = -1;
  }

  else
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(a1 + 8) + 24, 0);
    v3 = 0;
    *(v2 - 40) = "key";
  }

  *(v2 - 32) = v3;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 28))
  {
    v3 = 0;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 28] & 1) == 0)
  {
    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((*(result + 1) + 24));
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = *(v2 + 40 * *(a1 + 40) - 28);
  v4 = (*(a1 + 8) + 24);
  if (v3 == 1)
  {
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v4);
  }

  else
  {
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(v4);
  }

  v6 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v6 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
  return v4;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = (v5 - 27);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v10, 0);
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = (v5 - 27);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v10, 0);
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = (v5 - 26);
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    else
    {
      v8 = (v5 - 27);
    }

    if (result - v8 > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, result - v8 >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v10, 0);
  }

  return result;
}

{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    v11 = a2;
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), *(v7 + 40 * v5 - 32), &v11, 0);
  }

  return result;
}

{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__to_chars_itoa[abi:nn200100]<long long>((v5 - 27), (v5 - 3), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

{
  v2 = a2;
  v11 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), *(v7 + 40 * v5 - 32), &v11, 0);
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v11 = a3;
  v5 = *(result + 12);
  if (v5)
  {
    v6 = result + 56;
  }

  else
  {
    v6 = *(result + 8);
  }

  v7 = *(result + 5);
  v8 = &v6[40 * v7];
  if (*(v8 - 28) == 1 && (*(v8 - 8) & 0x80000000) != 0)
  {
    *(v8 - 5) = a2;
  }

  else
  {
    if (v5)
    {
      v9 = result + 56;
    }

    else
    {
      v9 = *(result + 8);
    }

    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(*(result + 1) + 24, *&v9[40 * v7 - 40], *&v9[40 * v7 - 32], &v11, 0))
    {
      v10 = v11 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(*(v4 + 1) + 24, a2, 0);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((*(v4 + 1) + 24));
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginBLOB(*(a1 + 8) + 24, *(v5 + 40 * *(a1 + 40) - 40), *(v5 + 40 * *(a1 + 40) - 32), &v7, 0))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endBLOB((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * (a2 != 0);
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), *(v6 + 40 * *(a1 + 40) - 32), &v8, 0);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }

  return re::EncoderBinary<re::SeekableInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
{
  v17[0] = 0;
  v5 = *(a1 + 16);
  if (this[4] == v5)
  {
    re::TypeRegistry::typeInfo(v5, this + 4, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
  }

  else
  {
    re::getPrettyTypeName(this, &v13);
    re::TypeRegistry::typeInfo(*(a1 + 16), &v13, v15);
    re::Optional<re::TypeInfo>::operator=(v17, v15);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  if (v17[0])
  {
    v6 = *(a1 + 16);
    v7 = re::TypeInfo::name(v18);
    re::TypeRegistry::typeInfo(v6, v7, v15);
    if (v15[0])
    {
      result = *(a1 + 8);
      if (*(a1 + 48))
      {
        v9 = a1 + 56;
      }

      else
      {
        v9 = *(a1 + 64);
      }

      if ((result[64] & 1) == 0)
      {
        return (*(*result + 72))(result, *(v9 + 40 * *(a1 + 40) - 40), *(v9 + 40 * *(a1 + 40) - 32), a2, v18, &v16, 0);
      }
    }

    else
    {
      v11 = re::TypeInfo::name(v18)[1];
      if (*(a1 + 48))
      {
        v12 = a1 + 56;
      }

      else
      {
        v12 = *(a1 + 64);
      }

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = a1 + 56;
    }

    else
    {
      v10 = *(a1 + 64);
    }

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 40 * *(a1 + 40) - 40), *(v10 + 40 * *(a1 + 40) - 32));
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 4;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 4)
    {
      return result;
    }

    v5 = 8;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(result, a2);
}

void *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 40 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x28uLL))
      {
        v2 = 40 * a2;
        v10 = (*(*v5 + 32))(*result, 40 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 40 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 40, a2);
        _os_crash();
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginDictionary(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    *(a1 + 12) = 1;
    v7 = *a1;
    v8 = *(a1 + 8);

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a2, v7, v8, 0);
  }

  else
  {
    v10[1] = v4;
    v10[2] = v5;
    *(a1 + 12) = 0;
    v10[0] = a3;
    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a2, *a1, *(a1 + 8), v10, 0);
  }
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginBLOB(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v17 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v17);
    }

    v9 = *a4;
    if (!*a4)
    {
      v10 = *(a1 + 168);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v10);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v10);
      v9 = *a4;
    }

    LOBYTE(v12) = 4;
    DWORD1(v12) = a5 & 0xFFFFFFDF;
    *(&v12 + 1) = v17;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = v9;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v12);
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBLOB(uint64_t result, uint64_t a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    v6 = *(*(result + 128) + 48 * *(result + 112) - 24);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    re::DynamicString::setCapacity(&v11, 0);
    v11 = *(v5 + 32);
    re::DynamicString::setCapacity(&v11, ((2863311531u * v6) >> 31) & 0x1FFFFFFFCLL);
    re::EncoderHelper::encodeBase64(a2, v6, &v11);
    v7 = *(v5 + 168);
    if (v12)
    {
      v8 = v13;
    }

    else
    {
      v8 = &v12 + 1;
    }

    if (v12)
    {
      v9 = v12 >> 1;
    }

    else
    {
      v9 = v12 >> 1;
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(v5 + 168));
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v7, v8, v9);
    result = v11;
    if (v11 && (v12 & 1) != 0)
    {
      result = (*(*v11 + 40))();
    }

    if ((a3 & 2) == 0)
    {
      v10 = *(v5 + 128) + 48 * *(v5 + 112);
      *(v10 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      *(result + 26) = 0;
      ++*(result + 54);
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 4);
      v2 = *(v1 + 128) + 48 * *(v1 + 112);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v3 = *&v7[7];
      }

      else
      {
        v3 = v7;
      }

      v4 = *(v1 + 128) + 48 * *(v1 + 112);
      re::DynamicString::format("Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v8, v3, *(v4 - 24), *(v4 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }

      result = v5;
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, const char *a2, uint64_t a3, int *a4, int a5)
{
  v17 = a2;
  v5 = *(a1 + 40);
  if (v5)
  {
    return v5 ^ 1u;
  }

  if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
  {
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v17);
  }

  v9 = *a4;
  if ((*a4 - 1) < 2)
  {
LABEL_7:
    LOBYTE(v12) = 9;
    DWORD1(v12) = a5 & 0xFFFFFFDF;
    *(&v12 + 1) = v17;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = v9 != 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v12);
    return v5 ^ 1u;
  }

  if (!v9)
  {
    v10 = *(a1 + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v10);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v10);
    v9 = *a4;
    goto LABEL_7;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 1054);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v16, *a3, a3[2]);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v16, i, &v14);
      if (*(v15 + 28) == 1)
      {
        v10 = *(v15 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v15 + 32);
        v12 = *(v15 + 24);
        re::TypeRegistry::typeInfo(v14, *v15, v21);
        result = re::TypeInfo::TypeInfo(v13, &v22);
        if ((a1[64] & 1) == 0)
        {
          result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v13, v13, a4);
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v49);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v45);
  if (v45[0] == 1)
  {
    if ((v49[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v46)[1];
      re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Base class %s removed from type %s.", v12, v13, v14, v15, v16, v11);
    }

    if (v50 == v46)
    {
      v18 = *v52;
      v19 = *v48;
      if (*v52 == *v48)
      {
        v21 = WORD1(v18) == WORD1(v19);
        v20 = (v19 ^ v18) & 0xFFFFFF00000000;
        v21 = v21 && v20 == 0;
        if (v21)
        {
          goto LABEL_5;
        }
      }
    }

    else if (re::areSameTranslatedVersion(&v50, &v46, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, a5);
      goto LABEL_15;
    }

    if (v51 == v47)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v50, &v46, a5);
    }

    else
    {
      v22 = re::TypeInfo::name(&v50)[1];
      re::TypeInfo::name(&v46);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v23, v24, v25, v26, v27, v22);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v44, *a3, a3[2]);
  result = re::TypeMemberCollection::TypeMemberCollection(v42, *a4, a4[2]);
  if (v43)
  {
    for (i = 0; i < v43; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v42, i, v40);
      if (*(v41 + 28) == 1)
      {
        v29 = *(v41 + 16);
        if (strlen(v29) >= 3 && *v29 == 109)
        {
          v29 += 2 * (*(v29 + 1) == 95);
        }

        v30 = *(v41 + 32);
        v31 = *(*a4 + 856);
        if (!v31 || (v31 = re::internal::TypeTranslationTable::translateMember(v31, v40), v31 == -1))
        {
          v33 = *re::foundationSerializationLogObjects(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v54 = v34;
            v55 = 2080;
            v56 = v29;
            _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v35 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v40[0], *v41, buf);
          re::TypeInfo::TypeInfo(v38, &v54 + 4);
          result = re::internal::translateType(v35, v38, buf);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v44, v31, v38);
          v32 = *(v39 + 24);
          re::TypeRegistry::typeInfo(v38[0], *v39, buf);
          re::TypeInfo::TypeInfo(v37, &v54 + 4);
          re::TypeRegistry::typeInfo(v40[0], *v41, buf);
          result = re::TypeInfo::TypeInfo(v36, &v54 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v29, v30, a2 + v32, v37, v36, a5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::Serializer(uint64_t a1, const StringID *a2, int a3)
{
  *a1 = &unk_1F5CBB248;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::Encoder(a1 + 24, a3);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 324) = 0x7FFFFFFFLL;
  return a1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBB1E0;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBB1E0;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v17, v18, v19, v20, v21, v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(void *a1, char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *(a1 + 272))
  {
    return re::serializeType<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  }
}

uint64_t re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 140) = 0;
  *(result + 152) = 1024;
  v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v8 = result;
    v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    v6 = v4;
    result = v8;
    if (v6)
    {
      re::Defaults::intValue("maxSerializationDepth", v5, v9);
      v7 = v10;
      if (!v9[0])
      {
        v7 = 0;
      }

      re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      result = v8;
    }
  }

  v3 = *(v2 + 225);
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CBB248;
  v2 = (a1 + 8);
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::~Encoder((a1 + 24));
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

_BYTE *re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doClose(result);
    if ((*(v1 + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doClose(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    v3 = a1[3];
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(a1[23]);
    (*(*v3 + 40))(v3, v2);
  }

  a1[23] = 0;
  v4 = a1[22];
  if (v4)
  {
    v5 = a1[3];
    rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::~GenericDocument(a1[22]);
    (*(*v5 + 40))(v5, v4);
    a1[22] = 0;
  }

  return re::DynamicArray<unsigned long>::deinit((a1 + 24));
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::~GenericDocument(void *a1)
{
  if (a1[4])
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Destroy(a1);
  rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy((a1 + 5));
  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>,re::internal::RapidJSONAllocator>::Destroy(uint64_t result)
{
  if (*(result + 32))
  {
    rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::~MemoryPoolAllocator(*(result + 32));
    v1 = *(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40);

    return v1();
  }

  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::~MemoryPoolAllocator(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 < 2)
    {
      rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::Clear(a1);
      v4 = *(a1 + 16);
      v5 = *(v4 + 8);
      if (*(v4 + 24) == 1)
      {
        (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance);
      }

      if (v5)
      {
        (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, v5);
      }
    }

    else
    {
      *(v2 + 16) = v3 - 1;
    }
  }

  return a1;
}

uint64_t rapidjson::MemoryPoolAllocator<re::internal::RapidJSONAllocator>::Clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    do
    {
      *v1 = v3;
      result = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance);
      v1 = *(v4 + 16);
      v2 = *v1;
      v3 = *(*v1 + 16);
    }

    while (v3);
  }

  *(v2 + 8) = 0;
  return result;
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (this == a6)
  {
    goto LABEL_19;
  }

  if (*this == *a6)
  {
    v15 = **(this + 2);
    v16 = **(a6 + 16);
    if (v15 == v16)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_19;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_19;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
    return 0;
  }

  v19 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v19)
  {
    v20 = *(v19 + 16);
  }

  else
  {
    v20 = -1;
  }

  v21 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = -1;
  }

  if (v20 != v22)
  {
    v30 = re::TypeInfo::name(this);
    v31 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v30, v31))
    {
      v34 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::TypeInfo::name(this);
      re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Type name changed: Serialized type %s version %u, runtime type %s version %u.", v37, v38, v39, v40, v41, v34);
      return 0;
    }

    v32 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    if (v32)
    {
      v33 = *(v32 + 16);
    }

    else
    {
      v33 = -1;
    }

    re::TypeInfo::atVersion(this, v33, v59);
    if ((v59[0] & 1) == 0)
    {
      v36 = re::TypeInfo::name(a6)[1];
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Unknown serialized type %s version %u. No matching runtime type found.", v42, v43, v44, v45, v46, v36);
      return 0;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(v60, a1[6], a1[33]);
    }

    if (a1[8] & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, v60, a6, a7), (a1[8]))
    {
      if (Instance)
      {
        re::TypeInfo::releaseInstance(v60, Instance, a1[6], a1[33]);
      }

      return 0;
    }

    if ((a7 & 1) == 0)
    {
      re::TypeInfo::TypeInfo(v54, v60);
      re::internal::upgradeObject(Instance, v54, a4, this, a1[6], a1[33], v55);
      if ((v55[0] & 1) == 0)
      {
        if (v57)
        {
          LOBYTE(v52) = v58[7];
        }

        else
        {
          v52 = v58;
        }

        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "%s", v47, v48, v49, v50, v51, v52);
        if (v55[0] & 1) == 0 && v56 && (v57)
        {
          (*(*v56 + 40))();
        }

        return 0;
      }
    }

    return 1;
  }

LABEL_19:
  v23 = *(this + 12);
  if (v23 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v23 == 3)
      {

        return re::serializeOptional<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_59;
        }

        return re::serializeArray<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v23 == 1)
    {

      return re::serializeBasic<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_59;
      }

      return re::serializeEnum<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v23 == 5)
    {

      return re::serializeList<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_59;
      }

      return re::serializeDictionary<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v23)
    {
      case 7u:

        return re::serializeUnion<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        v53 = re::TypeInfo::name(this)[1];
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.", v24, v25, v26, v27, v28, v53);
        return 0;
      default:
LABEL_59:
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Invalid type category. Value = %d", a4, this, a6, a7, a8, *(this + 12));
        return 0;
    }
  }
}

unsigned int *re::serializeBasic<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
      return 0;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_24;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 > 0x303EE88E58CLL)
    {
      if (*v14 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v15 == 0x2A8CEB1C43F60844)
        {
          goto LABEL_62;
        }

        if (v15 != 0x3AFE951B1F1F3391)
        {
          if (v15 != 0x412A40E9CB79BA35)
          {
            goto LABEL_77;
          }

          goto LABEL_56;
        }

        goto LABEL_59;
      }

      if (v15 == 0x303EE88E58DLL)
      {
        goto LABEL_56;
      }

      if (v15 != 0x2710786C3AC82DA1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:

            return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, a3, a4, a7, "int64");
          }

          goto LABEL_77;
        }

        goto LABEL_65;
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_77;
          }

LABEL_62:

          return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, a3, a4, a7, "uint32");
        }

LABEL_59:

        return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, a3, a4, a7, "uint16");
      }
    }

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, a3, a4, a7, "uint8");
  }

  if (*v14 >> 1 > 0x685847B)
  {
    if (*v14 >> 1 <= 0xB9708BDD)
    {
      if (v15 != 109413500)
      {
        if (v15 == 2969009105)
        {

          return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a3, a4, a7, "double");
        }

LABEL_77:
        v21 = re::TypeInfo::name(this);
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Unsupported basic type %s.", v22, v23, v24, v25, v26, v21[1]);
        return 0;
      }

LABEL_68:

      return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, a3, a4, a7, "int16");
    }

    if (v15 == 3111160798)
    {

      return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, a3, a4, a7, "int8");
    }

    if (v15 != 3393056694)
    {
      if (v15 != 0x16749D2549)
      {
        goto LABEL_77;
      }

      goto LABEL_68;
    }

LABEL_56:

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, a3, a4, a7, "uint64");
  }

  if (*v14 >> 1 <= 0x2E9355)
  {
    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {

        return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, a3, a4, a7);
      }

      goto LABEL_77;
    }

LABEL_65:

    return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, a3, a4, a7, "int32");
  }

  if (v15 != 3052374)
  {
    if (v15 != 3327612)
    {
      if (v15 == 97526364)
      {

        return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a3, a4, a7, "float");
      }

      goto LABEL_77;
    }

    goto LABEL_43;
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeEnum<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t re::serializeOptional<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    v21 = 0;
    return v21 & 1;
  }

LABEL_11:
  if (a7)
  {
    v25[0] = 0;
    re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 24), a2, a3, v25, 0);
    if (v25[0] == 1)
    {
      v18 = *(a1 + 272);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v27);
      re::TypeInfo::TypeInfo(v26, &v28);
      re::internal::translateType(v18, v26, v27);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, 0, v27, v27, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v27);
    re::TypeInfo::TypeInfo(v26, &v28);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v27);
    re::TypeInfo::TypeInfo(v25, &v28);
    re::TypeInfo::TypeInfo(v27, a5);
    v24 = (*(v29 + 88))(a4) != 0;
    v19 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 24), a2, a3, &v24, 0);
    if (v24)
    {
      Instance = re::TypeInfo::createInstance(v26, *(a1 + 48), *(a1 + 264));
      (*(v29 + 96))(a4, Instance);
      re::TypeInfo::releaseInstance(v26, Instance, *(a1 + 48), *(a1 + 264));
    }

    else
    {
      (*(v29 + 96))(a4, 0, v19);
    }

    if (v24)
    {
      v22 = (*(v29 + 88))(a4);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v22, v26, v25, 0);
      }
    }
  }

  re::EncoderBinary<re::SeekableInputStream>::endOptional((a1 + 24));
  v21 = *(a1 + 64) ^ 1;
  return v21 & 1;
}

uint64_t re::serializeArray<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a6 + 12) != 4)
  {
    goto LABEL_48;
  }

  v18 = *(a5 + 2);
  v19 = *(a6 + 2);
  v20 = *(v19 + 23) & 0xFFFFFF;
  if ((*(v18 + 23) & 0xFFFFFF) != 0)
  {
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_48:
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    goto LABEL_49;
  }

  if (v20 || *(v18 + 24) != *(v19 + 24))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
    v21 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v71);
    re::TypeInfo::TypeInfo(v68, v72);
    re::internal::translateType(v21, v68, v69);
    v22 = (*(*a1 + 80))(a1, v69);
    if (v22)
    {
      v23 = v22;
      v24 = *(a6 + 2);
      v25 = *(v24 + 23) & 0xFFFFFF;
      if (v25)
      {
        v26 = 0;
        v27 = 8;
      }

      else
      {
        v26 = *(v24 + 24);
        v27 = 4;
      }

      v71 = v26;
      if (re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, &v71, v27))
      {
        v50 = v71;
        if (v25)
        {
          v51 = v71 == 0;
        }

        else
        {
          v51 = 1;
        }

        v52 = v51;
        if (!v51)
        {
          v67[0] = 0;
          v67[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v67);
          v50 = v71;
        }

        if (v50)
        {
          v53 = 0;
          do
          {
            v23(a1, 0, 0, 0, v69, v69, 1);
            ++v53;
          }

          while (v53 < v71);
        }

        if (v52)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

LABEL_49:
      v54 = 0;
      return v54 & 1;
    }

    v44 = v69;
LABEL_28:
    v61 = re::TypeInfo::name(v44)[1];
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v45, v46, v47, v48, v49, v61);
    goto LABEL_49;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v71);
  re::TypeInfo::TypeInfo(v68, v72);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v71);
  re::TypeInfo::TypeInfo(v66, v72);
  re::TypeInfo::TypeInfo(v64, a5);
  v28 = (*(*a1 + 80))(a1, v68);
  if (!v28)
  {
    v44 = v68;
    goto LABEL_28;
  }

  v29 = v28;
  v30 = re::ArrayAccessor::size(v64, a4);
  v63 = v30;
  v31 = *(*(a5 + 2) + 92) & 0xFFFFFF;
  if (v31)
  {
    v32 = 8;
  }

  else
  {
    v32 = 4;
  }

  if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, &v63, v32))
  {
    goto LABEL_49;
  }

  v38 = v63;
  if (v30 != v63)
  {
    if ((*(v65 + 92) & 0xFFFFFF) == 0)
    {
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid array size. Expected size = %zu, actual size = %zu", v33, v34, v35, v36, v37, v30);
      goto LABEL_49;
    }

    re::TypeRegistry::typeInfo(v64[0], *(v65 + 80), &v71);
    re::TypeInfo::TypeInfo(v69, v72);
    if (!is_mul_ok(*(v70 + 8), v38))
    {
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", v39, v40, v41, v42, v43, *(v70 + 8));
      goto LABEL_49;
    }

    re::ArrayAccessor::reset(v64, a4, a1[6], v38);
    v30 = v63;
  }

  if (v31)
  {
    v56 = v30 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v56;
  if (!v56)
  {
    v58 = *a4;
    v62[0] = 0;
    v62[1] = 0xFFFFFFFFLL;
    (*(*a1 + 16))(a1, v58, v62);
    v30 = v63;
  }

  if (v30)
  {
    v59 = 0;
    do
    {
      v60 = re::ArrayAccessor::elementAt(v64, a4, v59);
      v29(a1, 0, 0, v60, v68, v66, 0);
      ++v59;
    }

    while (v59 < v63);
  }

  if (v57)
  {
    goto LABEL_45;
  }

LABEL_44:
  (*(*a1 + 24))(a1);
LABEL_45:
  re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 3));
  v54 = *(a1 + 64) ^ 1;
  return v54 & 1;
}

uint64_t re::serializeList<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
LABEL_28:
    v22 = 0;
    return v22 & 1;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v60);
    re::TypeInfo::TypeInfo(v57, v61);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
    re::TypeInfo::TypeInfo(v56, v61);
    re::TypeInfo::TypeInfo(v54, a5);
    v24 = (*(*a1 + 80))(a1, v57);
    if (v24)
    {
      v25 = v24;
      v26 = (*(v55 + 88))(a4);
      v53 = v26;
      v27 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v53, 0);
      v22 = 0;
      if (!v27)
      {
        return v22 & 1;
      }

      v28 = v53;
      if (v26 != v53)
      {
        re::TypeRegistry::typeInfo(v54[0], *(v55 + 80), &v60);
        re::TypeInfo::TypeInfo(v58, v61);
        if (!is_mul_ok(*(v59 + 8), v28))
        {
          LODWORD(v51) = *(v59 + 8);
          v34 = "Size overflow during deserialization. Element size = %zu, count = %zu";
LABEL_27:
          re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, v34, v29, v30, v31, v32, v33, v51);
          goto LABEL_28;
        }

        v36 = *(a1 + 48);
        v37 = *(v55 + 96);
        re::TypeInfo::TypeInfo(&v60, v54);
        v37(a4, &v60, v36, v28);
      }

      if (*(v55 + 104))
      {
        if (v53)
        {
          for (i = 0; i < v53; ++i)
          {
            v39 = (*(v55 + 104))(a4, i);
            v25(a1, 0, 0, v39, v57, v56, 0);
          }
        }

        goto LABEL_34;
      }

      v41 = *(v55 + 112);
      if (v41 && *(v55 + 120) && *(v55 + 128))
      {
        v42 = v41(a4, *(a1 + 56));
        v43 = (*(v55 + 120))();
        if (v43)
        {
          v44 = v43;
          do
          {
            v25(a1, 0, 0, v44, v57, v56, 0);
            v44 = (*(v55 + 120))(v42);
          }

          while (v44);
        }

        (*(v55 + 128))(v42, *(a1 + 56));
        goto LABEL_34;
      }

      v45 = re::TypeInfo::TypeInfo(&v60, v54);
      v52 = re::TypeInfo::name(v45)[1];
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.", v46, v47, v48, v49, v50, v52);
      goto LABEL_28;
    }

    v35 = v57;
LABEL_26:
    v51 = re::TypeInfo::name(v35)[1];
    v34 = "Failed to resolve serialize function for type %s";
    goto LABEL_27;
  }

  v18 = *(a1 + 272);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
  re::TypeInfo::TypeInfo(v57, v61);
  re::internal::translateType(v18, v57, v58);
  v19 = (*(*a1 + 80))(a1, v58);
  if (!v19)
  {
    v35 = v58;
    goto LABEL_26;
  }

  v20 = v19;
  v60 = 0;
  v21 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v60, 0);
  v22 = 0;
  if (v21)
  {
    if (v60)
    {
      for (j = 0; j < v60; ++j)
      {
        v20(a1, 0, 0, 0, v58, v58, 1);
      }
    }

LABEL_34:
    re::EncoderBinary<re::SeekableInputStream>::endArray((a1 + 24));
    v22 = *(a1 + 64) ^ 1;
  }

  return v22 & 1;
}

uint64_t re::serializeDictionary<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v75);
  re::TypeInfo::TypeInfo(v73, v76);
  v15 = re::TypeInfo::name(v73);
  v16 = v74;
  if (v74 != 1)
  {
LABEL_10:
    if (v16 == 8)
    {
      v21 = *v15 >> 1;
      if (v21 == 0x22C6ED80D0CLL)
      {
        v24 = v15[1];
        v19 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v24 == "StringID")
        {
          goto LABEL_67;
        }

        v25 = strcmp(v24, "StringID");
        v19 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v25)
        {
          goto LABEL_67;
        }
      }

      else if (v21 == 0x134375A94D9F7110)
      {
        v22 = v15[1];
        v19 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v22 == "DynamicString")
        {
          goto LABEL_67;
        }

        v23 = strcmp(v22, "DynamicString");
        v19 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v23)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_18;
  }

  if (!re::TypeInfo::isInteger(v73))
  {
    v16 = v74;
    goto LABEL_10;
  }

  v17 = *v15 >> 1;
  if (v17 <= 0x303EE8780EDLL)
  {
    if (v17 != 3393056694)
    {
      if (v17 == 0x303EE86A734)
      {
        v18 = v15[1];
        v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v18 == "uint16_t")
        {
          goto LABEL_67;
        }

        v20 = strcmp(v18, "uint16_t");
        v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v20)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_61;
    }

    v51 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v51 == "size_t")
    {
      goto LABEL_67;
    }

    v52 = "size_t";
    goto LABEL_57;
  }

  if (v17 == 0x303EE8780EELL)
  {
    v60 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
    if (v60 == "uint32_t")
    {
      goto LABEL_67;
    }

    v61 = strcmp(v60, "uint32_t");
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
    if (!v61)
    {
      goto LABEL_67;
    }

    goto LABEL_61;
  }

  if (v17 == 0x303EE88E58DLL)
  {
    v51 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v51 == "uint64_t")
    {
      goto LABEL_67;
    }

    v52 = "uint64_t";
LABEL_57:
    v59 = strcmp(v51, v52);
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (!v59)
    {
      goto LABEL_67;
    }
  }

LABEL_61:
  v75 = 0x18E6A9A093;
  v76[0] = "uint8_t";
  v62 = re::StringID::operator==(v15, &v75);
  v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v62)
  {
    goto LABEL_67;
  }

  v75 = 0x16749F63A2;
  v76[0] = "int64_t";
  if (re::StringID::operator==(v15, &v75))
  {
    v37 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, a5, a6, a7);
    return v37 & 1;
  }

  v72[0] = 3327612;
  v72[1] = "long";
  v63 = re::StringID::operator==(v15, v72);
  v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v63 || (v75 = 104431, v76[0] = "int", v64 = re::StringID::operator==(v15, &v75), v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v64) || (v75 = 109413500, v76[0] = "short", v65 = re::StringID::operator==(v15, &v75), v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v65))
  {
LABEL_67:
    v37 = v19(a1, a2, a3, a4, a5, a6, a7);
    return v37 & 1;
  }

LABEL_18:
  if (a5 == a6)
  {
    goto LABEL_28;
  }

  if (*a5 == *a6)
  {
    v26 = **(a5 + 2);
    v27 = **(a6 + 2);
    if (v26 == v27)
    {
      v29 = WORD1(v26) == WORD1(v27);
      v28 = (v27 ^ v26) & 0xFFFFFF00000000;
      v29 = v29 && v28 == 0;
      if (v29)
      {
        goto LABEL_28;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, v14))
  {
    goto LABEL_28;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
LABEL_54:
    v37 = 0;
    return v37 & 1;
  }

LABEL_28:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v75);
    re::TypeInfo::TypeInfo(v73, v76);
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v75);
    re::TypeInfo::TypeInfo(v72, v76);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v75);
    re::TypeInfo::TypeInfo(v71, v76);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v75);
    re::TypeInfo::TypeInfo(v70, v76);
    re::TypeInfo::TypeInfo(v68, a5);
    v39 = (*(*a1 + 80))(a1, v73);
    if (v39)
    {
      v40 = v39;
      v41 = (*(*a1 + 80))(a1, v72);
      if (v41)
      {
        v42 = v41;
        v67 = (*(v69 + 96))(a4);
        v43 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 24), a2, a3, &v67, 0);
        v37 = 0;
        if (!v43)
        {
          return v37 & 1;
        }

        v44 = *(a1 + 48);
        v45 = *(v69 + 104);
        re::TypeInfo::TypeInfo(&v75, v68);
        v45(a4, &v75, v44);
        if (v67)
        {
          Instance = re::TypeInfo::createInstance(v73, *(a1 + 48), *(a1 + 264));
          if (v67)
          {
            v47 = 0;
            while (1)
            {
              re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
              v40(a1, "key", 0, Instance, v73, v71, 0);
              v48 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v49 = (*(v69 + 112))(a4, v68, v48, Instance);
              v42(a1, "value", 0, v49, v72, v70, 0);
              re::EncoderBinary<re::SeekableInputStream>::endDictionaryEntry((a1 + 24));
              if (++v47 >= v67)
              {
                goto LABEL_44;
              }
            }

            re::TypeInfo::releaseInstance(v73, Instance, v48, *(a1 + 264));
            goto LABEL_54;
          }

LABEL_44:
          re::TypeInfo::releaseInstance(v73, Instance, *(a1 + 48), *(a1 + 264));
        }

LABEL_45:
        re::EncoderBinary<re::SeekableInputStream>::endDictionary((a1 + 24));
        v37 = *(a1 + 64) ^ 1;
        return v37 & 1;
      }

      goto LABEL_52;
    }

LABEL_46:
    v50 = v73;
LABEL_53:
    v53 = re::TypeInfo::name(v50);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v54, v55, v56, v57, v58, v53[1]);
    goto LABEL_54;
  }

  v30 = *(a1 + 272);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v75);
  re::TypeInfo::TypeInfo(v72, v76);
  re::internal::translateType(v30, v72, v73);
  v31 = *(a1 + 272);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v75);
  re::TypeInfo::TypeInfo(v71, v76);
  re::internal::translateType(v31, v71, v72);
  v32 = (*(*a1 + 80))(a1, v73);
  if (!v32)
  {
    goto LABEL_46;
  }

  v33 = v32;
  v34 = (*(*a1 + 80))(a1, v72);
  if (!v34)
  {
LABEL_52:
    v50 = v72;
    goto LABEL_53;
  }

  v35 = v34;
  v75 = 0;
  v36 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 24), a2, a3, &v75, 0);
  v37 = 0;
  if (v36)
  {
    if (v75)
    {
      for (i = 0; i < v75; ++i)
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 1);
        v33(a1, "key", 0, 0, v73, v73, 1);
        v35(a1, "value", 0, 0, v72, v72, 1);
        re::EncoderBinary<re::SeekableInputStream>::endDictionaryEntry((a1 + 24));
      }
    }

    goto LABEL_45;
  }

  return v37 & 1;
}

uint64_t re::serializeUnion<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_20:
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      goto LABEL_21;
    }

    v17 = **(a5 + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_20;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  v14 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 16);
  if (a7)
  {
    if (v14)
    {
      v22[0] = 0;
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, "tag", 0, v22, 0, "uint64");
      if (v22[0] < *(*(a6 + 2) + 96))
      {
        re::TypeInfo::unionMember(a6, v22[0], v24);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, 0, v24, v24, 1);
        }
      }

      goto LABEL_13;
    }

LABEL_21:
    v16 = 0;
    return v16 & 1;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  re::TypeInfo::TypeInfo(v24, a5);
  Tag = re::UnionAccessor::readTag(v24, a4);
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, "tag", 0, &Tag, 0, "uint64");
  re::UnionAccessor::reset(v24, a4, Tag, *(a1 + 48));
  if (Tag < *(*(a5 + 2) + 96))
  {
    re::TypeInfo::unionMember(a5, Tag, v22);
    if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, a4, v22, v22, 0);
    }
  }

LABEL_13:
  if (*(a1 + 64))
  {
    goto LABEL_21;
  }

  re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
  v15 = *(a1 + 152) + 48 * *(a1 + 136);
  ++*(v15 - 16);
  v16 = *(a1 + 64) ^ 1;
  return v16 & 1;
}

uint64_t re::serializeObject<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, uint64_t a3, void *a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v30 = *(a1 + 272);
      v69[0] = 0x2686EB529B3EE220;
      v69[1] = "DynamicString";
      re::TypeRegistry::typeInfo(v30, v69, &v73);
      v31 = re::TypeInfo::TypeInfo(&v70, v74);
      if (v69[0])
      {
        if (v69[0])
        {
        }
      }

      v32 = &v70;
      v33 = &v70;
      v34 = a1;
      v35 = a2;
      v36 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v34 = a1;
      v35 = a2;
      v36 = a3;
      v32 = this;
      v33 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v34, v35, v36, 0, v32, v33, 1);
LABEL_34:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 168);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v73 = &unk_1F5CBB2B0;
      v74[0] = a1;
      v74[1] = v19;
      v75 = v20;
      v76 = 0;
      v77 = 0;
      v78 = 1;
      v79 = 0;
      v80 = 0;
      v70 = a2;
      LODWORD(v71[0]) = a3;
      v71[1] = 0;
      v71[2] = 0;
      v72 = 0;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(&v76, &v70);
      v18(&v73, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v73 = &unk_1F5CBB2B0;
      if (v76)
      {
        if ((v78 & 1) == 0)
        {
          (*(*v76 + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0))
    {
      goto LABEL_46;
    }

    v23 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v23 && *(v23 + 22) == 3 && *v23 && (v24 = *(v23 + 8), (*(v24 + 46) & 0x40) != 0) && ((*(v24 + 22) & 0x1000) != 0 ? (v25 = *(v23 + 8)) : (v25 = *(v24 + 8)), !strcmp(v25, "@version")))
    {
      v26 = *(v24 + 24);
    }

    else
    {
      v26 = 1;
    }

    v27 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v27)
    {
      v29 = *(v27 + 16);
    }

    else
    {
      v29 = -1;
    }

    if (v26 != v29)
    {
      if (*this == *a6 && (v38 = **(this + 2), v39 = **(a6 + 2), v38 == v39) && WORD1(v38) == WORD1(v39) && ((v39 ^ v38) & 0xFFFFFF00000000) == 0)
      {
        re::TypeInfo::atVersion(this, v26, &v70);
        if (v70)
        {
          if (a7)
          {
            Instance = 0;
          }

          else
          {
            Instance = re::TypeInfo::createInstance(v71, *(a1 + 48), *(a1 + 264));
          }

          re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, Instance, v71, a7);
          re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
          v61 = *(a1 + 64);
          if (v61 == 1)
          {
            if (Instance)
            {
              re::TypeInfo::releaseInstance(v71, Instance, *(a1 + 48), *(a1 + 264));
            }
          }

          else if ((a7 & 1) == 0)
          {
            re::TypeInfo::TypeInfo(v69, v71);
            re::internal::upgradeObject(Instance, v69, a4, this, *(a1 + 48), *(a1 + 264), &v73);
            if ((v73 & 1) == 0)
            {
              if (v76)
              {
                LOBYTE(v67) = v77;
              }

              else
              {
                v67 = &v76 + 1;
              }

              re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "%s", v62, v63, v64, v65, v66, v67);
              if (v73 & 1) == 0 && v75 && (v76)
              {
                (*(*v75 + 40))();
              }
            }
          }

          v22 = v61 ^ 1;
          return v22 & 1;
        }

        v68 = re::TypeInfo::name(this)[1];
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Unknown serialized type %s version %u. No matching runtime type found.", v56, v57, v58, v59, v60, v68);
      }

      else
      {
        v40 = re::TypeInfo::name(a6)[1];
        re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type %s version %u expected in JSON. Actual version found in JSON: %u", v41, v42, v43, v44, v45, v40);
      }

      goto LABEL_46;
    }

    if (this == a6)
    {
      goto LABEL_40;
    }

    if (*this == *a6)
    {
      v46 = **(this + 2);
      v47 = **(a6 + 2);
      if (v46 == v47 && WORD1(v46) == WORD1(v47) && ((v47 ^ v46) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v28))
    {
LABEL_40:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
      goto LABEL_54;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
    }

    else
    {
      v48 = re::TypeInfo::name(this)[1];
      re::TypeInfo::name(a6);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v49, v50, v51, v52, v53, v48);
    }

LABEL_54:
    if ((*(a1 + 64) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState((a1 + 24), 2);
      v54 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v54 - 16);
      goto LABEL_34;
    }

LABEL_46:
    v22 = 0;
    return v22 & 1;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, char *a2, uint64_t a3, BOOL *a4, char a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    v10 = *(result + 22);
    if ((v10 & 8) != 0)
    {
      v13 = v10 == 10;
    }

    else
    {
      if ((v10 & 0x400) == 0 || *(a1 + 233) != 1 || ((v10 & 0x1000) != 0 ? (v11 = result) : (v11 = *(result + 8)), (v12 = strcasecmp(v11, "true"), v13 = v12 == 0, v12) && (v12 = strcasecmp(v11, "false"), v12)))
      {
        re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, "BOOL");
        return 0;
      }

      v15 = *re::foundationSerializationLogObjects(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = v11;
        _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as BOOLean in Bool/String Compatibility Mode", &v16, 0xCu);
      }
    }

    if (a5)
    {
      if ((a5 & 2) != 0)
      {
        return 1;
      }
    }

    else
    {
      *a4 = v13;
      if ((a5 & 2) != 0)
      {
        return 1;
      }
    }

    v14 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v14 - 16);
    return 1;
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (result)
  {
    if ((*(result + 11) & 0x400) != 0 || ((*(result + 11) & 0x1000) != 0 ? (v10 = 21 - *(result + 21)) : (v10 = *result), v10 != 1))
    {
      if ((a5 & 1) == 0)
      {
        if ((*(result + 11) & 0x1000) != 0)
        {
          v11 = result;
        }

        else
        {
          v11 = *(result + 1);
        }

        *a4 = *v11;
      }

      if ((a5 & 2) == 0)
      {
        v12 = *(a1 + 128) + 48 * *(a1 + 112);
        ++*(v12 - 16);
      }

      return 1;
    }

    else
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, "char");
      return 0;
    }
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(_anonymous_namespace_ *a1, char *__s, _DWORD *a3)
{
  v4 = *(a1 + 16) + 48 * *(a1 + 14);
  v5 = *(v4 - 48);
  if (!*(v4 - 48))
  {
    return *(a1 + 22);
  }

  Member = *(v4 - 8);
  if (!Member)
  {
    return 0;
  }

  switch(v5)
  {
    case 7:
LABEL_6:
      Member = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::findMember(a1, *(v4 - 8), __s);
      break;
    case 5:
      v10 = *(v4 - 16);
      if (*Member > v10)
      {
        Member = *(Member + 8) + 24 * v10;
        break;
      }

      return 0;
    case 2:
      goto LABEL_6;
  }

  return re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::evaluateConditional(a1, __s, Member, a3);
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v7);
  if (v8)
  {
    v5 = *&v9[7];
  }

  else
  {
    v5 = v9;
  }

  re::DynamicString::format("Failed to deserialize %s. Expected type: %s", v10, v5, a3);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v10);
  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::findMember(int a1, unsigned int *a2, char *__s)
{
  v5 = strlen(__s);
  v6 = *a2;
  if (v6)
  {
    v7 = v5;
    v8 = *(a2 + 1);
    v9 = v5 - 1;
    v10 = v8 + 24;
    do
    {
      if ((*(v10 - 2) & 0x1000) != 0)
      {
        v11 = (v10 - 24);
      }

      else
      {
        v11 = *(v10 - 16);
      }

      if ((*(v10 - 2) & 0x1000) != 0)
      {
        v12 = 21 - *(v10 - 3);
      }

      else
      {
        v12 = *(v10 - 24);
      }

      if (v7 == v12 && !strncmp(__s + 1, v11 + 1, v9))
      {
        if (!v7)
        {
          re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
          result = _os_crash();
          __break(1u);
          return result;
        }

        v14 = __toupper(*__s);
        if (v14 == __toupper(*v11))
        {
          return v10;
        }

        v8 = *(a2 + 1);
        v6 = *a2;
      }

      v15 = v10 + 24;
      v10 += 48;
    }

    while (v15 != v8 + 48 * v6);
  }

  return 0;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::evaluateConditional(_anonymous_namespace_ *a1, const char *a2, unsigned int *a3, _DWORD *a4)
{
  v4 = a3;
  if (a3)
  {
    if (*(a3 + 11) == 4)
    {
      v5 = *a3;
      if (v5 >= 2)
      {
        v6 = *(a3 + 1);
        if ((*(v6 + 22) & 0x400) != 0)
        {
          v10 = (*(v6 + 22) & 0x1000) != 0 ? *(a3 + 1) : *(v6 + 8);
          if (!strcmp(v10, "@cond"))
          {
            v12 = v5 - 1;
            v13 = (v5 - 1) - 1;
            v14 = (v6 + 46);
            while (1)
            {
              if (*v14 != 4)
              {
                goto LABEL_17;
              }

              if (*(v14 - 11) < 2u)
              {
                goto LABEL_17;
              }

              v15 = *(v14 - 7);
              if ((*(v15 + 11) & 0x20) == 0)
              {
                goto LABEL_17;
              }

              v16 = *v15;
              if (!v13 || *(a1 + 34) <= v16)
              {
                break;
              }

              --v13;
              v14 += 12;
              if (!--v12)
              {
                re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "evaluateConditional", 1447);
                _os_crash();
                __break(1u);
LABEL_17:
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v19);
                if (v20)
                {
                  v17 = *&v21[7];
                }

                else
                {
                  v17 = v21;
                }

                re::DynamicString::format("Failed to read version conditional %s. Invalid condition.", v22, v17);
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v22);
                if (*&v22[0])
                {
                  if (BYTE8(v22[0]))
                  {
                    (*(**&v22[0] + 40))();
                  }

                  memset(v22, 0, sizeof(v22));
                }

                if (v19 && (v20 & 1) != 0)
                {
                  (*(*v19 + 40))();
                }

                return 0;
              }
            }

            if (a4)
            {
              *a4 = v16;
              v15 = *(v14 - 7);
            }

            return (v15 + 6);
          }
        }
      }
    }
  }

  return v4;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, char a5, uint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x20) != 0)
  {
    v14 = *result;
    if (v14 != v14)
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorValueOutOfTypeRange(a1, a2, a6);
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_41;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v13 = 21 - *(result + 21);
  }

  else
  {
    v13 = *result;
  }

  v16 = &v12[v13];
  if (v13)
  {
    v17 = *v12 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if (v13 == v17)
  {
    v19 = &v12[v17];
  }

  else
  {
    v21 = v13 - v17;
    v19 = &v12[v17];
    while (*v19 == 48)
    {
      ++v19;
      if (!--v21)
      {
        goto LABEL_36;
      }
    }
  }

  if (v19 == v16)
  {
LABEL_36:
    v19 = &v12[v13];
LABEL_37:
    if (v19 == &v12[v17])
    {
LABEL_41:
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
      return 0;
    }

    v20 = 0;
    LOBYTE(v14) = 0;
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (*v19 - 48 >= 0xA)
  {
    goto LABEL_37;
  }

  v19 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v19, v16, buf, &v23);
  if (v19 != v16 && *v19 - 48 <= 9 || *buf > 0xFFu || 255 - *buf < v23)
  {
    goto LABEL_41;
  }

  v20 = v23 + *buf;
  if (!v18)
  {
    if ((v20 & 0x80) != 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v14) = v23 + buf[0];
    goto LABEL_40;
  }

  if ((v23 + buf[0]) > 0x80u)
  {
    goto LABEL_41;
  }

LABEL_39:
  v14 = -v20;
LABEL_40:
  if (v16 != v19)
  {
    goto LABEL_41;
  }

  v22 = *re::foundationSerializationLogObjects(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = v12;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a5 & 1) == 0)
  {
    *a4 = v14;
  }

  if ((a5 & 2) == 0)
  {
    v15 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v15 - 16);
  }

  return 1;
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorValueOutOfTypeRange(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v7);
  if (v8)
  {
    v5 = *&v9[7];
  }

  else
  {
    v5 = v9;
  }

  re::DynamicString::format("Failed to deserialize %s. Value out of %s type range.", v10, v5, a3);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v10);
  if (*&v10[0])
  {
    if (BYTE8(v10[0]))
    {
      (*(**&v10[0] + 40))();
    }

    memset(v10, 0, sizeof(v10));
  }

  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

char *std::__itoa::__traits<unsigned char>::__read[abi:nn200100](char *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = 2;
  do
  {
    v5 = *a1;
    if ((*a1 - 58) < 0xF6u)
    {
      break;
    }

    ++a1;
    *&v17[4 * v4] = (v5 - 48);
    if (v4-- == 0)
    {
      break;
    }
  }

  while (a1 != a2);
  v7 = v4 + 1;
  v8 = (v4 + 1) << 32;
  v9 = *&v17[4 * v7];
  if (v7 <= 0)
  {
    v10 = &v17[(v8 >> 30) + 4];
    v11 = &dword_1E305A4DC;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      v9 += v14 * v12;
    }

    while (v10 < &v18);
  }

  *a3 = v9;
  v15 = v18 * *(&std::__itoa::__pow10_32 + ((0x200000000 - v8) >> 30));
  *a4 = v15;
  return &a1[-((v15 & 0xFFFFFFFF00000000) != 0)];
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(uint64_t a1, char *a2, uint64_t a3, _WORD *a4, char a5, uint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x20) != 0)
  {
    v14 = *result;
    if (v14 != v14)
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorValueOutOfTypeRange(a1, a2, a6);
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_41;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v13 = 21 - *(result + 21);
  }

  else
  {
    v13 = *result;
  }

  v16 = &v12[v13];
  if (v13)
  {
    v17 = *v12 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if (v13 == v17)
  {
    v19 = &v12[v17];
  }

  else
  {
    v21 = v13 - v17;
    v19 = &v12[v17];
    while (*v19 == 48)
    {
      ++v19;
      if (!--v21)
      {
        goto LABEL_36;
      }
    }
  }

  if (v19 == v16)
  {
LABEL_36:
    v19 = &v12[v13];
LABEL_37:
    if (v19 == &v12[v17])
    {
LABEL_41:
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
      return 0;
    }

    v20 = 0;
    LOWORD(v14) = 0;
    if (!v17)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (*v19 - 48 >= 0xA)
  {
    goto LABEL_37;
  }

  v19 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v19, v16, buf, &v23);
  if (v19 != v16 && *v19 - 48 <= 9 || *&buf[2] || 0xFFFF - *buf < v23)
  {
    goto LABEL_41;
  }

  v20 = v23 + *buf;
  if (!v18)
  {
    if ((v20 & 0x8000) != 0)
    {
      goto LABEL_41;
    }

    LOWORD(v14) = v23 + *buf;
    goto LABEL_40;
  }

  if ((v23 + *buf) > 0x8000u)
  {
    goto LABEL_41;
  }

LABEL_39:
  v14 = -v20;
LABEL_40:
  if (v16 != v19)
  {
    goto LABEL_41;
  }

  v22 = *re::foundationSerializationLogObjects(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = v12;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a5 & 1) == 0)
  {
    *a4 = v14;
  }

  if ((a5 & 2) == 0)
  {
    v15 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v15 - 16);
  }

  return 1;
}

char *std::__itoa::__traits<unsigned short>::__read[abi:nn200100](char *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = 4;
  do
  {
    v5 = *a1;
    if ((*a1 - 58) < 0xF6u)
    {
      break;
    }

    ++a1;
    v17[v4] = (v5 - 48);
    if (v4-- == 0)
    {
      break;
    }
  }

  while (a1 != a2);
  v7 = v4 + 1;
  v8 = (v4 + 1) << 32;
  v9 = v17[v7];
  if (v7 <= 2)
  {
    v10 = (&v17[1] + (v8 >> 30));
    v11 = &dword_1E305A4DC;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      v9 += v14 * v12;
    }

    while (v10 < &v18);
  }

  *a3 = v9;
  v15 = v18 * *(&std::__itoa::__pow10_32 + ((0x400000000 - v8) >> 30));
  *a4 = v15;
  return &a1[-((v15 & 0xFFFFFFFF00000000) != 0)];
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(uint64_t a1, char *a2, uint64_t a3, unsigned int *a4, char a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x20) != 0)
  {
    v14 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_40;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v13 = 21 - *(result + 21);
  }

  else
  {
    v13 = *result;
  }

  v16 = &v12[v13];
  if (v13)
  {
    v17 = *v12 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if (v13 == v17)
  {
    v19 = &v12[v17];
  }

  else
  {
    v20 = v13 - v17;
    v19 = &v12[v17];
    while (*v19 == 48)
    {
      ++v19;
      if (!--v20)
      {
        goto LABEL_35;
      }
    }
  }

  if (v19 == v16)
  {
LABEL_35:
    v19 = &v12[v13];
  }

  else if (*v19 - 48 < 0xA)
  {
    v19 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v19, v16, buf, &v22);
    if (v19 != v16 && *v19 - 48 <= 9 || __CFADD__(*buf, v22))
    {
      goto LABEL_40;
    }

    v14 = *buf + v22;
    if (!v18)
    {
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v14 > 0x80000000)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (v19 != &v12[v17])
  {
    v14 = 0;
    if (!v17)
    {
LABEL_39:
      if (v16 != v19)
      {
        goto LABEL_40;
      }

      v21 = *re::foundationSerializationLogObjects(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v24 = v12;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
      }

LABEL_12:
      if (a5)
      {
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      else
      {
        *a4 = v14;
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      v15 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v15 - 16);
      return 1;
    }

LABEL_38:
    v14 = -v14;
    goto LABEL_39;
  }

LABEL_40:
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
  return 0;
}

char *std::__itoa::__traits<unsigned int>::__read[abi:nn200100](char *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = 9;
  do
  {
    v5 = *a1;
    if ((*a1 - 58) < 0xF6u)
    {
      break;
    }

    ++a1;
    *&v17[4 * v4] = (v5 - 48);
    if (v4-- == 0)
    {
      break;
    }
  }

  while (a1 != a2);
  v7 = v4 + 1;
  v8 = (v4 + 1) << 32;
  v9 = *&v17[4 * v7];
  if (v7 <= 7)
  {
    v10 = &v17[(v8 >> 30) + 4];
    v11 = &dword_1E305A4DC;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      v9 += v14 * v12;
    }

    while (v10 < &v18);
  }

  *a3 = v9;
  v15 = v18 * *(&std::__itoa::__pow10_32 + ((0x900000000 - v8) >> 30));
  *a4 = v15;
  return &a1[-((v15 & 0xFFFFFFFF00000000) != 0)];
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(uint64_t a1, char *a2, uint64_t a3, unint64_t *a4, char a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x80) != 0)
  {
    v14 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_40;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v13 = 21 - *(result + 21);
  }

  else
  {
    v13 = *result;
  }

  v16 = &v12[v13];
  if (v13)
  {
    v17 = *v12 == 45;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if (v13 == v17)
  {
    v19 = &v12[v17];
  }

  else
  {
    v20 = v13 - v17;
    v19 = &v12[v17];
    while (*v19 == 48)
    {
      ++v19;
      if (!--v20)
      {
        goto LABEL_35;
      }
    }
  }

  if (v19 == v16)
  {
LABEL_35:
    v19 = &v12[v13];
  }

  else if (*v19 - 48 < 0xA)
  {
    v19 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v19, v16, buf, &v22);
    if (v19 != v16 && *v19 - 48 <= 9 || __CFADD__(*buf, v22))
    {
      goto LABEL_40;
    }

    v14 = *buf + v22;
    if (!v18)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v14 > 0x8000000000000000)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (v19 != &v12[v17])
  {
    v14 = 0;
    if (!v17)
    {
LABEL_39:
      if (v16 != v19)
      {
        goto LABEL_40;
      }

      v21 = *re::foundationSerializationLogObjects(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v12;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
      }

LABEL_12:
      if (a5)
      {
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      else
      {
        *a4 = v14;
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      v15 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v15 - 16);
      return 1;
    }

LABEL_38:
    v14 = -v14;
    goto LABEL_39;
  }

LABEL_40:
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
  return 0;
}

char *std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](char *a1, char *a2, void *a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = 19;
  do
  {
    v5 = *a1;
    if ((*a1 - 58) < 0xF6u)
    {
      break;
    }

    ++a1;
    v18[v4] = (v5 - 48);
    if (v4-- == 0)
    {
      break;
    }
  }

  while (a1 != a2);
  v7 = v4 + 1;
  v8 = (v4 + 1) << 32;
  v9 = v18[v7];
  if (v7 <= 17)
  {
    v10 = (&v18[1] + (v8 >> 29));
    v11 = &qword_1E305A378;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      v9 += v14 * v12;
    }

    while (v10 < v19);
  }

  *a3 = v9;
  v15 = *(&std::__itoa::__pow10_64 + ((0x1300000000 - v8) >> 29));
  v16 = !is_mul_ok(v19[0], v15);
  *a4 = v19[0] * v15;
  return &a1[-v16];
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, char a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x40) != 0)
  {
    v14 = *result;
    if (*result > 0xFF)
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorValueOutOfTypeRange(a1, a2, a6);
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_35;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    LODWORD(v13) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v13) = *result;
  }

  v16 = &v12[v13];
  v17 = v12;
  if (v13)
  {
    v13 = v13;
    v17 = v12;
    while (*v17 == 48)
    {
      ++v17;
      if (!--v13)
      {
        goto LABEL_31;
      }
    }
  }

  if (v17 == v16)
  {
LABEL_31:
    v17 = v16;
    goto LABEL_32;
  }

  if (*v17 - 48 >= 0xA)
  {
LABEL_32:
    if (v17 == v12)
    {
LABEL_35:
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
      return 0;
    }

    LOBYTE(v14) = 0;
    goto LABEL_34;
  }

  v17 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v17, v16, buf, &v19);
  if (v17 != v16 && *v17 - 48 <= 9 || *buf > 0xFFu || 255 - *buf < v19)
  {
    goto LABEL_35;
  }

  LOBYTE(v14) = v19 + buf[0];
LABEL_34:
  if (v16 != v17)
  {
    goto LABEL_35;
  }

  v18 = *re::foundationSerializationLogObjects(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = v12;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a5 & 1) == 0)
  {
    *a4 = v14;
  }

  if ((a5 & 2) == 0)
  {
    v15 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v15 - 16);
  }

  return 1;
}

unsigned int *re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(uint64_t a1, char *a2, uint64_t a3, _WORD *a4, char a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 11) & 0x40) != 0)
  {
    v14 = *result;
    if (HIWORD(*result))
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorValueOutOfTypeRange(a1, a2, a6);
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 11) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_35;
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 1);
  }

  if ((*(result + 11) & 0x1000) != 0)
  {
    LODWORD(v13) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v13) = *result;
  }

  v16 = &v12[v13];
  v17 = v12;
  if (v13)
  {
    v13 = v13;
    v17 = v12;
    while (*v17 == 48)
    {
      ++v17;
      if (!--v13)
      {
        goto LABEL_31;
      }
    }
  }

  if (v17 == v16)
  {
LABEL_31:
    v17 = v16;
    goto LABEL_32;
  }

  if (*v17 - 48 >= 0xA)
  {
LABEL_32:
    if (v17 == v12)
    {
LABEL_35:
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
      return 0;
    }

    LOWORD(v14) = 0;
    goto LABEL_34;
  }

  v17 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v17, v16, buf, &v19);
  if (v17 != v16 && *v17 - 48 <= 9 || *&buf[2] || 0xFFFF - *buf < v19)
  {
    goto LABEL_35;
  }

  LOWORD(v14) = v19 + *buf;
LABEL_34:
  if (v16 != v17)
  {
    goto LABEL_35;
  }

  v18 = *re::foundationSerializationLogObjects(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = v12;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a5 & 1) == 0)
  {
    *a4 = v14;
  }

  if ((a5 & 2) == 0)
  {
    v15 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v15 - 16);
  }

  return 1;
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(uint64_t a1, char *a2, uint64_t a3, _DWORD *a4, char a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x40) != 0)
  {
    v14 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_34;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    LODWORD(v13) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v13) = *result;
  }

  v16 = &v12[v13];
  v17 = v12;
  if (v13)
  {
    v13 = v13;
    v17 = v12;
    while (*v17 == 48)
    {
      ++v17;
      if (!--v13)
      {
        goto LABEL_30;
      }
    }
  }

  if (v17 == v16)
  {
LABEL_30:
    v17 = v16;
  }

  else if (*v17 - 48 < 0xA)
  {
    v17 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v17, v16, buf, &v19);
    if (v17 != v16 && *v17 - 48 <= 9 || __CFADD__(*buf, v19))
    {
      goto LABEL_34;
    }

    v14 = *buf + v19;
    goto LABEL_33;
  }

  if (v17 != v12)
  {
    v14 = 0;
LABEL_33:
    if (v16 != v17)
    {
      goto LABEL_34;
    }

    v18 = *re::foundationSerializationLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = v12;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
    }

LABEL_12:
    if (a5)
    {
      if ((a5 & 2) != 0)
      {
        return 1;
      }
    }

    else
    {
      *a4 = v14;
      if ((a5 & 2) != 0)
      {
        return 1;
      }
    }

    v15 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v15 - 16);
    return 1;
  }

LABEL_34:
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
  return 0;
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(uint64_t a1, char *a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x100) != 0)
  {
    v14 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_34;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v12 = result;
  }

  else
  {
    v12 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    LODWORD(v13) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v13) = *result;
  }

  v16 = &v12[v13];
  v17 = v12;
  if (v13)
  {
    v13 = v13;
    v17 = v12;
    while (*v17 == 48)
    {
      ++v17;
      if (!--v13)
      {
        goto LABEL_30;
      }
    }
  }

  if (v17 == v16)
  {
LABEL_30:
    v17 = v16;
  }

  else if (*v17 - 48 < 0xA)
  {
    v17 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v17, v16, buf, &v19);
    if (v17 != v16 && *v17 - 48 <= 9 || __CFADD__(*buf, v19))
    {
      goto LABEL_34;
    }

    v14 = *buf + v19;
    goto LABEL_33;
  }

  if (v17 != v12)
  {
    v14 = 0;
LABEL_33:
    if (v16 != v17)
    {
      goto LABEL_34;
    }

    v18 = *re::foundationSerializationLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
    }

LABEL_12:
    if (a5)
    {
      if ((a5 & 2) != 0)
      {
        return 1;
      }
    }

    else
    {
      *a4 = v14;
      if ((a5 & 2) != 0)
      {
        return 1;
      }
    }

    v15 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v15 - 16);
    return 1;
  }

LABEL_34:
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
  return 0;
}

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, char *a2, uint64_t a3, float *a4, char a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  v13 = *(result + 22);
  if ((v13 & 0x400) == 0)
  {
    if ((v13 & 0x10) != 0)
    {
      Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v12);
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v15 = result;
  }

  else
  {
    v15 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v16 = 21 - *(result + 21);
  }

  else
  {
    v16 = *result;
  }

  if (v16 == 9)
  {
    if (!strcasecmp(v15, "-Infinity"))
    {
      *&v17 = -INFINITY;
      goto LABEL_34;
    }
  }

  else if (v16 == 8)
  {
    if (!strcasecmp(v15, "Infinity"))
    {
      *&v17 = INFINITY;
      goto LABEL_34;
    }
  }

  else if (v16 == 3 && !strcasecmp(v15, "NaN"))
  {
    *&v17 = NAN;
LABEL_34:
    Double = *&v17;
    goto LABEL_35;
  }

  if (*(a1 + 232) == 1)
  {
    *v23 = 0;
    v19 = strtof(v15, v23);
    v20 = *v23 != &v15[v16] || v19 == INFINITY;
    Double = v20 ? INFINITY : v19;
    if (Double != INFINITY)
    {
      v21 = *re::foundationSerializationLogObjects(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 136315138;
        *&v23[4] = v15;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v23, 0xCu);
      }

LABEL_35:
      if (a5)
      {
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      else
      {
        *a4 = Double;
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      v22 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v22 - 16);
      return 1;
    }
  }

LABEL_30:
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
  return 0;
}

double rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(_WORD *a1, double a2)
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

uint64_t re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, char *a2, uint64_t a3, double *a4, char a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  result = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  v13 = *(result + 22);
  if ((v13 & 0x400) == 0)
  {
    if ((v13 & 0x10) != 0)
    {
      Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v12);
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v15 = result;
  }

  else
  {
    v15 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v16 = 21 - *(result + 21);
  }

  else
  {
    v16 = *result;
  }

  if (v16 == 9)
  {
    if (!strcasecmp(v15, "-Infinity"))
    {
      *&v17 = -INFINITY;
      goto LABEL_34;
    }
  }

  else if (v16 == 8)
  {
    if (!strcasecmp(v15, "Infinity"))
    {
      *&v17 = INFINITY;
      goto LABEL_34;
    }
  }

  else if (v16 == 3 && !strcasecmp(v15, "NaN"))
  {
    *&v17 = NAN;
LABEL_34:
    Double = *&v17;
    goto LABEL_35;
  }

  if (*(a1 + 232) == 1)
  {
    *v23 = 0;
    v19 = strtod(v15, v23);
    v20 = *v23 != &v15[v16] || v19 == INFINITY;
    Double = v20 ? INFINITY : v19;
    if (Double != INFINITY)
    {
      v21 = *re::foundationSerializationLogObjects(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 136315138;
        *&v23[4] = v15;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v23, 0xCu);
      }

LABEL_35:
      if (a5)
      {
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      else
      {
        *a4 = Double;
        if ((a5 & 2) != 0)
        {
          return 1;
        }
      }

      v22 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v22 - 16);
      return 1;
    }
  }

LABEL_30:
  re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(a1, a2, a6);
  return 0;
}

uint64_t re::internal::serializeEnumAsString<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re::TypeInfo *a5, re::internal *a6, int a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_15;
  }

  if (*a5 == *a6)
  {
    v15 = **(a5 + 2);
    v16 = **(a6 + 2);
    if (v15 != v16 || ((v18 = WORD1(v15) == WORD1(v16), v17 = (v16 ^ v15) & 0xFFFFFF00000000, v18) ? (v18 = v17 == 0) : (v18 = 0), !v18))
    {
      v14 = 0;
      if (a7)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

LABEL_15:
    v14 = 1;
    if (a7)
    {
      goto LABEL_16;
    }

LABEL_11:
    v50 = 0;
    if (!re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, &v50, 0))
    {
LABEL_25:
      v25 = 0;
      return v25 & 1;
    }

    if (!v50)
    {
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to read enum constant. String is empty.", v19, v20, v21, v22, v23, v48);
      goto LABEL_25;
    }

    if (v50 >= 0x401)
    {
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to read enum constant. String is too long. Length: %zu", v19, v20, v21, v22, v23, v50);
      goto LABEL_25;
    }

    v26 = (*(**(a1 + 56) + 32))(*(a1 + 56), v50 + 1, 0);
    re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v26, 0);
    v26[v50] = 0;
    if (*(a1 + 64) == 1)
    {
LABEL_24:
      (*(**(a1 + 56) + 40))(*(a1 + 56), v26);
      goto LABEL_25;
    }

    v29 = *v26;
    if (*v26)
    {
      v30 = v26[1];
      if (v30)
      {
        v31 = (v26 + 2);
        do
        {
          v29 = 31 * v29 + v30;
          v32 = *v31++;
          v30 = v32;
        }

        while (v32);
      }
    }

    *buf = 2 * v29;
    *&buf[8] = v26;
    EnumConstantIndex = re::internal::getEnumConstantIndex(a6, buf, v27);
    v34 = EnumConstantIndex;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    if ((v34 & 0x80000000) != 0)
    {
      v38 = *re::foundationSerializationLogObjects(EnumConstantIndex);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = re::TypeInfo::name(a6)[1];
        *buf = 136315394;
        *&buf[4] = v26;
        *&buf[12] = 2080;
        *&buf[14] = v39;
        _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_INFO, "String %s is not a valid enum constant of type %s - skipping.", buf, 0x16u);
      }

      v40 = 0;
    }

    else if (v14)
    {
      *buf = re::TypeInfo::enumConstants(a5);
      *&buf[8] = v35;
      v36 = v34 - v35;
      if (v34 >= v35)
      {
        v49[0] = re::TypeInfo::renamedEnumConstants(a5);
        v49[1] = v47;
        v37 = re::Slice<re::EnumConstant>::operator[](v49, v36);
      }

      else
      {
        v37 = re::Slice<re::EnumConstant>::operator[](buf, v34);
      }

      v40 = v37;
    }

    else
    {
      v41 = *(*a6 + 856);
      if (!v41 || (v40 = re::internal::TypeTranslationTable::translateSerializedEnum(v41, a6, v34, a5)) == 0)
      {
        re::TypeInfo::name(a5);
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Serialized enum constant %s does not exist in runtime type %s.", v42, v43, v44, v45, v46, v26);
        goto LABEL_24;
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
    (*(**(a1 + 56) + 40))(*(a1 + 56), v26);
    if (v40)
    {
      memcpy(a4, v40, *(*(a5 + 2) + 8));
    }

    goto LABEL_20;
  }

  v14 = re::areSameTranslatedVersion(a5, a6, a3);
  if (!a7)
  {
    goto LABEL_11;
  }

LABEL_16:
  *buf = 0;
  v24 = re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, a3, buf, 0);
  v25 = 0;
  if (v24)
  {
    if (*buf)
    {
      re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
LABEL_20:
    v25 = *(a1 + 64) ^ 1;
  }

  return v25 & 1;
}