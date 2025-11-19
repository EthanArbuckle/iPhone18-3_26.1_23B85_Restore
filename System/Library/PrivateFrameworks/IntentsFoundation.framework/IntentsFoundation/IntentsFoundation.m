id _IFSafeAllocArrayOfClass(void *a1)
{
  v1 = [a1 isSubclassOfClass:objc_opt_class()];
  v2 = 0x277CBEA60;
  if (v1)
  {
    v2 = 0x277CBEB18;
  }

  v3 = *v2;

  return [v3 alloc];
}

id _IFArrayTransform(void *a1, uint64_t a2)
{
  v4 = [a1 count];
  if (!v4)
  {
    return a1;
  }

  v5 = v4;
  v6 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = (*(a2 + 16))(a2, [a1 objectAtIndex:v7], v7);
    if (v9)
    {
      v6[v8++] = v9;
    }

    ++v7;
  }

  while (v5 != v7);
  v10 = objc_opt_class();
  v11 = [_IFSafeAllocArrayOfClass(v10) initWithObjects:v6 count:v8];
  free(v6);

  return v11;
}

id _IFSetTransform(void *a1, uint64_t a2)
{
  v3 = a1;
  v23 = *MEMORY[0x277D85DE8];
  v4 = [a1 count];
  if (v4)
  {
    v5 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = (*(a2 + 16))(a2, *(*(&v18 + 1) + 8 * i));
          if (v11)
          {
            v5[v8++] = v11;
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v12 = objc_opt_class();
    v13 = [v12 isSubclassOfClass:objc_opt_class()];
    v14 = 0x277CBEB98;
    if (v13)
    {
      v14 = 0x277CBEB58;
    }

    v15 = [objc_alloc(*v14) initWithObjects:v5 count:v8];
    free(v5);
    v3 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

id _IFOrderedSetTransform(void *a1, uint64_t a2)
{
  v3 = a1;
  v23 = *MEMORY[0x277D85DE8];
  v4 = [a1 count];
  if (v4)
  {
    v5 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = (*(a2 + 16))(a2, *(*(&v18 + 1) + 8 * i));
          if (v11)
          {
            v5[v8++] = v11;
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v12 = objc_opt_class();
    v13 = [v12 isSubclassOfClass:objc_opt_class()];
    v14 = 0x277CBEB70;
    if (v13)
    {
      v14 = 0x277CBEB40;
    }

    v15 = [objc_alloc(*v14) initWithObjects:v5 count:v8];
    free(v5);
    v3 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C37510](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void _IFAsyncArrayTransform(void *a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3 != 0;
  v8 = [a1 count];
  v9 = malloc_type_calloc(v8, 0x10uLL, 0x108004057E67DB5uLL);
  v10 = dispatch_group_create();
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      dispatch_group_enter(v10);
      v12 = [a1 objectAtIndex:i];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = ___IFAsyncArrayTransform_block_invoke;
      v20[3] = &unk_2797E9748;
      v21 = a2;
      v20[6] = v9;
      v20[7] = i;
      v20[4] = v10;
      v20[5] = &v22;
      (*(a4 + 16))(a4, v12, i, v20);
      v7 |= *(v23 + 24) ^ 1;
      _Block_object_dispose(&v22, 8);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___IFAsyncArrayTransform_block_invoke_2;
  block[3] = &unk_2797E9770;
  block[6] = v8;
  block[7] = v9;
  v19 = a2;
  block[4] = v10;
  block[5] = a5;
  if (v7)
  {
    global_queue = a3;
    if (!a3)
    {
      global_queue = MEMORY[0x277D85CD0];
      label = dispatch_queue_get_label(MEMORY[0x277D85CD0]);
      if (label != dispatch_queue_get_label(0))
      {
        global_queue = dispatch_get_global_queue(0, 0);
      }
    }

    dispatch_group_notify(v10, global_queue, block);
  }

  else
  {
    ___IFAsyncArrayTransform_block_invoke_2(block);
  }
}

void IFCombinePropertyListObject(SipHasher *a1, const __CFString *a2)
{
  v265 = *MEMORY[0x277D85DE8];
  v4 = CFGetTypeID(a2);
  if (v4 == CFDataGetTypeID())
  {
    value = a1->_buffer.value;
    v6 = HIBYTE(value) & 7;
    if (v6 == 7)
    {
      v7 = value & 0xFFFFFFFFFFFFFFLL | 0xAB00000000000000;
      v8 = (value & 0xFF00000000000000) + 0x100000000000000;
      v9 = a1->_v3 ^ v7;
      a1->_v3 = v9;
      a1->_buffer.value = v8;
      c = a1->_c;
      if (a1->_c <= 0)
      {
        v11 = a1->_v0;
      }

      else
      {
        v11 = a1->_v0;
        v12 = a1->_v1;
        v13 = a1->_v2;
        do
        {
          v14 = v11 + v12;
          v15 = v14 ^ __ROR8__(v12, 51);
          v16 = v13 + v9;
          v17 = __ROR8__(v9, 48);
          v11 = (v16 ^ v17) + __ROR8__(v14, 32);
          v9 = v11 ^ __ROR8__(v16 ^ v17, 43);
          v18 = v16 + v15;
          v12 = v18 ^ __ROR8__(v15, 47);
          v13 = __ROR8__(v18, 32);
          --c;
        }

        while (c);
        a1->_v1 = v12;
        a1->_v2 = v13;
        a1->_v3 = v9;
      }

      a1->_v0 = v11 ^ v7;
    }

    else
    {
      a1->_buffer.value = ((171 << (8 * v6)) | value) + 0x100000000000000;
    }

    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    if (Length >= 1)
    {
      v63 = &BytePtr[Length];
      v65 = a1->_v3;
      v64 = a1->_buffer.value;
      v66 = a1->_c;
      v67 = a1->_v0;
      v68 = a1->_v1;
      v69 = a1->_v2;
      while (1)
      {
        v70 = v63 - BytePtr;
        if (v63 - BytePtr >= 8)
        {
          v70 = 8;
        }

        if (v70 <= 7)
        {
          break;
        }

        v71 = *BytePtr;
LABEL_51:
        v72 = HIBYTE(v64) & 7;
        v73 = 8 * v72;
        v74 = v72 + v70;
        if ((v72 + v70) <= 7)
        {
          v64 = ((v71 << v73) | v64) + (v70 << 56);
          a1->_buffer.value = v64;
        }

        else
        {
          v75 = (v71 << v73) | v64 & 0xFFFFFFFFFFFFFFLL;
          v76 = HIBYTE(v64) + v70;
          v77 = v71 >> -v73;
          if (v74 == 8)
          {
            v77 = 0;
          }

          v64 = v77 | (v76 << 56);
          v65 ^= v75;
          a1->_v3 = v65;
          a1->_buffer.value = v64;
          if (v66 >= 1)
          {
            v78 = v66;
            do
            {
              v79 = v67 + v68;
              v80 = v79 ^ __ROR8__(v68, 51);
              v81 = v69 + v65;
              v82 = __ROR8__(v65, 48);
              v67 = (v81 ^ v82) + __ROR8__(v79, 32);
              v65 = v67 ^ __ROR8__(v81 ^ v82, 43);
              v83 = v81 + v80;
              v68 = v83 ^ __ROR8__(v80, 47);
              v69 = __ROR8__(v83, 32);
              --v78;
            }

            while (v78);
            a1->_v1 = v68;
            a1->_v2 = v69;
            a1->_v3 = v65;
          }

          v67 ^= v75;
          a1->_v0 = v67;
        }

        BytePtr += 8;
        if (BytePtr >= v63)
        {
          goto LABEL_160;
        }
      }

      v71 = 0;
      if (v70 <= 3)
      {
        if (v70 == 1)
        {
LABEL_50:
          v71 |= *BytePtr;
          goto LABEL_51;
        }

        if (v70 == 2)
        {
LABEL_49:
          v71 |= BytePtr[1] << 8;
          goto LABEL_50;
        }

        if (v70 != 3)
        {
          goto LABEL_51;
        }

LABEL_48:
        v71 |= BytePtr[2] << 16;
        goto LABEL_49;
      }

      if (v70 > 5)
      {
        if (v70 != 6)
        {
          v71 = BytePtr[6] << 48;
        }

        v71 |= BytePtr[5] << 40;
      }

      else if (v70 == 4)
      {
LABEL_47:
        v71 |= BytePtr[3] << 24;
        goto LABEL_48;
      }

      v71 |= BytePtr[4] << 32;
      goto LABEL_47;
    }

    goto LABEL_160;
  }

  if (v4 == CFStringGetTypeID())
  {
    v19 = a1->_buffer.value;
    v20 = HIBYTE(v19) & 7;
    if (v20 == 7)
    {
      v21 = v19 & 0xFFFFFFFFFFFFFFLL | 0xBC00000000000000;
      v22 = (v19 & 0xFF00000000000000) + 0x100000000000000;
      v23 = a1->_v3 ^ v21;
      a1->_v3 = v23;
      a1->_buffer.value = v22;
      v24 = a1->_c;
      if (a1->_c <= 0)
      {
        v25 = a1->_v0;
      }

      else
      {
        v25 = a1->_v0;
        v26 = a1->_v1;
        v27 = a1->_v2;
        do
        {
          v28 = v25 + v26;
          v29 = v28 ^ __ROR8__(v26, 51);
          v30 = v27 + v23;
          v31 = __ROR8__(v23, 48);
          v25 = (v30 ^ v31) + __ROR8__(v28, 32);
          v23 = v25 ^ __ROR8__(v30 ^ v31, 43);
          v32 = v30 + v29;
          v26 = v32 ^ __ROR8__(v29, 47);
          v27 = __ROR8__(v32, 32);
          --v24;
        }

        while (v24);
        a1->_v1 = v26;
        a1->_v2 = v27;
        a1->_v3 = v23;
      }

      a1->_v0 = v25 ^ v21;
    }

    else
    {
      a1->_buffer.value = ((188 << (8 * v20)) | v19) + 0x100000000000000;
    }

    v98 = CFStringGetLength(a2);
    if (v98 >= 1)
    {
      v99 = v98;
      v100 = 0;
      while (1)
      {
        usedBufLen = 0;
        v267.length = v99 - v100;
        v267.location = v100;
        Bytes = CFStringGetBytes(a2, v267, 0x100u, 0x3Fu, 0, buffer, 1024, &usedBufLen);
        if (usedBufLen >= 1)
        {
          break;
        }

LABEL_105:
        v100 += Bytes;
        if (v100 >= v99)
        {
          goto LABEL_160;
        }
      }

      v102 = &buffer[usedBufLen];
      v104 = a1->_v3;
      v103 = a1->_buffer.value;
      v105 = a1->_c;
      v106 = a1->_v0;
      v107 = a1->_v1;
      v108 = buffer;
      v109 = a1->_v2;
      while (1)
      {
        v110 = v102 - v108;
        if (v102 - v108 >= 8)
        {
          v110 = 8;
        }

        if (v110 <= 7)
        {
          break;
        }

        v111 = *v108;
LABEL_95:
        v112 = HIBYTE(v103) & 7;
        v113 = 8 * v112;
        v114 = v112 + v110;
        v115 = v111 << (8 * v112);
        if (v114 <= 7)
        {
          v103 = (v115 | v103) + (v110 << 56);
          a1->_buffer.value = v103;
        }

        else
        {
          v116 = v115 | v103 & 0xFFFFFFFFFFFFFFLL;
          v117 = HIBYTE(v103) + v110;
          v118 = v111 >> -v113;
          if (v114 == 8)
          {
            v118 = 0;
          }

          v103 = v118 | (v117 << 56);
          v104 ^= v116;
          a1->_v3 = v104;
          a1->_buffer.value = v103;
          if (v105 >= 1)
          {
            v119 = v105;
            do
            {
              v120 = v106 + v107;
              v121 = v120 ^ __ROR8__(v107, 51);
              v122 = v109 + v104;
              v123 = __ROR8__(v104, 48);
              v106 = (v122 ^ v123) + __ROR8__(v120, 32);
              v104 = v106 ^ __ROR8__(v122 ^ v123, 43);
              v124 = v122 + v121;
              v107 = v124 ^ __ROR8__(v121, 47);
              v109 = __ROR8__(v124, 32);
              --v119;
            }

            while (v119);
            a1->_v1 = v107;
            a1->_v2 = v109;
            a1->_v3 = v104;
          }

          v106 ^= v116;
          a1->_v0 = v106;
        }

        v108 += 8;
        if (v108 >= v102)
        {
          goto LABEL_105;
        }
      }

      v111 = 0;
      if (v110 <= 3)
      {
        if (v110 == 1)
        {
LABEL_94:
          v111 |= *v108;
          goto LABEL_95;
        }

        if (v110 == 2)
        {
LABEL_93:
          v111 |= v108[1] << 8;
          goto LABEL_94;
        }

        if (v110 != 3)
        {
          goto LABEL_95;
        }

LABEL_92:
        v111 |= v108[2] << 16;
        goto LABEL_93;
      }

      if (v110 > 5)
      {
        if (v110 != 6)
        {
          v111 = v108[6] << 48;
        }

        v111 |= v108[5] << 40;
      }

      else if (v110 == 4)
      {
LABEL_91:
        v111 |= v108[3] << 24;
        goto LABEL_92;
      }

      v111 |= v108[4] << 32;
      goto LABEL_91;
    }

LABEL_160:
    v215 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v4 == CFBooleanGetTypeID())
  {
    v33 = a1->_buffer.value;
    v34 = HIBYTE(v33) & 7;
    if (v34 == 7)
    {
      v35 = v33 & 0xFFFFFFFFFFFFFFLL | 0xCD00000000000000;
      v36 = (v33 & 0xFF00000000000000) + 0x100000000000000;
      v37 = a1->_v3 ^ v35;
      a1->_v3 = v37;
      a1->_buffer.value = v36;
      v38 = a1->_c;
      if (a1->_c <= 0)
      {
        v39 = a1->_v0;
      }

      else
      {
        v39 = a1->_v0;
        v40 = a1->_v1;
        v41 = a1->_v2;
        do
        {
          v42 = v39 + v40;
          v43 = v42 ^ __ROR8__(v40, 51);
          v44 = v41 + v37;
          v45 = __ROR8__(v37, 48);
          v39 = (v44 ^ v45) + __ROR8__(v42, 32);
          v37 = v39 ^ __ROR8__(v44 ^ v45, 43);
          v46 = v44 + v43;
          v40 = v46 ^ __ROR8__(v43, 47);
          v41 = __ROR8__(v46, 32);
          --v38;
        }

        while (v38);
        a1->_v1 = v40;
        a1->_v2 = v41;
        a1->_v3 = v37;
      }

      a1->_v0 = v39 ^ v35;
    }

    else
    {
      a1->_buffer.value = ((205 << (8 * v34)) | v33) + 0x100000000000000;
    }

    v139 = CFBooleanGetValue(a2);
    v140 = 205;
    if (v139)
    {
      v140 = 171;
    }

    v141 = a1->_buffer.value;
    v142 = HIBYTE(v141) & 7;
    v143 = 8 * v142;
    if (v142 == 7)
    {
      v144 = a1->_c;
      v145 = a1->_v0;
      v146 = a1->_v1;
      v147 = a1->_v2;
      v148 = (v140 << v143) | v141 & 0xFFFFFFFFFFFFFFLL;
      v149 = (v141 & 0xFF00000000000000) + 0x100000000000000;
      v150 = a1->_v3 ^ v148;
      a1->_v3 = v150;
      a1->_buffer.value = v149;
      if (v144 >= 1)
      {
        do
        {
          v151 = v145 + v146;
          v152 = v151 ^ __ROR8__(v146, 51);
          v153 = v147 + v150;
          v154 = __ROR8__(v150, 48);
          v145 = (v153 ^ v154) + __ROR8__(v151, 32);
          v150 = v145 ^ __ROR8__(v153 ^ v154, 43);
          v155 = v153 + v152;
          v146 = v155 ^ __ROR8__(v152, 47);
          v147 = __ROR8__(v155, 32);
          --v144;
        }

        while (v144);
        a1->_v1 = v146;
        a1->_v2 = v147;
        a1->_v3 = v150;
      }

      v156 = v145 ^ v148;
      goto LABEL_123;
    }

    v157 = (v140 << v143) | v141;
    goto LABEL_125;
  }

  if (v4 == CFNumberGetTypeID())
  {
    v47 = a1->_buffer.value;
    v48 = HIBYTE(v47) & 7;
    if (v48 == 7)
    {
      v49 = v47 & 0xFFFFFFFFFFFFFFLL | 0xDE00000000000000;
      v50 = (v47 & 0xFF00000000000000) + 0x100000000000000;
      v51 = a1->_v3 ^ v49;
      a1->_v3 = v51;
      a1->_buffer.value = v50;
      v52 = a1->_c;
      if (a1->_c <= 0)
      {
        v53 = a1->_v0;
      }

      else
      {
        v53 = a1->_v0;
        v54 = a1->_v1;
        v55 = a1->_v2;
        do
        {
          v56 = v53 + v54;
          v57 = v56 ^ __ROR8__(v54, 51);
          v58 = v55 + v51;
          v59 = __ROR8__(v51, 48);
          v53 = (v58 ^ v59) + __ROR8__(v56, 32);
          v51 = v53 ^ __ROR8__(v58 ^ v59, 43);
          v60 = v58 + v57;
          v54 = v60 ^ __ROR8__(v57, 47);
          v55 = __ROR8__(v60, 32);
          --v52;
        }

        while (v52);
        a1->_v1 = v54;
        a1->_v2 = v55;
        a1->_v3 = v51;
      }

      a1->_v0 = v53 ^ v49;
    }

    else
    {
      a1->_buffer.value = ((222 << (8 * v48)) | v47) + 0x100000000000000;
    }

    if (CFNumberIsFloatType(a2))
    {
      v172 = kCFNumberDoubleType;
    }

    else
    {
      v172 = kCFNumberSInt64Type;
    }

    CFNumberGetValue(a2, v172, buffer);
    v173 = a1->_c;
    v174 = a1->_buffer.value;
    v175 = a1->_v0;
    v176 = (v174 & 0x700000000000000) == 0;
    v177 = 8 * (HIBYTE(v174) & 7);
    v178 = (*buffer << v177) | v174 & 0xFFFFFFFFFFFFFFLL;
    v179 = (v174 & 0xFF00000000000000) + 0x800000000000000;
    v180 = *buffer >> -v177;
    if (v176)
    {
      v180 = 0;
    }

    v181 = v180 | v179;
    v182 = v178 ^ a1->_v3;
    if (v173 < 1)
    {
      goto LABEL_159;
    }

    v184 = a1->_v1;
    v183 = a1->_v2;
    do
    {
      v185 = v175 + v184;
      v186 = v185 ^ __ROR8__(v184, 51);
      v187 = v183 + v182;
      v188 = __ROR8__(v182, 48);
      v175 = (v187 ^ v188) + __ROR8__(v185, 32);
      v182 = v175 ^ __ROR8__(v187 ^ v188, 43);
      v189 = v187 + v186;
      v184 = v189 ^ __ROR8__(v186, 47);
      v183 = __ROR8__(v189, 32);
      --v173;
    }

    while (v173);
LABEL_158:
    a1->_v1 = v184;
    a1->_v2 = v183;
LABEL_159:
    a1->_v0 = v175 ^ v178;
    a1->_v3 = v182;
    a1->_buffer.value = v181;
    goto LABEL_160;
  }

  if (v4 == CFDateGetTypeID())
  {
    v84 = a1->_buffer.value;
    v85 = HIBYTE(v84) & 7;
    if (v85 == 7)
    {
      v86 = v84 & 0xFFFFFFFFFFFFFFLL | 0xF100000000000000;
      v87 = (v84 & 0xFF00000000000000) + 0x100000000000000;
      v88 = a1->_v3 ^ v86;
      a1->_v3 = v88;
      a1->_buffer.value = v87;
      v89 = a1->_c;
      if (a1->_c <= 0)
      {
        v90 = a1->_v0;
      }

      else
      {
        v90 = a1->_v0;
        v91 = a1->_v1;
        v92 = a1->_v2;
        do
        {
          v93 = v90 + v91;
          v94 = v93 ^ __ROR8__(v91, 51);
          v95 = v92 + v88;
          v96 = __ROR8__(v88, 48);
          v90 = (v95 ^ v96) + __ROR8__(v93, 32);
          v88 = v90 ^ __ROR8__(v95 ^ v96, 43);
          v97 = v95 + v94;
          v91 = v97 ^ __ROR8__(v94, 47);
          v92 = __ROR8__(v97, 32);
          --v89;
        }

        while (v89);
        a1->_v1 = v91;
        a1->_v2 = v92;
        a1->_v3 = v88;
      }

      a1->_v0 = v90 ^ v86;
    }

    else
    {
      a1->_buffer.value = ((241 << (8 * v85)) | v84) + 0x100000000000000;
    }

    v204 = MEMORY[0x259C370D0](a2);
    v205 = a1->_c;
    v206 = a1->_buffer.value;
    v175 = a1->_v0;
    v176 = (v206 & 0x700000000000000) == 0;
    v207 = 8 * (HIBYTE(v206) & 7);
    v178 = (*&v204 << v207) | v206 & 0xFFFFFFFFFFFFFFLL;
    v208 = (v206 & 0xFF00000000000000) + 0x800000000000000;
    v209 = *&v204 >> -v207;
    if (v176)
    {
      v209 = 0;
    }

    v181 = v209 | v208;
    v182 = v178 ^ a1->_v3;
    if (v205 < 1)
    {
      goto LABEL_159;
    }

    v184 = a1->_v1;
    v183 = a1->_v2;
    do
    {
      v210 = v175 + v184;
      v211 = v210 ^ __ROR8__(v184, 51);
      v212 = v183 + v182;
      v213 = __ROR8__(v182, 48);
      v175 = (v212 ^ v213) + __ROR8__(v210, 32);
      v182 = v175 ^ __ROR8__(v212 ^ v213, 43);
      v214 = v212 + v211;
      v184 = v214 ^ __ROR8__(v211, 47);
      v183 = __ROR8__(v214, 32);
      --v205;
    }

    while (v205);
    goto LABEL_158;
  }

  if (v4 == CFArrayGetTypeID())
  {
    v125 = a1->_buffer.value;
    v126 = HIBYTE(v125) & 7;
    if (v126 == 7)
    {
      v127 = v125 & 0xFFFFFFFFFFFFFFLL | 0x1200000000000000;
      v128 = (v125 & 0xFF00000000000000) + 0x100000000000000;
      v129 = a1->_v3 ^ v127;
      a1->_v3 = v129;
      a1->_buffer.value = v128;
      v130 = a1->_c;
      if (a1->_c <= 0)
      {
        v131 = a1->_v0;
      }

      else
      {
        v131 = a1->_v0;
        v132 = a1->_v1;
        v133 = a1->_v2;
        do
        {
          v134 = v131 + v132;
          v135 = v134 ^ __ROR8__(v132, 51);
          v136 = v133 + v129;
          v137 = __ROR8__(v129, 48);
          v131 = (v136 ^ v137) + __ROR8__(v134, 32);
          v129 = v131 ^ __ROR8__(v136 ^ v137, 43);
          v138 = v136 + v135;
          v132 = v138 ^ __ROR8__(v135, 47);
          v133 = __ROR8__(v138, 32);
          --v130;
        }

        while (v130);
        a1->_v1 = v132;
        a1->_v2 = v133;
        a1->_v3 = v129;
      }

      a1->_v0 = v131 ^ v127;
    }

    else
    {
      a1->_buffer.value = ((18 << (8 * v126)) | v125) + 0x100000000000000;
    }

    Count = CFArrayGetCount(a2);
    v217 = Count;
    v219 = a1->_v3;
    v218 = a1->_buffer.value;
    v176 = (v218 & 0x700000000000000) == 0;
    v220 = 8 * (HIBYTE(v218) & 7);
    v221 = (Count << v220) | v218 & 0xFFFFFFFFFFFFFFLL;
    v222 = (v218 & 0xFF00000000000000) + 0x800000000000000;
    v223 = Count >> -v220;
    if (v176)
    {
      v223 = 0;
    }

    v224 = v223 | v222;
    v225 = v221 ^ v219;
    a1->_v3 = v221 ^ v219;
    a1->_buffer.value = v224;
    v226 = a1->_c;
    if (a1->_c <= 0)
    {
      v227 = a1->_v0;
    }

    else
    {
      v227 = a1->_v0;
      v228 = a1->_v1;
      v229 = a1->_v2;
      do
      {
        v230 = v227 + v228;
        v231 = v230 ^ __ROR8__(v228, 51);
        v232 = v229 + v225;
        v233 = __ROR8__(v225, 48);
        v227 = (v232 ^ v233) + __ROR8__(v230, 32);
        v225 = v227 ^ __ROR8__(v232 ^ v233, 43);
        v234 = v232 + v231;
        v228 = v234 ^ __ROR8__(v231, 47);
        v229 = __ROR8__(v234, 32);
        --v226;
      }

      while (v226);
      a1->_v1 = v228;
      a1->_v2 = v229;
      a1->_v3 = v225;
    }

    a1->_v0 = v227 ^ v221;
    if (Count >= 1)
    {
      v235 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v235);
        IFCombinePropertyListObject(a1, ValueAtIndex);
        ++v235;
      }

      while (v217 != v235);
    }

    goto LABEL_160;
  }

  if (v4 != CFDictionaryGetTypeID())
  {
    if (v4 != CFNullGetTypeID())
    {
      goto LABEL_160;
    }

    v190 = a1->_buffer.value;
    v191 = HIBYTE(v190) & 7;
    if (v191 == 7)
    {
      v192 = v190 & 0xFFFFFFFFFFFFFFLL | 0x3400000000000000;
      v193 = (v190 & 0xFF00000000000000) + 0x100000000000000;
      v194 = a1->_v3 ^ v192;
      a1->_v3 = v194;
      a1->_buffer.value = v193;
      v195 = a1->_c;
      if (a1->_c <= 0)
      {
        v196 = a1->_v0;
      }

      else
      {
        v196 = a1->_v0;
        v197 = a1->_v1;
        v198 = a1->_v2;
        do
        {
          v199 = v196 + v197;
          v200 = v199 ^ __ROR8__(v197, 51);
          v201 = v198 + v194;
          v202 = __ROR8__(v194, 48);
          v196 = (v201 ^ v202) + __ROR8__(v199, 32);
          v194 = v196 ^ __ROR8__(v201 ^ v202, 43);
          v203 = v201 + v200;
          v197 = v203 ^ __ROR8__(v200, 47);
          v198 = __ROR8__(v203, 32);
          --v195;
        }

        while (v195);
        a1->_v1 = v197;
        a1->_v2 = v198;
        a1->_v3 = v194;
      }

      v156 = v196 ^ v192;
LABEL_123:
      a1->_v0 = v156;
      goto LABEL_160;
    }

    v157 = (52 << (8 * v191)) | v190;
LABEL_125:
    a1->_buffer.value = v157 + 0x100000000000000;
    goto LABEL_160;
  }

  v158 = a1->_buffer.value;
  v159 = HIBYTE(v158) & 7;
  if (v159 == 7)
  {
    v160 = v158 & 0xFFFFFFFFFFFFFFLL | 0x2300000000000000;
    v161 = (v158 & 0xFF00000000000000) + 0x100000000000000;
    v162 = a1->_v3 ^ v160;
    a1->_v3 = v162;
    a1->_buffer.value = v161;
    v163 = a1->_c;
    if (a1->_c <= 0)
    {
      v164 = a1->_v0;
    }

    else
    {
      v164 = a1->_v0;
      v165 = a1->_v1;
      v166 = a1->_v2;
      do
      {
        v167 = v164 + v165;
        v168 = v167 ^ __ROR8__(v165, 51);
        v169 = v166 + v162;
        v170 = __ROR8__(v162, 48);
        v164 = (v169 ^ v170) + __ROR8__(v167, 32);
        v162 = v164 ^ __ROR8__(v169 ^ v170, 43);
        v171 = v169 + v168;
        v165 = v171 ^ __ROR8__(v168, 47);
        v166 = __ROR8__(v171, 32);
        --v163;
      }

      while (v163);
      a1->_v1 = v165;
      a1->_v2 = v166;
      a1->_v3 = v162;
    }

    a1->_v0 = v164 ^ v160;
  }

  else
  {
    a1->_buffer.value = ((35 << (8 * v159)) | v158) + 0x100000000000000;
  }

  v237 = CFDictionaryGetCount(a2);
  v238 = v237;
  v240 = a1->_v3;
  v239 = a1->_buffer.value;
  v176 = (v239 & 0x700000000000000) == 0;
  v241 = 8 * (HIBYTE(v239) & 7);
  v242 = (v237 << v241) | v239 & 0xFFFFFFFFFFFFFFLL;
  v243 = (v239 & 0xFF00000000000000) + 0x800000000000000;
  v244 = v237 >> -v241;
  if (v176)
  {
    v244 = 0;
  }

  v245 = v244 | v243;
  v246 = v242 ^ v240;
  a1->_v3 = v242 ^ v240;
  a1->_buffer.value = v245;
  v247 = a1->_c;
  if (a1->_c <= 0)
  {
    v248 = a1->_v0;
  }

  else
  {
    v248 = a1->_v0;
    v249 = a1->_v1;
    v250 = a1->_v2;
    do
    {
      v251 = v248 + v249;
      v252 = v251 ^ __ROR8__(v249, 51);
      v253 = v250 + v246;
      v254 = __ROR8__(v246, 48);
      v248 = (v253 ^ v254) + __ROR8__(v251, 32);
      v246 = v248 ^ __ROR8__(v253 ^ v254, 43);
      v255 = v253 + v252;
      v249 = v255 ^ __ROR8__(v252, 47);
      v250 = __ROR8__(v255, 32);
      --v247;
    }

    while (v247);
    a1->_v1 = v249;
    a1->_v2 = v250;
    a1->_v3 = v246;
  }

  a1->_v0 = v248 ^ v242;
  v256 = malloc_type_malloc(8 * v237, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a2, v256, 0);
  v257 = CFArrayCreate(0, v256, v238, 0);
  free(v256);
  MutableCopy = CFArrayCreateMutableCopy(0, v238, v257);
  CFRelease(v257);
  v268.location = 0;
  v268.length = v238;
  CFArraySortValues(MutableCopy, v268, IFCFTypeCompare, 0);
  if (v238 >= 1)
  {
    for (i = 0; i != v238; ++i)
    {
      v260 = CFArrayGetValueAtIndex(MutableCopy, i);
      IFCombinePropertyListObject(a1, v260);
      v261 = CFDictionaryGetValue(a2, v260);
      IFCombinePropertyListObject(a1, v261);
    }
  }

  v262 = *MEMORY[0x277D85DE8];

  CFRelease(MutableCopy);
}

CFComparisonResult IFCFTypeCompare(const __CFString *a1, const __CFString *a2, void *a3)
{
  v6 = CFGetTypeID(a1);
  v7 = CFGetTypeID(a2);
  if (v6 == v7)
  {
    if (v6 == CFStringGetTypeID())
    {

      return CFStringCompare(a1, a2, 0x200uLL);
    }

    else if (v6 == CFNumberGetTypeID())
    {

      return CFNumberCompare(a1, a2, a3);
    }

    else if (v6 == CFDateGetTypeID())
    {

      return CFDateCompare(a1, a2, a3);
    }

    else if (v6 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(a1);
      v10 = CFBooleanGetValue(a2);
      v11 = 1;
      if (Value)
      {
        v11 = -1;
      }

      if (Value == v10)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

id IFMergeDictionaries(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v10 = a1;
  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  v17 = &a10;
  v12 = a9;
  if (v12)
  {
    v13 = v12;
    do
    {
      [v11 addEntriesFromDictionary:v13];
      v14 = v17++;
      v15 = *v14;

      v13 = v15;
    }

    while (v15);
  }

  return v11;
}

id _IFConcurrentArrayTransform(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [a1 count];
  if (v4)
  {
    v5 = v4;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___IFConcurrentArrayTransform_block_invoke;
    block[3] = &unk_2797E9720;
    block[4] = v3;
    block[5] = a2;
    block[6] = &v19;
    dispatch_apply(v5, 0, block);
    v6 = 0;
    v7 = 0;
    v8 = v20[3];
    do
    {
      if (v8[v6])
      {
        ++v7;
      }

      ++v6;
    }

    while (v5 != v6);
    if (v7 < v5)
    {
      v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
      v8 = v9;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(v20[3] + 8 * v10);
        if (v12)
        {
          v9[v11++] = v12;
        }

        ++v10;
      }

      while (v5 != v10);
    }

    v13 = objc_opt_class();
    v14 = [_IFSafeAllocArrayOfClass(v13) initWithObjects:v8 count:v7];
    for (i = 0; i != v5; ++i)
    {
      v16 = *(v20[3] + 8 * i);
      if (v16)
      {
      }
    }

    free(v20[3]);
    if (v7 < v5)
    {
      free(v8);
    }

    v3 = v14;
    _Block_object_dispose(&v19, 8);
  }

  return v3;
}

void sub_255530714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_255531AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_255534628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}