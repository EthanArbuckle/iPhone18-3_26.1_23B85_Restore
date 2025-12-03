@interface GEMagicKit
+ (id)magicForFileAtURL:(id)l decompress:(BOOL)decompress;
+ (id)magicForObject:(id)object decompress:(BOOL)decompress;
+ (id)rawMagicOutputForObject:(id)object cookie:(magic_set *)cookie flags:(int)flags;
+ (id)typeHierarchyForType:(id)type;
+ (magic_set)sharedMagicCookie;
@end

@implementation GEMagicKit

+ (id)magicForFileAtURL:(id)l decompress:(BOOL)decompress
{
  decompressCopy = decompress;
  if (![l isFileURL])
  {
    return 0;
  }

  path = [l path];

  return [GEMagicKit magicForFileAtPath:path decompress:decompressCopy];
}

+ (id)typeHierarchyForType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(__CFDictionary *)UTTypeCopyDeclaration(type) objectForKey:*MEMORY[0x277CC2040]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [v4 addObjectsFromArray:{+[GEMagicKit typeHierarchyForType:](GEMagicKit, "typeHierarchyForType:", *(*(&v11 + 1) + 8 * i))}];
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return v4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = MEMORY[0x277CBEA60];

  return [v9 arrayWithObject:v3];
}

+ (id)rawMagicOutputForObject:(id)object cookie:(magic_set *)cookie flags:(int)flags
{
  if (cookie)
  {
    *(cookie + 17) = flags;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [object bytes];
    v8 = [object length];
    if (!cookie)
    {
      return 0;
    }

    v15 = v8;
    if (file_reset(cookie, 1, v9, v10, v11, v12, v13, v14) == -1 || file_buffer(cookie, -1, 0, bytes, v15, v16, v17, v18) == -1)
    {
      return 0;
    }

    v19 = file_getbuffer(cookie);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"MagicKit" format:{@"Invalid object (expected data or path string): %@", object}];
      return 0;
    }

    fileSystemRepresentation = [object fileSystemRepresentation];
    v19 = magic_file(cookie, fileSystemRepresentation, v21, v22, v23, v24, v25, v26);
  }

  v27 = v19;
  if (!v19)
  {
    return 0;
  }

  v28 = MEMORY[0x277CCACA8];

  return [v28 stringWithUTF8String:v27];
}

+ (id)magicForObject:(id)object decompress:(BOOL)decompress
{
  if (decompress)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = +[GEMagicKit sharedMagicCookie];
  v8 = [self rawMagicOutputForObject:object cookie:v7 flags:v6];
  0x410 = [self rawMagicOutputForObject:object cookie:v7 flags:v6 | 0x410];
  if (v8)
  {
    v10 = 0x410 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v11 = 0x410;
  v12 = [objc_msgSend(0x410 componentsSeparatedByString:{@";", "objectAtIndex:", 0}];
  v13 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F60], v12, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = -[GEMagicResult initWithMimeType:description:typeHierarchy:]([GEMagicResult alloc], "initWithMimeType:description:typeHierarchy:", v11, v8, [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObject:{v13), "arrayByAddingObjectsFromArray:", +[GEMagicKit typeHierarchyForType:](GEMagicKit, "typeHierarchyForType:", v13)}]);

  return v14;
}

+ (magic_set)sharedMagicCookie
{
  v242 = *MEMORY[0x277D85DE8];
  v2 = &file_formats[2];
  if (sharedMagicCookie_sharedCookie)
  {
    return *(v2 + 154);
  }

  v3 = malloc_type_calloc(1uLL, 0x120uLL, 0x10700403DB5B4F0uLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 17) = 0;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
    v3[2] = 10;
    v5 = malloc_type_malloc(0xA0uLL, 0x1000040451B5BE8uLL);
    v4[3] = v5;
    if (v5)
    {
      *(v4 + 18) = 0;
      *(v4 + 16) = -1;
      *v4 = 0;
      v4[1] = 0;
      v4[10] = "unknown";
      v4[11] = 0;
      v4[33] = 0x800800000320032;
      *(v4 + 68) = 536871168;
      v4[35] = 0x100000;
    }

    else
    {
      free(v4);
      v4 = 0;
    }
  }

  sharedMagicCookie_sharedCookie = v4;
  v6 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", @"magic", @"mgc", "fileSystemRepresentation"}];
  v13 = sharedMagicCookie_sharedCookie;
  if (!sharedMagicCookie_sharedCookie)
  {
LABEL_243:
    v226 = MEMORY[0x277CBEAD8];
    v227 = __error();
    [v226 raise:@"MagicKit" format:{@"There was an error opening the magic database: %s", strerror(*v227)}];
    return *(v2 + 154);
  }

  v14 = v6;
  file_reset(sharedMagicCookie_sharedCookie, 0, v7, v8, v9, v10, v11, v12);
  if (v14)
  {
    goto LABEL_24;
  }

  v14 = getenv("MAGIC");
  if (v14)
  {
    goto LABEL_24;
  }

  if (get_default_magic_default_magic)
  {
    free(get_default_magic_default_magic);
    get_default_magic_default_magic = 0;
  }

  v15 = getenv("HOME");
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v15;
  v240[0] = 0;
  memset(&v237, 0, sizeof(v237));
  if (asprintf(v240, "%s/.magic.mgc", v15) < 0)
  {
    goto LABEL_23;
  }

  v17 = v240[0];
  if (stat(v240[0], &v237) != -1)
  {
    goto LABEL_14;
  }

  free(v17);
  if ((asprintf(v240, "%s/.magic", v16) & 0x80000000) == 0)
  {
    v17 = v240[0];
    if (stat(v240[0], &v237) == -1)
    {
LABEL_22:
      get_default_magic_default_magic = 0;
      free(v17);
      goto LABEL_23;
    }

    if ((v237.st_mode & 0xF000) != 0x4000)
    {
LABEL_14:
      if ((asprintf(&get_default_magic_default_magic, "%s:%s", v17, "/etc/magic") & 0x80000000) == 0)
      {
        free(v17);
        v14 = get_default_magic_default_magic;
        if (!get_default_magic_default_magic)
        {
          goto LABEL_243;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    free(v17);
    if ((asprintf(v240, "%s/%s", v16, "/.magic/magic.mgc") & 0x80000000) == 0)
    {
      v17 = v240[0];
      if (access(v240[0], 4) == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

LABEL_23:
  v14 = "/etc/magic";
LABEL_24:
  if ((init_file_tables_done & 1) == 0)
  {
    init_file_tables_done = 1;
    v18 = "invalid";
    do
    {
      v19 = *(v18 + 6);
      if (v19 >= 51)
      {
        __assert_rtn("init_file_tables", "apprentice.c", 407, "p->type < FILE_NAMES_SIZE");
      }

      file_names[v19] = v18;
      file_formats[v19] = *(v18 + 7);
      v20 = v18 + 32;
      v21 = *(v18 + 6);
      v18 += 32;
    }

    while (v21);
    if (v20 - "invalid" != 1632)
    {
      __assert_rtn("init_file_tables", "apprentice.c", 411, "p - type_tbl == FILE_NAMES_SIZE");
    }
  }

  v22 = strdup(v14);
  if (!v22)
  {
    v208 = strlen(v14);
    v209 = *__error();
    file_error(v13, v209, "cannot allocate %zu bytes", v210, v211, v212, v213, v214, v208);
    goto LABEL_243;
  }

  __s = v22;
  v23 = 0;
  v24 = 1;
  do
  {
    v25 = v24;
    mlist_free(v13[v23]);
    v26 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00403F8C4432uLL);
    if (!v26)
    {
      v13[v23] = 0;
      v215 = __error();
      file_error(v13, *v215, "cannot allocate %zu bytes", v216, v217, v218, v219, v220, 40);
      if ((v25 & 1) == 0)
      {
        mlist_free(*v13);
        *v13 = 0;
      }

      free(__s);
      goto LABEL_243;
    }

    v24 = 0;
    v26[3] = v26;
    v26[4] = v26;
    v13[v23] = v26;
    v23 = 1;
  }

  while ((v25 & 1) != 0);
  v27 = -1;
  v28 = __s;
  do
  {
    v232 = v27;
    v29 = v28;
    v30 = strchr(v28, 58);
    if (v30)
    {
      *v30++ = 0;
    }

    if (!*v29)
    {
      v27 = v232;
      break;
    }

    v231 = v30;
    memset(&v237, 0, sizeof(v237));
    v31 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040EA71619DuLL);
    if (!v31)
    {
      v37 = __error();
      file_error(v13, *v37, "cannot allocate %zu bytes", v38, v39, v40, v41, v42, 48);
      v43 = 0;
      v36 = 0;
      goto LABEL_74;
    }

    v235 = v31;
    v31[4] = 0;
    v240[0] = 0;
    v32 = v29 - 1;
      ;
    }

    if (v32 >= v29)
    {
      v44 = "c";
      while (1)
      {
        v45 = v44;
        if (v44[1] != *v32)
        {
          break;
        }

        --v32;
        if (v44 >= ".mgc")
        {
          --v44;
          if (v32 >= v29)
          {
            continue;
          }
        }

        if (v45 >= ".mgc")
        {
          break;
        }

        goto LABEL_43;
      }
    }

    --v32;
      ;
    }

LABEL_43:
    v35 = v32 - v29 + 1;
    if ((*(v13 + 34) & 0x410) == 0)
    {
      goto LABEL_55;
    }

    if (asprintf(v240, "%.*s.mime%s", v35, v29, ".mgc") < 0)
    {
      goto LABEL_64;
    }

    v36 = v240[0];
    if (access(v240[0], 4) == -1)
    {
      free(v36);
LABEL_55:
      if (asprintf(v240, "%.*s%s", v35, v29, ".mgc") < 0)
      {
LABEL_64:
        v36 = 0;
        goto LABEL_73;
      }

      if (strstr(v29, ".mime"))
      {
        *(v13 + 17) &= 0x10u;
      }

      v36 = v240[0];
      goto LABEL_59;
    }

    *(v13 + 17) &= 0x10u;
LABEL_59:
    v43 = v235;
    if (v36)
    {
      v46 = open(v36, 0);
      if (v46 != -1)
      {
        v47 = v46;
        if (fstat(v46, &v237) == -1)
        {
          v54 = *__error();
        }

        else
        {
          st_size = v237.st_size;
          if (v237.st_size >= 8)
          {
            *(v235 + 1) = v237.st_size;
            v235[4] = 1;
            v60 = malloc_type_malloc(st_size, 0x83B105FCuLL);
            *v235 = v60;
            v61 = *(v235 + 1);
            if (v60)
            {
              if (read(v47, v60, *(v235 + 1)) == *(v235 + 1))
              {
                close(v47);
                v67 = *v235;
                v68 = **v235;
                if (v68 == -249691108)
                {
                  v69 = v67[1];
                }

                else
                {
                  if (v68 != 470032113)
                  {
                    goto LABEL_73;
                  }

                  v69 = bswap32(v67[1]);
                }

                if (v69 == 16)
                {
                  v182 = *(v235 + 1);
                  if (376 * (v182 / 0x178) != v182)
                  {
                    v43 = v235;
                    goto LABEL_74;
                  }

                  v183 = v67 + 94;
                  v184 = bswap32(v67[2]);
                  if (v68 == -249691108)
                  {
                    v185 = v67[2];
                  }

                  else
                  {
                    v185 = v184;
                  }

                  v235[10] = v185;
                  *(v235 + 3) = v183;
                  v186 = v67[3];
                  v187 = bswap32(v186);
                  if (v68 != -249691108)
                  {
                    v186 = v187;
                  }

                  v235[11] = v186;
                  *(v235 + 4) = &v183[94 * v185];
                  if (v186 + v185 + 1 == (v182 / 0x178))
                  {
                    if (v68 != -249691108)
                    {
                      v188 = 0;
                      v189 = 1;
                      do
                      {
                        v190 = v189;
                        v191 = v235[v188 + 10];
                        if (v191)
                        {
                          v192 = (*&v235[2 * v188 + 6] + 24);
                          do
                          {
                            v192[-2].i16[4] = bswap32(v192[-2].u16[4]) >> 16;
                            *(v192[-1].i64 + 4) = vrev32_s8(*(v192[-1].i64 + 4));
                            v192[-1].i32[3] = bswap32(v192[-1].u32[3]);
                            v193 = v192[-2].u8[14];
                            v159 = v193 > 0x2E;
                            v194 = (1 << v193) & 0x6200001E2020;
                            if (v159 || v194 == 0)
                            {
                              *v192 = vrev64q_s8(*v192);
                            }

                            else
                            {
                              *v192->i8 = vrev32_s8(*v192->i8);
                            }

                            v192 = (v192 + 376);
                            --v191;
                          }

                          while (v191);
                        }

                        v189 = 0;
                        v188 = 1;
                      }

                      while ((v190 & 1) != 0);
                    }

                    free(v36);
                    goto LABEL_221;
                  }
                }

                else
                {
                }

                goto LABEL_73;
              }

              v76 = *__error();
              file_error(v13, v76, "error reading", v77, v78, v79, v80, v81, v229);
            }

            else
            {
              v70 = *__error();
              file_error(v13, v70, "cannot allocate %zu bytes", v71, v72, v73, v74, v75, v61);
            }
          }

          else
          {
          }
        }

        close(v47);
      }

LABEL_73:
      v43 = v235;
    }

LABEL_74:
    apprentice_unmap(v43);
    free(v36);
    v88 = *(v13 + 17);
    if ((v88 & 0x40) != 0)
    {
      v88 = *(v13 + 17);
    }

    v239 = 0;
    *v240 = 0u;
    v241 = 0u;
    *(v13 + 17) = v88 | 0x40;
    v89 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040EA71619DuLL);
    if (!v89)
    {
      v105 = __error();
      file_error(v13, *v105, "cannot allocate %zu bytes", v106, v107, v108, v109, v110, 48);
LABEL_190:
      v173 = -1;
LABEL_191:
      v27 = v232;
      goto LABEL_192;
    }

    memset(&v237, 0, sizeof(v237));
    v235 = v89;
    v89[4] = 1;
    v238 = 0;
    if (stat(v29, &v237) || (v237.st_mode & 0xF000) != 0x4000)
    {
      load_1(v13, v29, &v239, v240);
    }

    else
    {
      v90 = opendir(v29);
      if (!v90)
      {
        v92 = 0;
        v239 = 1;
        goto LABEL_181;
      }

      v91 = v90;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      while (1)
      {
        v95 = readdir(v91);
        if (!v95)
        {
          break;
        }

        d_name = v95->d_name;
        if (v95->d_name[0] != 46)
        {
          if (asprintf(&v238, "%s/%s", v29, v95->d_name) < 0)
          {
            v174 = strlen(v29);
            v175 = v174 + strlen(d_name) + 2;
            v176 = __error();
            file_error(v13, *v176, "cannot allocate %zu bytes", v177, v178, v179, v180, v181, v175);
            ++v239;
            closedir(v91);
            goto LABEL_181;
          }

          v97 = v238;
          if (stat(v238, &v237) != -1 && (v237.st_mode & 0xF000) == 0x8000)
          {
            if (v93 >= v94)
            {
              v94 = 2 * v94 + 2;
              v98 = malloc_type_realloc(v92, 8 * v94, 0x10040436913F5uLL);
              if (!v98)
              {
                file_oomem(v13, 8 * v94);
                free(v238);
                closedir(v91);
                ++v239;
                goto LABEL_181;
              }

              v97 = v238;
              v92 = v98;
            }

            *(v92 + v93++) = v97;
          }

          else
          {
            free(v97);
          }
        }
      }

      closedir(v91);
      if (v92)
      {
        qsort(v92, v93, 8uLL, cmpstrp);
        if (v93)
        {
          v157 = 0;
          v158 = 1;
          do
          {
            load_1(v13, *(v92 + v157), &v239, v240);
            free(*(v92 + v157));
            v157 = v158;
            v159 = v93 > v158++;
          }

          while (v159);
        }

        free(v92);
      }
    }

    if (v239)
    {
      v92 = 0;
      goto LABEL_181;
    }

    v236 = 0;
    v233 = v235 + 6;
    v111 = v240;
    v112 = 1;
    while (2)
    {
      v234 = v112;
      v113 = *(v111 + 2);
      if (!v113)
      {
        goto LABEL_147;
      }

      v114 = 0;
      do
      {
        v115 = v114;
        v116 = &(*v111)[16 * v114];
        v117 = *v116;
        if (**v116)
        {
          ++v114;
          continue;
        }

        v118 = v113;
        if (v113 <= v114 + 1)
        {
          ++v114;
        }

        else
        {
          v114 = v113;
        }

        v119 = v116;
        do
        {
          v120 = v117[6];
          if (v120 <= 0x32)
          {
            v121 = *v116;
            if (((1 << v120) & 0x71C7FFFE1DFD6) != 0)
            {
              v122 = v121[2];
              goto LABEL_107;
            }

            if (((1 << v120) & 0xC2020) != 0)
            {
              v122 = v121[2];
              if ((v121[28] & 0x20) != 0)
              {
                v123 = v122 | 0x40;
                goto LABEL_108;
              }

LABEL_107:
              v123 = v122 | 0x20;
LABEL_108:
              v121[2] = v123;
              goto LABEL_109;
            }

            if (((1 << v120) & 0x120000) != 0)
            {
              v133 = *(v121 + 7);
              v134 = v121[2];
              v135 = (v133 >> 1) & 0x20 | (((v133 >> 5) & 1) << 6) | v134;
              if ((v133 & 0x60) != 0)
              {
                v121[2] = (*(v121 + 7) >> 1) & 0x20 | (((*(v121 + 7) & 0x20) != 0) << 6) | v134;
                v134 |= (v133 >> 1) & 0x20 | (((v133 >> 5) & 1) << 6);
              }

              if ((v135 & 0x60) == 0)
              {
                if (file_looks_utf8((v117 + 32), v117[5], 0, 0) <= 0)
                {
                  v136 = v134 | 0x20;
                }

                else
                {
                  v136 = v134 | 0x40;
                }

                v121[2] = v136;
              }
            }
          }

LABEL_109:
          if (*(v13 + 68))
          {
            v125 = v117[224];
            v124 = (v117 + 224);
            v126 = v124 - 64;
            v127 = "; ";
            if (!v125)
            {
              v127 = "";
            }

            if (!*(v124 - 64))
            {
              v126 = "(no description)";
            }

            v128 = "binary";
            if ((*(v124 - 222) & 0x20) == 0)
            {
              v128 = "text";
            }

            fprintf(*MEMORY[0x277D85DF8], "%s%s%s: %s\n", v124, v127, v126, v128);
            v129 = *v119;
            if (((*v119)[2] & 0x20) != 0)
            {
              v130 = strstr(v129 + 160, "text");
              if (v130)
              {
                v131 = v130;
                if (v130 != (v129 + 160))
                {
                  v132 = *(v130 - 1);
                  if (v132 < 0)
                  {
                    if (!__maskrune(*(v130 - 1), 0x4000uLL))
                    {
                      goto LABEL_138;
                    }
                  }

                  else if ((*(MEMORY[0x277D85DE0] + 4 * v132 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_138;
                  }

                  v129 = *v119;
                }

                v137 = v131 + 5;
                if (v131 + 5 - v129 == 288)
                {
                  goto LABEL_137;
                }

                v138 = *v137;
                if (!*v137)
                {
                  goto LABEL_137;
                }

                if ((v138 & 0x80) == 0)
                {
                  if ((*(MEMORY[0x277D85DE0] + 4 * v138 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_138;
                  }

LABEL_137:
                  fwrite("*** Possible binary test for text type\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
                  goto LABEL_138;
                }

                if (__maskrune(v138, 0x4000uLL))
                {
                  goto LABEL_137;
                }
              }
            }
          }

LABEL_138:
          if (++v115 >= v118)
          {
            goto LABEL_145;
          }

          v139 = v119[2];
          v119 += 2;
          v117 = v139;
        }

        while (*v139);
        v114 = v115;
LABEL_145:
        v113 = *(v111 + 2);
      }

      while (v114 < v113);
LABEL_147:
      v140 = v113;
      v141 = *v111;
      if (*v111)
      {
        qsort(*v111, v113, 0x10uLL, apprentice_sort);
      }

      if (v140)
      {
        v142 = 0;
        v143 = v141;
        while (1)
        {
          v144 = v142 + 1;
          if (!**v143 && *(*v143 + 6) == 3)
          {
            break;
          }

          v143 += 16;
          ++v142;
          if (v140 == v144)
          {
            goto LABEL_154;
          }
        }

        if (v140 > v144)
        {
          LODWORD(v144) = v140;
        }

        v155 = 16;
        while (++v142 < v140)
        {
          v156 = **&v143[v155];
          v155 += 16;
          if (!v156)
          {
            LODWORD(v144) = v142;
            break;
          }
        }

        if (v144 != v140)
        {
          v13[11] = *(*&v141[16 * v144] + 20);
          file_magwarn(v13, "level 0 default did not sort last", v99, v100, v101, v102, v103, v104, v229);
        }

LABEL_154:
        v145 = 0;
        v146 = (v141 + 8);
        v147 = (v141 + 8);
        v148 = v140;
        do
        {
          v149 = *v147;
          v147 += 4;
          v145 += v149;
          --v148;
        }

        while (v148);
        v150 = 120 * v145;
        v151 = malloc_type_malloc(376 * v145, 0x1000040E4699127uLL);
        *&v233[2 * v236] = v151;
        if (v151)
        {
          v152 = 0;
          do
          {
            memcpy((*&v233[2 * v236] + 376 * v152), *(v146 - 1), 376 * *v146);
            v153 = *v146;
            v146 += 4;
            v152 += v153;
            --v140;
          }

          while (v140);
LABEL_162:
          v112 = 0;
          v235[v236 + 10] = v152;
          v111 = &v241;
          v236 = 1;
          if ((v234 & 1) == 0)
          {
            v92 = 0;
            goto LABEL_180;
          }

          continue;
        }
      }

      else
      {
        v154 = malloc_type_malloc(0, 0x1000040E4699127uLL);
        *&v233[2 * v236] = v154;
        if (v154)
        {
          v152 = 0;
          goto LABEL_162;
        }

        v150 = 0;
      }

      break;
    }

    v160 = __error();
    file_error(v13, *v160, "cannot allocate %zu bytes", v161, v162, v163, v164, v165, v150);
    v92 = 0;
    ++v239;
LABEL_180:
    v2 = file_formats + 8;
LABEL_181:
    free(v92);
    v166 = v240;
    v167 = 1;
    do
    {
      v168 = v167;
      v169 = *v166;
      if (*v166)
      {
        v170 = *(v166 + 2);
        if (v170)
        {
          v171 = *v166;
          do
          {
            v172 = *v171;
            v171 += 2;
            free(v172);
            --v170;
          }

          while (v170);
        }

        free(v169);
      }

      v167 = 0;
      v166 = &v241;
    }

    while ((v168 & 1) != 0);
    if (v239)
    {
      apprentice_unmap(v235);
      goto LABEL_190;
    }

LABEL_221:
    v196 = 0;
    v197 = 1;
    while (1)
    {
      v198 = v13[v196];
      v198[2] = 0;
      v199 = malloc_type_malloc(0x28uLL, 0x10A00403F8C4432uLL);
      if (!v199)
      {
        break;
      }

      v173 = v197 & 1;
      v197 = 0;
      v200 = v235;
      if (!v173)
      {
        v200 = 0;
      }

      v199[2] = v200;
      *v199 = *&v235[2 * v196 + 6];
      *(v199 + 2) = v235[v196 + 10];
      v201 = v198[4];
      *(v201 + 24) = v199;
      v199[3] = v198;
      v199[4] = v201;
      v198[4] = v199;
      v196 = 1;
      if (!v173)
      {
        goto LABEL_191;
      }
    }

    if (v197)
    {
      apprentice_unmap(v235);
    }

    else
    {
      mlist_free(*v13);
      *v13 = 0;
      mlist_free(v13[1]);
      v13[1] = 0;
    }

    v27 = v232;
    v202 = __error();
    file_error(v13, *v202, "cannot allocate %zu bytes", v203, v204, v205, v206, v207, 40);
    v173 = -1;
LABEL_192:
    v28 = v231;
    if (v27 <= v173)
    {
      v27 = v173;
    }
  }

  while (v231);
  free(__s);
  if (v27 == -1)
  {
    mlist_free(*v13);
    *v13 = 0;
    mlist_free(v13[1]);
    v13[1] = 0;
    file_error(v13, 0, "could not find any valid magic files!", v221, v222, v223, v224, v225, v229);
    goto LABEL_243;
  }

  return *(v2 + 154);
}

@end