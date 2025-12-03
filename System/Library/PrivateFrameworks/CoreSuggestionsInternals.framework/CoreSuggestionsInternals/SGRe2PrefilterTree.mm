@interface SGRe2PrefilterTree
- (SGRe2PrefilterTree)initWithData:(id)data;
- (id)regexpIdsThatMightMatchUtf8:(const char *)utf8;
@end

@implementation SGRe2PrefilterTree

- (id)regexpIdsThatMightMatchUtf8:(const char *)utf8
{
  v86 = *MEMORY[0x277D85DE8];
  if (!utf8 || !*utf8)
  {
    v55 = 0;
    goto LABEL_89;
  }

  v4 = objc_opt_new();
  utf8Copy4 = utf8;
  v82 = v4;
  v6 = *utf8;
  if (*utf8)
  {
    LODWORD(v7) = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (self->_n3 <= 1u)
    {
      n3 = 1;
    }

    else
    {
      n3 = self->_n3;
    }

    n2 = self->_n2;
    if (n2 <= 1)
    {
      n2 = 1;
    }

    v80 = n2;
    v81 = n3;
    n1 = self->_n1;
    if (n1 <= 1)
    {
      n1 = 1;
    }

    v79 = n1;
    do
    {
      v15 = &utf8Copy4[v11];
      v16 = v6 + 32 * ((v6 - 65) < 0x1A);
      v7 = 33 * (v7 - 1089 * BYTE2(v10)) + v16;
      if (v11 >= 2)
      {
        v17 = self->_n1;
        if (v17)
        {
          v18 = v7 % v79;
          h1 = self->_h1;
          v20 = h1[v7 % v79];
          if (v20 != 0xFFFF)
          {
            v29 = v15 - 2;
            do
            {
              v30 = &self->_s1[v20];
              v31 = v29;
              v32 = v30;
              while (1)
              {
                v33 = *v32;
                if (!*v32)
                {
                  break;
                }

                v34 = *v31;
                if (*v31)
                {
                  ++v31;
                  ++v32;
                  if (v34 + 32 * ((v34 - 65) < 0x1A) == v33)
                  {
                    continue;
                  }
                }

                goto LABEL_28;
              }

              v77 = v16;
              v35 = v9;
              v36 = v8;
              v37 = v7;
              v38 = v15;
              [v82 addIndex:*(v30 - 1)];
              v15 = v38;
              v7 = v37;
              v8 = v36;
              v9 = v35;
              v16 = v77;
              utf8Copy4 = utf8;
              v17 = self->_n1;
              h1 = self->_h1;
LABEL_28:
              if ((v18 + 1) < v17)
              {
                ++v18;
              }

              else
              {
                v18 = 0;
              }

              v20 = h1[v18];
            }

            while (v20 != 0xFFFF);
          }
        }
      }

      v8 = 33 * (v8 - 39135393 * BYTE5(v10)) + v16;
      if (v11 >= 5)
      {
        v21 = self->_n2;
        if (v21)
        {
          v22 = v8 % v80;
          h2 = self->_h2;
          v24 = h2[v8 % v80];
          if (v24 != 0xFFFF)
          {
            v39 = v15 - 5;
            do
            {
              v40 = &self->_s2[v24];
              v41 = v39;
              v42 = v40;
              while (1)
              {
                v43 = *v42;
                if (!*v42)
                {
                  break;
                }

                v44 = *v41;
                if (*v41)
                {
                  ++v41;
                  ++v42;
                  if (v44 + 32 * ((v44 - 65) < 0x1A) == v43)
                  {
                    continue;
                  }
                }

                goto LABEL_39;
              }

              v78 = v16;
              v45 = v9;
              v46 = v8;
              v47 = v7;
              v48 = v15;
              [v82 addIndex:*(v40 - 1)];
              v15 = v48;
              v7 = v47;
              v8 = v46;
              v9 = v45;
              v16 = v78;
              utf8Copy4 = utf8;
              v21 = self->_n2;
              h2 = self->_h2;
LABEL_39:
              if ((v22 + 1) < v21)
              {
                ++v22;
              }

              else
              {
                v22 = 0;
              }

              v24 = h2[v22];
            }

            while (v24 != 0xFFFF);
          }
        }
      }

      v9 = 33 * (v9 + 331229983 * HIBYTE(v10)) + v16;
      if (v11 >= 7)
      {
        v25 = self->_n3;
        if (v25)
        {
          v26 = v9 % v81;
          h3 = self->_h3;
          v28 = h3[v9 % v81];
          if (v28 != 0xFFFF)
          {
            v49 = v15 - 7;
            do
            {
              v50 = &self->_s3[v28];
              v51 = v49;
              v52 = v50;
              while (1)
              {
                v53 = *v52;
                if (!*v52)
                {
                  break;
                }

                v54 = *v51;
                if (*v51)
                {
                  ++v51;
                  ++v52;
                  if (v54 + 32 * ((v54 - 65) < 0x1A) == v53)
                  {
                    continue;
                  }
                }

                goto LABEL_50;
              }

              [v82 addIndex:*(v50 - 1)];
              utf8Copy4 = utf8;
              v25 = self->_n3;
              h3 = self->_h3;
LABEL_50:
              if ((v26 + 1) < v25)
              {
                ++v26;
              }

              else
              {
                v26 = 0;
              }

              v28 = h3[v26];
            }

            while (v28 != 0xFFFF);
          }
        }
      }

      v10 = v16 | (v10 << 8);
      v6 = utf8Copy4[++v11];
    }

    while (utf8Copy4[v11]);
  }

  v56 = objc_opt_new();
  memset(v85, 0, sizeof(v85));
  if (!self->_nrpns)
  {
LABEL_87:
    v55 = v56;
    goto LABEL_88;
  }

  v57 = 0;
  v58 = 0;
  rpns = self->_rpns;
  while (1)
  {
    v61 = *rpns++;
    v60 = v61;
    if (v61)
    {
      break;
    }

LABEL_84:
    if (v57)
    {
      [v56 addIndex:v58];
    }

    if (++v58 >= self->_nrpns)
    {
      goto LABEL_87;
    }
  }

  v62 = 0;
  v63 = 0;
  while (1)
  {
    if (v63 == 64)
    {
      v74 = sgLogHandle();
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_97;
      }

      *buf = 0;
      v75 = "Prefilter tree stack overflow";
      goto LABEL_96;
    }

    v64 = *rpns;
    v65 = rpns[1];
    if (v64 > 1)
    {
      break;
    }

    if (!*rpns)
    {
      *(v85 + v63) = [v82 containsIndex:v65];
      goto LABEL_81;
    }

    if (v64 == 1)
    {
      if (v63 < v65)
      {
        goto LABEL_94;
      }

      if (rpns[1])
      {
        v66 = v65 - 1;
        v67 = &v84 + v63;
        v68 = 1;
        do
        {
          v69 = *v67--;
          v68 &= v69;
          LODWORD(v65) = v65 - 1;
        }

        while (v65);
        goto LABEL_78;
      }

      v68 = 1;
      goto LABEL_80;
    }

LABEL_82:
    rpns += 2;
    if (++v62 == v60)
    {
      v57 = LOBYTE(v85[0]);
      goto LABEL_84;
    }
  }

  if (v64 != 2)
  {
    if (v64 == 3)
    {
      *(v85 + v63) = 1;
LABEL_81:
      ++v63;
      goto LABEL_82;
    }

    goto LABEL_82;
  }

  if (v63 >= v65)
  {
    v68 = 0;
    if (rpns[1])
    {
      v66 = v65 - 1;
      v70 = &v84 + v63;
      do
      {
        v71 = *v70--;
        v68 |= v71;
        LODWORD(v65) = v65 - 1;
      }

      while (v65);
LABEL_78:
      v63 += ~v66 | 0xFFFFFFFFFFFF0000;
    }

LABEL_80:
    *(v85 + v63) = v68;
    goto LABEL_81;
  }

LABEL_94:
  v74 = sgLogHandle();
  if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_97;
  }

  *buf = 0;
  v75 = "Prefilter tree stack underflow";
LABEL_96:
  _os_log_impl(&dword_231E60000, v74, OS_LOG_TYPE_DEFAULT, v75, buf, 2u);
LABEL_97:

  v55 = 0;
LABEL_88:

LABEL_89:
  v72 = *MEMORY[0x277D85DE8];

  return v55;
}

- (SGRe2PrefilterTree)initWithData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] <= 0x1C)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGRe2PrefilterTree.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"data.length > 7*sizeof(uint32_t)"}];
  }

  v54.receiver = self;
  v54.super_class = SGRe2PrefilterTree;
  v7 = [(SGRe2PrefilterTree *)&v54 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_data, data);
    bytes = [dataCopy bytes];
    bytes2 = [dataCopy bytes];
    v11 = [dataCopy length];
    v12 = *bytes;
    rpns = (bytes2 + v12);
    v8->_rpns = (bytes2 + v12);
    if (v11 < v12)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_rpns) <= (const uint8_t *)end"}];

      rpns = v8->_rpns;
    }

    h1 = (bytes2 + bytes[1]);
    h2 = (bytes2 + bytes[2]);
    v8->_h1 = h1;
    v8->_h2 = h2;
    v8->_h3 = (bytes2 + bytes[3]);
    if (rpns > h1)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_rpns) <= (const uint8_t *)(_h1)"}];

      h1 = v8->_h1;
      h2 = v8->_h2;
    }

    if (h1 > h2)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h1) <= (const uint8_t *)(_h2)"}];

      h2 = v8->_h2;
    }

    v16 = (bytes2 + v11);
    if (h2 > v8->_h3)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h2) <= (const uint8_t *)(_h3)"}];
    }

    if (v8->_h1 > v16)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h1) <= (const uint8_t *)end"}];
    }

    if (v8->_h2 > v16)
    {
      currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler7 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h2) <= (const uint8_t *)end"}];
    }

    h3 = v8->_h3;
    if (h3 > v16)
    {
      currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler8 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h3) <= (const uint8_t *)end"}];

      h3 = v8->_h3;
    }

    s1 = (bytes2 + bytes[4]);
    s2 = (bytes2 + bytes[5]);
    v8->_s1 = s1;
    v8->_s2 = s2;
    v8->_s3 = (bytes2 + bytes[6]);
    if (h3 > s1)
    {
      currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler9 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h3) <= (const uint8_t *)(_s1)"}];

      s1 = v8->_s1;
      s2 = v8->_s2;
    }

    if (s1 > s2)
    {
      currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler10 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_s1) <= (const uint8_t *)(_s2)"}];

      s2 = v8->_s2;
    }

    if (s2 > v8->_s3)
    {
      currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler11 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_s2) <= (const uint8_t *)(_s3)"}];
    }

    if (v8->_s1 > v16)
    {
      currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler12 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_s1) <= (const uint8_t *)end"}];
    }

    if (v8->_s2 > v16)
    {
      currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler13 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_s2) <= (const uint8_t *)end"}];
    }

    if (v8->_s3 > v16)
    {
      currentHandler14 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler14 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_s3) <= (const uint8_t *)end"}];
    }

    v20 = v8->_rpns;
    v21 = *v20++;
    v8->_rpns = v20;
    v8->_nrpns = v21;
    if (v20 > v16)
    {
      currentHandler15 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler15 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_rpns) <= (const uint8_t *)end"}];
    }

    v23 = v8->_h1;
    v22 = v8->_h2;
    v24 = *v23++;
    v8->_n1 = v24;
    v26 = *v22;
    v25 = v22 + 1;
    v8->_h1 = v23;
    v8->_h2 = v25;
    v8->_n2 = v26;
    v27 = v8->_h3;
    v28 = *v27;
    v8->_h3 = v27 + 1;
    v8->_n3 = v28;
    if (v23 > v16)
    {
      currentHandler16 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler16 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h1) <= (const uint8_t *)end"}];

      v25 = v8->_h2;
    }

    if (v25 > v16)
    {
      currentHandler17 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler17 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h2) <= (const uint8_t *)end"}];
    }

    if (v8->_h3 > v16)
    {
      currentHandler18 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler18 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"(const uint8_t *)(_h3) <= (const uint8_t *)end"}];
    }

    v29 = v8->_h2;
    if (&v8->_h1[v8->_n1 + 1] != v29)
    {
      currentHandler19 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler19 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"_h1 + _n1 + 1 == _h2"}];

      v29 = v8->_h2;
    }

    v30 = &v29[v8->_n2 + 1];
    v31 = v8->_h3;
    if (v30 != v31)
    {
      currentHandler20 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler20 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"_h2 + _n2 + 1 == _h3"}];

      v31 = v8->_h3;
    }

    if (&v31[v8->_n3] != v8->_s1)
    {
      currentHandler21 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler21 handleFailureInMethod:a2 object:v8 file:@"SGRe2PrefilterTree.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"(const void *)(_h3 + _n3 + 0) == (const void *)_s1"}];
    }
  }

  return v8;
}

@end