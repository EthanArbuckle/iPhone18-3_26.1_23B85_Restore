uint64_t vt_Copy_yuvs_420v_avg_rotate_arm(const char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a2[1];
  v7 = *a2;
  if ((a3 & 0x1F) != 0)
  {
    return 1;
  }

  v8 = a6[1];
  v9 = *a6;
  if ((a5 & 0x1F) != 0 || (v9 & 0x1F) != 0 || (v8 & 0x1F) != 0)
  {
    return 1;
  }

  v10 = &a1[a5];
  v11 = (v7 + v9 * a4 - v9 + a3 - 16);
  v12 = (v11 - v9);
  v13 = (v6 + v8 * (a4 >> 1) - v8 + a3 - 16);
  v14 = a5 - 2 * a3;
  v15 = a3 - v9;
  v16 = a3 - v8;
  v17 = a3 >> 4;
  do
  {
    do
    {
      v21 = vld2q_s8(a1);
      a1 += 32;
      v22 = vld2q_s8(v10);
      v10 += 32;
      v21.val[0] = vrev64q_s8(v21.val[0]);
      v22.val[0] = vrev64q_s8(v22.val[0]);
      *v11-- = vextq_s8(v21.val[0], v21.val[0], 8uLL);
      *v12-- = vextq_s8(v22.val[0], v22.val[0], 8uLL);
      v21.val[1] = vrev64q_s16(vhaddq_u8(v21.val[1], v22.val[1]));
      *v13-- = vextq_s8(v21.val[1], v21.val[1], 8uLL);
      --v17;
    }

    while (v17);
    v18 = v10 - a1;
    a1 = &v10[v14];
    v10 += v14 + v18;
    v19 = v11 - v12;
    v11 = (v12 + v15);
    v12 = (v12 + v15 - v19);
    v13 = (v13 + v16);
    v17 = a3 >> 4;
    a4 -= 2;
  }

  while (a4);
  return 0;
}

uint64_t ProgressCallback(uint64_t result, float a2)
{
  if (a2 >= 1.0 || vabds_f32(*(result + 8), a2) >= 0.01)
  {
    *(result + 8) = fminf(a2, 1.0);
    result = *(result + 16);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

id _computeCheckpoint(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  if (a1)
  {
    v3 = *MEMORY[0x277CBECE8];
    ModelSpecificPropertyListForModel = FigCreateModelSpecificPropertyListForModel();
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyListForModel();
  }

  else
  {
    v6 = *MEMORY[0x277CBECE8];
    ModelSpecificPropertyListForModel = FigCreateModelSpecificPropertyList();
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  }

  obj = ModelSpecificPropertyList;
  if (!ModelSpecificPropertyListForModel)
  {
    v7 = 0;
    goto LABEL_100;
  }

  v84 = a1;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [ModelSpecificPropertyListForModel objectForKeyedSubscript:@"VideoCodecs"];
  v82 = ModelSpecificPropertyListForModel;
  v9 = [ModelSpecificPropertyListForModel objectForKeyedSubscript:@"AudioCodecs"];
  v10 = MGCopyAnswer();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 intValue];

    v13 = v12 == 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = MGCopyAnswer();
  if (v14)
  {
    v15 = v14;
    [v14 intValue];
  }

  v16 = MGCopyAnswer();
  if (v16)
  {
    v17 = v16;
    [v16 intValue];
  }

  v18 = MGCopyAnswer();
  if (v18)
  {
    v19 = v18;
    [v18 intValue];
  }

  v20 = MGCopyAnswer();
  if (v20)
  {
    v21 = v20;
    [v20 intValue];
  }

  v22 = MGCopyAnswer();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 intValue];

    v25 = v24 > 41;
  }

  else
  {
    v25 = 0;
  }

  v26 = MGCopyAnswer();
  if (v26)
  {
    v27 = v26;
    v28 = [v26 intValue];

    v29 = v28 > 49;
  }

  else
  {
    v29 = 0;
  }

  v30 = MGCopyAnswer();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 intValue];

    v33 = v32 > 50;
  }

  else
  {
    v33 = 0;
  }

  v34 = MGCopyAnswer();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 intValue];

    v37 = v36 > 51;
  }

  else
  {
    v37 = 0;
  }

  v38 = MGCopyAnswer();
  if (v38)
  {
    v39 = v38;
    v40 = [v38 intValue];

    v85 = v40 != 0;
  }

  else
  {
    v85 = 0;
  }

  v41 = MGCopyAnswer();
  if (v41)
  {
    v42 = v41;
    [v41 intValue];
  }

  if (!v13)
  {
    v43 = MGCopyAnswer();
    if (v43)
    {
      v44 = v43;
      [v43 intValue];
    }
  }

  v45 = MGCopyAnswer();
  if (v45)
  {
    v46 = v45;
    [v45 intValue];
  }

  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v47)
  {
    if (v37)
    {
      v48 = [v8 objectForKeyedSubscript:@"H.264_UHDVideo3"];
      if (v48)
      {
        [v47 setObject:v48 forKeyedSubscript:@"H.264"];
      }

      v49 = [v8 objectForKeyedSubscript:@"H.264M_UHDVideo3"];
      if (v49)
      {
        [v47 setObject:v49 forKeyedSubscript:@"H.264M"];
      }

      v50 = @"H.264H_UHDVideo3";
    }

    else if (v33)
    {
      v51 = [v8 objectForKeyedSubscript:@"H.264_UHDVideo2"];
      if (v51)
      {
        [v47 setObject:v51 forKeyedSubscript:@"H.264"];
      }

      v52 = [v8 objectForKeyedSubscript:@"H.264M_UHDVideo2"];
      if (v52)
      {
        [v47 setObject:v52 forKeyedSubscript:@"H.264M"];
      }

      v50 = @"H.264H_UHDVideo2";
    }

    else if (v29)
    {
      v53 = [v8 objectForKeyedSubscript:@"H.264_UHDVideo"];
      if (v53)
      {
        [v47 setObject:v53 forKeyedSubscript:@"H.264"];
      }

      v54 = [v8 objectForKeyedSubscript:@"H.264M_UHDVideo"];
      if (v54)
      {
        [v47 setObject:v54 forKeyedSubscript:@"H.264M"];
      }

      v50 = @"H.264H_UHDVideo";
    }

    else
    {
      if (!v25)
      {
LABEL_66:
        v58 = [v8 objectForKeyedSubscript:@"H.263"];
        if (v58)
        {
          [v47 setObject:v58 forKeyedSubscript:@"H.263"];
        }

        v59 = [v8 objectForKeyedSubscript:@"MPEG4"];
        if (v59)
        {
          [v47 setObject:v59 forKeyedSubscript:@"MPEG4"];
        }

        [v7 setObject:v47 forKeyedSubscript:@"VideoCodecs"];
        goto LABEL_71;
      }

      v55 = [v8 objectForKeyedSubscript:@"H.264_HDVideo42"];
      if (v55)
      {
        [v47 setObject:v55 forKeyedSubscript:@"H.264"];
      }

      v56 = [v8 objectForKeyedSubscript:@"H.264M_HDVideo42"];
      if (v56)
      {
        [v47 setObject:v56 forKeyedSubscript:@"H.264M"];
      }

      v50 = @"H.264H_HDVideo42";
    }

    v57 = [v8 objectForKeyedSubscript:v50];
    if (v57)
    {
      [v47 setObject:v57 forKeyedSubscript:@"H.264H"];
    }

    goto LABEL_66;
  }

LABEL_71:

  v60 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v9];
  v61 = v60;
  ModelSpecificPropertyListForModel = v82;
  if (v9)
  {
    if (!v85)
    {
      [v60 removeObjectForKey:@"AC3"];
      [v61 removeObjectForKey:@"EnhancedAC3"];
    }

    [v7 setObject:v61 forKeyedSubscript:@"AudioCodecs"];
  }

  if (obj && v7)
  {
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v62 = v84;
    v86 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
    if (v86)
    {
      v83 = *v89;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v89 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v88 + 1) + 8 * i);
          [v64 stringByAppendingFormat:@".plist"];
          if (v62)
          {
            v65 = FigCreateModelSpecificPropertyListForModel();
          }

          else
          {
            v65 = FigCreateModelSpecificPropertyList();
          }

          v66 = v65;
          v67 = [obj objectForKeyedSubscript:v64];
          v68 = [v67 objectForKeyedSubscript:@"VideoCodecs"];
          if (v68)
          {
            v69 = v68;
            if ([v68 count])
            {
              v70 = 0;
              do
              {
                v71 = [v69 objectAtIndexedSubscript:v70];
                v72 = [objc_msgSend(v66 objectForKeyedSubscript:{@"VideoCodecs", "objectForKeyedSubscript:", v71}];
                v73 = [v7 objectForKeyedSubscript:@"VideoCodecs"];
                if (v72)
                {
                  [v73 setObject:v72 forKey:v71];
                }

                ++v70;
              }

              while (v70 < [v69 count]);
            }
          }

          v74 = [v67 objectForKeyedSubscript:@"AudioCodecs"];
          if (v74)
          {
            v75 = v74;
            if ([v74 count])
            {
              v76 = 0;
              do
              {
                v77 = [v75 objectAtIndexedSubscript:v76];
                v78 = [objc_msgSend(v66 objectForKeyedSubscript:{@"AudioCodecs", "objectForKeyedSubscript:", v77}];
                v79 = [v7 objectForKeyedSubscript:@"AudioCodecs"];
                if (v78)
                {
                  [v79 setObject:v78 forKey:v77];
                }

                ++v76;
              }

              while (v76 < [v75 count]);
            }
          }

          v62 = v84;
        }

        v86 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
      }

      while (v86);
    }

    ModelSpecificPropertyListForModel = v82;
  }

LABEL_100:

  v80 = *MEMORY[0x277D85DE8];
  return v7;
}