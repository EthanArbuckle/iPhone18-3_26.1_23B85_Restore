uint64_t SlimHrlcDecodeRun_C()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v98 = *MEMORY[0x1E69E9840];
  memcpy(v97, &unk_1A5AB5AF0, sizeof(v97));
  bzero(v70, 0x10200uLL);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v70[0] = 1;
  v70[2] = 1;
  v71[0] = v97;
  *(&v71[256] + 4) = 0x200000002;
  v71[514] = 0x400000002;
  v72 = 6;
  v73 = &v97[16];
  v74 = &v97[32];
  v75 = 0xC00000002;
  v76 = 14;
  v77 = &v97[48];
  v78 = &v97[64];
  v79 = 0x1C00000002;
  v80 = 30;
  v81 = &v97[80];
  v82 = &v97[96];
  v83 = 0x3C00000002;
  v84 = 62;
  v85 = &v97[112];
  v86 = &v97[128];
  v87 = 0x7C00000002;
  v88 = 126;
  v89 = &v97[144];
  v90 = &v97[160];
  v91 = 0xFC00000004;
  v92 = 256;
  v93 = &v97[176];
  v19 = &v6[v4];
  v94 = &v97[192];
  v20 = v68;
  v95 = &v97[208];
  v96 = &v97[224];
  v21 = v6;
  v67 = 0;
  do
  {
    if (v18 == 256)
    {
      v14 = v68[1];
    }

    if (v21 >= v19)
    {
LABEL_14:
      v27 = v18;
      goto LABEL_15;
    }

    v22 = 1;
    v23 = v71;
    v24 = v15;
    while (1)
    {
      v25 = *v21;
      if (v24 == 7)
      {
        if (++v21 >= v19)
        {
          return 4294951889;
        }

        v15 = 0;
      }

      else
      {
        v15 = v24 + 1;
      }

      v26 = (v25 >> (7 - v24)) & 1 | (2 * v16);
      if (v26 < *(v23 - 2))
      {
        break;
      }

      if (v22 <= 7)
      {
        ++v22;
        v23 += 258;
        v24 = v15;
        v16 = v26;
        if (v21 < v19)
        {
          continue;
        }
      }

      v16 = v26;
      goto LABEL_14;
    }

    v28 = v26 - *(v23 - 3);
    if (v28 >= *(v23 - 4))
    {
      return 4294951894;
    }

    v29 = v23[v28];
    v30 = *v29;
    if (*v29 == 0x10000)
    {
      v32 = v21 + 1;
      if ((v21 + 1) >= v19)
      {
        return 4294951889;
      }

      v33 = (v21[1] >> (8 - v15)) + (*v21 << v15);
      if ((v33 & 0x80u) == 0)
      {
        v34 = 5;
      }

      else
      {
        v34 = -4;
      }

      v30 = v34 + v33;
      v21 = v32;
LABEL_34:
      v16 = 0;
      v14 += v30;
      *v20++ = v14;
      if (v17 <= v14)
      {
        v17 = v14;
      }

      v27 = (v18 + 1);
      goto LABEL_15;
    }

    if (v30 != 0x8000)
    {
      goto LABEL_34;
    }

    v16 = v29[1];
    if (!v16)
    {
      if ((v21 + 1) >= v19)
      {
        return 4294951889;
      }

      v16 = ((v21[1] >> (8 - v15)) + (*v21 << v15)) + 5;
      ++v21;
    }

    v27 = (v16 + v18);
    if (v27 > 0x200)
    {
      return 4294951889;
    }

    v31 = v18 - 255;
    do
    {
      *v20++ = 0;
      if (!v31)
      {
        v14 = v68[1];
      }

      ++v31;
      --v16;
    }

    while (v16);
LABEL_15:
    v18 = v27;
  }

  while (v27 < 0x200);
  if (v15)
  {
    v35 = v21 + 1;
  }

  else
  {
    v35 = v21;
  }

  if (v35 - v6 > 128)
  {
    return 4294951894;
  }

  if (v6 - v35 + v4 < 1)
  {
    return 4294951889;
  }

  v37 = 0;
  v38 = 256 - v13;
  v39 = v97;
  do
  {
    if (v38 <= 0)
    {
      v40 = --v38;
    }

    else
    {
      v40 = v38;
    }

    v39[12] = v68[v40 - 1];
    *v39 = v37;
    *(v39 + 1) = 1;
    v39 += 16;
    ++v37;
    ++v38;
  }

  while (v37 != 256);
  v41 = 0;
  do
  {
    v39[12] = v69[v41++];
    *v39 = v13;
    *(v39 + 1) = v41;
    v39 += 16;
  }

  while (v41 != 256);
  if (v17)
  {
    v42 = 0;
    v43 = v70;
    v44 = 1;
    while (v42 < ~(-1 << v44))
    {
      v45 = 0;
      v43[1] = v42;
      v46 = v43 + 4;
      v47 = v97;
      v48 = 256;
      do
      {
        if (v44 == v47[12])
        {
          *(v47 + 2) = v42;
          *&v46[2 * v45++] = v47;
          ++v42;
        }

        v47 += 16;
        --v48;
      }

      while (v48);
      v49 = 0;
      do
      {
        v50 = &v47[v49];
        if (v44 == v47[v49 + 12])
        {
          *(v50 + 2) = v42;
          *&v46[2 * v45++] = v50;
          ++v42;
        }

        v49 += 16;
      }

      while (v49 != 4096);
      v43[2] = v42;
      *v43 = v45;
      ++v44;
      v42 *= 2;
      v43 += 516;
      if (v44 > v17)
      {
        goto LABEL_62;
      }
    }

    return 4294951894;
  }

LABEL_62:
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = &v6[v4];
  do
  {
    if (!v17)
    {
      goto LABEL_87;
    }

    v56 = 1;
    v57 = v71;
    while (1)
    {
      v52 = (*v35 >> (7 - v51)) & 1 | (2 * v52);
      v58 = v51 == 7;
      if (v51 == 7)
      {
        v51 = 0;
      }

      else
      {
        ++v51;
      }

      if (v58)
      {
        ++v35;
      }

      if (v52 < *(v57 - 2))
      {
        break;
      }

      ++v56;
      v57 += 258;
      if (v56 > v17)
      {
        goto LABEL_87;
      }
    }

    v59 = v52 - *(v57 - 3);
    if (v59 >= *(v57 - 4))
    {
      return 4294951894;
    }

    v60 = v57[v59];
    v52 = v60[1];
    if (v52)
    {
      v61 = 0;
      v62 = *v60;
      do
      {
        *v2++ = v62;
        v63 = v54 + 1;
        if (v8 == (v53 + 1))
        {
          v64 = 1;
        }

        else
        {
          v64 = v61;
        }

        if (v10 == v63)
        {
          v54 = 0;
        }

        else
        {
          ++v54;
        }

        if (v10 == v63)
        {
          ++v53;
          v61 = v64;
          v2 += v12 - v10;
        }

        --v52;
      }

      while (v52);
    }

    else
    {
LABEL_87:
      v61 = 0;
    }
  }

  while (v35 < v55 && !v61);
  if (v51)
  {
    v65 = v35 + 1;
  }

  else
  {
    v65 = v35;
  }

  if (v65 == v55 && v61 == 1)
  {
    return 0;
  }

  else
  {
    return 4294951889;
  }
}

uint64_t _modifyInPlace(void *a1, void *a2, void *a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v103 = a3;
  blockBufferOut = 0;
  v120 = 0;
  v99 = v5;
  v100 = v6;
  if (!v5)
  {
    _modifyInPlace_cold_15(v133);
LABEL_160:
    v93 = 0;
    v101 = 0;
    Container = LODWORD(v133[0]);
    goto LABEL_151;
  }

  if (v6)
  {
    _modifyInPlace_cold_1(v133);
    goto LABEL_160;
  }

  if (!v103)
  {
    _modifyInPlace_cold_14(v133);
    goto LABEL_160;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Container = CMPhotoByteStreamCreateFromSource(v5, 0, 1, 0, &v120, 0);
    if (!Container)
    {
      goto LABEL_9;
    }

LABEL_162:
    v93 = 0;
    v101 = 0;
    goto LABEL_151;
  }

  v7 = v5;
  v8 = [v7 mutableBytes];
  v9 = [v7 length];
  Container = CMBlockBufferCreateWithMemoryBlock(0, v8, v9, *MEMORY[0x1E695E498], 0, 0, [v7 length], 0, &blockBufferOut);
  if (Container || (Container = CMPhotoByteStreamCreateFromSource(blockBufferOut, 0, 1, 0, &v120, 0), Container))
  {

    goto LABEL_162;
  }

LABEL_9:
  context = objc_autoreleasePoolPush();
  v11 = v120;
  v133[0] = 0;
  *&cf = 0;
  Container = CMPhotoDecompressionSessionCreate(0, 0, v133);
  if (Container)
  {
    goto LABEL_156;
  }

  LODWORD(v125) = 0;
  Container = CMPhotoDecompressionSessionCreateContainer(v133[0], 0, v11, &v125, &cf);
  if (Container)
  {
    goto LABEL_156;
  }

  if (v125)
  {
    v12 = 0;
    v15 = 0;
    Container = 4294950300;
    goto LABEL_20;
  }

  v142 = 0;
  Container = CMPhotoDecompressionContainerGetImageCountWithOptions(cf, 0, &v142);
  if (Container)
  {
    goto LABEL_156;
  }

  if (v142 != 1)
  {
    _modifyInPlace_cold_2(&v147);
    v12 = 0;
    v15 = 0;
    Container = v147;
    goto LABEL_20;
  }

  v147 = 0;
  Container = CMPhotoDecompressionContainerCreateDictionaryDescription(cf, &v147);
  if (Container)
  {
LABEL_156:
    v12 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v12 = v147;
  v13 = v147;
  v147 = 0;
  v129 = 0;
  CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions(cf, 0, 0, &v129);
  if (v14)
  {
    v15 = 0;
    if (v14 >> 1 == 2147475151)
    {
      Container = 0;
    }

    else
    {
      Container = v14;
    }
  }

  else
  {
    v15 = v129;
    v16 = v129;
    Container = 0;
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v133[0])
  {
    CFRelease(v133[0]);
  }

  v101 = v12;
  v102 = v15;
  if (Container)
  {
    goto LABEL_150;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_86;
  }

  v112 = v120;
  v17 = v101;
  v111 = v103;
  v97 = v17;
  v18 = [(__CFString *)v17 objectForKeyedSubscript:@"MainImages"];
  v105 = [v18 objectAtIndexedSubscript:0];

  v147 = @"ExifPayloads";
  v148 = @"XMPPayloads";
  v142 = &unk_1F194A180;
  v143 = &unk_1F194A198;
  v149 = @"DebugPayloads";
  v150 = @"CustomMetadataPayloads";
  v144 = &unk_1F194A1B0;
  v145 = &unk_1F194A1C8;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v147 count:4];
  v110 = objc_opt_respondsToSelector();
  v136 = 0u;
  v137 = 0u;
  cf = 0u;
  v135 = 0u;
  obj = v19;
  v106 = [obj countByEnumeratingWithState:&cf objects:v133 count:16];
  if (!v106)
  {
LABEL_82:
    Container = 0;
    goto LABEL_85;
  }

  v104 = *v135;
LABEL_28:
  v20 = 0;
  while (1)
  {
    if (*v135 != v104)
    {
      v21 = v20;
      objc_enumerationMutation(obj);
      v20 = v21;
    }

    v109 = v20;
    v22 = *(*(&cf + 1) + 8 * v20);
    v23 = [obj objectForKeyedSubscript:v22];
    v24 = [v23 intValue];

    v116 = [v105 objectForKeyedSubscript:v22];
    if ([v116 count])
    {
      break;
    }

LABEL_80:

    v20 = v109 + 1;
    if (v109 + 1 == v106)
    {
      v106 = [obj countByEnumeratingWithState:&cf objects:v133 count:16];
      if (!v106)
      {
        goto LABEL_82;
      }

      goto LABEL_28;
    }
  }

  v25 = 0;
  v114 = v24;
  while (1)
  {
    if (v114 == 3)
    {
      v26 = [MEMORY[0x1E695DF90] dictionary];
      v27 = [v116 objectAtIndexedSubscript:v25];
      v28 = [v27 objectForKeyedSubscript:@"URI"];

      if (v28)
      {
        [v26 setObject:v28 forKeyedSubscript:@"URI"];
      }

      v29 = [v116 objectAtIndexedSubscript:v25];
      v30 = [v29 objectForKeyedSubscript:@"Name"];

      if (v30)
      {
        [v26 setObject:v30 forKeyedSubscript:@"Name"];
      }
    }

    else
    {
      v26 = 0;
    }

    if ((v110 & 1) != 0 && ![v111 shouldModifyMetadataForImageIndex:0 payloadIndex:v25 withType:v114 customMetadataIdentifier:v26])
    {
      goto LABEL_65;
    }

    v31 = [v116 objectAtIndexedSubscript:v25];
    v113 = v26;
    v32 = v111;
    v33 = [v31 objectForKeyedSubscript:@"DataIsContiguous"];
    v34 = [v33 BOOLValue];

    if ((v34 & 1) == 0)
    {
      _modifyInPlace_cold_3(&v129);
LABEL_72:
      v44 = 0;
      v39 = 0;
      Container = v129;
      goto LABEL_64;
    }

    v35 = [v31 objectForKeyedSubscript:@"DataOffset"];
    v36 = [v35 longValue];

    v37 = [v31 objectForKeyedSubscript:@"DataLength"];
    v38 = [v37 longValue];

    if (!v36)
    {
      _modifyInPlace_cold_7(&v129);
      goto LABEL_72;
    }

    if (!v38)
    {
      _modifyInPlace_cold_6(&v129);
      goto LABEL_72;
    }

    v39 = [MEMORY[0x1E695DF88] dataWithCapacity:v38];
    [v39 setLength:v38];
    v129 = 0;
    v40 = v39;
    v41 = [v39 mutableBytes];
    v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v42)
    {
      v44 = 0;
LABEL_63:
      Container = 4294954514;
      goto LABEL_64;
    }

    Container = v42(v112, v38, v36, v41, &v129);
    if (Container)
    {
      v44 = 0;
    }

    else
    {
      if (v129 != v38)
      {
        v44 = 0;
LABEL_74:
        Container = 4294950194;
        goto LABEL_64;
      }

      v125 = 0;
      Container = [v32 metadataPayload:v39 forImageIndex:0 payloadIndex:v25 withType:v114 customMetadataIdentifier:v113 modifiedData:&v125];
      v43 = v125;
      v44 = v43;
      if (Container)
      {
        goto LABEL_64;
      }

      if (!v43)
      {
        _modifyInPlace_cold_5();
        v44 = 0;
LABEL_76:
        Container = 0;
        goto LABEL_64;
      }

      if ([v43 isEqualToData:v39])
      {
        goto LABEL_76;
      }

      if ([v44 length] > v38)
      {
        _modifyInPlace_cold_4(&v151);
        Container = v151;
      }

      else
      {
        v45 = [v44 length];
        v46 = v44;
        v47 = [v44 bytes];
        v48 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v48)
        {
          goto LABEL_63;
        }

        Container = v48(v112, v45, v36, v47, &v129);
        if (Container)
        {
          goto LABEL_64;
        }

        v49 = v129;
        if (v49 != [v44 length])
        {
          goto LABEL_74;
        }

        if ([v44 length] >= v38)
        {
          goto LABEL_76;
        }

        v50 = [v44 length];
        v51 = [MEMORY[0x1E695DF88] dataWithLength:&v38[-v50]];
        v52 = v51;
        if (v51)
        {
          v107 = [v51 length];
          v53 = [v44 length];
          v54 = v52;
          v55 = [v52 bytes];
          v56 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v56)
          {
            Container = v56(v112, v107, v53 + v36, v55, &v129);
            if (!Container)
            {
              v57 = v129;
              if (v57 == [v52 length])
              {
                Container = 0;
              }

              else
              {
                Container = 4294950194;
              }
            }
          }

          else
          {
            Container = 4294954514;
          }
        }

        else
        {
          Container = 4294950305;
        }
      }
    }

LABEL_64:

    if (Container)
    {
      break;
    }

LABEL_65:

    if (++v25 >= [v116 count])
    {
      goto LABEL_80;
    }
  }

LABEL_85:
  if (Container)
  {
    goto LABEL_150;
  }

LABEL_86:
  v58 = objc_opt_respondsToSelector();
  if ((objc_opt_respondsToSelector() & (v102 != 0)) != 1 || ([v102 objectForKeyedSubscript:@"CameraExtrinsics"], v59 = objc_claimAutoreleasedReturnValue(), v60 = v59 == 0, v59, v60) || (v58 & 1) != 0 && !objc_msgSend(v103, "shouldModifyMetadataForImageIndex:payloadIndex:withType:customMetadataIdentifier:", 0, 0, 4, 0))
  {
    Container = 0;
    goto LABEL_150;
  }

  v117 = [v102 objectForKeyedSubscript:@"CameraExtrinsics"];
  v118 = 0;
  Container = [v103 extrinsics:v117 forIndex:0 modifiedExtrinsics:&v118];
  v61 = v118;
  if (Container)
  {
    goto LABEL_149;
  }

  v115 = v61;
  if ([v117 isEqual:v61])
  {
    goto LABEL_92;
  }

  v62 = v120;
  v63 = v115;
  v135 = 0u;
  v136 = 0u;
  cf = 0u;
  v151 = xmmword_1A5AB7BF0;
  v152 = 1768973167;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  LODWORD(v150) = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v128 = 0;
  while (1)
  {
    length = v148->length;
    if (length > 2)
    {
      break;
    }

    v65 = v130[3];
    v66 = v126[3];
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = ___findExtrinsicsBox_block_invoke;
    v133[3] = &unk_1E77A21F8;
    v133[4] = &v147;
    v133[5] = &v129;
    v133[6] = &v125;
    v133[7] = &v151;
    Container = _enumerateBoxes(v62, v65, v66, v133);
    if (Container)
    {
      goto LABEL_100;
    }
  }

  if (length == 3)
  {
    v67 = v130[3];
    v68 = v126[3];
    v142 = MEMORY[0x1E69E9820];
    v143 = 3221225472;
    v144 = ___findExtrinsicsBox_block_invoke_2;
    v145 = &__block_descriptor_40_e21_B16__0____IqQ_16C_Q_8l;
    p_cf = &cf;
    Container = _enumerateBoxes(v62, v67, v68, &v142);
  }

  else
  {
    Container = 4294950194;
  }

LABEL_100:
  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v147, 8);
  if (Container)
  {
    goto LABEL_147;
  }

  v69 = [v63 objectForKeyedSubscript:@"CoordinateSystemID"];
  v70 = [v69 unsignedIntValue];

  v71 = 0;
  v124 = bswap32(v70);
  v140 = 0;
  v141 = 0;
  do
  {
    v72 = [v63 objectForKeyedSubscript:@"Position"];
    v73 = [v72 objectAtIndexedSubscript:v71];
    [v73 doubleValue];
    v75 = v74;

    *(&v140 + v71++) = bswap32(llround(v75 * 1000000.0));
  }

  while (v71 != 3);
  v123 = 0;
  v138 = 0;
  v139 = 0;
  v76 = [v63 objectForKeyedSubscript:@"Rotation"];
  Container = CMPhotoCreateQuaternionArrayFromRotationMatrix(0, v76, 1, &v123);

  if (Container)
  {
    goto LABEL_147;
  }

  v77 = 0;
  LOBYTE(v78) = 1;
  v79 = v123;
  do
  {
    v80 = [(__CFArray *)v79 objectAtIndexedSubscript:v77];
    v81 = [v80 intValue];

    *(&v138 + v77) = bswap32(v81);
    v78 = v78 & (v81 == 0);
    ++v77;
  }

  while (v77 != 3);

  v122 = 0;
  v121 = 0;
  v82 = *(&cf + 1);
  v83 = *(&v136 + 1);
  v84 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v84)
  {
    Container = 4294950194;
    goto LABEL_147;
  }

  Container = 4294950194;
  if (v84(v62, 4, v83 + v82, &v122, &v121) || v121 != 4)
  {
LABEL_147:

    goto LABEL_148;
  }

  v85 = bswap32(v122);
  v122 = v85;
  if (HIBYTE(v85))
  {
    _modifyInPlace_cold_13(v133);
LABEL_172:
    Container = LODWORD(v133[0]);

    goto LABEL_148;
  }

  if ((v85 & 1) == 0 && v140)
  {
    _modifyInPlace_cold_12(v133);
    goto LABEL_172;
  }

  v86 = v85;
  if ((v85 & 2) == 0 && HIDWORD(v140))
  {
    _modifyInPlace_cold_11(v133);
    goto LABEL_172;
  }

  if ((v85 & 4) == 0 && v141)
  {
    _modifyInPlace_cold_10(v133);
    goto LABEL_172;
  }

  if ((v85 & 0x10) == 0 && (v85 & 8) != 0)
  {
    _modifyInPlace_cold_9(v133);
    goto LABEL_172;
  }

  if (((v78 | ((v85 & 8) >> 3)) & 1) == 0)
  {
    _modifyInPlace_cold_8(v133);
    goto LABEL_172;
  }

  if (v70 && (v85 & 0x20) == 0)
  {
    goto LABEL_147;
  }

  v87 = *(&cf + 1) + *(&v136 + 1) + 4;
  if ((v85 & 1) == 0)
  {
    goto LABEL_126;
  }

  v88 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v88 || v88(v62, 4, v87, &v140, &v121) || v121 != 4)
  {
    goto LABEL_147;
  }

  v87 += 4;
LABEL_126:
  if ((v86 & 2) != 0)
  {
    v89 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v89 && !v89(v62, 4, v87, &v140 + 4, &v121) && v121 == 4)
    {
      v87 += 4;
      goto LABEL_131;
    }

    goto LABEL_147;
  }

LABEL_131:
  if ((v86 & 4) != 0)
  {
    v90 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v90 || v90(v62, 4, v87, &v141, &v121) || v121 != 4)
    {
      goto LABEL_147;
    }

    v87 += 4;
  }

  if ((v86 & 8) != 0)
  {
    v91 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v91 || v91(v62, 12, v87, &v138, &v121) || v121 != 12)
    {
      goto LABEL_147;
    }

    v87 += 12;
  }

  if ((v86 & 0x20) != 0)
  {
    v92 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v92 || v92(v62, 4, v87, &v124, &v121) || v121 != 4)
    {
      goto LABEL_147;
    }
  }

LABEL_92:
  Container = 0;
LABEL_148:
  v61 = v115;
LABEL_149:

LABEL_150:
  objc_autoreleasePoolPop(context);
  v93 = v102;
LABEL_151:
  if (v120)
  {
    v94 = v93;
    CFRelease(v120);
    v93 = v94;
  }

  if (blockBufferOut)
  {
    v95 = v93;
    CFRelease(blockBufferOut);
    v93 = v95;
  }

  return Container;
}

void sub_1A5998D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t _enumerateBoxes(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0x7FFFFFFFLL;
  }

  if (v8 >= 8)
  {
    while (1)
    {
      v23[0] = 0;
      v24 = 0u;
      v22 = 0;
      v25 = 0;
      v26 = 8;
      v23[1] = a2;
      LODWORD(v21) = 0;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v9 || (!v9(a1, 4, a2, &v21, &v22) ? (v10 = v22 == 4) : (v10 = 0), !v10 || (*&v24 = bswap32(v21), (v11 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || (!v11(a1, 4, a2 + 4, v23, &v22) ? (v12 = v22 == 4) : (v12 = 0), !v12)))
      {
LABEL_36:
        v18 = 4294950194;
        goto LABEL_37;
      }

      v13 = a2 + 8;
      v14 = bswap32(v23[0]);
      LODWORD(v23[0]) = v14;
      v15 = v8 - 8;
      v16 = v24;
      if (v24 == 1)
      {
        if (v15 < 8)
        {
          goto LABEL_36;
        }

        v21 = 0;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v17)
        {
          goto LABEL_36;
        }

        v18 = 4294950194;
        if (v17(a1, 8, a2 + 8, &v21, &v22) || v22 != 8)
        {
          goto LABEL_37;
        }

        v16 = bswap64(v21);
        if (v16 >= 0xFFFFFFFF)
        {
          v18 = 4294950300;
          goto LABEL_37;
        }

        v13 = a2 + 16;
        *&v24 = v16;
        v26 += 8;
        v15 = v8 - 16;
        v14 = v23[0];
      }

      if (v14 != 1835295092)
      {
        if (v16 <= v26)
        {
          goto LABEL_36;
        }

        if (v14 == 1970628964)
        {
          v18 = 4294950194;
          if (v15 < 0x10)
          {
            goto LABEL_37;
          }

          if (v16 <= v26 + 16)
          {
            goto LABEL_37;
          }

          v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v19 || v19(a1, 16, v13, &v24 + 8, &v22) || v22 != 16)
          {
            goto LABEL_37;
          }

          v26 += 16;
        }
      }

      if (!v7[2](v7, v23))
      {
        v8 -= v24;
        a2 += v24;
        if (v8 > 7)
        {
          continue;
        }
      }

      break;
    }
  }

  v18 = 0;
LABEL_37:

  return v18;
}

BOOL ___findExtrinsicsBox_block_invoke(void *a1, int *a2)
{
  v2 = *a2;
  v3 = (a1[7] + 8 * *(*(a1[4] + 8) + 24));
  v4 = *v3;
  if (*a2 == *v3)
  {
    v5 = *(a2 + 5) + v3[1];
    *(*(a1[5] + 8) + 24) = v5 + *(a2 + 1);
    *(*(a1[6] + 8) + 24) = *(a2 + 2) - v5;
    ++*(*(a1[4] + 8) + 24);
  }

  return v2 == v4;
}

uint64_t ___findExtrinsicsBox_block_invoke_2(uint64_t a1, __int128 *a2)
{
  if (*a2 != 1668113784)
  {
    if (*a2 != 1970628964)
    {
      return 0;
    }

    if (*(a2 + 3) != 0xAB4A7D5B14E96343 || *(a2 + 4) != 0x34B40398A6BEAE97)
    {
      return 0;
    }
  }

  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = a2[2];
  v4[1] = a2[1];
  v4[2] = v6;
  *v4 = v5;
  return 1;
}

uint64_t CMPhotoJPEGCreateIOSurfaceFromJPEG(const __CFData *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  pixelBuffer = 0;
  v37 = 0;
  v38 = 0;
  v35 = 1;
  v36 = 0;
  v34 = 1;
  if ((sCMPhotoJPEGDecoderTraceInitialized & 1) == 0)
  {
    sCMPhotoJPEGDecoderTraceInitialized = 1;
  }

  if (!jpegService())
  {
    return 4294954514;
  }

  FourCCValue = 875704422;
  if (a2)
  {
    IntValue = getIntValue(a2, @"JPEGCacheInputSurface", 0);
    v8 = getIntValue(a2, @"JPEGHighSpeedDecode", 0);
    FourCCValue = getFourCCValue(a2, @"JPEGOutputPixelFormat", 875704422);
    v9 = CFDictionaryContainsKey(a2, @"JPEGOutputBytesPerRowAlignment") != 0;
    v10 = getIntValue(a2, @"JPEGOutputBytesPerRowAlignment", 1);
    v34 = v10;
    v11 = IntValue != 0;
    v12 = v8 != 0;
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 1;
    v12 = 1;
  }

  if (*a3 && (v14 = CFGetTypeID(*a3), v14 == IOSurfaceGetTypeID()))
  {
    v15 = *a3;
  }

  else
  {
    v15 = 0;
  }

  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v13 = _createPixelBufferFromJPEG(a1, a2, v11, v12, &v35, &v41, v15, &pixelBuffer);
  if (!v13)
  {
    v16 = pixelBuffer;
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    calculateOutputDimensions(v41, v42, a2, v35, &v39, &v37, &v36);
    if (v9)
    {
      IOSurface = CVPixelBufferGetIOSurface(v16);
      PlaneCount = IOSurfaceGetPlaneCount(IOSurface);
      if (PlaneCount == 1)
      {
        BytesPerRow = IOSurfaceGetBytesPerRow(IOSurface);
        if (!v10 || BytesPerRow % v10)
        {
LABEL_17:
          v21 = 1;
          goto LABEL_24;
        }
      }

      else
      {
        v22 = PlaneCount;
        if (PlaneCount)
        {
          v23 = 0;
          do
          {
            BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(IOSurface, v23);
            if (!v10 || BytesPerRowOfPlane % v10)
            {
              goto LABEL_17;
            }
          }

          while (v22 != ++v23);
        }
      }
    }

    v21 = 0;
LABEL_24:
    if (v39 == v37 && v40 == v38)
    {
      if (FourCCValue != PixelFormatType || v36 != 0)
      {
        v21 = 1;
      }

      if (v21 != 1)
      {
        goto LABEL_45;
      }
    }

    v33 = 0;
    keys[0] = 0;
    keys[1] = 0;
    values[0] = 0;
    values[1] = 0;
    valuePtr = 0;
    if (!v9)
    {
      FigGetAlignmentForIOSurfaceOutput();
      v10 = 1;
      v34 = 1;
    }

    if (v10 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v27 = *MEMORY[0x1E695E480];
      v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v34);
      keys[0] = *MEMORY[0x1E6966020];
      values[0] = v28;
      v29 = CFDictionaryCreate(v27, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v28)
      {
        CFRelease(v28);
      }
    }

    v13 = scaleAndConvertPixelBuffer(v16, v37, v38, FourCCValue, v36, v29, &v33);
    CFRelease(v16);
    if (v29)
    {
      CFRelease(v29);
    }

    if (!v13)
    {
      v16 = v33;
LABEL_45:
      v30 = CVPixelBufferGetIOSurface(v16);
      *a3 = CFRetain(v30);
      CFRelease(v16);
      return 0;
    }
  }

  return v13;
}

uint64_t getIntValue(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v7 = CFBooleanGetTypeID();
      if (v7 == CFGetTypeID(v5))
      {
        return CFBooleanGetValue(v5);
      }
    }
  }

  return v3;
}

uint64_t getFourCCValue(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }
  }

  return v3;
}

uint64_t _createPixelBufferFromJPEG(const __CFData *a1, const __CFDictionary *a2, int a3, int a4, int *a5, void *a6, __IOSurface *a7, CFTypeRef *a8)
{
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v13 = JPEGDeviceInterface_supportsMissingEOI();
  v14 = v13;
  v100 = @"SurfacePoolOneShot";
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  if (!a2)
  {
    v94 = 0;
    v22 = 0;
    v93 = 0;
    v18 = 0;
    v21 = 17;
    v23 = 1;
    goto LABEL_24;
  }

  v96 = v13;
  theData = a1;
  Value = CFDictionaryGetValue(a2, @"JPEGCacheInputSurface");
  if (!Value || (v16 = Value, TypeID = IOSurfaceGetTypeID(), TypeID != CFGetTypeID(v16)))
  {
    v98 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  v18 = CFRetain(v16);
  if (a1)
  {
    Length = CFDataGetLength(a1);
    if (Length > IOSurfaceGetAllocSize(v18))
    {
      if (!v18)
      {
        v98 = 0;
        v20 = 0;
        goto LABEL_10;
      }

      v20 = v18;
      CFRelease(v18);
      v98 = 0;
LABEL_9:
      v18 = 0;
LABEL_10:
      v21 = 17;
LABEL_16:
      v94 = 2 * (getIntValue(a2, @"JPEGSingleShotDecode", 0) != 0);
      v23 = getIntValue(a2, @"JPEGColorSpaceAware", 1) != 0;
      v27 = CFDictionaryGetValue(a2, @"JPEGSurfacePool");
      if (v27)
      {
        v28 = v27;
        v29 = CFGetTypeID(v27);
        v30 = CMPhotoSurfacePoolGetTypeID();
        v31 = @"SurfacePoolOneShot";
        if (v29 == v30)
        {
          v31 = v28;
        }

        v100 = v31;
      }

      v32 = CFDictionaryGetValue(a2, @"JPEGProvidedPixelBuffer");
      v93 = v20;
      if (v32)
      {
        v33 = v32;
        v34 = CVPixelBufferGetTypeID();
        if (v34 == CFGetTypeID(v33))
        {
          v112 = CFRetain(v33);
        }
      }

      a1 = theData;
      v14 = v96;
      v22 = v98;
LABEL_24:
      theDataa = a1;
      if (a1)
      {
        v35 = JPEGParseJPEGInfo(a1, &v106, 1, v23);
        if (v35)
        {
          v40 = v35;
          v39 = 0;
        }

        else
        {
          if ((BYTE4(v109) & 1) == 0)
          {
            if (JPEGParseExifOrientation(a1, a5))
            {
              *a5 = 1;
            }

            if (BYTE5(v109) & 1 | (v14 == 0))
            {
              v36 = a4;
            }

            else
            {
              v36 = a4 | 4;
            }

            v97 = v36;
            v99 = (v14 == 0) & ~BYTE5(v109);
            v37 = v21 == 3;
            if (v21 == 3)
            {
              v22 = 0;
              v21 = 20;
              v38 = 0;
            }

            else
            {
              v38 = v18;
            }

            if (v37 && ((v14 == 0) & ~BYTE5(v109)) == 0)
            {
              IOSurfaceUnlock(v18, 1u, 0);
              v22 = 0;
              v21 = 3;
              v38 = v18;
            }

            v39 = 0;
            v40 = 4294954516;
            if (!DWORD2(v106) || !HIDWORD(v106))
            {
              goto LABEL_160;
            }

            v41 = v106;
            v42 = DWORD1(v106);
            v110 = v106;
            v111 = DWORD1(v106);
            *a6 = v106;
            a6[1] = v42;
            if (!a2)
            {
              v44 = 0;
              v49 = 1;
              v50 = v42;
              v51 = v41;
              IntValue = 1;
              v47 = 875704422;
              v52 = a1;
              goto LABEL_78;
            }

            LODWORD(v113) = 0;
            v104 = 0;
            v105 = 0;
            FourCCValue = getFourCCValue(a2, @"JPEGOutputPixelFormat", 875704422);
            v44 = CFDictionaryContainsKey(a2, @"JPEGOutputBytesPerRowAlignment") != 0;
            IntValue = getIntValue(a2, @"JPEGOutputBytesPerRowAlignment", 1);
            calculateOutputDimensions(v106, DWORD1(v106), a2, *a5, &v110, &v104, &v113);
            if (a7 || FourCCValue == 875704422)
            {
              goto LABEL_66;
            }

            v46 = v107;
            if (v110 != v104 || v111 != v105 || v113)
            {
              if ((v107 - 1) > 1 || FourCCValue != 1380401729 && FourCCValue != 1111970369 || !JPEGDeviceInterface_supportsAppleInterchangeFormats())
              {
                goto LABEL_66;
              }

              if (v46 == 2)
              {
                v53 = 875836518;
              }

              else
              {
                v53 = 875704422;
              }

              if (v46 == 1)
              {
                v47 = 875704934;
              }

              else
              {
                v47 = v53;
              }

              goto LABEL_67;
            }

            v47 = FourCCValue;
            if (FourCCValue <= 1111970368)
            {
              if (FourCCValue != 875704934)
              {
                v48 = 875836518;
LABEL_64:
                if (FourCCValue != v48)
                {
LABEL_66:
                  v47 = 875704422;
                  goto LABEL_67;
                }
              }
            }

            else if (FourCCValue != 1111970369)
            {
              if (FourCCValue == 2037741158)
              {
                goto LABEL_67;
              }

              v48 = 1380401729;
              goto LABEL_64;
            }

            if (!JPEGDeviceInterface_supportsAppleInterchangeFormats())
            {
              goto LABEL_66;
            }

LABEL_67:
            v51 = v110;
            v50 = v111;
            if (v110 == v104 && v111 == v105)
            {
              if (v113)
              {
                v54 = 0;
              }

              else
              {
                v54 = FourCCValue == v47;
              }

              v52 = theDataa;
              if (!v54 && IntValue <= 1)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v52 = theDataa;
              if (IntValue < 2)
              {
LABEL_74:
                v49 = 0;
LABEL_77:
                v41 = v106;
                v42 = DWORD1(v106);
LABEL_78:
                if (!JPEGDeviceInterface_supportsDecodeSize(v41, v42, v107, v51, v50))
                {
                  v39 = 0;
                  v40 = 4294954514;
                  goto LABEL_160;
                }

                if (a7)
                {
                  Width = IOSurfaceGetWidth(a7);
                  Height = IOSurfaceGetHeight(a7);
                  if (Width != v110 || Height != v111)
                  {
                    _createPixelBufferFromJPEG_cold_1(&v104);
                    v39 = 0;
                    v40 = v104;
                    goto LABEL_160;
                  }
                }

                if (v38)
                {
                  v39 = 0;
LABEL_111:
                  v68 = HIDWORD(v106);
                  if (v49)
                  {
                    LODWORD(v104) = 0;
                    LODWORD(v113) = 1;
                    FigGetAlignmentForIOSurfaceOutput();
                    if (IntValue <= 1)
                    {
                      v69 = 1;
                    }

                    else
                    {
                      v69 = IntValue;
                    }

                    v70 = v113;
                    if (v113 <= 0)
                    {
                      LODWORD(v113) = 1;
                      v70 = 1;
                    }

                    if (v44)
                    {
                      v71 = v69;
                    }

                    else
                    {
                      v71 = v70;
                    }

                    v72 = CMPhotoLeastCommonMultiple(4, v71);
                  }

                  else
                  {
                    v72 = DWORD2(v106);
                  }

                  if (a7)
                  {
                    if (v112)
                    {
                      CVPixelBufferGetIOSurface(v112);
                      v73 = v97;
                      if (!FigCFEqual())
                      {
                        v40 = 4294950306;
                        goto LABEL_160;
                      }
                    }

                    else
                    {
                      PixelBufferWithSurface = CMPhotoCreatePixelBufferWithSurface(*MEMORY[0x1E695E480], a7, 0);
                      v73 = v97;
                      if (PixelBufferWithSurface)
                      {
                        v40 = PixelBufferWithSurface;
                        goto LABEL_160;
                      }
                    }

                    goto LABEL_140;
                  }

                  v104 = 0;
                  v113 = 0;
                  v114[0] = 0;
                  v74 = CMPhotoSurfacePoolCreateImageSurface(v100, v47, v110, v111, 1, v72, v68, 1, 0, v94, 0, &v104, v114);
                  if (v74)
                  {
                    v40 = v74;
                    v75 = 1;
                    v73 = v97;
                  }

                  else
                  {
                    v77 = v114[0];
                    v40 = CMPhotoCreatePixelBufferWithSurface(*MEMORY[0x1E695E480], v104, 0);
                    v73 = v97;
                    if (v40)
                    {
                      v75 = 1;
                    }

                    else
                    {
                      v75 = v77 != 0;
                      v112 = v113;
                      v113 = 0;
                    }
                  }

                  if (v104)
                  {
                    IOSurfaceDecrementUseCount(v104);
                    if (v104)
                    {
                      CFRelease(v104);
                    }
                  }

                  if (v113)
                  {
                    CFRelease(v113);
                  }

                  if (!v75)
                  {
                    v73 |= 2u;
                  }

                  if (!v40)
                  {
LABEL_140:
                    IOSurface = CVPixelBufferGetIOSurface(v112);
                    if ((v21 & 0x10) != 0)
                    {
                      IOSurfaceLock(v38, 0, 0);
                      BaseAddress = IOSurfaceGetBaseAddress(v38);
                      BytePtr = CFDataGetBytePtr(theDataa);
                      v81 = CFDataGetLength(theDataa);
                      memcpy(BaseAddress, BytePtr, v81);
                      if (v99)
                      {
                        v82 = IOSurfaceGetBaseAddress(v38);
                        v83 = v82 + CFDataGetLength(theDataa);
                        v84 = *(v83 - 1) == 255;
                        if (*(v83 - 1) == 255)
                        {
                          v85 = -39;
                        }

                        else
                        {
                          v85 = -1;
                        }

                        *v83 = v85;
                        if (v84)
                        {
                          v86 = -1;
                        }

                        else
                        {
                          v86 = -39;
                        }

                        *(v83 + 1) = v86;
                        if (v84)
                        {
                          v87 = -39;
                        }

                        else
                        {
                          v87 = 0;
                        }

                        *(v83 + 2) = v87;
                        *(v83 + 3) = 0;
                        *(v83 + 7) = 0;
                      }

                      IOSurfaceUnlock(v38, 0, 0);
                    }

                    if (v22)
                    {
                      IOSurfaceUnlock(v38, 1u, 0);
                    }

                    v88 = IOSurfaceGetWidth(IOSurface);
                    v89 = IOSurfaceGetHeight(IOSurface);
                    v90 = JPEGDecompressSurface(0, 0, v38, 0, IOSurface, &v106, v73, 0, v88, v89, 0, 0);
                    if (v90)
                    {
                      v40 = v90;
                      v22 = 0;
                    }

                    else
                    {
                      if (*(&v108 + 4))
                      {
                        CVBufferSetAttachment(v112, *MEMORY[0x1E6965CE8], *(&v108 + 4), kCVAttachmentMode_ShouldPropagate);
                      }

                      v22 = 0;
                      v40 = 0;
                      *a8 = CFRetain(v112);
                    }
                  }

LABEL_160:
                  if (v21 != 3)
                  {
                    if (v21 != 20)
                    {
                      goto LABEL_166;
                    }

                    IOSurfaceUnlock(v93, 1u, 0);
                    if (v93)
                    {
                      CFRelease(v93);
                    }
                  }

                  if (theDataa)
                  {
                    CFRelease(theDataa);
                  }

LABEL_166:
                  if (!v38)
                  {
                    goto LABEL_172;
                  }

                  if (!v22)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_168;
                }

                v57 = CFDataGetBytePtr(v52);
                v58 = a3;
                if ((v57 & 0x1F) != 0)
                {
                  v58 = 1;
                }

                if (((v99 | v58) & 1) == 0)
                {
                  CFDataGetLength(v52);
                  v59 = IOSurfaceWrapClientImage();
                  if (v59)
                  {
                    v38 = v59;
                    v39 = 0;
                    v21 = 2;
                    goto LABEL_111;
                  }
                }

                v60 = CFDataGetLength(v52);
                v61 = 8;
                if (!v99)
                {
                  v61 = 0;
                }

                v62 = v60 + v61;
                v104 = 0;
                pthread_mutex_lock(&_surfaceLock);
                if (_createJPEGInputSurface_cachedSurface_0)
                {
                  UseCount = IOSurfaceGetUseCount(_createJPEGInputSurface_cachedSurface_0);
                  v64 = a3;
                  v65 = a3 ^ 1;
                  if (((a3 ^ 1) & 1) == 0 && UseCount <= 1 && _createJPEGInputSurface_cachedSurface_1 >= v62)
                  {
                    v104 = CFRetain(_createJPEGInputSurface_cachedSurface_0);
                    IOSurfaceIncrementUseCount(v104);
LABEL_109:
                    pthread_mutex_unlock(&_surfaceLock);
                    v38 = v104;
                    if (!v104)
                    {
                      _createPixelBufferFromJPEG_cold_2(&v104);
                      v40 = v104;
                      v39 = 1;
                      goto LABEL_160;
                    }

                    v39 = 1;
                    goto LABEL_111;
                  }

                  if (a3)
                  {
                    v62 = (v62 * 1.1);
                  }

                  if (_createJPEGInputSurface_cachedSurface_0)
                  {
                    IOSurfaceDecrementUseCount(_createJPEGInputSurface_cachedSurface_0);
                    CFRelease(_createJPEGInputSurface_cachedSurface_0);
                    v64 = a3;
                    _createJPEGInputSurface_cachedSurface_0 = 0;
                    _createJPEGInputSurface_cachedSurface_1 = 0;
                  }
                }

                else
                {
                  v64 = a3;
                  v65 = a3 ^ 1;
                  if (a3)
                  {
                    v62 = (v62 * 1.1);
                  }
                }

                if (v64)
                {
                  v66 = 0;
                }

                else
                {
                  v66 = v94;
                }

                v67 = CMPhotoSurfacePoolCreateMemorySurface(v100, v62, v66, &v104);
                if ((v65 & 1) == 0 && !v67)
                {
                  IOSurfaceIncrementUseCount(v104);
                  _createJPEGInputSurface_cachedSurface_0 = CFRetain(v104);
                  _createJPEGInputSurface_cachedSurface_1 = v62;
                }

                goto LABEL_109;
              }
            }

            v49 = 1;
            goto LABEL_77;
          }

          v39 = 0;
          v40 = 4294954386;
        }
      }

      else
      {
        v39 = 0;
        v40 = 4294954516;
      }

      v38 = v18;
      goto LABEL_160;
    }

    v98 = 0;
    v21 = 21;
LABEL_15:
    v20 = v18;
    goto LABEL_16;
  }

  v98 = 1;
  IOSurfaceLock(v18, 1u, 0);
  v24 = *MEMORY[0x1E695E480];
  v25 = IOSurfaceGetBaseAddress(v18);
  AllocSize = IOSurfaceGetAllocSize(v18);
  theData = CFDataCreateWithBytesNoCopy(v24, v25, AllocSize, *MEMORY[0x1E695E498]);
  if (theData)
  {
    v21 = 3;
    goto LABEL_15;
  }

  v40 = 4294954510;
  if (!v18)
  {
    goto LABEL_172;
  }

  v38 = v18;
  v39 = 0;
LABEL_168:
  IOSurfaceUnlock(v38, 1u, 0);
LABEL_169:
  if (v39)
  {
    IOSurfaceDecrementUseCount(v38);
  }

  CFRelease(v38);
LABEL_172:
  if (v112)
  {
    CFRelease(v112);
  }

  if (*(&v108 + 4))
  {
    CFRelease(*(&v108 + 4));
  }

  return v40;
}

unint64_t calculateOutputDimensions(unint64_t a1, unint64_t a2, const __CFDictionary *a3, int a4, void *a5, void *a6, _DWORD *a7)
{
  if (a3)
  {
    IntValue = getIntValue(a3, *MEMORY[0x1E696E100], 0);
    v15 = getIntValue(a3, @"JPEGRelaxMaxPixelSize", 0);
    v16 = getIntValue(a3, *MEMORY[0x1E696E000], 0);
  }

  else
  {
    IntValue = 0;
    v15 = 0;
    v16 = 0;
  }

  return JPEGCalculateOutputDimensions(a1, a2, IntValue, v15, v16, a4, a5, a6, 0, a7, 0);
}

uint64_t scaleAndConvertPixelBuffer(__CVBuffer *a1, unint64_t a2, unint64_t a3, int a4, int a5, const __CFDictionary *a6, __CVBuffer **a7)
{
  v12 = a1;
  pixelTransferSessionOut = 0;
  destinationBuffer = 0;
  v37 = *a7;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(v12);
  if (a5 && (JPEGDeviceInterface_supportsAppleInterchangeFormats() ? (v14 = 0x4000) : (v14 = 4092), JPEGDeviceInterface_supportsAppleInterchangeFormats() ? (v15 = 0x4000) : (v15 = 4092), (a5 & 4) != 0 ? (v16 = a3) : (v16 = a2), (a5 & 4) != 0 ? (v17 = a2) : (v17 = a3), Width > v14 || Height > v15 || ((v16 / Width) >= 0.25 ? (v18 = (v17 / Height) < 0.25) : (v18 = 1), v18)))
  {
    v19 = 1;
    a3 = v17;
    a2 = v16;
  }

  else
  {
    v19 = 0;
  }

  v36 = Width;
  if (a4 == 1380401729)
  {
    if (a6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a6);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    a6 = MutableCopy;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    setIntValue(Mutable, *MEMORY[0x1E6966288], 1380401729);
    setIntValue(Mutable, *MEMORY[0x1E6966210], 32);
    v22 = *MEMORY[0x1E6966220];
    v23 = CFDataCreate(*MEMORY[0x1E695E480], scaleAndConvertPixelBuffer_kBlack_32RGBA, 4);
    CFDictionarySetValue(Mutable, v22, v23);
    if (v23)
    {
      CFRelease(v23);
    }

    CFDictionarySetValue(a6, *MEMORY[0x1E6966120], Mutable);
    CFRelease(Mutable);
  }

  v24 = v19 ^ 1;
  if (!a5)
  {
    v24 = 0;
  }

  if (v24)
  {
    v19 = 0;
    goto LABEL_39;
  }

  v25 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  if (v25)
  {
LABEL_40:
    v26 = v25;
    goto LABEL_41;
  }

  if (a5 || !v37)
  {
    IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
    if (IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      v26 = IOSurfaceBackedCVPixelBufferWithAttributes;
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }

LABEL_41:
      if (a4 != 1380401729)
      {
        return v26;
      }

LABEL_42:
      CFRelease(a6);
      return v26;
    }
  }

  else
  {
    destinationBuffer = v37;
  }

  VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E00], *MEMORY[0x1E695E4D0]);
  v32 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v12, destinationBuffer);
  v26 = v32;
  if (v32 && v32 >> 26 == 56 && CVPixelBufferGetWidth(v12) == a2 && CVPixelBufferGetHeight(v12) == a3)
  {
    v33 = *MEMORY[0x1E695E4C0];
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF8], *MEMORY[0x1E695E4C0]);
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF0], v33);
    v26 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v12, destinationBuffer);
  }

  VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  if (v19)
  {
    v12 = destinationBuffer;
  }

  if (a5)
  {
LABEL_39:
    v25 = VTImageRotationSessionCreate();
    if (!v25)
    {
      v28 = MEMORY[0x1E695E4D0];
      if (a5)
      {
        VTSessionSetProperty(0, *MEMORY[0x1E6983D08], *MEMORY[0x1E695E4D0]);
      }

      if ((a5 & 2) != 0)
      {
        VTSessionSetProperty(0, *MEMORY[0x1E6983D00], *v28);
      }

      v29 = v37;
      if (v37)
      {
        destinationBuffer = v37;
      }

      else
      {
        v34 = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
        if (v34)
        {
          v26 = v34;
          MEMORY[0x1AC552410](0);
          if (a4 != 1380401729)
          {
            return v26;
          }

          goto LABEL_42;
        }
      }

      VTSessionSetProperty(0, *MEMORY[0x1E6983CF8], *v28);
      if ((v36 | Height))
      {
        v30 = VTPixelRotationSessionRotateSubImage();
      }

      else
      {
        v30 = MEMORY[0x1AC552420](0, v12, destinationBuffer);
      }

      v26 = v30;
      MEMORY[0x1AC552410](0);
      goto LABEL_68;
    }

    goto LABEL_40;
  }

  v29 = v37;
LABEL_68:
  if (a4 == 1380401729)
  {
    CFRelease(a6);
  }

  if (v26)
  {
    if (destinationBuffer != v29)
    {
      CVPixelBufferRelease(destinationBuffer);
    }
  }

  else
  {
    if (v19)
    {
      CFRelease(v12);
    }

    v26 = 0;
    *a7 = destinationBuffer;
  }

  return v26;
}

__CFDictionary *_createModifiedOptionsWithPixelFormat(const void *a1, int a2)
{
  if (a1)
  {
    if (getFourCCValue(a1, @"JPEGOutputPixelFormat", 0) == a2)
    {

      return CFRetain(a1);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v6 = MutableCopy;
  if (MutableCopy)
  {
    setIntValue(MutableCopy, @"JPEGOutputPixelFormat", a2);
  }

  return v6;
}

unint64_t CMPhotoJPEGCalculateOutputDimensions(unint64_t a1, unint64_t a2, const __CFDictionary *a3, int a4, void *a5, void *a6)
{
  v10 = 0;
  v11 = 0;
  result = calculateOutputDimensions(a1, a2, a3, a4, 0, &v10, 0);
  v9 = v11;
  *a5 = v10;
  *a6 = v9;
  return result;
}

__CFArray *CMPhotoJPEGCreateNativeDecodePixelFormatArray()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  arrayAppendPixelFormatValue(Mutable, 875704422);
  arrayAppendPixelFormatValue(Mutable, 2037741158);
  if (JPEGDeviceInterface_supportsAppleInterchangeFormats())
  {
    arrayAppendPixelFormatValue(Mutable, 1111970369);
    arrayAppendPixelFormatValue(Mutable, 1380401729);
    arrayAppendPixelFormatValue(Mutable, 875704934);
    arrayAppendPixelFormatValue(Mutable, 875836518);
  }

  return Mutable;
}

void arrayAppendPixelFormatValue(__CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t CMPhotoJPEGShouldUseHardwareDecode(int a1, const __CFDictionary *a2, double a3, double a4)
{
  result = jpegService();
  if (result)
  {
    if (a2 && ((IntValue = getIntValue(a2, *MEMORY[0x1E696E100], 0)) != 0 ? (v10 = IntValue < 16) : (v10 = 0), v10 || (Value = CFDictionaryGetValue(a2, @"JPEGRequireForegroundRunning")) != 0 && (v12 = Value, v13 = CFGetTypeID(Value), v13 == CFBooleanGetTypeID()) && CFBooleanGetValue(v12) && (pthread_once(&sLoadPretendForegroundOnce, _loadPretendForegroundOnce), (sPretendForeground & 1) == 0) && (getpid(), proc_can_use_foreground_hw() != 1)))
    {
      return 0;
    }

    else
    {
      if (JPEGDeviceInterface_supportsAppleInterchangeFormats())
      {
        if (a1)
        {
          v14 = 0xFFFF;
        }

        else
        {
          v14 = 92415;
        }
      }

      else if (a1)
      {
        v14 = 92415;
      }

      else
      {
        v14 = 0x3FFFF;
      }

      return v14 < (a3 * a4);
    }
  }

  return result;
}

void setIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

const char *_loadPretendForegroundOnce()
{
  result = getenv("JPEG_PRETEND_FOREGROUND_APP");
  if (result)
  {
    result = atoi(result);
    if (result)
    {
      sPretendForeground = 1;
    }
  }

  return result;
}

uint64_t CMPhotoFlipSizeIfNeeded(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = 0;
  CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(a1, &v9, 0);
  if (v9 == 270 || v9 == 90)
  {
    v7 = a2;
    a2 = a3;
    a3 = v7;
  }

  if (a4)
  {
    *a4 = a2;
    a4[1] = a3;
  }

  return 0;
}

uint64_t CMPhotoExifDetectTIFFHeaderOffset(const __CFData *a1, _BYTE *a2, _DWORD *a3)
{
  if (CFDataGetLength(a1) <= 3)
  {
    CMPhotoExifDetectTIFFHeaderOffset_cold_1(&v8);
    return v8;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (*(BytePtr + 6) == 2771273 || *(BytePtr + 6) == 704662861)
    {
      result = 0;
      *a3 = 6;
    }

    else
    {
      if (*BytePtr != 2771273 && *BytePtr != 704662861)
      {
        result = 0;
        *a2 = 0;
        return result;
      }

      result = 0;
      *a3 = 0;
    }

    *a2 = 1;
  }

  return result;
}

uint64_t CMPhotoCompressionSessionFormatIsSupportedForImageType(int a1, int a2, int a3)
{
  result = 1;
  if (a2 == 2 && (a3 - 1) <= 1)
  {
    if (a1 > 1380411456)
    {
      if (a1 <= 1717856626)
      {
        if (a1 > 1651926375)
        {
          if (a1 == 1651926376)
          {
            return result;
          }

          v5 = 1717855600;
        }

        else
        {
          if (a1 == 1380411457)
          {
            return result;
          }

          v5 = 1647719528;
        }

        goto LABEL_25;
      }

      if (a1 <= 1751411058)
      {
        if (a1 == 1717856627)
        {
          return result;
        }

        v5 = 1751410032;
        goto LABEL_25;
      }

      if (a1 != 1751411059 && a1 != 1751527984)
      {
        v5 = 1932996149;
        goto LABEL_25;
      }
    }

    else if (a1 > 1278226735)
    {
      if ((a1 - 1278226736) > 6 || ((1 << (a1 - 48)) & 0x45) == 0)
      {
        v5 = 1380410945;
        goto LABEL_25;
      }
    }

    else if (((a1 - 1278226488) > 0x30 || ((1 << (a1 - 56)) & 0x1400000000001) == 0) && a1 != 825306677)
    {
      v5 = 825437747;
LABEL_25:
      if (a1 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CMPhotoCompressionSessionVerifyOptions(uint64_t a1, int a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  v12 = *(a1 + 4) != 1936484717 || a4 == 875704422 || a4 == 1652056888;
  if (v12 || (v17 = a5, CGRectEqualToRect(*(a1 + 176), *&v17)))
  {
    if (*(a1 + 316))
    {
      if (a2 || !a3)
      {
        CMPhotoCompressionSessionVerifyOptions_cold_2(&v19);
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (a2 && *(a1 + 320) != -1)
      {
        CMPhotoCompressionSessionVerifyOptions_cold_3(&v20);
        return v20;
      }
    }
  }

  else
  {
    CMPhotoCompressionSessionVerifyOptions_cold_1(&v18);
    return v18;
  }

  return result;
}

uint64_t CMPhotoCompressionSessionGetBitDepth(int a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a2 == 1785750887;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = 16;
  }

  else
  {
    v5 = 8;
  }

  if (a2 == 1785750887)
  {
    v6 = 16 * (a3 != 0);
  }

  else
  {
    v6 = 10;
  }

  if (a1 != 1278226736)
  {
    v6 = v5;
  }

  if (a1 == 1278226742)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t CMPhotoCompressionSessionCreatePaddedPixelBufferAndClearPadding(const void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, CVPixelBufferRef *a8)
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  pixelBuffer = 0;
  v24 = 0;
  v15 = 128;
  if (a5 + a3 + ~((a3 - 1) % a5) > 0x80)
  {
    v15 = a5 + a3 + ~((a3 - 1) % a5);
  }

  v16 = 64;
  if (a6 + a4 + ~((a4 - 1) % a6) > 0x40)
  {
    v16 = a6 + a4 + ~((a4 - 1) % a6);
  }

  if (a7)
  {
    v17 = a6 + a4 + ~((a4 - 1) % a6);
  }

  else
  {
    v17 = v16;
  }

  if (a7)
  {
    v18 = a5 + a3 + ~((a3 - 1) % a5);
  }

  else
  {
    v18 = v15;
  }

  if (CMPhotoPixelFormatIsAGXVersatile(a2))
  {
    if ((v12 | v9 | v10 | v11))
    {
      CMPhotoCompressionSessionCreatePaddedPixelBufferAndClearPadding_cold_1(&v26);
      v22 = v26;
      goto LABEL_26;
    }

    v12 >>= 1;
    v11 >>= 1;
    v10 >>= 1;
    v9 >>= 1;
    v18 >>= 1;
    v17 >>= 1;
  }

  v19 = CMPhotoSurfacePoolCreatePixelBufferAndReportOrigin(a1, a2, v18, v17, 1, v10, v9, 1, 64, 0, &pixelBuffer, &v24);
  if (!v19)
  {
    v20 = v12 == v18 && v11 == v17;
    if (v20 || ((PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer), CMPhotoPixelFormatIsAGXCompressed(PixelFormatType), !VTFillPixelBufferBorderWithBlack()) || (v19 = VTFillPixelBufferWithBlack(), !v19)) && (v19 = CMPhotoSetPixelBufferCLAP(pixelBuffer, 0, 0, v12, v11, 0, 1), !v19))
    {
      v22 = 0;
      *a8 = pixelBuffer;
      return v22;
    }
  }

  v22 = v19;
LABEL_26:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v22;
}

uint64_t fjes_register()
{
  sCMPhotoJPEGEncodeSessionClass = 0;
  *algn_1EB1EC788 = "CMPhotoJPEGEncodeSession";
  qword_1EB1EC790 = fjes_init;
  unk_1EB1EC798 = 0;
  qword_1EB1EC7A8 = 0;
  unk_1EB1EC7B0 = 0;
  qword_1EB1EC7A0 = fjes_finalize;
  qword_1EB1EC7B8 = fjes_copyFormattingDesc;
  unk_1EB1EC7C0 = 0;
  result = _CFRuntimeRegisterClass();
  sCMPhotoJPEGEncodeSessionID = result;
  return result;
}

double fjes_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fjes_finalize(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      Count = CFArrayGetCount(v2);
      v5 = *(a1 + 24);
      if (Count <= v3)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v5, v3);
      JPEGDeviceInterface_closeDriverConnection(ValueAtIndex);
      ++v3;
      v2 = *(a1 + 24);
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }
  }

LABEL_8:
  os_unfair_lock_unlock((a1 + 32));
  v7 = *(a1 + 40);
  if (v7)
  {

    dispatch_release(v7);
  }
}

uint64_t CMPhotoUnifiedJPEGDecoderPrepare(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6[1];
  v10[0] = *a6;
  v10[1] = v8;
  return _prepare(a1, a2, a4, a5, v10, a7, 1, a8, 0);
}

uint64_t CMPhotoSupportsHEVCHWEncode()
{
  if (CMPhotoSupportsHEVCHWEncode_onceToken != -1)
  {
    CMPhotoSupportsHEVCHWEncode_cold_1();
  }

  return CMPhotoSupportsHEVCHWEncode_hwSupported;
}

CFTypeRef _streamCreate(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void _streamFinalize(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void CMPhotoJPEGQualitySettingsReleaseStorage(void *a1)
{
  if (a1)
  {
    a1[9] = 0;
    a1[10] = 0;
    a1[11] = 0;
    v2 = a1[12];
    if (v2)
    {
      a1[12] = 0;
      free(v2);
    }

    v3 = a1[8];
    if (v3)
    {
      CFRelease(v3);
      a1[8] = 0;
    }
  }
}

double _estimateNewQuality(unint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4, double result)
{
  v5 = 0;
  v6 = result;
  v7 = v6;
  do
  {
    if (_jpegQualityLevels[v5] > v7)
    {
      break;
    }

    ++v5;
  }

  while (v5 != 20);
  v8 = a1 / a2;
  if (v8 < 1.0 && v8 > 0.92)
  {
    LODWORD(v9) = v5 - 1;
    v10 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

LABEL_15:
    *a4 = v10;
    goto LABEL_16;
  }

  v9 = 19;
  while (((a1 / *(a3 + 4 * v5)) * *(a3 + 4 * v9)) >= (a2 * 0.92))
  {
    if (v9-- <= 1)
    {
      LODWORD(v9) = 0;
      break;
    }
  }

  if (v5 == 20)
  {
    LODWORD(v5) = 19;
  }

  v10 = v9 != v5;
  if (a4)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v10)
  {
    if (v9 < 1)
    {
      return 0.01;
    }

    else
    {
      result = 1.0;
      if (v9 <= 0x13)
      {
        return (_jpegQualityLevels[v9 - 1] + _jpegQualityLevels[v9]) * 0.5;
      }
    }
  }

  return result;
}

uint64_t _copyQTableFromData(const void *a1, _OWORD *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFDataGetTypeID())
  {
    _copyQTableFromData_cold_1(&v17);
    return v17;
  }

  Length = CFDataGetLength(a1);
  v6 = Length;
  if (Length == 64 || Length == 128)
  {
    BytePtr = CFDataGetBytePtr(a1);
    if (v6 == 128)
    {
      v8 = 0;
      v9 = *BytePtr;
      v10 = *(BytePtr + 1);
      v11 = *(BytePtr + 3);
      a2[2] = *(BytePtr + 2);
      a2[3] = v11;
      *a2 = v9;
      a2[1] = v10;
      v12 = *(BytePtr + 4);
      v13 = *(BytePtr + 5);
      v14 = *(BytePtr + 7);
      a2[6] = *(BytePtr + 6);
      a2[7] = v14;
      a2[4] = v12;
      a2[5] = v13;
    }

    else
    {
      v15 = 0;
      do
      {
        *(a2 + v15) = BytePtr[v15];
        ++v15;
      }

      while (v15 != 64);
      return 0;
    }

    return v8;
  }

  return FigSignalErrorAtGM();
}

void _copyQTableForQValue(uint64_t a1, unsigned int a2, char *__b, float a4)
{
  v5 = a4;
  if (a4 >= 0.9944)
  {

    memset_pattern16(__b, &unk_1A5ABB3D0, 0x80uLL);
  }

  else
  {
    v6 = &_QTable_ImageIOBase + 128 * a2;
    if (a1 == 8)
    {
      v7 = 0;
      v8 = vdupq_n_s32(0x42C80000u);
      v9 = 200.0 / (v5 * 32.0 * v5 * v5 + 1.0);
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      do
      {
        *&__b[v7] = vmovl_u8(vmax_u8(vmovn_s16(vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&v6[v7])), v9), v8), v10)), vcvtq_s32_f32(vaddq_f32(vdivq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(*&v6[v7])), v9), v8), v10)))), 0x101010101010101));
        v7 += 16;
      }

      while (v7 != 128);
    }

    else
    {
      if (a4 <= 0.7)
      {
        v12 = v5 * -5.74530226 + 5.20945337;
        *&v11 = exp2f(v12);
      }

      else
      {
        v11 = (((a4 + -0.7) * 0.0616) + (0.9944 - v5) * 2.27795911) / 0.294400012;
        *&v11 = v11;
      }

      v13 = 0;
      v14 = vdupq_lane_s32(*&v11, 0);
      v15.i64[0] = 0x1000100010001;
      v15.i64[1] = 0x1000100010001;
      v16.i64[0] = 0xF000F000F000F000;
      v16.i64[1] = 0xF000F000F000F000;
      do
      {
        v17 = *&v6[v13];
        v18 = vcvtq_f32_u32(vmovl_high_u16(v17));
        v19.i64[0] = 0x3F0000003F000000;
        v19.i64[1] = 0x3F0000003F000000;
        v20 = vmlaq_f32(v19, v14, vcvtq_f32_u32(vmovl_u16(*v17.f32)));
        v17.i64[0] = 0x3F0000003F000000;
        v17.i64[1] = 0x3F0000003F000000;
        *&__b[v13] = vminq_u16(vmaxq_u16(vuzp1q_s16(vcvtq_u32_f32(v20), vcvtq_u32_f32(vmlaq_f32(v17, v14, v18))), v15), v16);
        v13 += 16;
      }

      while (v13 != 128);
    }
  }
}

uint64_t _createOutputBufferAttributesForImageIndex_0(void *a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  cf = 0;
  v8 = a1[6];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(v8, a2, &cf, 0);
  v11 = cf;
  if (v10)
  {
    OutputBufferAttributesForReader = v10;
    if (!cf)
    {
      return OutputBufferAttributesForReader;
    }

    goto LABEL_4;
  }

  OutputBufferAttributesForReader = _createOutputBufferAttributesForReader(a1, cf, 0, 0, a3, a4);
  v11 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v11);
  }

  return OutputBufferAttributesForReader;
}

uint64_t _transcodeToJFIF(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  theDict = 0;
  v158 = 0uLL;
  v157 = 0;
  memset(__src, 0, sizeof(__src));
  allocator = CFGetAllocator(a1);
  memset(v155, 0, sizeof(v155));
  v154 = 0;
  cf = 0;
  v151 = 0u;
  v152 = 0u;
  *v150 = 0u;
  v149 = 0;
  *v147 = 0u;
  v148 = 0u;
  v146 = 0u;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a2)
  {
    v10 = CFGetTypeID(a2);
    if (v10 != CFDictionaryGetTypeID())
    {
LABEL_302:
      v43 = 4294950306;
LABEL_311:
      _freeTranscodeAuxiliaryEntries(0, 0);
      v81 = 0;
      v39 = 0;
      v38 = 0;
      goto LABEL_219;
    }
  }

  LODWORD(v150[0]) = 65793;
  *&v152 = 0;
  *&v151 = 0;
  v150[1] = 0;
  DWORD2(v151) = 0;
  if (!a2)
  {
    goto LABEL_18;
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  Value = CFDictionaryGetValue(a2, @"PreserveAndModifyGainMap");
  *&v152 = Value;
  if (!Value)
  {
LABEL_9:
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    BYTE9(v151) = CMPhotoCFDictionaryGetBooleanIfPresent();
    if (CMPhotoCFDictionaryGetIntIfPresent())
    {
      BYTE8(v152) = 1;
    }

    v13 = CFDictionaryGetValue(a2, @"QualityControllerParameters");
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    cf = v13;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    v14 = CFDictionaryGetValue(a2, @"ReplacementImageProperties");
    v150[1] = v14;
    if (!v14 || (v15 = CFGetTypeID(v14), v15 == CFDictionaryGetTypeID()))
    {
      v16 = CFDictionaryGetValue(a2, @"ColorConverter");
      *&v151 = v16;
      if (!v16 || (v17 = CFGetTypeID(v16), v17 == CFDictionaryGetTypeID()))
      {
        CMPhotoCFDictionaryGetBooleanIfPresent();
        goto LABEL_18;
      }
    }

    goto LABEL_302;
  }

  v12 = CFGetTypeID(Value);
  if (v12 == CFDictionaryGetTypeID())
  {
    if (!FigCFDictionaryGetValue())
    {
      goto LABEL_9;
    }

    v116 = 9292;
  }

  else
  {
    v116 = 9286;
  }

  if (!_transcodeToJFIF_cold_1(v116, v162))
  {
    v43 = LODWORD(v162[0]);
    goto LABEL_311;
  }

LABEL_18:
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v18 = a1[6];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  v117 = a5;
  if (!v19)
  {
    v37 = a3;
    v119 = 0;
    v38 = 0;
    v39 = 0;
    v121 = 0;
    v40 = 0;
    v41 = 0;
    MutableCopy = 0;
    v42 = 0;
    v43 = 4294954514;
    goto LABEL_76;
  }

  ItemTypeFromReader = v19(v18, a3, &v170, 0);
  if (ItemTypeFromReader || (v165 = 0, ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(v170, &v165), ItemTypeFromReader))
  {
    v43 = ItemTypeFromReader;
    v37 = a3;
    v119 = 0;
    v38 = 0;
    v39 = 0;
    v121 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_75;
  }

  v125 = a4;
  v21 = v165;
  v164 = 0;
  v163 = -1;
  FirstAuxiliaryOfTypeForInternalIndexWithOptions = CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(a1, a3, 0, 4, @"urn:com:apple:photo:2020:aux:hdrgainmap", &v164, &v163);
  if (FirstAuxiliaryOfTypeForInternalIndexWithOptions)
  {
    v43 = FirstAuxiliaryOfTypeForInternalIndexWithOptions;
    v37 = a3;
    v119 = 0;
    v38 = 0;
    v39 = 0;
    v121 = 0;
    v40 = 0;
    v41 = 0;
    MutableCopy = 0;
LABEL_318:
    v42 = 0;
    goto LABEL_60;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v37 = a3;
    v119 = 0;
    v38 = 0;
    v39 = 0;
    v121 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 4294950305;
    goto LABEL_60;
  }

  if (v21 != 1953325424)
  {
    v37 = a3;
    if (v170)
    {
      v42 = CFRetain(v170);
      v44 = v170;
    }

    else
    {
      v44 = 0;
      v42 = 0;
    }

    v45 = _copyColorInfoForItem(a1, v44, 0, 0, 0, 0, &v168, 0, 0, 0, 0, 0, 0);
    if (v45)
    {
      v43 = v45;
      v119 = 0;
      v38 = 0;
      v39 = 0;
      v121 = 0;
      v40 = 0;
      v41 = 0;
    }

    else
    {
      if (!v164)
      {
        v122 = 0;
        v40 = 0;
        v50 = 0;
        v35 = v37;
        goto LABEL_73;
      }

      v46 = v170;
      v47 = v163;
      v48 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v48)
      {
        v49 = v48(v46, v47, &v171);
        v41 = 0;
        if (v49)
        {
          v43 = v49;
          v38 = 0;
          v39 = 0;
          v121 = 0;
          v40 = 0;
          v119 = 0;
          goto LABEL_60;
        }

        v122 = 0;
        v50 = 0;
        v40 = 0;
        v35 = v37;
LABEL_73:
        *v147 = 0;
        *&v162[0] = 0;
        SubImageCountForIndex = _getSubImageCountForIndex(a1, v35, 0, v162);
        if (SubImageCountForIndex)
        {
          v43 = SubImageCountForIndex;
          v41 = 0;
LABEL_327:
          v119 = 0;
          v38 = 0;
          v39 = 0;
          v121 = 0;
          goto LABEL_60;
        }

        v72 = FigCFDictionaryGetValue();
        v41 = 0;
        if (v21 == 1953325424 || (v164 | v50) != 0)
        {
          v74 = v72;
          if (v72)
          {
            v75 = FigCFDictionaryCreateMutableCopy();
            v41 = v75;
            if (!v75)
            {
LABEL_325:
              v43 = 4294950305;
              goto LABEL_327;
            }

            *&v152 = v75;
            CFDictionarySetValue(MutableCopy, @"PreserveAndModifyGainMap", v75);
            if (v50)
            {
              CMPhotoCFDictionarySetBoolean(v41, @"ApplyTransform", 1);
            }

            v76 = _translateCropForTranscodeIfNeeded(a1, v41, v74, v42, v171);
            if (v76)
            {
              v43 = v76;
              goto LABEL_327;
            }
          }
        }

        if (*&v162[0] <= 0 && !v122)
        {
          v77 = 0;
          v43 = 0;
LABEL_74:
          a4 = v125;
          v119 = v77;
          v39 = MutableCopy;
          v57 = v168;
          v168 = 0;
          v121 = v42;
          v37 = v35;
          v38 = v57;
LABEL_75:
          MutableCopy = 0;
          v42 = 0;
          goto LABEL_76;
        }

        v77 = malloc_type_calloc(*&v162[0] + 1, 0x20uLL, 0x1062040D23FC1D2uLL);
        if (v77)
        {
          *&v146 = a1;
          *(&v146 + 1) = v35;
          LOBYTE(v149) = BYTE11(v151);
          *&v148 = v152;
          *&v147[2] = v77;
          v108 = v77;
          if (v122)
          {
            *v77 = 1;
            v109 = v171;
            if (v171)
            {
              v109 = CFRetain(v171);
            }

            *(v108 + 1) = v109;
            v110 = v169;
            if (v169)
            {
              v110 = CFRetain(v169);
            }

            *(v108 + 2) = v110;
            v111 = v167;
            if (v167)
            {
              v111 = CFRetain(v167);
            }

            *(v108 + 3) = v111;
            v77 = v108;
            *(&v148 + 1) = 0;
            v112 = 1;
          }

          else
          {
            v112 = 0;
          }

          if (*&v162[0] < 1)
          {
            v43 = 0;
          }

          else
          {
            v124 = v112;
            v113 = 0;
            do
            {
              if (v166)
              {
                CFRelease(v166);
                v166 = 0;
              }

              v43 = _copyAuxiliaryImageTypeInfo(a1, v35, v113, v107, &v166, 0);
              if (v43 || CMPhotoGetAuxiliaryImageTypeFromURN() == 3 || (v114 = FigCFEqual()) != 0 && v21 == 1953325424 || !(v114 | BYTE1(v150[0])))
              {
                v77 = v108;
              }

              else
              {
                v77 = v108;
                v115 = &v108[32 * v124];
                *v115 = 0;
                *(v115 + 1) = v113;
                ++v124;
              }

              ++v113;
            }

            while (v113 < *&v162[0]);
            v112 = v124;
          }

          *v147 = v112;
          goto LABEL_74;
        }

        goto LABEL_325;
      }

      v119 = 0;
      v38 = 0;
      v39 = 0;
      v121 = 0;
      v40 = 0;
      v41 = 0;
      v43 = 4294954514;
    }

LABEL_60:
    a4 = v125;
    goto LABEL_76;
  }

  memset(v162, 0, sizeof(v162));
  v24 = _copyFlexRangeDetails(a1[5], v170, 0, v162, 0, &v169, &v172, &v171);
  if (v24)
  {
    v43 = v24;
    v37 = a3;
    v119 = 0;
    v38 = 0;
    v39 = 0;
    v121 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_318;
  }

  v25 = *(v162 + 3) > 0.0 && *(v162 + 2) == 0.0;
  v26 = v25;
  v122 = v26;
  v161 = 1;
  v160 = 1;
  ImageOrientation = _getImageOrientation(a1, v172, 0, &v161);
  if (ImageOrientation)
  {
    goto LABEL_304;
  }

  ImageOrientation = _getImageOrientation(a1, v171, 0, &v160);
  if (ImageOrientation)
  {
    goto LABEL_304;
  }

  v175 = 0;
  if (!v172)
  {
    goto LABEL_51;
  }

  v28 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30 && !v30(FigBaseObject, *MEMORY[0x1E6972310], v28, &v175) && (Int32 = CMPhotoCFNumberGetInt32(v175), v174 = 0, v32 = a1[6], (v33 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0))
  {
    v104 = v33(v32, 1, &v174);
    v34 = 0;
    v35 = -1;
    if (!v104 && v174 >= 1)
    {
      v35 = 0;
      while (1)
      {
        v173 = 0;
        v105 = a1[6];
        v106 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v106 || v106(v105, v35, 0, &v173))
        {
          break;
        }

        v34 = v173 == Int32;
        if (v173 == Int32)
        {
          goto LABEL_38;
        }

        if (++v35 >= v174)
        {
          goto LABEL_296;
        }
      }

      v34 = 0;
LABEL_296:
      v35 = -1;
    }
  }

  else
  {
    v34 = 0;
    v35 = -1;
  }

LABEL_38:
  if (v175)
  {
    CFRelease(v175);
  }

  if (v34)
  {
    v36 = v122 ^ 1 | (v161 != v160);
  }

  else
  {
LABEL_51:
    v36 = 1;
    v35 = a3;
  }

  ImageOrientation = _copyColorInfoForItem(a1, v172, 0, 0, 0, 0, &v168, 0, 0, 0, 0, 0, 0);
  if (ImageOrientation || (ImageOrientation = _copyColorInfoForItem(a1, v170, 0, 0, 0, 0, &v167, 0, 0, 0, 0, 0, 0), ImageOrientation))
  {
LABEL_304:
    v43 = ImageOrientation;
    v37 = a3;
    v40 = 0;
    v42 = 0;
  }

  else
  {
    v51 = FigCFDictionaryGetValue();
    if (v36)
    {
      v37 = a3;
      if (v170)
      {
        v42 = CFRetain(v170);
      }

      else
      {
        v42 = 0;
      }

      v54 = FigCFDictionaryCreateMutableCopy();
      v40 = v54;
      if (!v54)
      {
        v43 = 4294950305;
        goto LABEL_305;
      }

      v55 = CMPhotoCFDictionarySetInt32(v54, @"DecodeToHDROutputMode", 2);
      if (!v55)
      {
        CFDictionarySetValue(MutableCopy, @"DecodeToHDROutput", v40);
        CFDictionarySetValue(MutableCopy, @"ApplyTransform", *MEMORY[0x1E695E4D0]);
        if (v122)
        {
          v50 = v152 != 0;
        }

        else
        {
          CFDictionaryRemoveValue(MutableCopy, @"PreserveAndModifyGainMap");
          *&v152 = 0;
          if (v168)
          {
            CFRelease(v168);
          }

          v50 = 0;
          v56 = v167;
          v167 = 0;
          v168 = v56;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v52 = v51;
      v37 = a3;
      if (v172)
      {
        v42 = CFRetain(v172);
        v53 = v172;
      }

      else
      {
        v53 = 0;
        v42 = 0;
      }

      v55 = _translateCropForTranscodeIfNeeded(a1, MutableCopy, v52, v170, v53);
      v40 = 0;
      if (!v55)
      {
        v50 = 0;
        goto LABEL_73;
      }
    }

    v43 = v55;
  }

LABEL_305:
  a4 = v125;
  v119 = 0;
  v38 = 0;
  v39 = 0;
  v121 = 0;
  v41 = 0;
LABEL_76:
  if (v166)
  {
    CFRelease(v166);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  if (v171)
  {
    CFRelease(v171);
  }

  if (v170)
  {
    CFRelease(v170);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v58 = v37;
  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  v59 = v121;
  if (v168)
  {
    CFRelease(v168);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (v43)
  {
    goto LABEL_299;
  }

  PictureCollectionCodecPool = CMPhotoDecompressionSessionGetPictureCollectionCodecPool(a1[2], &v154);
  if (PictureCollectionCodecPool || (PictureCollectionCodecPool = CMPhotoDecompressionSessionCopyScaler(a1[2], &v158 + 1), PictureCollectionCodecPool) || (PictureCollectionCodecPool = CMPhotoDecompressionSessionCopySurfacePool(a1[2], &v158), PictureCollectionCodecPool) || (v145 = 0, v144 = 0, PictureCollectionCodecPool = CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(a1, v37, 0, 3, 0, &v145, &v144), PictureCollectionCodecPool))
  {
    v43 = PictureCollectionCodecPool;
LABEL_299:
    v81 = 0;
    goto LABEL_217;
  }

  if (v145 && !BYTE9(v151))
  {
    _transcodeToJFIF_cold_4(v162);
    v81 = 0;
    v43 = LODWORD(v162[0]);
  }

  else
  {
    if (!v145 || !BYTE8(v151))
    {
      v62 = v39;
      goto LABEL_111;
    }

    v61 = FigCFDictionaryCreateMutableCopy();
    if (v61)
    {
      v62 = v61;
      CMPhotoCFDictionarySetInt(v61, @"OutputPixelFormat", 1111970369);
      if (v39)
      {
        CFRelease(v39);
      }

LABEL_111:
      inited = CMPhotoDecompressionContainerCopyImagePropertiesForInternalIndex(a1, v37, 0, 0, 0, &theDict);
      if (!inited)
      {
        if (v38)
        {
          v64 = CGColorSpaceUsesITUR_2100TF(v38);
          if (v64 && BYTE10(v151))
          {
            CFRelease(v38);
            v38 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
            LOBYTE(v64) = 1;
          }
        }

        else
        {
          LOBYTE(v64) = 0;
        }

        _determineDecodeStrategy_1();
        if (!inited)
        {
          if (!BYTE8(__src[0]) && (BYTE10(v151) || !v64))
          {
            BYTE8(__src[0]) = 1;
            DWORD1(__src[0]) = 875704422;
          }

          inited = CMPhotoDecompressionContainerInitColorController(v155, v151, v38, 0);
          if (!inited)
          {
            if (!BYTE8(v152))
            {
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              v66 = CFDictionaryGetValue(theDict, *MEMORY[0x1E696DE30]);
              if (!v66 || (v67 = CFDictionaryGetValue(v66, @"26")) == 0 || (v68 = v67, v69 = v38, v70 = CFGetTypeID(v67), v25 = v70 == CFStringGetTypeID(), v38 = v69, !v25) || CFStringCompare(v68, @"q900n", 0) && CFStringCompare(v68, @"q900s", 0) && CFStringCompare(v68, @"q850s", 0) && CFStringCompare(v68, @"q825s", 0) && CFStringCompare(v68, @"q800n", 0) && CFStringCompare(v68, @"q750n", 0))
              {
                HIDWORD(v152) = 4;
                cf = CMPhotoCFNumberCreateInt(2);
                if (!cf)
                {
                  goto LABEL_315;
                }
              }

              else
              {
                SInt32 = FigCFNumberCreateSInt32();
                if (!SInt32)
                {
LABEL_315:
                  v81 = 0;
                  goto LABEL_316;
                }

                HIDWORD(v152) = 4;
                cf = SInt32;
              }
            }

            v79 = v150[1];
            v80 = theDict;
            if (v150[1])
            {
              if (theDict && (CFRelease(theDict), theDict = 0, (v79 = v150[1]) == 0))
              {
                v80 = 0;
              }

              else
              {
                v80 = CFRetain(v79);
              }

              theDict = v80;
            }

            if (!BYTE2(v150[0]) && v80)
            {
              CFRelease(v80);
              theDict = 0;
            }

            v143 = 0;
            if (!LOBYTE(v150[0]))
            {
              v126 = 0;
              goto LABEL_171;
            }

            inited = _getSubImageCountForIndex(a1, v58, 1, &v143);
            if (!inited)
            {
              if (LOBYTE(v150[0]))
              {
                v100 = v143 <= a4;
              }

              else
              {
                v100 = 0;
              }

              v101 = v100;
              v126 = v101;
              if (LOBYTE(v150[0]) && v143 > a4)
              {
                Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v81 = Mutable;
                if (!Mutable)
                {
LABEL_316:
                  v43 = 4294950305;
                  goto LABEL_301;
                }

                CMPhotoCFDictionarySetSize(Mutable, @"MaxPixelSize", 160);
                if (v103 || (v103 = CMPhotoCFDictionarySetBoolean(v81, @"ApplyTransform", BYTE7(__src[4])), v103) || BYTE8(__src[7]) && (v103 = CMPhotoCFDictionarySetBoolean(v81, @"UseVTDecompression", 1), v103) || v151 && BYTE8(__src[0]) && (v103 = CMPhotoCFDictionarySetInt32(v81, @"OutputPixelFormat", SDWORD1(__src[0])), v103) || BYTE11(v151) && (v103 = CMPhotoCFDictionarySetBoolean(v81, @"RestrictedDecoding", BYTE11(v151)), v103))
                {
                  v43 = v103;
                  goto LABEL_301;
                }

                if (BYTE5(__src[1]))
                {
                  _transcodeToJFIF_cold_2(v162);
                  goto LABEL_175;
                }

                v123 = _transcodeThumbnailCallback;
LABEL_177:
                v120 = v62;
                v118 = v38;
                v82 = BYTE4(__src[19]);
                if (BYTE4(__src[19]))
                {
                  v83 = 0;
                  v84 = 1;
                  if (DWORD2(__src[11]) > 8)
                  {
                    v82 = 0;
                  }

                  else if (((1 << SBYTE8(__src[11])) & 0x18) != 0)
                  {
                    v84 = 0;
                    v83 = 1;
                    v82 = 1;
                  }

                  else if (((1 << SBYTE8(__src[11])) & 0x60) != 0)
                  {
                    v84 = 0;
                    v83 = 0;
                    v82 = 2;
                  }

                  else
                  {
                    v82 = 0;
                    if (((1 << SBYTE8(__src[11])) & 0x180) != 0)
                    {
                      v84 = 0;
                      v83 = 0;
                      v82 = 3;
                    }
                  }
                }

                else
                {
                  v83 = 0;
                  v84 = 1;
                }

                v142 = 0;
                v140 = 0u;
                v141 = 0u;
                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v131 = 0u;
                LODWORD(v131) = v82;
                v129[0] = a1;
                memcpy(v130, __src, sizeof(v130));
                v129[1] = v121;
                if (BYTE8(v151))
                {
                  v85 = v145 == 0;
                }

                else
                {
                  v85 = 1;
                }

                v86 = !v85;
                LOBYTE(v139) = v86;
                if (!v85)
                {
                  *(&v139 + 1) = v58;
                  *&v140 = v120;
                }

                *(&v131 + 1) = 0;
                *&v132 = a1;
                v133 = v158;
                *(&v132 + 1) = v154;
                BYTE8(v134) = BYTE1(__src[0]);
                LOBYTE(v134) = BYTE12(__src[19]);
                DWORD1(v134) = DWORD2(__src[4]);
                BYTE9(v134) = BYTE9(__src[6]);
                WORD5(v134) = WORD1(__src[4]);
                BYTE12(v134) = BYTE4(__src[4]);
                BYTE13(v134) = BYTE8(__src[7]);
                *&v135 = *&__src[8];
                DWORD2(v135) = DWORD2(__src[8]);
                BYTE12(v135) = BYTE12(__src[8]);
                *(&v135 + 13) = *(&__src[8] + 13);
                *(&v136 + 1) = *&__src[6];
                *&v136 = *&__src[9];
                if (BYTE5(__src[19]))
                {
                  goto LABEL_199;
                }

                v87 = vcvtd_n_f64_u64(*&__src[12], 1uLL);
                if (vabdd_f64(floor(v87), v87) >= 0.000001)
                {
                  goto LABEL_199;
                }

                v88 = vcvtd_n_f64_u64(*(&__src[12] + 1), 1uLL);
                if (vabdd_f64(floor(v88), v88) >= 0.000001)
                {
                  v86 = 1;
                }

                if (v86)
                {
LABEL_199:
                  v89 = 1;
                }

                else
                {
                  *(&v140 + 1) = *(&__src[1] + 1) / *&__src[12];
                  *&v141 = *&__src[2] / *(&__src[12] + 1);
                  v89 = (*(&__src[2] + 1) + *(&__src[1] + 1) + *&__src[12] + ~((*(&__src[2] + 1) + *(&__src[1] + 1) - 1) % *&__src[12])) / *&__src[12] - *(&__src[1] + 1) / *&__src[12];
                  *(&v141 + 1) = v89;
                  v142 = (*&__src[3] + *&__src[2] + *(&__src[12] + 1) + ~((*&__src[3] + *&__src[2] - 1) % *(&__src[12] + 1))) / *(&__src[12] + 1) - *&__src[2] / *(&__src[12] + 1);
                  if ((v84 | v83) == 1)
                  {
                    *(&v138 + 1) = (*&__src[3] + *&__src[2] + *(&__src[12] + 1) + ~((*&__src[3] + *&__src[2] - 1) % *(&__src[12] + 1))) / *(&__src[12] + 1) - *&__src[2] / *(&__src[12] + 1);
LABEL_201:
                    v128[2] = v58;
                    v128[3] = a4;
                    v128[0] = a1;
                    v128[1] = v81;
                    if (theDict)
                    {
                      v91 = *(&__src[14] + 1);
                      v90 = *&__src[14];
                      updated = CMPhotoUpdateImageProperties(&theDict, BYTE7(__src[4]), 1, *&__src[14], *(&__src[14] + 1));
                      if (updated)
                      {
                        v43 = updated;
                        v39 = v120;
                        v38 = v118;
                        goto LABEL_217;
                      }
                    }

                    else
                    {
                      v91 = *(&__src[14] + 1);
                      v90 = *&__src[14];
                    }

                    v93 = DWORD1(__src[0]);
                    v94 = -2;
                    v95 = BYTE3(v150[0]);
                    while (1)
                    {
                      *(&v137 + 1) = 0;
                      *&v138 = 0;
                      v96 = &_transcodeSourceCallbackFullImageWithAlpha;
                      if (!v139)
                      {
                        v96 = _transcodeSourceCallback;
                      }

                      v97 = CMPhotoJFIFTranscodeStrips(allocator, v90, v91, *(&v138 + 1) > 1uLL, v93, SHIDWORD(v152), cf, v95, BYTE11(v151), SBYTE10(v151), v96, v129, v126, v123, v128, *v147, _transcodeAuxiliaryImageCallback_0, &v146, theDict, v155, v158, *(&v158 + 1), v154, &v157);
                      v43 = v97;
                      if (!v97 || BYTE3(v150[0]))
                      {
                        break;
                      }

                      if (CMPhotoUnifiedJPEGEncoderIsHardwareAvailable())
                      {
                        v95 = 1;
                        BYTE3(v150[0]) = 1;
                        if (!__CFADD__(v94++, 1))
                        {
                          continue;
                        }
                      }

                      v39 = v120;
                      v59 = v121;
                      v38 = v118;
                      goto LABEL_217;
                    }

                    v38 = v118;
                    v59 = v121;
                    if (!v97)
                    {
                      *v117 = v157;
                      v157 = 0;
                    }

                    v39 = v120;
                    goto LABEL_217;
                  }
                }

                *(&v138 + 1) = v89;
                goto LABEL_201;
              }

LABEL_171:
              v81 = 0;
              if (BYTE1(v150[0]) && *v147 >= 1)
              {
                v123 = 0;
                if (BYTE5(__src[1]))
                {
                  _transcodeToJFIF_cold_3(v162);
                  v81 = 0;
LABEL_175:
                  v43 = LODWORD(v162[0]);
LABEL_301:
                  v39 = v62;
                  goto LABEL_217;
                }
              }

              else
              {
                v123 = 0;
              }

              goto LABEL_177;
            }
          }
        }
      }

      v43 = inited;
      v81 = 0;
      goto LABEL_301;
    }

    v81 = 0;
    v43 = 4294950305;
  }

LABEL_217:
  _freeTranscodeAuxiliaryEntries(*v147, v119);
  if (v59)
  {
    CFRelease(v59);
  }

LABEL_219:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (*(&v158 + 1))
  {
    CFRelease(*(&v158 + 1));
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CMPhotoSurfacePoolMarkCachesVolatile(v158, 0);
  if (v158)
  {
    CFRelease(v158);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v43;
}

uint64_t ___decodeItem_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 89);
  v4 = *(a1 + 88);
  v5 = *(a1 + 90);
  v6 = *(a1 + 91);
  v7 = *(a1 + 92);
  v8 = *(a1 + 128);
  v9 = *(a1 + 136);
  v10 = *(a1 + 288);
  v12 = *(a1 + 272);
  v11 = *(a1 + 280);
  v13 = *v11;
  v14 = *(a1 + 256);
  v21[6] = *(a1 + 240);
  v21[7] = v14;
  v22 = v12;
  v15 = *(a1 + 192);
  v21[2] = *(a1 + 176);
  v21[3] = v15;
  v16 = *(a1 + 224);
  v21[4] = *(a1 + 208);
  v21[5] = v16;
  v17 = *(a1 + 160);
  v21[0] = *(a1 + 144);
  v21[1] = v17;
  v18 = *(v11 + 24);
  v20[0] = *(v11 + 8);
  v20[1] = v18;
  result = _transferToCanvas(v2, v3, v4, v5, v6, v7, v8, v9, v21, v10, v20, v13, *(a1 + 292), *(a1 + 300));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _copyMultilayerProperties(uint64_t a1, uint64_t a2, CFTypeRef *a3, void *a4, void *a5, BOOL *a6)
{
  v27 = 0;
  v26 = 0uLL;
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12(FigBaseObject, *MEMORY[0x1E6972328], a1, &v27);
  if ((v13 + 12784) >= 2 && v13 != 0)
  {
    goto LABEL_24;
  }

  v15 = FigPictureReaderGetFigBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
LABEL_18:
    v21 = 4294954514;
    goto LABEL_19;
  }

  v13 = v16(v15, *MEMORY[0x1E6972340], a1, &v26 + 8);
  if ((v13 + 12784) >= 2 && v13 != 0)
  {
LABEL_24:
    v21 = v13;
    goto LABEL_19;
  }

  v18 = FigPictureReaderGetFigBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v20 = v19(v18, *MEMORY[0x1E6972330], a1, &v26);
    if ((v20 + 12784) < 2 || (v21 = v20, !v20))
    {
      v23 = *(&v26 + 1);
      v22 = v26;
      v24 = v26 != 0 || v27 != 0;
      if (a5)
      {
        *a5 = v26;
        *&v26 = 0;
        v22 = 0;
      }

      if (a4)
      {
        *a4 = v23;
        *(&v26 + 1) = 0;
      }

      if (a3)
      {
        *a3 = v27;
        v27 = 0;
      }

      v21 = 0;
      if (a6)
      {
        *a6 = v24;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v21 = 4294954514;
  }

  v22 = v26;
LABEL_36:
  if (v22)
  {
    CFRelease(v22);
  }

LABEL_19:
  if (*(&v26 + 1))
  {
    CFRelease(*(&v26 + 1));
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v21;
}

uint64_t ___getAvailableFreeMemory_block_invoke()
{
  getpid();
  result = sandbox_check();
  _MergedGlobals_7 = result == 0;
  return result;
}

uint64_t _logHang(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134219008;
    v24 = a1;
    v25 = 1024;
    *v26 = a2;
    *&v26[4] = 2048;
    *&v26[6] = a3;
    v27 = 2048;
    v28 = a4;
    v29 = 1024;
    v30 = a5;
    _os_log_impl(&dword_1A5914000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CMPhoto: HangLog: Request ID = %zd; Hang reason code = %d; total tile count = %zd; unfinished tile count = %zd; plugin status = %d", &v23, 0x2Cu);
  }

  if (a6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v16 = *a6;
    v17 = a6[1];
    v23 = 134218240;
    v24 = v16;
    v25 = 2048;
    *v26 = v17;
    _os_log_impl(&dword_1A5914000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CMPhoto: HangLog: imageSize = %zdx%zd", &v23, 0x16u);
  }

  if (a7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v18 = *a7;
    v19 = a7[1];
    v23 = 134218240;
    v24 = v18;
    v25 = 2048;
    *v26 = v19;
    _os_log_impl(&dword_1A5914000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CMPhoto: HangLog: tileSize = %zdx%zd", &v23, 0x16u);
  }

  if (a8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v20 = *a8;
    v21 = a8[1];
    v23 = 134218240;
    v24 = v20;
    v25 = 2048;
    *v26 = v21;
    _os_log_impl(&dword_1A5914000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CMPhoto: HangLog: scaledTileSize = %zdx%zd", &v23, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    _logHang_cold_1();
  }

  getpid();
  return WriteStackshotReportWithPID();
}

uint64_t _getLayerReaderAtPosition(const __CFArray *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a2 + *a4 * a3;
  if (v7 >= CFArrayGetCount(a1))
  {
    _getLayerReaderAtPosition_cold_1(&v11);
    return v11;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    if (ValueAtIndex)
    {
      if (a5)
      {
        v9 = ValueAtIndex;
        result = 0;
        *a5 = v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      _getLayerReaderAtPosition_cold_2(&v12);
      return v12;
    }
  }

  return result;
}

uint64_t _copyAuxiliaryImageMetadataFromCacheForIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, _DWORD *a8)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v11 = *(a1 + 64);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = *"";
  v18[2] = &___copyAuxiliaryImageMetadataFromCacheForIndex_block_invoke;
  v18[3] = &unk_1E77A2470;
  v18[8] = a1 + 40;
  v18[9] = a2;
  v18[10] = a3;
  v18[11] = a1;
  v18[12] = a4;
  v18[13] = a5;
  v18[4] = &v31;
  v18[5] = &v27;
  v18[6] = &v23;
  v18[7] = &v19;
  dispatch_sync(v11, v18);
  if (!*(v32 + 6))
  {
    if (a6)
    {
      v12 = v28;
      *a6 = v28[3];
      v12[3] = 0;
    }

    if (a7)
    {
      v13 = v24;
      *a7 = v24[3];
      v13[3] = 0;
    }

    if (a8)
    {
      *a8 = *(v20 + 6);
    }
  }

  v14 = v28[3];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v24[3];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v32 + 6);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  return v16;
}

uint64_t _copySubImageFormatDescriptionForIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  if (!a5)
  {
    return 0;
  }

  _copySubImageReaderForIndex();
  if (v9)
  {
    return v9;
  }

  v10 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    return 4294954514;
  }

  v5 = v12(FigBaseObject, *MEMORY[0x1E69722F8], v10, &v13);
  if (!v5)
  {
    *a5 = v13;
  }

  return v5;
}

uint64_t _transcodeSourceCallback(uint64_t a1, __CVBuffer **a2)
{
  v53 = 0;
  v3 = *(a1 + 448);
  v2 = *(a1 + 456);
  if (v3 >= v2 || (v4 = a1, *(a1 + 464)))
  {
    v43 = 4294950304;
    goto LABEL_55;
  }

  v5 = a2;
  if (v2 >= 2)
  {
    v6 = *(a1 + 336);
    v7 = *(a1 + 208);
    v8 = *(a1 + 216);
    v48 = *(a1 + 496);
    v49 = *(a1 + 488);
    v46 = *(a1 + 296);
    v47 = *(a1 + 288);
    v9 = *(a1 + 304) + v47;
    v10 = *(a1 + 312) + v46;
    v11 = ~v3 + v2;
    v12 = *(a1 + 272);
    v13 = *(a1 + 280);
    while (1)
    {
      memcpy(__dst, (a1 + 16), sizeof(__dst));
      v14 = 1;
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v14 = 0;
          v15 = *&__dst[12];
          v16 = *&__dst[12] * v3;
LABEL_15:
          v17 = &__dst[1] + 1;
          v18 = &__dst[2] + 1;
LABEL_16:
          *v17 += v16;
          v19 = *v18 - v16;
          if (v15 >= v19)
          {
            v15 = v19;
          }

          *v18 = v15;
          goto LABEL_19;
        }

        if (v6 == 3)
        {
          v14 = 0;
          v15 = *&__dst[12];
          v16 = v11 * *&__dst[12];
          goto LABEL_15;
        }
      }

      else
      {
        if (!v6)
        {
          v15 = *(&__dst[12] + 1);
          v16 = *(&__dst[12] + 1) * v3;
          goto LABEL_13;
        }

        if (v6 == 1)
        {
          v15 = *(&__dst[12] + 1);
          v16 = v11 * *(&__dst[12] + 1);
LABEL_13:
          v17 = &__dst[2];
          v18 = &__dst[3];
          goto LABEL_16;
        }
      }

LABEL_19:
      v20 = 0;
      v21 = v12 * (*(&__dst[1] + 1) / v7 - v49);
      v22 = v13 * (*&__dst[2] / v8 - v48);
      if (v21 <= v47)
      {
        v21 = v47;
      }

      if (v22 <= v46)
      {
        v22 = v46;
      }

      v23 = v12 * ((v7 + *(&__dst[2] + 1) + *(&__dst[1] + 1) + ~((*(&__dst[2] + 1) + *(&__dst[1] + 1) - 1) % v7)) / v7 - v49);
      if (v23 >= v9)
      {
        v23 = v9;
      }

      if (v13 * ((v8 + *&__dst[3] + *&__dst[2] + ~((*&__dst[3] + *&__dst[2] - 1) % v8)) / v8 - v48) >= v10)
      {
        v24 = v10;
      }

      else
      {
        v24 = v13 * ((v8 + *&__dst[3] + *&__dst[2] + ~((*&__dst[3] + *&__dst[2] - 1) % v8)) / v8 - v48);
      }

      v25 = v23 - v21;
      if (v23 <= v21)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = v24 > v22;
        v30 = v24 - v22;
        if (v29)
        {
          v20 = v30;
          v26 = v25;
          v27 = v22;
          v28 = v21;
        }
      }

      *&__dst[17] = v28 % v12;
      *(&__dst[17] + 1) = v27 % v13;
      *&__dst[18] = v26;
      *(&__dst[18] + 1) = v20;
      __dst[15] = __dst[18];
      __dst[13] = __dst[18];
      if (v14)
      {
        __dst[14] = __dst[18];
      }

      else
      {
        __dst[14] = vextq_s8(__dst[13], __dst[13], 8uLL);
      }

      ++v3;
      v31 = __dst[15];
      if (v3 < v2)
      {
        --v11;
        if (!*&__dst[15] || !*(&__dst[15] + 1))
        {
          continue;
        }
      }

      v4 = a1;
      *(a1 + 448) = v3;
      if (v31 && *(&v31 + 1))
      {
        v32 = *(a1 + 392);
        v51[2] = *(a1 + 376);
        v51[3] = v32;
        v33 = *(a1 + 424);
        v51[4] = *(a1 + 408);
        v51[5] = v33;
        v34 = *(a1 + 360);
        v51[0] = *(a1 + 344);
        v51[1] = v34;
        _applyDecodeStrategy();
        if (!v35)
        {
          v5 = a2;
          goto LABEL_45;
        }

LABEL_50:
        v43 = v35;
      }

      else
      {
        _transcodeSourceCallback_cold_3(v51);
        v43 = LODWORD(v51[0]);
      }

LABEL_55:
      if (v53)
      {
        CFRelease(v53);
      }

      return v43;
    }
  }

  v36 = *(a1 + 392);
  __dst[2] = *(a1 + 376);
  __dst[3] = v36;
  v37 = *(a1 + 424);
  __dst[4] = *(a1 + 408);
  __dst[5] = v37;
  v38 = *(a1 + 360);
  __dst[0] = *(a1 + 344);
  __dst[1] = v38;
  _applyDecodeStrategy();
  if (v35)
  {
    goto LABEL_50;
  }

  ++v4[56];
LABEL_45:
  v39 = v53;
  CMPhotoGetPixelBufferCLAPAsRect(v53);
  v42 = (v41 + v4[55]);
  v4[55] = v42;
  if (v4[31] < v42)
  {
    _transcodeSourceCallback_cold_2(__dst);
LABEL_53:
    v43 = LODWORD(__dst[0]);
    goto LABEL_55;
  }

  if (v40 != v4[30])
  {
    _transcodeSourceCallback_cold_1(__dst);
    goto LABEL_53;
  }

  v43 = 0;
  if (!v5)
  {
    goto LABEL_55;
  }

  *v5 = v39;
  return v43;
}

void _freeTranscodeAuxiliaryEntries(uint64_t a1, char *a2)
{
  if (a2)
  {
    v3 = a1;
    if (a1 >= 1)
    {
      v4 = a2 + 16;
      do
      {
        if (*(v4 - 16))
        {
          v5 = *(v4 - 1);
          if (v5)
          {
            CFRelease(v5);
            *(v4 - 1) = 0;
          }

          if (*v4)
          {
            CFRelease(*v4);
            *v4 = 0;
          }

          v6 = *(v4 + 1);
          if (v6)
          {
            CFRelease(v6);
            *(v4 + 1) = 0;
          }
        }

        v4 += 32;
        --v3;
      }

      while (v3);
    }

    free(a2);
  }
}

uint64_t _translateCropForTranscodeIfNeeded(uint64_t a1, __CFDictionary *a2, uint64_t a3, const void *a4, const void *a5)
{
  if (!a3)
  {
    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  result = CMPhotoPictureReaderGetImageGeometryFromPictureReader(a4, 0, &v23, 0);
  if (!result)
  {
    v11 = v24;
    result = CMPhotoPictureReaderGetImageGeometryFromPictureReader(a5, 0, &v23, 0);
    if (!result)
    {
      v12 = v24;
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      result = CMPhotoDecompressionContainerValidateSourceCropRect(a3);
      if (!result)
      {
        v18 = 1;
        v19 = 1;
        result = _getImageOrientation(a1, a4, 0, &v19);
        if (!result)
        {
          result = _getImageOrientation(a1, a5, 0, &v18);
          if (!result)
          {
            v16 = 0u;
            v17 = 0u;
            v15[0] = v20;
            v15[1] = v21;
            result = CMPhotoTranslateAndScalePreOrientationCrop(v11, *(&v11 + 1), v15, v19, v12, *(&v12 + 1), v18, &v16, 0);
            if (!result)
            {
              v25.origin.x = v16;
              v25.origin.y = *(&v16 + 1);
              v25.size.width = v17;
              v25.size.height = *(&v17 + 1);
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v25);
              if (DictionaryRepresentation)
              {
                v14 = DictionaryRepresentation;
                CFDictionarySetValue(a2, @"SourceCropRect", DictionaryRepresentation);
                CFRelease(v14);
                return 0;
              }

              else
              {
                return 4294950305;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t TileIterator_stepAndReportPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 56);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t TileIterator_moveToPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 56);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t TileIterator_getTileItemType(uint64_t a1, void *a2)
{
  cf = 0;
  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  ItemTypeFromReader = v4(CMBaseObject, *MEMORY[0x1E69723A0], *MEMORY[0x1E695E480], &cf);
  v6 = cf;
  if (!ItemTypeFromReader)
  {
    ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(cf, a2);
    v6 = cf;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return ItemTypeFromReader;
}

void _callback_TileIterator_decodeTileAsync(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6)
{
  v10 = *a6;
  v11 = a6[1];
  v12 = a6[2];
  v14 = *(a6 + 3);
  v13 = *(a6 + 4);
  free(a6);
  v14(v10, a2, a3, v11, v12, a4, a5, v13);
  if (v10)
  {

    CFRelease(v10);
  }
}

void OUTLINED_FUNCTION_49()
{
  STACK[0x478] = 0;
  STACK[0x470] = 0;
  STACK[0x468] = 0;
  STACK[0x460] = 0;
  STACK[0x458] = 0;
  STACK[0x450] = 0;
}

void OUTLINED_FUNCTION_68_0(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58)
{
  STACK[0x488] = a1;
  STACK[0x490] = a35;
  STACK[0x498] = a58;
}

uint64_t OUTLINED_FUNCTION_78_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __CFData **a9)
{

  return CMPhotoPictureReaderCreateContiguousDataFromChunks(v9, a2, a3, a4, a5, 0, a7, 0, a9);
}

uint64_t OUTLINED_FUNCTION_79_0@<X0>(uint64_t a1@<X8>)
{

  return _getScaledEvenCropRect(v5 - 256, v1, v4, v2, v3, a1);
}

void OUTLINED_FUNCTION_88_0()
{
  *(v0 - 256) = 0;
  STACK[0x480] = 0;
  STACK[0x680] = 0;
  STACK[0x6B0] = 0;
}

uint64_t OUTLINED_FUNCTION_115()
{

  return _getImageOrientation(v0, v1, 0, &STACK[0x36C]);
}

uint64_t OUTLINED_FUNCTION_117()
{

  return CMBaseObjectGetVTable();
}

void *OUTLINED_FUNCTION_120(void *a1)
{

  return memcpy(a1, v1, 0x60uLL);
}

uint64_t _convergeQPMapForLargerCUSize(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v5 = a3 >> 1;
    v6 = (result + 1);
    v7 = (result + 1 + a2);
    v8 = 2 * a2;
    do
    {
      v9 = a2 >> 1;
      v10 = v6;
      v11 = v7;
      if (a2 >= 2)
      {
        do
        {
          v12 = *(v10 - 1);
          LODWORD(result) = *v10;
          v13 = *(v11 - 1);
          if (v13 >= *v11)
          {
            v13 = *v11;
          }

          if (result >= v13)
          {
            result = v13;
          }

          else
          {
            result = result;
          }

          if (result < v12)
          {
            LOBYTE(v12) = result;
          }

          *a4++ = v12;
          v11 += 2;
          v10 += 2;
          --v9;
        }

        while (v9);
      }

      ++v4;
      v7 += v8;
      v6 += v8;
    }

    while (v4 != v5);
  }

  return result;
}

unint64_t CMPhotoGetDataSizeFromWidthAndHeight(int a1, uint64_t a2, uint64_t a3)
{
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(a1);
  result = 0;
  if (a1 > 1652056887)
  {
    if (a1 <= 1936077361)
    {
      if (a1 <= 1751527983)
      {
        if (a1 <= 1734505011)
        {
          if (a1 > 1717856626)
          {
            if (a1 != 1717856627)
            {
              v8 = 1734501176;
              goto LABEL_114;
            }
          }

          else if (a1 != 1652056888)
          {
            v8 = 1717855600;
            goto LABEL_114;
          }
        }

        else if (a1 <= 1735549751)
        {
          if (a1 != 1734505012)
          {
            v8 = 1735549492;
            goto LABEL_114;
          }
        }

        else if (a1 != 1735549752 && a1 != 1751410032)
        {
          v8 = 1751411059;
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (a1 <= 1885745711)
      {
        if (a1 > 1815361649)
        {
          if (a1 != 1815361650 && a1 != 1815491698)
          {
            if (a1 != 1882468912)
            {
              return result;
            }

            return 4 * ((a2 + 2) / 3uLL * a3 + (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) + 2) / 3 * ((a3 + 1) >> 1));
          }

          goto LABEL_115;
        }

        if (a1 != 1751527984)
        {
          v8 = 1815162994;
          goto LABEL_114;
        }

        return BytesPerPixelForPixelFormat * (a3 * a2 + ((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) * ((a3 + 1) >> 1));
      }

      if (a1 > 1919379251)
      {
        if (a1 != 1919379252 && a1 != 1932996149)
        {
          v10 = 1936077360;
          goto LABEL_91;
        }

LABEL_115:
        v13 = a3 * a2;
        return v13 * BytesPerPixelForPixelFormat;
      }

      if (a1 == 1885745712)
      {
        return 4 * ((a2 + 2) / 3uLL * a3 + (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) + 2) / 3 * ((a3 + 1) >> 1));
      }

      v8 = 1919378232;
LABEL_114:
      if (a1 != v8)
      {
        return result;
      }

      goto LABEL_115;
    }

    if (a1 <= 1953903153)
    {
      if (a1 > 1937126451)
      {
        if (a1 <= 1952854577)
        {
          if (a1 != 1937126452)
          {
            v10 = 1952854576;
LABEL_91:
            if (a1 != v10)
            {
              return result;
            }

            return BytesPerPixelForPixelFormat * (a3 * a2 + ((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) * ((a3 + 1) >> 1));
          }
        }

        else
        {
          if (a1 == 1952854578)
          {
            goto LABEL_108;
          }

          if (a1 != 1952855092)
          {
            v10 = 1953903152;
            goto LABEL_91;
          }
        }

        return 3 * a3 * a2 * BytesPerPixelForPixelFormat;
      }

      if (a1 <= 1937125935)
      {
        if (a1 == 1936077362)
        {
          goto LABEL_108;
        }

        v9 = 1936077876;
        goto LABEL_101;
      }

      if (a1 == 1937125936)
      {
        return BytesPerPixelForPixelFormat * (a3 * a2 + ((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) * ((a3 + 1) >> 1));
      }

      v12 = 1937125938;
    }

    else
    {
      if (a1 <= 2019963439)
      {
        if (a1 > 2016686639)
        {
          if (a1 == 2016686640)
          {
            return BytesPerPixelForPixelFormat * (a3 * a2 + ((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) * ((a3 + 1) >> 1));
          }

          if (a1 != 2016686642)
          {
            v9 = 2016687156;
            goto LABEL_101;
          }

LABEL_108:
          v13 = (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) + a2) * a3;
          return v13 * BytesPerPixelForPixelFormat;
        }

        if (a1 == 1953903154)
        {
          goto LABEL_108;
        }

        v9 = 1953903668;
LABEL_101:
        if (a1 != v9)
        {
          return result;
        }

        return 3 * a3 * a2 * BytesPerPixelForPixelFormat;
      }

      if (a1 > 2019963955)
      {
        if (a1 != 2019963956)
        {
          if (a1 != 2037741158)
          {
            v8 = 2037741171;
            goto LABEL_114;
          }

          goto LABEL_115;
        }

        return 3 * a3 * a2 * BytesPerPixelForPixelFormat;
      }

      if (a1 == 2019963440)
      {
        return BytesPerPixelForPixelFormat * (a3 * a2 + ((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) * ((a3 + 1) >> 1));
      }

      v12 = 2019963442;
    }

LABEL_107:
    if (a1 != v12)
    {
      return result;
    }

    goto LABEL_108;
  }

  if (a1 <= 1278226487)
  {
    if (a1 <= 843264055)
    {
      if (a1 <= 643970674)
      {
        if (a1 > 642527541)
        {
          if (a1 != 642527542)
          {
            v8 = 643970664;
            goto LABEL_114;
          }
        }

        else if (a1 != 642527288)
        {
          v8 = 642527336;
          goto LABEL_114;
        }
      }

      else if (a1 <= 645423927)
      {
        if (a1 != 643970675)
        {
          v8 = 645161784;
          goto LABEL_114;
        }
      }

      else if (a1 != 645423928 && a1 != 825306677)
      {
        v8 = 825437747;
        goto LABEL_114;
      }

      goto LABEL_115;
    }

    if (a1 <= 875704933)
    {
      if (a1 > 875704421)
      {
        if (a1 == 875704422)
        {
          return BytesPerPixelForPixelFormat * (a3 * a2 + ((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) * ((a3 + 1) >> 1));
        }

        v10 = 875704438;
        goto LABEL_91;
      }

      if (a1 != 843264056)
      {
        v8 = 843264310;
        goto LABEL_114;
      }

      goto LABEL_115;
    }

    if (a1 > 875836517)
    {
      if (a1 != 875836518 && a1 != 875836534)
      {
        v8 = 1111970369;
        goto LABEL_114;
      }

      return 3 * a3 * a2 * BytesPerPixelForPixelFormat;
    }

    if (a1 == 875704934)
    {
      goto LABEL_108;
    }

    v12 = 875704950;
    goto LABEL_107;
  }

  if (a1 > 1380410944)
  {
    if (a1 > 1650943795)
    {
      if (a1 > 1651847471)
      {
        if (a1 != 1651847472 && a1 != 1651925816)
        {
          v8 = 1651926376;
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (a1 == 1650943796)
      {
        goto LABEL_115;
      }

      v8 = 1651519798;
      goto LABEL_114;
    }

    if (a1 > 1647589489)
    {
      if (a1 != 1647589490 && a1 != 1647719528)
      {
        v8 = 1650942776;
        goto LABEL_114;
      }

      goto LABEL_115;
    }

    if (a1 == 1380410945)
    {
      goto LABEL_115;
    }

    v11 = 26689;
LABEL_111:
    v8 = v11 | 0x52470000;
    goto LABEL_114;
  }

  if (a1 <= 1278226735)
  {
    if ((a1 - 1278226488) <= 0x30 && ((1 << (a1 - 56)) & 0x1400000000001) != 0)
    {
      goto LABEL_115;
    }
  }

  else
  {
    if (a1 > 1279340599)
    {
      if (a1 == 1279340600 || a1 == 1279340854)
      {
        goto LABEL_115;
      }

      v11 = 16961;
      goto LABEL_111;
    }

    if ((a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
    {
      goto LABEL_115;
    }
  }

  return result;
}

uint64_t CMPhotoGetUnpackedPixelFormatFromPackedPixelFormat(int a1)
{
  if (a1 == 1885746228)
  {
    v1 = 2019963956;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 1885745714)
  {
    v2 = 2019963442;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 1885745712)
  {
    v3 = 2019963440;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1882469428)
  {
    v4 = 2016687156;
  }

  else
  {
    v4 = a1;
  }

  if (a1 == 1882468914)
  {
    v5 = 2016686642;
  }

  else
  {
    v5 = v4;
  }

  if (a1 == 1882468912)
  {
    v6 = 2016686640;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 1885745711)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t CMPhotoGetAGXCompressedPixelFormatFromPixelFormat(uint64_t result)
{
  if (result <= 1651925815)
  {
    if (result <= 1278226741)
    {
      if (result == 1278226488)
      {
        return 642527288;
      }

      if (result != 1278226536)
      {
        return result;
      }

      return 642527336;
    }

    v1 = 1278226742;
    v2 = 642527542;
    v3 = result == 1651519798;
    v4 = 643970675;
  }

  else
  {
    if (result > 1652056887)
    {
      if (result == 1751411059)
      {
        return 644375667;
      }

      if (result != 1751410032)
      {
        if (result == 1652056888)
        {
          return 645423928;
        }

        else
        {
          return result;
        }
      }

      return 642527336;
    }

    v1 = 1651925816;
    v2 = 645161784;
    v3 = result == 1651926376;
    v4 = 643970664;
  }

  if (!v3)
  {
    v4 = result;
  }

  if (result == v1)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t CMPhotoGetUncompressedUnpackedPixelFormatFromCompressedPackedPixelFormat(int a1)
{
  UnpackedPixelFormatFromPackedPixelFormat = CMPhotoGetUnpackedPixelFormatFromPackedPixelFormat(a1);

  return CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(UnpackedPixelFormatFromPackedPixelFormat);
}

uint64_t CMPhotoPixelFormatContainsGrayScale(OSType pixelFormat)
{
  v3 = 0;
  if (pixelFormat)
  {
    if (pixelFormat == 843264310 || pixelFormat == 843264056)
    {
      return 1;
    }

    else
    {
      v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
      FigCFDictionaryGetBooleanIfPresent();
      if (v1)
      {
        CFRelease(v1);
      }
    }
  }

  return v3;
}

uint64_t CMPhotoPixelFormatContainsAlpha(signed int pixelFormat)
{
  v4 = 0;
  if (pixelFormat > 843264309)
  {
    if (pixelFormat == 843264310)
    {
      return 1;
    }

    v1 = 1380401729;
  }

  else
  {
    if (!pixelFormat)
    {
      return v4;
    }

    v1 = 843264056;
  }

  if (pixelFormat == v1)
  {
    return 1;
  }

  v3 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
  FigCFDictionaryGetBooleanIfPresent();
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t CMPhotoPixelFormatIsPackedRAW(int a1)
{
  result = 1;
  if (a1 > 1734504495)
  {
    if (a1 != 1734504496 && a1 != 1735553072)
    {
      v3 = 1919381552;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 1650946096 && a1 != 1650946098)
  {
    v3 = 1651798066;
    goto LABEL_8;
  }

  return result;
}

uint64_t CMPhotoPixelFormatIs420(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  result = 1;
  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1936077359)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1751527983)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 875704422)
      {
        return result;
      }

      v3 = 875704438;
      goto LABEL_15;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 1751527984 || UncompressedPixelFormatFromCompressedPixelFormat == 1882468912)
    {
      return result;
    }

    v3 = 1885745712;
LABEL_15:
    if (UncompressedPixelFormatFromCompressedPixelFormat != v3)
    {
      return 0;
    }

    return result;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 1953903151)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat == 1953903152 || UncompressedPixelFormatFromCompressedPixelFormat == 2016686640)
    {
      return result;
    }

    v3 = 2019963440;
    goto LABEL_15;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat != 1936077360 && UncompressedPixelFormatFromCompressedPixelFormat != 1937125936)
  {
    v3 = 1952854576;
    goto LABEL_15;
  }

  return result;
}

uint64_t CMPhotoPixelFormatIs422(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  result = 1;
  if (UncompressedPixelFormatFromCompressedPixelFormat > 1937125937)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1953903153)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1937125938)
      {
        return result;
      }

      v3 = 1952854578;
      goto LABEL_14;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1953903154 && UncompressedPixelFormatFromCompressedPixelFormat != 2016686642)
    {
      v3 = 2019963442;
LABEL_14:
      if (UncompressedPixelFormatFromCompressedPixelFormat != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1882468913)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 875704934)
      {
        return result;
      }

      v3 = 875704950;
      goto LABEL_14;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1882468914 && UncompressedPixelFormatFromCompressedPixelFormat != 1885745714)
    {
      v3 = 1936077362;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t CMPhotoPixelFormatIs444(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  result = 1;
  if (UncompressedPixelFormatFromCompressedPixelFormat > 1937126451)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1953903667)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1937126452)
      {
        return result;
      }

      v3 = 1952855092;
      goto LABEL_14;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1953903668 && UncompressedPixelFormatFromCompressedPixelFormat != 2016687156)
    {
      v3 = 2019963956;
LABEL_14:
      if (UncompressedPixelFormatFromCompressedPixelFormat != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1882469427)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 875836518)
      {
        return result;
      }

      v3 = 875836534;
      goto LABEL_14;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1882469428 && UncompressedPixelFormatFromCompressedPixelFormat != 1885746228)
    {
      v3 = 1936077876;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t CMPhotoPixelFormatIsBayer14Bits(int a1)
{
  result = 1;
  if (a1 > 1735549491)
  {
    if (a1 == 1735549492)
    {
      return result;
    }

    v3 = 1919379252;
  }

  else
  {
    if (a1 == 1650943796)
    {
      return result;
    }

    v3 = 1734505012;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(int a1)
{
  result = 1;
  if (a1 > 1735549751)
  {
    if (a1 == 1735549752)
    {
      return result;
    }

    v3 = 1919378232;
  }

  else
  {
    if (a1 == 1650942776)
    {
      return result;
    }

    v3 = 1734501176;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t CMPhotoGetRegroupBayerPatternFromBayerPattern(int a1, int a2, unsigned int a3, _DWORD *a4)
{
  result = 4294950303;
  if (a3 <= 8)
  {
    if (((1 << a3) & 0xB) != 0)
    {
      if ((a2 | a1))
      {
        CMPhotoGetRegroupBayerPatternFromBayerPattern_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      if (((1 << a3) & 0x120) == 0)
      {
        return result;
      }

      if (((a2 | a1) & 3) != 0)
      {
        CMPhotoGetRegroupBayerPatternFromBayerPattern_cold_2(&v7);
        return v7;
      }
    }

    if ((0x12Bu >> a3))
    {
      result = 0;
      if (a4)
      {
        *a4 = dword_1A5ABB494[a3];
      }
    }
  }

  return result;
}

uint64_t CMPhotoGetBayerPatternFromRegroupBayerPattern(int a1, _DWORD *a2)
{
  v2 = a1 - 7;
  if ((a1 - 7) > 5 || ((0x3Du >> v2) & 1) == 0)
  {
    return 4294950303;
  }

  result = 0;
  if (a2)
  {
    *a2 = dword_1A5ABB4B8[v2];
  }

  return result;
}

void *CMPhotoCascadingDownscaleCreate(unint64_t a1, int a2, const void *a3, const void *a4, int a5, int a6)
{
  valuePtr = 2;
  v12 = malloc_type_calloc(1uLL, 0x68uLL, 0x1030040F0A01298uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = a1;
    *v12 = a2;
    if (a3 && a5 >= 1)
    {
      v14 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
      *(v13 + 2) = v14;
      memcpy(v14, a3, 8 * a5);
    }

    if (a4 && a5 >= 1)
    {
      v15 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
      *(v13 + 3) = v15;
      memcpy(v15, a4, 4 * a5);
    }

    *(v13 + 8) = a5;
    if (a6 == 892679473)
    {
      v28 = 0;
      getScalerCapabilities(0, &v28, 0);
      if (v28)
      {
        a6 = 892679473;
      }

      else
      {
        a6 = 1278555701;
      }
    }

    *(v13 + 3) = a6;
    v16 = *MEMORY[0x1E695E480];
    IOSurfaceAcceleratorCreate();
    if (*(v13 + 9))
    {
      *(v13 + 10) = IOSurfaceAcceleratorGetRunLoopSource();
      v17 = MEMORY[0x1E695E9D8];
      v18 = MEMORY[0x1E695E9E8];
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v13 + 11) = Mutable;
      v20 = *MEMORY[0x1E69A84D0];
      v21 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69A84D0], *MEMORY[0x1E695E4D0]);
      *(v13 + 12) = CFDictionaryCreateMutable(0, 0, v17, v18);
      v22 = CFNumberCreate(v16, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(*(v13 + 12), v20, v21);
      CFDictionarySetValue(*(v13 + 12), @"DitherControl", v22);
      CFRelease(v22);
      if (a3 && a2 && HIDWORD(a1) && a1 && a6)
      {
        buildTopRectAndSurface(*(v13 + 1), *(v13 + 2), *v13, 1, *(v13 + 2), *(v13 + 8), v13 + 6, v13 + 14, v13 + 5);
      }

      v23 = *(v13 + 2);
      if (v23)
      {
        v24 = *(v13 + 3);
        if (v24)
        {
          *(v13 + 8) = buildDestSurface(v24, v23, *(v13 + 8));
        }
      }

      getScalerCapabilities(0, 0, 0);
    }

    else
    {
      v25 = *(v13 + 2);
      if (v25)
      {
        free(v25);
      }

      free(v13);
      return 0;
    }
  }

  return v13;
}

void buildTopRectAndSurface(int a1, int a2, OSType a3, int a4, int *a5, int a6, char **a7, int *a8, IOSurfaceRef *a9)
{
  v10 = a4;
  v15 = a5 + 1;
  v14 = a5[1];
  if (*a5 <= v14)
  {
    v16 = a5[1];
  }

  else
  {
    v16 = *a5;
  }

  if (a1 > a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = *a5 * a2 / a1;
  }

  if (a1 > a2)
  {
    v18 = v14 * a1 / a2;
  }

  else
  {
    v18 = v16;
  }

  if (a6 >= 2)
  {
    v19 = a6 - 1;
    v20 = a5 + 3;
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      if (v22 > v18 || v21 > v17)
      {
        if (v22 <= v21)
        {
          v24 = *v20;
        }

        else
        {
          v24 = *(v20 - 1);
        }

        v25 = v22 * a2;
        v26 = v21 * a1 / a2;
        if (a1 <= a2)
        {
          v26 = v24;
        }

        v27 = v25 / a1;
        if (a1 > a2)
        {
          v27 = v24;
        }

        if (v26 > v18 || v27 > v17)
        {
          v17 = v27;
          v18 = v26;
        }
      }

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  if ((a4 & 1) == 0 && v18 >= (a1 + 3) >> 2 && v17 >= (a2 + 3) >> 2)
  {
    if (a6 <= 1)
    {
      return;
    }

LABEL_52:
    v37 = 0;
    v38 = *a5;
    v39 = a5[1];
LABEL_53:
    v40 = &a5[2 * a6];
    v41 = *(v40 - 2);
    while (v38 > v41 || v39 > *(v40 - 1))
    {
      v38 = (v38 + 3) >> 2;
      v39 = (v39 + 3) >> 2;
      if (v38 <= v41 && v39 <= *(v40 - 1))
      {
        break;
      }

      ++v37;
    }

    goto LABEL_59;
  }

  v30 = 1;
  v31 = a1;
  v32 = a2;
  do
  {
    v32 = (v32 + 3) >> 2;
    v31 = (v31 + 3) >> 2;
    --v30;
  }

  while (v31 > v18 || v32 > v17);
  v34 = v31 != v18;
  v35 = v32 != v17;
  if (v35 >= v34)
  {
    v35 = v34;
  }

  if (v35 >= (v30 != 0))
  {
    v35 = v30 != 0;
  }

  v36 = v35 - v30;
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = a4;
  }

  if (a6 > 1)
  {
    v38 = v18;
    v39 = v17;
    if (v37)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_59:
  if (v37 < 1)
  {
    return;
  }

  v42 = v37;
  v77 = malloc_type_calloc(1uLL, 24 * v37, 0x1000040504FFAC1uLL);
  v43 = (a1 + 3) >> 2;
  if ((v10 & 1) != 0 || v43 > v18 || v17 < (a2 + 3) >> 2)
  {
    v44 = (a2 + 3) >> 2;
    v45 = v43 <= v18 && v44 <= v17;
    v46 = v45;
    v47 = 0;
    v48 = 0;
    if (v45)
    {
      v49 = v77;
      if (v10)
      {
LABEL_80:
        v52 = &v49[24 * v47];
        *(v52 + 2) = v18;
        *(v52 + 3) = v17;
        *(v52 + 1) = v48;
        v48 += v17;
        ++v47;
        goto LABEL_82;
      }
    }

    else
    {
      v49 = v77;
      v50 = v77 + 3;
      do
      {
        do
        {
          *(v50 - 1) = v43;
          *v50 = v44;
          *(v50 - 2) = v48;
          v48 += v44;
          v44 = (v44 + 3) >> 2;
          v43 = (v43 + 3) >> 2;
          v50 += 6;
          ++v47;
        }

        while (v43 > v18);
      }

      while (v44 > v17);
    }

    if (v43 == v18)
    {
      v51 = 1;
    }

    else
    {
      v51 = v46;
    }

    if ((v51 & 1) == 0 && v44 != v17)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v48 = 0;
    v47 = 0;
    v49 = v77;
  }

LABEL_82:
  if (v47 < v37)
  {
    v53 = &v49[24 * v47];
    v54 = (v53 - 12);
    if (v47 <= 0)
    {
      v55 = a5;
    }

    else
    {
      v55 = (v53 - 16);
    }

    v56 = *v55;
    if (v47 <= 0)
    {
      v57 = v15;
    }

    else
    {
      v57 = v54;
    }

    v58 = *v57;
    v59 = &v49[24 * v47 + 12];
    v60 = v37 - v47;
    do
    {
      v56 = (v56 + 3) >> 2;
      v58 = (v58 + 3) >> 2;
      *(v59 - 1) = v56;
      *v59 = v58;
      *(v59 - 2) = v48;
      v48 += v58;
      v59 += 6;
      --v60;
    }

    while (v60);
  }

  if (a3 == 875836518 || a3 == 875704934)
  {
    goto LABEL_107;
  }

  if (a3 == 875704422)
  {
    v61 = 0;
    v62 = v49 + 12;
    do
    {
      if (*(v62 - 4))
      {
        v61 = 1;
      }

      v62 += 24;
      --v42;
    }

    while (v42);
    if (v61)
    {
      v78 = 0;
      getScalerCapabilities(0, 0, &v78);
      if (v78)
      {
        a3 = 1111970369;
        goto LABEL_101;
      }
    }

LABEL_107:
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      goto LABEL_117;
    }

    v68 = Mutable;
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v69 = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
    if (v69)
    {
      v70 = v69;
      v71 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v71)
      {
        v72 = v71;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFArrayAppendValue(v70, v72);
        CFRelease(v72);
      }

      v73 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v73)
      {
        v74 = v73;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFArrayAppendValue(v70, v74);
        CFRelease(v74);
      }

      CFDictionarySetValue(v68, *MEMORY[0x1E696D0A8], v70);
      CFRelease(v70);
    }

    FigCFDictionarySetInt32();
    v66 = IOSurfaceCreate(v68);
    CFRelease(v68);
    v49 = v77;
    if (!v66)
    {
      goto LABEL_117;
    }

LABEL_116:
    *a8 = v37;
    *a7 = v49;
    *a9 = v66;
    return;
  }

LABEL_101:
  v79 = 0;
  v63 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], a3);
  if (v63)
  {
    FigCFDictionaryGetInt32IfPresent();
    CFRelease(v63);
    if (v79)
    {
      v64 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v64)
      {
        v65 = v64;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        v49 = v77;
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        v66 = IOSurfaceCreate(v65);
        CFRelease(v65);
        if (v66)
        {
          goto LABEL_116;
        }
      }
    }
  }

LABEL_117:
  free(v49);
}

IOSurfaceRef buildDestSurface(int a1, uint64_t a2, int a3)
{
  if (a1 != 1278555701 && a1 != 1111970369 && a1 != 892679473)
  {
    return 0;
  }

  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = (a2 + 4);
    do
    {
      v6 = *v5;
      v5 += 2;
      v3 += v6;
      --v4;
    }

    while (v4);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v8 = IOSurfaceCreate(Mutable);
  CFRelease(Mutable);
  return v8;
}

int *getScalerCapabilities(int *result, _BYTE *a2, _BYTE *a3)
{
  v5 = result;
  if ((getScalerCapabilities_checked & 1) == 0)
  {
    v6 = *MEMORY[0x1E696CD60];
    v7 = IOServiceMatching("AppleM2ScalerCSCDriver");
    result = IOServiceGetMatchingService(v6, v7);
    if (result)
    {
      v8 = result;
      valuePtr = 0;
      v18 = 0;
      v9 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
      if (v9)
      {
        v10 = v9;
        Value = CFDictionaryGetValue(v9, @"IOSurfaceAcceleratorScalerVersion");
        if (Value)
        {
          v12 = Value;
          v13 = CFGetTypeID(Value);
          if (v13 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v12, kCFNumberLongLongType, &valuePtr);
            if (valuePtr >= 262151)
            {
              getScalerCapabilities__numberOfScalerCores = 1;
            }

            if (valuePtr == 131079 || valuePtr == 131074)
            {
              getScalerCapabilities__isH3Platform = 1;
            }
          }
        }

        v14 = CFDictionaryGetValue(v10, @"IOSurfaceAcceleratorFormatInARGB1555");
        if (v14)
        {
          v15 = v14;
          v16 = CFGetTypeID(v14);
          if (v16 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v15, kCFNumberIntType, &v18);
            if (v18 == 1)
            {
              getScalerCapabilities__supports5551 = 1;
            }
          }
        }

        CFRelease(v10);
      }

      result = IOObjectRelease(v8);
    }

    getScalerCapabilities_checked = 1;
  }

  if (v5)
  {
    if (getScalerCapabilities__numberOfScalerCores)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    *v5 = v17;
  }

  if (a2)
  {
    *a2 = getScalerCapabilities__supports5551;
  }

  if (a3)
  {
    *a3 = getScalerCapabilities__isH3Platform;
  }

  return result;
}

void CMPhotoCascadingDownscaleDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      free(v2);
      a1[6] = 0;
    }

    v3 = a1[5];
    if (v3)
    {
      CFRelease(v3);
      a1[5] = 0;
    }

    v4 = a1[2];
    if (v4)
    {
      free(v4);
      a1[2] = 0;
    }

    v5 = a1[3];
    if (v5)
    {
      free(v5);
      a1[3] = 0;
    }

    v6 = a1[8];
    if (v6)
    {
      CFRelease(v6);
      a1[8] = 0;
    }

    v7 = a1[9];
    if (v7)
    {
      CFRelease(v7);
      a1[9] = 0;
    }

    v8 = a1[11];
    if (v8)
    {
      CFRelease(v8);
      a1[11] = 0;
    }

    v9 = a1[12];
    if (v9)
    {
      CFRelease(v9);
    }

    free(a1);
  }
}

uint64_t CMPhotoCascadingDownscale(uint64_t a1, IOSurfaceRef buffer, int a3, int a4, int *a5, uint64_t a6, uint64_t a7, int a8)
{
  v140 = 0;
  v141[0] = 0;
  v139 = 0;
  v138 = 0;
  if (buffer && a5 && a6)
  {
    if (!a8)
    {
      return 0;
    }

    PixelFormat = IOSurfaceGetPixelFormat(buffer);
    v18 = PixelFormat;
    if (PixelFormat != 875704422 && PixelFormat != 1111970369)
    {
      goto LABEL_12;
    }

    if (a3 != 892679473 && a3 != 1111970369 && a3 != 1278555701)
    {
      goto LABEL_12;
    }

    if (a4 >= 2)
    {
      v17.i32[0] = a4;
      v19 = vcnt_s8(v17);
      v19.i16[0] = vaddlv_u8(v19);
      if (v19.i32[0] > 1u)
      {
        goto LABEL_12;
      }
    }

    if (a8 >= 2)
    {
      v22 = a5 + 3;
      v23 = a8 - 1;
      do
      {
        v24 = *(v22 - 1);
        if (v24 > *(v22 - 3) || v24 < 16 || *v22 <= 15)
        {
          goto LABEL_12;
        }

        v22 += 2;
      }

      while (--v23);
    }

    v124 = a1;
    v128 = a4;
    if (a1)
    {
      v25 = (a3 != 892679473 || (LOBYTE(valuePtr) = 0, getScalerCapabilities(0, &valuePtr, 0), (valuePtr & 1) != 0) || *(a1 + 12) != 1278555701) && *(a1 + 12) != a3 || *(a1 + 32) != a8 || memcmp(a5, *(a1 + 16), 8 * a8) != 0;
      v26 = v18 != *a1 || IOSurfaceGetWidth(buffer) != *(a1 + 4) || IOSurfaceGetHeight(buffer) != *(a1 + 8) || v25;
      if (!v25)
      {
LABEL_42:
        v129 = a6;
        v125 = a8;
        if (a3 == 1278555701)
        {
          a3 = 1278555701;
          if (a8 >= 2)
          {
            v27 = 0;
            v130 = 1;
            v119 = 2;
            if (v18 != 892679473 && v18 != 1278555701)
            {
              v27 = 0;
              if (IOSurfaceGetWidth(buffer) != *a5)
              {
LABEL_202:
                v28 = IOSurfaceGetWidth(buffer) != a5[1];
                goto LABEL_62;
              }

              v130 = 1;
              v119 = 2;
            }

            v28 = 0;
            goto LABEL_64;
          }

          v27 = 0;
        }

        else
        {
          if (a3 == 1111970369)
          {
            v27 = 0;
            v28 = 0;
            v130 = 0;
            v29 = 4;
LABEL_63:
            v119 = v29;
            goto LABEL_64;
          }

          LOBYTE(valuePtr) = 0;
          getScalerCapabilities(0, &valuePtr, 0);
          v27 = valuePtr ^ 1;
          if (valuePtr)
          {
            a3 = 892679473;
          }

          else
          {
            a3 = 1278555701;
          }

          if (a8 >= 2)
          {
            v28 = 0;
            v130 = 1;
            v119 = 2;
            if (v18 == 892679473 || v18 == 1278555701)
            {
LABEL_64:
              if (v26)
              {
                v30 = v124;
                if (!v124)
                {
                  Width = IOSurfaceGetWidth(buffer);
                  Height = IOSurfaceGetHeight(buffer);
                  buildTopRectAndSurface(Width, Height, v18, v28, a5, v125, &v140, &v139, v141);
                  if (v25)
                  {
                    buffera = buildDestSurface(a3, a5, v125);
                    goto LABEL_79;
                  }

                  goto LABEL_78;
                }

                *(v124 + 56) = 0;
                v31 = *(v124 + 48);
                if (v31)
                {
                  free(v31);
                  *(v124 + 48) = 0;
                }

                v32 = *(v124 + 40);
                if (v32)
                {
                  CFRelease(v32);
                  *(v124 + 40) = 0;
                }

                v33 = IOSurfaceGetWidth(buffer);
                v34 = IOSurfaceGetHeight(buffer);
                buildTopRectAndSurface(v33, v34, v18, v28, a5, v125, &v140, &v139, v141);
                *(v124 + 56) = v139;
                v35 = v140;
                *(v124 + 40) = v141[0];
                *(v124 + 48) = v35;
                *(v124 + 4) = IOSurfaceGetWidth(buffer);
                *(v124 + 8) = IOSurfaceGetHeight(buffer);
                *v124 = v18;
                if (!v25)
                {
LABEL_78:
                  buffera = v30[8];
                  goto LABEL_79;
                }
              }

              else
              {
                v30 = v124;
                v139 = *(v124 + 56);
                v36 = *(v124 + 40);
                v140 = *(v124 + 48);
                v141[0] = v36;
                if (!v25)
                {
                  goto LABEL_78;
                }
              }

              v37 = v30[8];
              if (v37)
              {
                CFRelease(v37);
              }

              buffera = buildDestSurface(a3, a5, v125);
              v30[8] = buffera;
LABEL_79:
              LODWORD(valuePtr) = 0;
              getScalerCapabilities(&valuePtr, 0, 0);
              v127 = 0;
              v40 = valuePtr == 1 || v28;
              v134 = v40;
              if (v40)
              {
                v41 = malloc_type_malloc(0x40uLL, 0x10A0040517A9223uLL);
                if (!v41)
                {
                  Mutable = 0;
                  cf = 0;
                  v95 = 0;
                  v21 = 4294950305;
                  goto LABEL_204;
                }

                *v41 = 0;
                v41[1] = v125;
                v41[2] = v134;
                *(v41 + 2) = a5;
                *(v41 + 3) = v129;
                v41[8] = v119;
                v41[9] = v128;
                v41[10] = v27;
                *(v41 + 6) = buffera;
                v127 = v41;
                v41[14] = 0;
              }

              v126 = v27;
              if (v30)
              {
                v138 = v30[9];
                Mutable = v30[11];
                v42 = v30[12];
              }

              else
              {
                v44 = *MEMORY[0x1E695E480];
                v45 = IOSurfaceAcceleratorCreate();
                if (v45)
                {
                  v21 = v45;
                  cf = 0;
                  Mutable = 0;
                  v95 = v127;
                  v96 = buffera;
                  goto LABEL_188;
                }

                Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v46 = *MEMORY[0x1E69A84D0];
                v47 = *MEMORY[0x1E695E4D0];
                CFDictionarySetValue(Mutable, *MEMORY[0x1E69A84D0], *MEMORY[0x1E695E4D0]);
                if (v130)
                {
                  LODWORD(valuePtr) = 2;
                  v48 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v49 = CFNumberCreate(v44, kCFNumberSInt32Type, &valuePtr);
                  CFDictionarySetValue(v48, v46, v47);
                  cf = v48;
                  CFDictionarySetValue(v48, @"DitherControl", v49);
                  CFRelease(v49);
LABEL_92:
                  if (v139 < 1)
                  {
LABEL_97:
                    v123 = Mutable;
                    if (v124)
                    {
                      RunLoopSource = *(v124 + 80);
                    }

                    else
                    {
                      RunLoopSource = IOSurfaceAcceleratorGetRunLoopSource();
                    }

                    Current = CFRunLoopGetCurrent();
                    mode = *MEMORY[0x1E695E8D0];
                    v121 = RunLoopSource;
                    CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x1E695E8D0]);
                    v60 = IOSurfaceGetWidth(buffer);
                    v61 = IOSurfaceGetHeight(buffer);
                    if (v134)
                    {
                      IOSurfaceLock(buffera, 1u, 0);
                    }

                    if (v125 < 1)
                    {
LABEL_145:
                      v91 = v124;
                      Mutable = v123;
                      if (!v134)
                      {
                        goto LABEL_150;
                      }

                      if (*v127 < v125)
                      {
                        v92 = *MEMORY[0x1E695E8E0];
                        do
                        {
                          CFRunLoopRunInMode(v92, 1.0, 1u);
                        }

                        while (*v127 < v125);
                      }

                      v21 = v127[14];
                      if (!v21)
                      {
LABEL_150:
                        v93 = CFRunLoopGetCurrent();
                        CFRunLoopRemoveSource(v93, v121, mode);
                        if (!v124)
                        {
                          if (v123)
                          {
                            CFRelease(v123);
                          }

                          if (cf)
                          {
                            CFRelease(cf);
                          }

                          if (v138)
                          {
                            CFRelease(v138);
                            cf = 0;
                            Mutable = 0;
                            v138 = 0;
                          }

                          else
                          {
                            cf = 0;
                            Mutable = 0;
                          }
                        }

                        if (v134)
                        {
                          free(v127);
                          v95 = 0;
                        }

                        else
                        {
                          BytesPerRow = IOSurfaceGetBytesPerRow(buffera);
                          IOSurfaceLock(buffera, 1u, 0);
                          BaseAddress = IOSurfaceGetBaseAddress(buffera);
                          if (v125 >= 1)
                          {
                            v99 = BaseAddress;
                            for (i = 0; i != v125; ++i)
                            {
                              v101 = *(v129 + 8 * i);
                              v102 = &a5[2 * i];
                              v103 = v102[1];
                              v104 = *v102 * v119;
                              if (v128)
                              {
                                v105 = (v128 - 1 + v104) & -v128;
                              }

                              else
                              {
                                v105 = *v102 * v119;
                              }

                              if (v126)
                              {
                                if (v103 >= 1)
                                {
                                  v106 = 0;
                                  v107 = v104 >> 1;
                                  do
                                  {
                                    if (v107 < 8)
                                    {
                                      v113 = 0;
                                      v112 = v99;
                                      v111 = v101;
                                    }

                                    else
                                    {
                                      v108 = 0;
                                      v109 = 0;
                                      v110.i64[0] = 0x1F001F001F001FLL;
                                      v110.i64[1] = 0x1F001F001F001FLL;
                                      do
                                      {
                                        *&v101[v108] = *&vorrq_s8(vandq_s8(*&v99[v108], v110), (*&vshrq_n_u16(*&v99[v108], 1uLL) & __PAIR128__(0xFFE0FFE0FFE0FFE0, 0xFFE0FFE0FFE0FFE0))) | __PAIR128__(0x8000800080008000, 0x8000800080008000);
                                        v109 += 8;
                                        v108 += 16;
                                      }

                                      while (v109 < (v104 >> 1) - 7);
                                      v111 = &v101[v108];
                                      v112 = &v99[v108];
                                      v113 = v107 & 0x7FFFFFF8;
                                    }

                                    v114 = __OFSUB__(v107, v113);
                                    v115 = v107 - v113;
                                    if (!((v115 < 0) ^ v114 | (v115 == 0)))
                                    {
                                      do
                                      {
                                        v116 = *v112;
                                        v112 += 2;
                                        *v111 = v116 & 0x1F | (32 * (v116 >> 6)) | 0x8000;
                                        v111 += 2;
                                        --v115;
                                      }

                                      while (v115);
                                    }

                                    v99 += BytesPerRow;
                                    v101 += v105;
                                    ++v106;
                                  }

                                  while (v106 < v102[1]);
                                }
                              }

                              else if (v103 >= 1)
                              {
                                v117 = 0;
                                v118 = v105;
                                do
                                {
                                  memcpy(v101, v99, v104);
                                  v99 += BytesPerRow;
                                  v101 += v118;
                                  ++v117;
                                }

                                while (v117 < v102[1]);
                              }
                            }

                            v91 = v124;
                          }

                          v95 = v127;
                        }

                        v96 = buffera;
                        IOSurfaceUnlock(buffera, 1u, 0);
                        v21 = 0;
                        if (v91)
                        {
                          goto LABEL_200;
                        }

                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v62 = 0;
                      v63 = 0;
                      v135 = 0;
                      v133 = 0;
                      v131 = 0;
                      while (1)
                      {
                        v64 = &a5[2 * v62];
                        if (v141[0])
                        {
                          v65 = *v64;
                          if (*(v140 + 2) >= *v64)
                          {
                            v66 = v64[1];
                            if (*(v140 + 3) >= v66)
                            {
                              v67 = v139;
                              if (v139 < 1)
                              {
                                v67 = 0;
                              }

                              else
                              {
                                v68 = 0;
                                v69 = v65 / v66;
                                v70 = v140 + 12;
                                while (1)
                                {
                                  v71 = *(v70 - 1);
                                  v72 = *v70;
                                  if (a7 && *(a7 + 4 * v62) == 2)
                                  {
                                    v73 = v71 / v72;
                                    if (v73 <= v69)
                                    {
                                      if (v73 < v69)
                                      {
                                        v77 = v72 - ((v71 * v66) / v65);
                                        v78 = llroundf(v77);
                                        if (vcvtmd_s64_f64(v77 * 0.5 + 0.5) <= 0)
                                        {
                                          v79 = 0;
                                        }

                                        else
                                        {
                                          v79 = v78;
                                        }

                                        v72 -= v79;
                                      }
                                    }

                                    else
                                    {
                                      v74 = v71 - ((v72 * v65) / v66);
                                      v75 = llroundf(v74);
                                      if (vcvtmd_s64_f64(v74 * 0.5 + 0.5) <= 0)
                                      {
                                        v76 = 0;
                                      }

                                      else
                                      {
                                        v76 = v75;
                                      }

                                      v71 -= v76;
                                    }
                                  }

                                  if (v71 < v65 && v72 < v66)
                                  {
                                    break;
                                  }

                                  v70 += 24;
                                  if (v139 == ++v68)
                                  {
                                    goto LABEL_131;
                                  }
                                }

                                v67 = v68;
                              }

LABEL_131:
                              v81 = &v140[24 * v67];
                              v135 = *(v81 - 6);
                              v133 = *(v81 - 5);
                              v60 = *(v81 - 4);
                              v61 = *(v81 - 3);
                              v131 = *(v81 - 1);
                            }
                          }
                        }

                        else
                        {
                          v65 = a5[2 * v62];
                        }

                        v82 = v64[1];
                        v83 = v60 / v61;
                        v84 = v65 / v82;
                        if (a7 && *(a7 + 4 * v62) == 2)
                        {
                          if (v83 <= v84)
                          {
                            if (v83 < v84)
                            {
                              v88 = v61 - ((v82 * v60) / v65);
                              v89 = vcvtmd_s64_f64(v88 * 0.5 + 0.5);
                              v90 = llroundf(v88);
                              if (v89 <= 0)
                              {
                                v90 = 0;
                              }

                              v61 -= v90;
                              v133 += v89 & ~(v89 >> 31);
                            }
                          }

                          else
                          {
                            v85 = v60 - ((v65 * v61) / v82);
                            v86 = vcvtmd_s64_f64(v85 * 0.5 + 0.5);
                            v87 = llroundf(v85);
                            if (v86 <= 0)
                            {
                              v87 = 0;
                            }

                            v60 -= v87;
                            v135 += v86 & ~(v86 >> 31);
                          }
                        }

                        *&valuePtr = __PAIR64__(v133, v135);
                        *(&valuePtr + 1) = __PAIR64__(v61, v60);
                        v137 = v131;
                        v21 = IOSurfaceAcceleratorBlitSurface();
                        if (v21)
                        {
                          break;
                        }

                        v63 += v82;
                        if (++v62 == v125)
                        {
                          goto LABEL_145;
                        }
                      }
                    }

                    if (v121)
                    {
                      v94 = CFRunLoopGetCurrent();
                      CFRunLoopRemoveSource(v94, v121, mode);
                    }

                    v95 = v127;
                    v96 = buffera;
                    Mutable = v123;
                    if (v124)
                    {
                      goto LABEL_200;
                    }

LABEL_188:
                    if (v141[0])
                    {
                      CFRelease(v141[0]);
                    }

                    if (v96)
                    {
                      CFRelease(v96);
                    }

                    if (Mutable)
                    {
                      CFRelease(Mutable);
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (v138)
                    {
                      CFRelease(v138);
                    }

                    if (v140)
                    {
                      free(v140);
                    }

                    goto LABEL_200;
                  }

                  v50 = IOSurfaceGetWidth(buffer);
                  v51 = IOSurfaceGetHeight(buffer);
                  v52 = v140;
                  v53 = v139;
                  *&v54 = 0;
                  *(&v54 + 1) = __PAIR64__(v51, v50);
                  for (j = 1; ; ++j)
                  {
                    valuePtr = v54;
                    v137 = 0;
                    v56 = IOSurfaceAcceleratorBlitSurface();
                    if (v56)
                    {
                      break;
                    }

                    if (j >= v53)
                    {
                      goto LABEL_97;
                    }

                    v57 = *v52;
                    v52 += 24;
                    v54 = v57;
                  }

                  v21 = v56;
                  v30 = v124;
                  v95 = v127;
LABEL_204:
                  v96 = buffera;
                  if (v30)
                  {
LABEL_200:
                    if (v95)
                    {
                      free(v95);
                    }

                    return v21;
                  }

                  goto LABEL_188;
                }

                v42 = 0;
              }

              cf = v42;
              goto LABEL_92;
            }

            if (IOSurfaceGetWidth(buffer) != *a5)
            {
              goto LABEL_202;
            }
          }
        }

        v28 = 0;
LABEL_62:
        v130 = 1;
        v29 = 2;
        goto LABEL_63;
      }

      *(v124 + 12) = a3;
    }

    else
    {
      v26 = 1;
    }

    v25 = 1;
    goto LABEL_42;
  }

LABEL_12:

  return FigSignalErrorAtGM();
}

size_t completionCallback(size_t result, int a2, int a3)
{
  v3 = result;
  if (a2)
  {
    *(result + 56) = a2;
  }

  else if (*(result + 8))
  {
    v5 = a3;
    v6 = 8 * a3;
    v7 = *(*(result + 24) + v6);
    BaseAddress = IOSurfaceGetBaseAddress(*(result + 48));
    result = IOSurfaceGetBytesPerRow(*(v3 + 48));
    v9 = result;
    v10 = *(v3 + 16);
    v11 = *(v3 + 32) * *(v10 + v6);
    if (a3 >= 1)
    {
      v12 = a3 & 0x7FFFFFFF;
      v13 = (v10 + 4);
      do
      {
        v14 = *v13;
        v13 += 2;
        BaseAddress += result * v14;
        --v12;
      }

      while (v12);
    }

    v15 = *(v3 + 36);
    if (v15)
    {
      v16 = (v11 + v15 - 1) & -v15;
    }

    else
    {
      v16 = v11;
    }

    v17 = *(v10 + 8 * v5 + 4);
    if (*(v3 + 40))
    {
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = v11 >> 1;
        v20.i64[0] = 0x1F001F001F001FLL;
        v20.i64[1] = 0x1F001F001F001FLL;
        do
        {
          if (v19 < 8)
          {
            v25 = 0;
            v24 = BaseAddress;
            v23 = v7;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            do
            {
              *&v7[v21] = *&vorrq_s8(vandq_s8(*&BaseAddress[v21], v20), (*&vshrq_n_u16(*&BaseAddress[v21], 1uLL) & __PAIR128__(0xFFE0FFE0FFE0FFE0, 0xFFE0FFE0FFE0FFE0))) | __PAIR128__(0x8000800080008000, 0x8000800080008000);
              v22 += 8;
              v21 += 16;
            }

            while (v22 < (v11 >> 1) - 7);
            v23 = &v7[v21];
            v24 = &BaseAddress[v21];
            v25 = v19 & 0x7FFFFFF8;
          }

          v26 = __OFSUB__(v19, v25);
          v27 = v19 - v25;
          if (!((v27 < 0) ^ v26 | (v27 == 0)))
          {
            do
            {
              v28 = *v24;
              v24 += 2;
              *v23 = v28 & 0x1F | (32 * (v28 >> 6)) | 0x8000;
              v23 += 2;
              --v27;
            }

            while (v27);
          }

          BaseAddress += result;
          v7 += v16;
          ++v18;
        }

        while (v18 < *(*(v3 + 16) + 8 * v5 + 4));
      }
    }

    else if (v17 >= 1)
    {
      v29 = 0;
      v30 = v16;
      do
      {
        result = memcpy(v7, BaseAddress, v11);
        BaseAddress += v9;
        v7 += v30;
        ++v29;
      }

      while (v29 < *(*(v3 + 16) + 8 * v5 + 4));
    }
  }

  atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  return result;
}

uint64_t CMPhotoFixedPatternNoiseEncoderAnalyzeAndCreateContext(__CVBuffer *a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v11 = 0;
  v12 = 0;
  v6 = xmmword_1A5ABB4D0;
  v7 = 1065353216;
  v9 = 0;
  v8 = 0;
  v10 = 0xBD0108000020001;
  v13 = a3;
  return CMPhotoFixedPatternNoiseEncoderAnalyzeAndCreateContext2(a1, a2, 1, &v6, a4, a5);
}

uint64_t CMPhotoFixedPatternNoiseEncoderRun(uint64_t a1, __CVBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  *&v15[4] = 0;
  v16 = 0;
  v11 = *(a4 + 20);
  v7.i32[0] = *(a4 + 48);
  v7.i32[1] = *(a4 + 60);
  v8 = vadd_f32(*(a4 + 52), v7);
  v9.i64[0] = *(a4 + 40);
  v9.i64[1] = __PAIR64__(v8.u32[0], v8.u32[1]);
  v12 = *(a4 + 28);
  v13 = vrndaq_f32(vmulq_f32(v9, xmmword_1A5ABB4E0));
  v14 = vextq_s8(v13, v13, 8uLL).u64[0];
  *v15 = 0xBD0108000020001;
  v17 = a3;
  return CMPhotoFixedPatternNoiseEncoderRun2(a1, a2, 1, &v11, a4, a5, a6, a7);
}

uint64_t CMPhotoFixedPatternNoiseDecoderRun(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  WORD2(v6) = 1;
  v7 = 0;
  v8 = a4;
  return CMPhotoFixedPatternNoiseDecoderRun2(a1, a2, a3, 1, v5);
}

__CFString *cmpweak_kFigPictureCollectionWriterOption_OverlayItemCount()
{
  if (MEMORY[0x1E69721F0])
  {
    return *MEMORY[0x1E69721F0];
  }

  else
  {
    return @"OverlayItemCount";
  }
}

__CFString *cmpweak_kFigPictureCollectionWriterOption_OverlayCanvasFillValues()
{
  if (MEMORY[0x1E69721E8])
  {
    return *MEMORY[0x1E69721E8];
  }

  else
  {
    return @"OverlayCanvasFillValues";
  }
}

__CFString *cmpweak_kFigPictureCollectionWriterOption_OverlayItemIndex()
{
  if (MEMORY[0x1E69721F8])
  {
    return *MEMORY[0x1E69721F8];
  }

  else
  {
    return @"OverlayItemIndex";
  }
}

__CFString *cmpweak_kFigPictureCollectionWriterOption_OverlayItemOffset()
{
  if (MEMORY[0x1E6972200])
  {
    return *MEMORY[0x1E6972200];
  }

  else
  {
    return @"OverlayItemOffset";
  }
}

__CFString *cmpweak_kFigPictureCollection_Group_LowestMemberIDKey()
{
  if (MEMORY[0x1E6972298])
  {
    return *MEMORY[0x1E6972298];
  }

  else
  {
    return @"LowestMemberID";
  }
}

__CFString *cmpweak_kFigCameraExtrinsics_WriteAllFields()
{
  if (MEMORY[0x1E69717D0])
  {
    return *MEMORY[0x1E69717D0];
  }

  else
  {
    return @"WriteAllFields";
  }
}

__CFString *cmpweak_kFigEditCursorProperty_RepeatsEdits()
{
  if (MEMORY[0x1E69718E8])
  {
    return *MEMORY[0x1E69718E8];
  }

  else
  {
    return @"RepeatEdits";
  }
}

__CFString *cmpweak_kFigTrackProperty_EditedDuration()
{
  if (MEMORY[0x1E6973A00])
  {
    return *MEMORY[0x1E6973A00];
  }

  else
  {
    return @"TrackDuration";
  }
}

__CFString *cmpweak_kFigTrackProperty_HasEditListBox()
{
  if (MEMORY[0x1E6973A60])
  {
    return *MEMORY[0x1E6973A60];
  }

  else
  {
    return @"HasEditListBox";
  }
}

__CFString *cmpweak_kFigPictureProperty_TonemapBaseColorIsWorkingColor()
{
  if (MEMORY[0x1E6972380])
  {
    return *MEMORY[0x1E6972380];
  }

  else
  {
    return @"TonemapBaseColorIsWorkingColor";
  }
}

__CFString *cmpweak_kFigPictureProperty_TonemapBaseHDRHeadroom()
{
  if (MEMORY[0x1E6972388])
  {
    return *MEMORY[0x1E6972388];
  }

  else
  {
    return @"TonemapBaseHDRHeadroom";
  }
}

__CFString *cmpweak_kFigPictureProperty_TonemapAlternateHDRHeadroom()
{
  if (MEMORY[0x1E6972378])
  {
    return *MEMORY[0x1E6972378];
  }

  else
  {
    return @"TonemapAlternateHDRHeadroom";
  }
}

__CFString *cmpweak_kFigPictureProperty_TonemapChannelMetadata()
{
  if (MEMORY[0x1E6972390])
  {
    return *MEMORY[0x1E6972390];
  }

  else
  {
    return @"TonemapChannelMetadata";
  }
}

__CFString *cmpweak_kFigTonemapChannel_BaseOffset()
{
  if (MEMORY[0x1E69739A8])
  {
    return *MEMORY[0x1E69739A8];
  }

  else
  {
    return @"BaseOffset";
  }
}

__CFString *cmpweak_kFigTonemapChannel_AlternateOffset()
{
  if (MEMORY[0x1E69739A0])
  {
    return *MEMORY[0x1E69739A0];
  }

  else
  {
    return @"AlternateOffset";
  }
}

__CFString *cmpweak_kFigTonemapChannel_Gamma()
{
  if (MEMORY[0x1E69739C0])
  {
    return *MEMORY[0x1E69739C0];
  }

  else
  {
    return @"Gamma";
  }
}

__CFString *cmpweak_kFigTonemapChannel_GainMapMin()
{
  if (MEMORY[0x1E69739B8])
  {
    return *MEMORY[0x1E69739B8];
  }

  else
  {
    return @"GainMapMin";
  }
}

__CFString *cmpweak_kFigTonemapChannel_GainMapMax()
{
  if (MEMORY[0x1E69739B0])
  {
    return *MEMORY[0x1E69739B0];
  }

  else
  {
    return @"GainMapMax";
  }
}

__CFString *cmpweak_kFigPictureCollectionWriterOption_TonemapInputItemIDs()
{
  if (MEMORY[0x1E6972230])
  {
    return *MEMORY[0x1E6972230];
  }

  else
  {
    return @"TonemapInputItemIDs";
  }
}

__CFString *cmpweak_kFigPictureCollectionWriterOption_TonemapMetadata()
{
  if (MEMORY[0x1E6972238])
  {
    return *MEMORY[0x1E6972238];
  }

  else
  {
    return @"TonemapMetadata";
  }
}

__CFString *cmpweak_kFigPictureCollectionWriterOption_IdentityInputItemID()
{
  if (MEMORY[0x1E69721D8])
  {
    return *MEMORY[0x1E69721D8];
  }

  else
  {
    return @"IdentityInputItemID";
  }
}

__CFString *cmpweak_kFigCameraIntrinsics_OfficialBox()
{
  if (MEMORY[0x1E69717F0])
  {
    return *MEMORY[0x1E69717F0];
  }

  else
  {
    return @"OfficialBox";
  }
}

__CFString *cmpweak_kFigCameraExtrinsics_OfficialBox()
{
  if (MEMORY[0x1E69717A8])
  {
    return *MEMORY[0x1E69717A8];
  }

  else
  {
    return @"OfficialBox";
  }
}

uint64_t _startDecoderSession(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3)
{
  v28 = 0;
  v29 = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  *(a1 + 60) = 1;
  v5 = (a1 + 60);
  FigFormatDescriptionRelease();
  *(a1 + 8) = FigFormatDescriptionRetain();
  VersionFromFormatDescription = _getVersionFromFormatDescription(a3, &v29);
  if (VersionFromFormatDescription)
  {
    return VersionFromFormatDescription;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(*(a1 + 8));
  VersionFromFormatDescription = Slim_GetPixelBufferInfoFromVersion(v29, v5, &v29 + 1, &v28 + 1, (a1 + 56), &v28);
  if (VersionFromFormatDescription)
  {
    return VersionFromFormatDescription;
  }

  v8 = HIDWORD(v29);
  *(a1 + 64) = HIDWORD(v29);
  v9 = *(a1 + 60);
  v10 = v28;
  valuePtr = v8;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_43;
  }

  v12 = Mutable;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v13)
  {
    CFRelease(v12);
LABEL_43:
    v19 = 0;
LABEL_22:
    if (*a1)
    {
      VTDecoderSessionSetPixelBufferAttributes();
    }

    else
    {
      v20 = *(a1 + 72);
      if (v20)
      {
        CFRelease(v20);
      }

      if (v19)
      {
        v21 = CFRetain(v19);
      }

      else
      {
        v21 = 0;
      }

      *(a1 + 72) = v21;
    }

    v22 = malloc_type_calloc(1uLL, 0x20B0uLL, 0x1030040868D5BD5uLL);
    *(a1 + 48) = v22;
    if (v22)
    {
      *v22 = Dimensions;
      v22[8] = 0;
      v23 = v28;
      v22[2090] = HIDWORD(v28);
      v22[2091] = v23;
      *(v22 + 7) = 0;
      if (!*(a1 + 56))
      {
        goto LABEL_35;
      }

      CreateTreeLeaves(v22 + 19, 1024);
      v24 = malloc_type_malloc(0x20uLL, 0x102004084B5A0ACuLL);
      *(*(a1 + 48) + 8344) = v24;
      if (!v24)
      {
        _startDecoderSession_cold_1();
      }

      v24[3] = 0;
      *(*(*(a1 + 48) + 8344) + 16) = 0;
      v25 = *(a1 + 48);
      v26 = *(v25 + 8344);
      *(v26 + 8) = 0;
      *v26 = 0;
      if (CreateHuffTree(&bgg4, 1024, v25 + 152, v26))
      {
        fig_log_get_emitter();
        PixelBufferAttributesWithIOSurfaceSupport = FigSignalErrorAtGM();
      }

      else
      {
LABEL_35:
        PixelBufferAttributesWithIOSurfaceSupport = 0;
      }
    }

    else
    {
      _startDecoderSession_cold_2(&v30);
      PixelBufferAttributesWithIOSurfaceSupport = v30;
    }

    goto LABEL_36;
  }

  v14 = v13;
  CFDictionaryAddValue(v12, *MEMORY[0x1E6966130], v13);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if ((v9 - 3) < 3)
  {
    goto LABEL_20;
  }

  if ((v9 - 1) <= 1)
  {
    v15 = (Dimensions.height + 3) & 0xFFFFFFFC;
    if (CMPhotoPixelFormatContainsRGB(valuePtr))
    {
      v16 = (Dimensions.width + 3) & 0xFFFFFFFC;
    }

    else
    {
      v16 = (Dimensions.width + 15) & 0xFFFFFFF0;
      if (CMPhotoPixelFormatIs420(valuePtr))
      {
        v15 = (Dimensions.height + 7) & 0xFFFFFFF8;
      }

      else if (CMPhotoPixelFormatIsBayer14Bits(valuePtr) || (IsRAWVersatile = CMPhotoPixelFormatIsRAWVersatile(valuePtr), (v10 & 1) == 0) && IsRAWVersatile || CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(valuePtr))
      {
        v16 = (Dimensions.width + 7) & 0xFFFFFFF8;
        v15 = (Dimensions.height + 7) & 0xFFFFFFF8;
      }
    }

    CMPhotoGetBytesPerPixelForPixelFormat(valuePtr);
    FigCFDictionarySetInt32();
    if (v16 != Dimensions.width)
    {
      FigCFDictionarySetInt32();
    }

    if (v15 != Dimensions.height)
    {
LABEL_20:
      FigCFDictionarySetInt32();
    }
  }

  v30 = 0;
  PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  v19 = v30;
  CFRelease(v12);
  CFRelease(v14);
  if (!PixelBufferAttributesWithIOSurfaceSupport)
  {
    goto LABEL_22;
  }

  v19 = 0;
LABEL_36:
  if (v19)
  {
    CFRelease(v19);
  }

  return PixelBufferAttributesWithIOSurfaceSupport;
}

BOOL SlimVideoDecoder_SessionIsSlimX(_BOOL8 result)
{
  if (result)
  {
    return *(result + 76) == 1;
  }

  return result;
}

BOOL SlimVideoDecoder_SessionIsSlimYzip(_BOOL8 result)
{
  if (result)
  {
    return *(result + 76) == 2;
  }

  return result;
}

BOOL SlimVideoDecoder_SessionIsSlimHrlc(_BOOL8 result)
{
  if (result)
  {
    return *(result + 76) == 3;
  }

  return result;
}

BOOL SlimVideoDecoder_SessionIsSlimUncompressed(_BOOL8 result)
{
  if (result)
  {
    return *(result + 76) == 4;
  }

  return result;
}

BOOL SlimVideoDecoder_SessionIsSlimIntc(_BOOL8 result)
{
  if (result)
  {
    return *(result + 76) == 5;
  }

  return result;
}

CFIndex SlimVideoDecoder_DecodeFrameInternal(uint64_t a1, opaqueCMSampleBuffer *a2, CFTypeRef a3, const __CFDictionary *a4, void (*a5)(uint64_t, uint64_t, CFIndex, CFTypeRef), uint64_t a6, uint64_t a7)
{
  cf = a3;
  v11 = _decodeFrame(a1 + 16, a2, a4, &cf);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = cf;
  }

  a5(a6, a7, v11, v12);
  if (cf != a3 && cf != 0)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t SlimVideoDecoder_CopyPixelBufferAttributesInternal(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return 4294951893;
  }

  v4 = CFRetain(v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t RegisterSlimVideoDecoderSessionClass()
{
  sSlimVideoDecoderSessionClass = 0;
  unk_1EB1EC540 = "SlimVideoDecoderSessionClass";
  qword_1EB1EC548 = SlimVideoDecoderSessionClass_Init;
  unk_1EB1EC550 = 0;
  qword_1EB1EC560 = 0;
  unk_1EB1EC568 = 0;
  qword_1EB1EC558 = SlimVideoDecoderSessionClass_Finalize;
  qword_1EB1EC570 = SlimVideoDecoderSessionClass_CopyFormattingDesc;
  unk_1EB1EC578 = 0;
  result = _CFRuntimeRegisterClass();
  sSlimVideoDecoderSessionTypeID = result;
  return result;
}

double SlimVideoDecoderSessionClass_Init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

__CFString *SlimVideoDecoderSessionClass_CopyFormattingDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SlimVideoDecoder %p>", a1);
  return Mutable;
}

void _finalizeDecoderStorage(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 24) = 0;
  *a1 = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
  }

  FigFormatDescriptionRelease();
  *(a1 + 8) = 0;
  if (*(a1 + 56))
  {
    DestroyHuffTree(*(*(a1 + 48) + 8344));
  }

  v4 = *(a1 + 48);

  free(v4);
}

void _streamFinalize_0(int a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a2);
}

uint64_t _streamWrite_0(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t *a5)
{
  if (a3)
  {
    v9 = 0;
    v10 = *a5;
    v11 = a3;
    while (1)
    {
      v17 = 0;
      v12 = a5[1];
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v13)
      {
        break;
      }

      v14 = v13(v12, a3, v10, a2, &v17);
      if (v14)
      {
        goto LABEL_9;
      }

      v15 = v17;
      if (!v17)
      {
        v14 = -12873;
        if (!a4)
        {
          return v9;
        }

LABEL_10:
        *a4 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], v14, 0);
        return v9;
      }

      v10 = *a5 + v17;
      *a5 = v10;
      v9 += v15;
      v11 -= v15;
      if (!v11)
      {
        return v9;
      }
    }

    v14 = -12782;
LABEL_9:
    if (!a4)
    {
      return v9;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t _extractFloatValuesFromAuxMetaTagValue(const void *a1, unsigned int a2, char *a3)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFArrayGetTypeID())
  {
    v12 = CFGetTypeID(a1);
    if (v12 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberFloatType, a3);
      v10 = a2;
      v8 = 1;
LABEL_10:
      v13 = v10 - v8;
      if (v10 > v8)
      {
        v14 = &a3[4 * v8];
        v15 = *(v14 - 1);
        do
        {
          *v14 = v15;
          v14 += 4;
          --v13;
        }

        while (v13);
      }

      return 0;
    }

LABEL_15:
    _extractFloatValuesFromAuxMetaTagValue_cold_1();
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count - 1 >= a2)
  {
    goto LABEL_15;
  }

  v8 = Count;
  v9 = 0;
  v10 = a2;
  v11 = a3;
  while (FigCFArrayGetFloatAtIndex())
  {
    ++v9;
    v11 += 4;
    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }

  return 4294950194;
}

uint64_t _extractIntValuesFromAuxMetaTagValue(const void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFArrayGetTypeID())
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, a2);
      return 0;
    }

LABEL_10:
    _extractIntValuesFromAuxMetaTagValue_cold_2();
    return 0;
  }

  if (CFArrayGetCount(a1) != 1)
  {
    _extractIntValuesFromAuxMetaTagValue_cold_1();
    return 0;
  }

  if (FigCFArrayGetIntAtIndex())
  {
    return 0;
  }

  else
  {
    return 4294950194;
  }
}

uint64_t CMPhotoGainMapCreateOutputFromConstituents(int a1, const void *a2, int a3, uint64_t a4, int a5, CFTypeRef cf, int a7, int a8, float a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, void **a14, CFTypeRef *a15)
{
  cfa = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  if (!cf)
  {
LABEL_193:
    v18 = 4294950306;
    goto LABEL_166;
  }

  if (a7 == 6)
  {
    if (a15)
    {
      *a15 = CFRetain(cf);
      if (a14)
      {
        Value = FigCFDictionaryGetValue();
        if (Value)
        {
          Value = CFRetain(Value);
        }

        v18 = 0;
        *a14 = Value;
        goto LABEL_166;
      }

LABEL_165:
      v18 = 0;
      goto LABEL_166;
    }

    goto LABEL_193;
  }

  v95 = a4;
  LODWORD(v97) = a3;
  v22 = a12;
  HIDWORD(v96) = a11;
  HIDWORD(v94) = a10;
  HIDWORD(v97) = a12;
  if (!CFDictionaryContainsKey(cf, @"FlexRangeGainMap"))
  {
    buffer[0] = 0;
    v102[0] = 0;
    v42 = a9 == 1.0 && a12 == 0;
    if (!a14)
    {
      v18 = 4294950306;
      goto LABEL_150;
    }

    v43 = FigCFDictionaryGetValue();
    if (!v43 || (v44 = v43, LODWORD(v90) = v42, v45 = CFGetTypeID(v43), v45 != CVPixelBufferGetTypeID()) || (v46 = FigCFDictionaryGetValue()) == 0 || (v93 = a13, v47 = CFGetTypeID(v46), v47 != CVPixelBufferGetTypeID()))
    {
      v18 = 4294950306;
      goto LABEL_192;
    }

    if (a7 == 1)
    {
      v48 = 3;
    }

    else
    {
      v48 = a7;
    }

    LODWORD(v110) = 0;
    OutputPixelFormatFromParameters = _getOutputPixelFormatFromParameters(v44, v48, &v110);
    if (OutputPixelFormatFromParameters)
    {
      goto LABEL_196;
    }

    CMPhotoGetPixelBufferCLAPAsRect(v44);
    v51 = vcvtad_u64_f64(v50);
    v53 = vcvtad_u64_f64(v52);
    if (v97)
    {
      v54 = CFGetAllocator(cf);
      CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v54, v110, v51, v53, 0, 0, 0, 0, buffer, v87, v88, v89, v90, a13, v94, v95, v96, v97, v98, v99, cfa, v101, v102[0], v102[1], v103);
      if (OutputPixelFormatFromParameters)
      {
        goto LABEL_196;
      }
    }

    else
    {
      OutputPixelFormatFromParameters = CMPhotoSurfacePoolCreatePixelBuffer(a2, v110, v51, v53, 1, 0, 0, 1, 0, 0, buffer);
      if (OutputPixelFormatFromParameters)
      {
        goto LABEL_196;
      }
    }

    if (CFDictionaryContainsKey(cf, @"ColorSpace"))
    {
      v56 = FigCFDictionaryGetValue();
      v57 = v93;
      if (v56)
      {
        ExtendedLinearized = CFRetain(v56);
      }

      else
      {
        ExtendedLinearized = 0;
      }

      v102[0] = ExtendedLinearized;
LABEL_64:
      if (ExtendedLinearized)
      {
        goto LABEL_65;
      }

      goto LABEL_191;
    }

    v57 = v93;
    switch(v48)
    {
      case 3:
        if (CMPhotoPixelBufferHasDisplayP3Primaries(v44))
        {
          v68 = MEMORY[0x1E695F0C8];
        }

        else if (CMPhotoPixelBufferHasSRGBPrimaries(v44))
        {
          v68 = MEMORY[0x1E695F190];
        }

        else
        {
          v68 = MEMORY[0x1E695F178];
        }

        break;
      case 4:
        if (CMPhotoPixelBufferHasDisplayP3Primaries(v44))
        {
          v68 = MEMORY[0x1E695F0C0];
        }

        else if (CMPhotoPixelBufferHasSRGBPrimaries(v44))
        {
          v68 = MEMORY[0x1E695F188];
        }

        else
        {
          v68 = MEMORY[0x1E695F170];
        }

        break;
      case 5:
        v111[0] = 0;
        OutputPixelFormatFromParameters = CMPhotoCreateColorSpaceFromPixelBuffer(v44, v111, 1, 0);
        if (OutputPixelFormatFromParameters)
        {
          goto LABEL_196;
        }

        if (!v111[0])
        {
          v18 = 4294950303;
          goto LABEL_192;
        }

        ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(v111[0]);
        v102[0] = ExtendedLinearized;
        v57 = v93;
        if (v111[0])
        {
          CFRelease(v111[0]);
          if (ExtendedLinearized)
          {
LABEL_65:
            if (!v90)
            {
              goto LABEL_66;
            }

            OutputPixelFormatFromParameters = _newColorSpaceIfAskingForSDRFromHeadroom(v102);
            if (!OutputPixelFormatFromParameters)
            {
              ExtendedLinearized = v102[0];
              v57 = v93;
LABEL_66:
              CVBufferSetAttachment(buffer[0], *MEMORY[0x1E6965CE8], ExtendedLinearized, kCVAttachmentMode_ShouldPropagate);
              v59 = CGColorSpaceUsesITUR_2100TF(v102[0]);
              v60 = MEMORY[0x1E6965FB0];
              if (!v59)
              {
                v60 = MEMORY[0x1E6965FC8];
              }

              CMPhotoAddMatrixToBufferIfAllowed(buffer[0], *v60);
              if (v57)
              {
                MutableCopy = FigCFDictionaryCreateMutableCopy();
              }

              else
              {
                if (CFDictionaryContainsKey(cf, @"MeteorMakerNote"))
                {
                  FigCFDictionaryGetValue();
                  MutableCopy = FigCFDictionaryCreateMutableCopy();
                  if (!a8)
                  {
LABEL_72:
                    if (CFDictionaryContainsKey(cf, @"MeteorXMPMetadata"))
                    {
                      v62 = *MEMORY[0x1E696D228];
                      v63 = FigCFDictionaryGetValue();
                      CFDictionaryAddValue(MutableCopy, v62, v63);
                    }

                    goto LABEL_136;
                  }
                }

                else
                {
                  MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!MutableCopy)
                  {
                    v18 = 4294950305;
                    goto LABEL_192;
                  }

                  if (!a8)
                  {
                    goto LABEL_72;
                  }
                }

                if (!CFDictionaryContainsKey(cf, @"MeteorMakerNote"))
                {
                  v76 = HIDWORD(v96);
                  if (CFDictionaryContainsKey(cf, @"MeteorXMPMetadata"))
                  {
                    v77 = *MEMORY[0x1E696D228];
                    v78 = FigCFDictionaryGetValue();
                    CFDictionaryAddValue(MutableCopy, v77, v78);
                  }

                  goto LABEL_137;
                }
              }

LABEL_136:
              v76 = HIDWORD(v96);
LABEL_137:
              if (!v95)
              {
                if (v76 | HIDWORD(v94))
                {
                  v79 = CGColorSpaceContainsFlexGTCInfo();
                  if ((v76 || (v79 & 1) == 0) && CGColorSpaceUsesITUR_2100TF(v102[0]))
                  {
                    FigCFDictionarySetBoolean();
                  }
                }
              }

              CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E696D1D8], v102[0]);
              v80 = _commonApplyHDRGainMapOptions(MutableCopy, v97, SHIDWORD(v97), a9);
              if (v80)
              {
                v18 = v80;
              }

              else
              {
                v18 = CGImageApplyHDRGainMap();
                if (!v18)
                {
                  *a14 = buffer[0];
                  buffer[0] = 0;
                }
              }

              v22 = HIDWORD(v97);
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }

              goto LABEL_148;
            }

LABEL_196:
            v18 = OutputPixelFormatFromParameters;
            goto LABEL_192;
          }

          goto LABEL_191;
        }

        goto LABEL_64;
      default:
LABEL_191:
        v18 = 4294950302;
LABEL_192:
        v22 = HIDWORD(v97);
LABEL_148:
        if (v102[0])
        {
          CFRelease(v102[0]);
        }

LABEL_150:
        v74 = buffer[0];
        if (!buffer[0])
        {
          goto LABEL_152;
        }

        goto LABEL_151;
    }

    ExtendedLinearized = CGColorSpaceCreateWithName(*v68);
    v102[0] = ExtendedLinearized;
    if (ExtendedLinearized)
    {
      goto LABEL_65;
    }

    goto LABEL_191;
  }

  v110 = 0;
  v111[0] = 0;
  v109 = 0;
  v24 = a9 == 1.0 && a12 == 0;
  if (!a14)
  {
    v31 = 0;
    v27 = 0;
    v18 = 4294950306;
    goto LABEL_117;
  }

  v25 = FigCFDictionaryGetValue();
  if (v25)
  {
    v92 = a13;
    v26 = CFRetain(v25);
    v27 = v26;
    if (v26 && (v28 = CFGetTypeID(v26), v28 == CVPixelBufferGetTypeID()) && (v29 = FigCFDictionaryGetValue()) != 0)
    {
      v30 = CFRetain(v29);
      v31 = v30;
      if (!v30 || (v32 = CFGetTypeID(v30), v32 != CVPixelBufferGetTypeID()))
      {
LABEL_208:
        v55 = 0;
        goto LABEL_61;
      }

      v33 = FigCFDictionaryGetValue();
      if (v33)
      {
        v91 = v31;
        v110 = CFRetain(v33);
        if (!v110)
        {
          v55 = 0;
          v18 = 4294950306;
          goto LABEL_206;
        }

        v34 = v24;
        v108 = 0;
        PixelBuffer = _getOutputPixelFormatFromParameters(v27, a7, &v108);
        if (PixelBuffer)
        {
          goto LABEL_204;
        }

        CMPhotoGetPixelBufferCLAPAsRect(v27);
        v37 = vcvtad_u64_f64(v36);
        v39 = vcvtad_u64_f64(v38);
        if (v97)
        {
          v40 = CFGetAllocator(cf);
          CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v40, v108, v37, v39, 0, 0, 0, 0, v111, v87, v88, v89, v91, a13, v94, v95, v96, v97, v98, v99, cfa, v101, v102[0], v102[1], v103);
          if (PixelBuffer)
          {
            goto LABEL_204;
          }
        }

        else
        {
          PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(a2, v108, v37, v39, 1, 0, 0, 1, 0, 0, v111);
          if (PixelBuffer)
          {
LABEL_204:
            v18 = PixelBuffer;
LABEL_205:
            v55 = 0;
LABEL_206:
            v31 = v91;
            goto LABEL_113;
          }
        }

        v64 = v34;
        if (a7 > 2)
        {
          v31 = v91;
          switch(a7)
          {
            case 3:
              if (CGColorSpaceIsPQBased(v110))
              {
                goto LABEL_94;
              }

              goto LABEL_128;
            case 4:
              if (CGColorSpaceIsHLGBased(v110))
              {
                goto LABEL_94;
              }

              goto LABEL_128;
            case 5:
              v66 = CGColorSpaceCreateExtendedLinearized(v110);
              if (v66)
              {
                v67 = v66;
                if (v110)
                {
                  CFRelease(v110);
                }

                v110 = v67;
                goto LABEL_94;
              }

              goto LABEL_128;
          }
        }

        else
        {
          v31 = v91;
          if (a7 < 2)
          {
            goto LABEL_94;
          }

          if (a7 == 2)
          {
            if (!CGColorSpaceUsesITUR_2100TF(v110))
            {
              v65 = FigCFDictionaryGetValue();
              if (v65)
              {
                if (CMPhotoGainMapCreateOutputFromConstituents_cold_1(buffer, v65, v102))
                {
                  v55 = 0;
                  v18 = LODWORD(v102[0]);
                  goto LABEL_113;
                }

LABEL_94:
                if (v64)
                {
                  v75 = _newColorSpaceIfAskingForSDRFromHeadroom(&v110);
                  if (v75)
                  {
                    goto LABEL_126;
                  }
                }

                v69 = CGColorSpaceUsesITUR_2100TF(v110);
                v70 = MEMORY[0x1E6965FB0];
                if (!v69)
                {
                  v70 = MEMORY[0x1E6965FC8];
                }

                CMPhotoAddMatrixToBufferIfAllowed(v111[0], *v70);
                if (v92)
                {
                  v55 = FigCFDictionaryCreateMutableCopy();
LABEL_110:
                  CVBufferSetAttachment(v111[0], *MEMORY[0x1E6965CE8], v110, kCVAttachmentMode_ShouldPropagate);
                  v73 = _commonApplyHDRGainMapOptions(v55, v97, SHIDWORD(v97), a9);
                  if (v73)
                  {
                    v18 = v73;
                  }

                  else
                  {
                    v18 = CGImageApplyHDRGainMap();
                    if (!v18)
                    {
                      *a14 = v111[0];
                      v111[0] = 0;
                    }
                  }

                  goto LABEL_113;
                }

                if (CFDictionaryContainsKey(cf, @"FlexRangeMetadata"))
                {
                  v85 = FigCFDictionaryGetValue();
                  v105 = 0u;
                  v106 = 0u;
                  v103 = 0u;
                  v104 = 0u;
                  *v102 = 0u;
                  PixelBuffer = CMPhotoParseFlexRangeMetadataDictionary(v85, v102);
                  if (PixelBuffer)
                  {
                    goto LABEL_204;
                  }

                  PixelBuffer = CGImageCreateFlexRangeMetadata();
                  if (PixelBuffer)
                  {
                    goto LABEL_204;
                  }

                  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!Mutable)
                  {
                    v18 = 4294950305;
                    goto LABEL_205;
                  }

                  v55 = Mutable;
                  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D228], v109);
                }

                else
                {
                  v55 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!v55)
                  {
                    goto LABEL_209;
                  }
                }

                if (v95 || !(HIDWORD(v96) | HIDWORD(v94)))
                {
                  goto LABEL_109;
                }

                if ((CGColorSpaceContainsFlexGTCInfo() & 1) == 0)
                {
                  if (!CGColorSpaceUsesITUR_2100TF(v110))
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_108;
                }

                if (!HIDWORD(v96))
                {
LABEL_109:
                  CFDictionaryAddValue(v55, *MEMORY[0x1E696D1D8], v110);
                  goto LABEL_110;
                }

                v71 = CGColorSpaceCopyBaseColorSpace();
                if (v71)
                {
                  v72 = v71;
                  if (v110)
                  {
                    CFRelease(v110);
                  }

                  v110 = v72;
                  if (!CGColorSpaceUsesITUR_2100TF(v72))
                  {
                    goto LABEL_109;
                  }

LABEL_108:
                  FigCFDictionarySetBoolean();
                  goto LABEL_109;
                }

LABEL_209:
                v18 = 4294950305;
                goto LABEL_113;
              }

              goto LABEL_208;
            }

LABEL_128:
            v55 = 0;
            v18 = 4294950302;
            goto LABEL_113;
          }
        }

        fig_log_get_emitter();
        v75 = FigSignalErrorAtGM();
LABEL_126:
        v18 = v75;
        v55 = 0;
        goto LABEL_113;
      }

      v55 = 0;
      v110 = 0;
    }

    else
    {
      v55 = 0;
      v31 = 0;
    }
  }

  else
  {
    v55 = 0;
    v31 = 0;
    v27 = 0;
  }

LABEL_61:
  v18 = 4294950306;
LABEL_113:
  if (v109)
  {
    CFRelease(v109);
  }

  if (v55)
  {
    CFRelease(v55);
  }

LABEL_117:
  if (v110)
  {
    CFRelease(v110);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v111[0])
  {
    CFRelease(v111[0]);
  }

  v22 = HIDWORD(v97);
  if (v31)
  {
    v74 = v31;
LABEL_151:
    CFRelease(v74);
  }

LABEL_152:
  if (v18)
  {
    goto LABEL_166;
  }

  if (a15)
  {
    *a15 = 0;
  }

  if (!v22)
  {
    goto LABEL_165;
  }

  v81 = CMPhotoCreateColorSpaceFromPixelBuffer(*a14, &v101, 1, 0);
  if (v81)
  {
    v18 = v81;
    goto LABEL_166;
  }

  if ((CGColorSpaceContainsFlexGTCInfo() & 1) == 0)
  {
    CMPhotoGainMapCreateOutputFromConstituents_cold_2(v102);
LABEL_201:
    v18 = LODWORD(v102[0]);
    goto LABEL_166;
  }

  if (a9 != 1.0 && a9 != -1.0)
  {
    CMPhotoGainMapCreateOutputFromConstituents_cold_3(v102);
    goto LABEL_201;
  }

  v82 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v82)
  {
    v18 = 4294950305;
LABEL_166:
    if (cfa)
    {
      CFRelease(cfa);
    }

    goto LABEL_168;
  }

  v83 = v82;
  FigCFDictionarySetFloat();
  FigCFDictionarySetInt();
  v18 = CMPhotoCreateSDRAndGainMapFromImage(*a14, v83, &cfa, &v99, &v98);
  CFRelease(v83);
  if (v18)
  {
    goto LABEL_166;
  }

  if (*a14)
  {
    CFRelease(*a14);
  }

  v18 = 0;
  *a14 = cfa;
  cfa = 0;
LABEL_168:
  if (v98)
  {
    CFRelease(v98);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  return v18;
}

uint64_t SlimVideoEncoder_EncodeFrameInternal(uint64_t a1, __CVBuffer *a2, __int128 *a3, __int128 *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, CFTypeRef), uint64_t a7, uint64_t a8)
{
  v17 = 0;
  v15 = *a3;
  v16 = *(a3 + 2);
  v13 = *a4;
  v14 = *(a4 + 2);
  v11 = _encodeFrame(a1 + 16, a2, &v15, &v13, a5, &v17);
  a6(a7, a8, v11, v17);
  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

void _setProperty(void *a1, uint64_t a2, const void *a3)
{
  if (FigCFEqual())
  {
    if (a3)
    {
      v5 = CFGetTypeID(a3);
      if (v5 == CFBooleanGetTypeID())
      {
        *(a1[8] + 116) = CFBooleanGetValue(a3);
        return;
      }
    }

    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, a1 + 9);
        if (*a1)
        {
          _setProperty_cold_1(a1);
        }

        return;
      }
    }

LABEL_23:
    fig_log_get_emitter();

    FigSignalErrorAtGM();
    return;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      goto LABEL_23;
    }

    v7 = CFGetTypeID(a3);
    if (v7 != CFNumberGetTypeID())
    {
      goto LABEL_23;
    }

    valuePtr = 0;
    CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
    if (valuePtr <= 0xF)
    {
      *(a1[8] + 8352) = valuePtr;
      return;
    }

    fig_log_get_emitter();
    goto LABEL_36;
  }

  if (FigCFEqual())
  {
    if (!a3)
    {
      goto LABEL_23;
    }

    v8 = CFGetTypeID(a3);
    if (v8 != CFNumberGetTypeID())
    {
      goto LABEL_23;
    }

    v10 = 0;
    CFNumberGetValue(a3, kCFNumberIntType, &v10);
    if (v10 <= 0xFF)
    {
      *(a1[8] + 8356) = v10;
      return;
    }

    fig_log_get_emitter();
LABEL_36:
    FigSignalErrorAtGM();
    return;
  }

  if (FigCFEqual())
  {

    _setPropertyInputPixelFormat(a1, a3);
  }

  else if (FigCFEqual())
  {

    _setPropertyQuality(a1, a3);
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_23;
    }

    _setPropertyTotalByteBudget(a1, a3);
  }
}

uint64_t SlimVideoEncoder_CopyPixelBufferAttributesInternal(uint64_t a1, CFTypeRef *a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *a2 = CFRetain(v2);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t RegisterSlimVideoEncoderSessionClass()
{
  sSlimVideoEncoderSessionClass = 0;
  *algn_1EB1EC5D8 = "SlimVideoEncoderSessionClass";
  qword_1EB1EC5E0 = SlimVideoEncoderSessionClass_Init;
  unk_1EB1EC5E8 = 0;
  qword_1EB1EC5F8 = 0;
  unk_1EB1EC600 = 0;
  qword_1EB1EC5F0 = SlimVideoEncoderSessionClass_Finalize;
  qword_1EB1EC608 = SlimVideoEncoderSessionClass_CopyFormattingDesc;
  unk_1EB1EC610 = 0;
  result = _CFRuntimeRegisterClass();
  sSlimVideoEncoderSessionTypeID = result;
  return result;
}

double SlimVideoEncoderSessionClass_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__CFString *SlimVideoEncoderSessionClass_CopyFormattingDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SlimVideoEncoder %p>", a1);
  return Mutable;
}

void _finalizeEncoderStorage(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    if (v2[17])
    {
      DestroyThreadContext(v2[17]);
      free(*(*(a1 + 64) + 136));
      v2 = *(a1 + 64);
      v2[17] = 0;
    }

    free(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CMMemoryPoolFlush(v3);
    CMMemoryPoolInvalidate(*(a1 + 56));
    v4 = *(a1 + 56);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFRelease(v6);
  }

  *a1 = 0;
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 32) = 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 48) = 0;
}

void _bufFreeBlockCallback_0(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _setPropertyInputPixelFormat(void *a1, const __CFNumber *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(cf, kCFNumberSInt32Type, a1 + 76);
    if (*a1)
    {
      _setPropertyInputPixelFormat_cold_1(a1);
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

double _setPropertyQuality(uint64_t a1, const __CFNumber *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 0.0;
    CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr);
    v5 = valuePtr;
    if (valuePtr < 0.0 || valuePtr > 1.0)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    else
    {
      *(a1 + 80) = valuePtr;
      result = 7.0 - floor(v5 * 7.0);
      *(*(a1 + 64) + 120) = result;
    }
  }

  else
  {
    fig_log_get_emitter();

    FigSignalErrorAtGM();
  }

  return result;
}

uint64_t _setPropertyTotalByteBudget(uint64_t a1, const __CFNumber *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(cf, kCFNumberSInt64Type, (*(a1 + 64) + 128));
    *(*(a1 + 64) + 120) = -1;
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void CMPhotoCompressionPluginDispose(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      v2[2](a1);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void SlimCompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 152);
    v2 = *(v1 + 80);
    if (v2)
    {
      dispatch_barrier_sync(v2, &__block_literal_global_10);
      v3 = *(v1 + 80);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    for (i = 16; i != 48; i += 8)
    {
      v5 = *(v1 + i);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    CMPhotoVideoQualityControllerDispose(*(v1 + 128));
    v6 = *(v1 + 120);
    if (v6)
    {
      CFRelease(v6);
    }

    free(v1);
  }
}