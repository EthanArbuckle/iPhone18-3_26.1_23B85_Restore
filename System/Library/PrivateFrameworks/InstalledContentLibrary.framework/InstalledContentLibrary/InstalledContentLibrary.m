id sub_1B16A167C(const char **a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *a1;

  return [v2 v3];
}

uint64_t TraverseDirectoryWithPostTraversal(uint64_t a1, char a2, unsigned int a3, void *a4, void *a5, void *a6)
{
  v131 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v107 = 0;
  v108 = 0;
  v106 = 5;
  if (a3)
  {
    v13 = -1610579959;
  }

  else
  {
    v13 = -1610612727;
  }

  HIDWORD(v106) = v13 & 0xBDB8FFFF | (((a3 >> 1) & 7) << 16) & 0xBDBFFFFF | (((a3 >> 5) & 1) << 22) & 0xBDFFFFFF | (((a3 >> 4) & 1) << 30) | (((a3 >> 6) & 1) << 25);
  if ((a3 & 0x80) != 0)
  {
    LODWORD(v108) = 1;
    v14 = 5;
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 4;
  if ((a3 & 0x100) != 0)
  {
LABEL_8:
    LODWORD(v108) = v14;
  }

LABEL_9:
  if ((a3 & 0x200) != 0)
  {
    HIDWORD(v108) = 512;
  }

  HIDWORD(v107) = 6;
  bzero(&v125, 0x420uLL);
  if (!a1)
  {
    _CreateAndLogError("TraverseDirectoryWithPostTraversal", 912, @"MIInstallerErrorDomain", 25, 0, 0, @"%s was called with a NULL path parameter.", v15, "_Bool TraverseDirectoryWithPostTraversal(const char *, TraverseDirectoryOptions, TraverseDirectoryAdditionalFetchProperties, NSError *__autoreleasing *, __strong TraverseDirectoryItemBlock, __strong TraverseDirectoryPostTraversalBlock)");
    goto LABEL_22;
  }

  v16 = __strlcpy_chk();
  if (v16 >= 0x400)
  {
    _CreateAndLogError("TraverseDirectoryWithPostTraversal", 919, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to iterate directories starting at a path that was too long: %s", v17, a1);
    v30 = LABEL_22:;
    goto LABEL_23;
  }

  v129 = v16;
  v18 = _CreateAndPushContinuation(&v125);
  if (!v18)
  {
    _CreateAndLogError("TraverseDirectoryWithPostTraversal", 927, *MEMORY[0x1E696A798], 12, 0, 0, @"Failed to create a continuation", v19, v101);
    goto LABEL_22;
  }

  v104 = a4;
  if (a2)
  {
    v30 = 0;
  }

  else
  {
    v20 = v18;
    v21 = v11;
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    *__errnum = 0u;
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    ContinuationFD = _GetContinuationFD(&v125, v20, 0, &v110);
    v23 = v110;
    if (ContinuationFD == -1)
    {
      v29 = a2;
    }

    else
    {
      if (fgetattrlist(ContinuationFD, &v106, *(v20 + 8), 0x4000uLL, 32 * (HIDWORD(v108) != 0)))
      {
        v24 = *__error();
        v25 = *MEMORY[0x1E696A798];
        v26 = v24;
        strerror(v24);
        _CreateAndLogError("_CallBlockForBaseItem", 844, v25, v26, 0, 0, @"fgetattrlist for %s failed: %s", v27, v128);
      }

      else
      {
        _ParseAttributeBuf(v128, *(v20 + 8), &v112, &v111, 0, &v109);
        if (DWORD1(v114) != 2)
        {
          v73 = *(v20 + 24);
          if ((v73 & 0x80000000) == 0)
          {
            close(v73);
            *(v20 + 24) = -1;
          }
        }

        v74 = v129 + 24;
        v75 = 25;
        if (v74 < 0x19)
        {
          v75 = v129 + 24;
        }

        v76 = v129;
        while (v76 + 24 >= 26)
        {
          v77 = v128[--v76];
          if (v77 == 47)
          {
            v75 = v76 + 25;
LABEL_111:
            v29 = a2;
            v78 = _CallClientBlock(a2, v128, v129, &v125 + v75, v74 - v75, 0, &v112, &v119, v111, v21);
            v70 = 0;
            v68 = v109 | (v78 != 0) | (DWORD1(v114) != 2);
            v69 = 1;
            goto LABEL_96;
          }
        }

        if (*(&v125 + v75 - 1) == 47)
        {
          goto LABEL_111;
        }

        _CreateAndLogError("_CallBlockForBaseItem", 860, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to locate last path element in %s", v72, v128);
      }
      v28 = ;
      v29 = a2;

      v23 = v28;
    }

    v67 = v23;
    v68 = 0;
    v69 = 0;
    v70 = v23;
LABEL_96:

    v30 = v70;
    if (!v69)
    {
      goto LABEL_127;
    }

    a2 = v29;
    if (v68)
    {
      goto LABEL_98;
    }
  }

  v34 = v125;
  if (!v125)
  {
    goto LABEL_98;
  }

  v102 = (v12 + 16);
LABEL_30:
  v125 = *v34;
  --v130;
  if (*&v34[1] || (AttrBuffer = _GetAttrBuffer(&v125), (v34[1] = AttrBuffer) != 0))
  {
    while (1)
    {
      v105 = v11;
      v38 = v12;
      v124 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      *__errnum = 0u;
      v39 = v34[3].u16[2];
      if (!v34[3].i16[2])
      {
        goto LABEL_69;
      }

      v40 = v34[2].u32[0];
      v41 = v34[2].u32[1];
      v42 = v40 - v41;
      if (v40 < v41)
      {
        _CreateAndLogError("_ProcessContinuation", 670, @"MIInstallerErrorDomain", 4, 0, 0, @"Internal error: totalProcessedEntryCount (%u) was less than reprocessCount (%u)", v37, v34[2].u32[0]);
        v71 = LABEL_100:;
LABEL_120:
        v85 = v71;

        v86 = v71;
LABEL_121:
        v87 = v86;

        v88 = v34[1];
        if (v88)
        {
          *v88 = v126;
          v126 = v88;
        }

        v89 = v34[3].i32[0];
        if ((v89 & 0x80000000) == 0)
        {
          close(v89);
          v34[3].i32[0] = -1;
        }

        *v34 = v127;
        v127 = v34;
        goto LABEL_126;
      }

      if (v40 == v41)
      {
        v43 = v34[3].u16[3];
      }

      else
      {
        if (v42 >= v39)
        {
          v34[2].i32[1] = v41 + v39;
          v34[3].i16[3] = v39;
          goto LABEL_69;
        }

        v43 = (v40 - v41);
        v34[3].i16[3] = v42;
        v34[2].i32[1] = v40;
      }

      v44 = v34[1];
      if (v43)
      {
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v47 = *(*&v44 + v46);
          v46 += v47;
          if (v46 > 0x4000)
          {
            break;
          }

          if (++v45 >= v43)
          {
            goto LABEL_44;
          }
        }

        _CreateAndLogError("_ProcessContinuation", 705, @"MIInstallerErrorDomain", 4, 0, 0, @"Read entry length %u for entry %hu but that put us off the end of the buffer", v37, v47);
        goto LABEL_100;
      }

      v46 = 0;
LABEL_44:
      v103 = v11;
      if (v43 < v39)
      {
        while (1)
        {
          v110 = 0;
          v111 = 0;
          v109 = 0;
          _ParseAttributeBuf(v128, *&v44 + v46, &v112, &v110, &v111, &v109);
          v49 = v111;
          if (!v111)
          {
            break;
          }

          v46 += v112;
          if (v46 > 0x4000)
          {
            v79 = @"MIInstallerErrorDomain";
            v101 = v112;
            v80 = @"Read entry length %u for entry %hu but that put us off the end of the buffer";
            v81 = 729;
            goto LABEL_114;
          }

          v50 = __errnum[2];
          if (__errnum[2])
          {
            v83 = *MEMORY[0x1E696A798];
            strerror(__errnum[2]);
            _CreateAndLogError("_ProcessContinuation", 736, v83, v50, 0, 0, @"got error while processing entry %hu in %s : %s", v84, v43);
            goto LABEL_119;
          }

          v51 = (v114 - 1);
          if (!_PushPathBuf(&v125, v111, v51))
          {
            v79 = *MEMORY[0x1E696A798];
            v101 = v49;
            v80 = @"Could not append element %s of length %zd to path %s because it would make the path longer than MAXPATHLEN";
            v81 = 743;
            v82 = 63;
            goto LABEL_118;
          }

          v52 = _CallClientBlock(a2, v128, v129, v49, v51, v130 + 1, &v112, &v119, v110, v105);
          if (v52 == 2)
          {
            v109 = 1;
          }

          else if (v52 == 1)
          {
            goto LABEL_131;
          }

          ++v34[3].i16[3];
          v34[2] = vadd_s32(v34[2], 0x100000001);
          if (DWORD1(v114) == 2)
          {
            if ((v109 & 1) == 0)
            {
              *v34 = v125;
              v125 = v34;
              ++v130;
              if (_CreateAndPushContinuation(&v125))
              {

                v11 = v103;
                goto LABEL_92;
              }

              v79 = *MEMORY[0x1E696A798];
              v80 = @"Failed to create a continuation";
              v81 = 773;
              v82 = 12;
LABEL_118:
              _CreateAndLogError("_ProcessContinuation", v81, v79, v82, 0, 0, v80, v48, v101);
              v71 = LABEL_119:;
              v11 = v103;
              goto LABEL_120;
            }

            if (v12)
            {
              v53 = objc_autoreleasePoolPush();
              v54 = (*v102)(v38, v128);
              objc_autoreleasePoolPop(v53);
              if (!v54)
              {
LABEL_131:

                v97 = v34[1];
                v11 = v103;
                if (v97)
                {
                  *v97 = v126;
                  v126 = v97;
                }

                v98 = v34[3].i32[0];
                if ((v98 & 0x80000000) == 0)
                {
                  close(v98);
                  v34[3].i32[0] = -1;
                }

                *v34 = v127;
                v127 = v34;
                goto LABEL_98;
              }
            }
          }

          v55 = v129;
          if (v129)
          {
            v11 = v103;
            do
            {
              v56 = v55 - 1;
              v57 = v128[v55 - 1] == 47 || v55 == 1;
              --v55;
            }

            while (!v57);
            v55 = v56;
          }

          else
          {
            v11 = v103;
          }

          v43 = (v43 + 1);
          v128[v55] = 0;
          v129 = v55;
          if (v43 >= v34[3].u16[2])
          {
            goto LABEL_69;
          }
        }

        v79 = @"MIInstallerErrorDomain";
        v101 = v43;
        v80 = @"Entry %hu in %s did not include name information even though we requested it.";
        v81 = 722;
LABEL_114:
        v82 = 4;
        goto LABEL_118;
      }

LABEL_69:

      *&v112 = 0;
      v58 = _GetContinuationFD(&v125, v34, 1, &v112);
      v59 = v112;
      if (v58 == -1)
      {
        goto LABEL_129;
      }

      v60 = getattrlistbulk(v58, &v106, *&v34[1], 0x4000uLL, 32 * (HIDWORD(v108) != 0));
      if (!v60)
      {

        if (!v12 || (a2 & 1) != 0 && !v125)
        {
          goto LABEL_78;
        }

        v61 = objc_autoreleasePoolPush();
        if (!(*v102)(v38, v128))
        {
          v99 = v34[1];
          if (v99)
          {
            *v99 = v126;
            v126 = v99;
          }

          v100 = v34[3].i32[0];
          if ((v100 & 0x80000000) == 0)
          {
            close(v100);
            v34[3].i32[0] = -1;
          }

          *v34 = v127;
          v127 = v34;
          objc_autoreleasePoolPop(v61);
          goto LABEL_98;
        }

        objc_autoreleasePoolPop(v61);
LABEL_78:
        v62 = v129;
        if (v129)
        {
          do
          {
            v63 = v62 - 1;
            v64 = v128[v62 - 1] == 47 || v62 == 1;
            --v62;
          }

          while (!v64);
          v62 = v63;
        }

        v128[v62] = 0;
        v129 = v62;
        v65 = v34[1];
        if (v65)
        {
          *v65 = v126;
          v126 = v65;
        }

        v66 = v34[3].i32[0];
        if ((v66 & 0x80000000) == 0)
        {
          close(v66);
          v34[3].i32[0] = -1;
        }

        *v34 = v127;
        v127 = v34;
LABEL_92:
        v34 = v125;
        if (!v125)
        {
LABEL_98:
          _DestroyTraversalState(&v125);
          v32 = 1;
          goto LABEL_26;
        }

        goto LABEL_30;
      }

      if (v60 == -1)
      {
        v90 = *__error();
        v91 = *MEMORY[0x1E696A798];
        v92 = v90;
        v93 = v34[2].u32[0];
        strerror(v90);
        v95 = _CreateAndLogError("_PopulateAttrBuf", 425, v91, v92, 0, 0, @"getattrlistbulk failed on entry %u in %s : %s", v94, v93);

        v59 = v95;
LABEL_129:
        v96 = v59;

        v86 = v59;
        goto LABEL_121;
      }

      v34[3].i16[2] = v60;
      v34[3].i16[3] = 0;
    }
  }

  v87 = _CreateAndLogError("TraverseDirectoryWithPostTraversal", 952, *MEMORY[0x1E696A798], 12, 0, 0, @"Failed to locate an attrBuf", v36, v101);

LABEL_126:
  v30 = v87;
LABEL_127:
  a4 = v104;
LABEL_23:
  _DestroyTraversalState(&v125);
  if (a4)
  {
    v31 = v30;
    v32 = 0;
    *a4 = v30;
  }

  else
  {
    v32 = 0;
  }

LABEL_26:

  return v32;
}

BOOL _PushPathBuf(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 1048);
  v4 = a3 + v3 + 1;
  if (v4 <= 0x3FF)
  {
    v6 = a1 + 24;
    *(a1 + 24 + v3) = 47;
    memcpy((*(a1 + 1048) + a1 + 24 + 1), a2, a3);
    *(a1 + 1048) = v4;
    *(v6 + v4) = 0;
  }

  return v4 < 0x400;
}

uint64_t _ParseAttributeBuf(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _BYTE *a6)
{
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = *a2;
  v10 = *(a2 + 20);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 20) = v10;
  v11 = *(a3 + 4);
  if ((v11 & 0x20000000) == 0)
  {
    v12 = (a2 + 24);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if ((v11 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(a3 + 24) = *(a2 + 24);
  v12 = (a2 + 28);
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = *v12;
  *(a3 + 28) = *v12;
  v14 = v12++ + v13;
  if ((v11 & 8) != 0)
  {
LABEL_7:
    v15 = *v12;
    v12 = (v12 + 4);
    *(a3 + 36) = v15;
  }

LABEL_8:
  if ((v11 & 0x8000) != 0)
  {
    v17 = *v12;
    v12 = (v12 + 4);
    *(a3 + 40) = v17;
    if ((v11 & 0x10000) == 0)
    {
LABEL_10:
      if ((v11 & 0x20000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v11 & 0x10000) == 0)
  {
    goto LABEL_10;
  }

  v18 = *v12;
  v12 = (v12 + 4);
  *(a3 + 44) = v18;
  if ((v11 & 0x20000) == 0)
  {
LABEL_11:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v19 = *v12;
  v12 = (v12 + 4);
  *(a3 + 48) = v19;
  if ((v11 & 0x40000) == 0)
  {
LABEL_12:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v21 = *v12;
    *(a3 + 56) = *v12;
    v16 = v12++ + v21;
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_18:
  v20 = *v12;
  v12 = (v12 + 4);
  *(a3 + 52) = v20;
  if ((v11 & 0x400000) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v16 = 0;
  if ((v11 & 0x2000000) != 0)
  {
LABEL_20:
    v22 = *v12++;
    *(a3 + 64) = v22;
  }

LABEL_21:
  if ((v11 & 0x40000000) != 0)
  {
    v23 = *v12;
    v12 = (v12 + 4);
    *(a3 + 72) = v23;
  }

  if (*(a3 + 36) == 2)
  {
    v24 = *(a3 + 12);
    if ((v24 & 2) != 0)
    {
      v25 = *v12;
      v12 = (v12 + 4);
      *(a3 + 80) = v25;
      if (!v25)
      {
        *a6 = 1;
      }
    }

    if ((v24 & 4) != 0)
    {
      v26 = *v12;
      v12 = (v12 + 4);
      *(a3 + 84) = v26;
      if ((v26 & 3) != 0)
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          result = MOLogWrite();
        }

        *a6 = 1;
      }
    }
  }

  else
  {
    v28 = *(a3 + 16);
    if (v28)
    {
      v29 = *v12;
      v12 = (v12 + 4);
      *(a3 + 80) = v29;
    }

    if ((v28 & 4) != 0)
    {
      v30 = *v12++;
      *(a3 + 88) = v30;
    }
  }

  if ((*(a3 + 21) & 2) != 0)
  {
    *(a3 + 96) = *v12;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a4)
  {
    *a4 = v16;
  }

  return result;
}

id MILoadInfoPlistWithError(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v14 = 0;
  v6 = MICreateCFBundleEnforcingInfoPlistSize(a1, 0x7FFFFFFFFFFFFFFFLL, 0, &v14);
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v13 = v7;
    v9 = MILoadInfoPlistFromBundleWithError(v6, v5, &v13);
    v10 = v13;

    CFRelease(v6);
    v8 = v10;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v11 = v8;
    *a3 = v8;
  }

LABEL_7:

  return v9;
}

uint64_t _CallClientBlock(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v18 = a10;
  v19 = *(a7 + 36);
  if ((a1 & 2) != 0 && v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    v21 = a9;
    *a8 = *(a7 + 64);
    *(a8 + 8) = *(a7 + 88);
    *(a8 + 24) = a2;
    *(a8 + 32) = a3;
    *(a8 + 40) = a4;
    *(a8 + 48) = a5;
    *(a8 + 56) = *(a7 + 52);
    *(a8 + 60) = v19;
    v22 = *(a7 + 72);
    *(a8 + 64) = *(a7 + 80);
    *(a8 + 68) = v22;
    *(a8 + 72) = *(a7 + 40);
    *(a8 + 80) = *(a7 + 80);
    v23 = *(a7 + 48) & 0xFFF;
    *(a8 + 84) = v23;
    v24 = v19 - 1;
    if (v24 <= 6)
    {
      *(a8 + 84) = word_1B175DAC0[v24] | v23;
    }

    if (a9)
    {
      v21 = *(a9 + 36) != -1;
    }

    *(a8 + 86) = v21;
    *(a8 + 87) = a6;
    v25 = objc_autoreleasePoolPush();
    v29 = 1;
    v26 = v18[2](v18, a8, &v29);
    if (v29)
    {
      v27 = 0;
    }

    else
    {
      v27 = 2;
    }

    if (v26)
    {
      v20 = v27;
    }

    else
    {
      v20 = 1;
    }

    objc_autoreleasePoolPop(v25);
  }

  return v20;
}

unint64_t _DTypeForVFSType(unsigned int a1)
{
  v1 = 0x10C0A0206040800uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 0xF;
}

id MILoadInfoPlistFromBundleWithError(__CFBundle *a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
    if (FilteredInfoPlist)
    {
      v8 = FilteredInfoPlist;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v8))
      {
        v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
        CFRelease(v8);
        goto LABEL_8;
      }

      v14 = CFGetTypeID(v8);
      v15 = CFCopyTypeIDDescription(v14);
      v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 403, @"MIInstallerErrorDomain", 3, 0, 0, @"Object returned from _CFBundleCreateFilteredInfoPlist was not a dictionary, was type %@", v16, v15);
      if (v15)
      {
        CFRelease(v15);
      }

      CFRelease(v8);
    }

    else
    {
      v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 397, @"MIInstallerErrorDomain", 3, 0, 0, @"Failed to get filtered Info.plist with keys %@ from bundle %@", v7, v5);
    }
  }

  else
  {
    InfoDictionary = CFBundleGetInfoDictionary(a1);
    if (InfoDictionary)
    {
      v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:InfoDictionary];
      v10 = v12;
      if (v12)
      {
        [v12 removeObjectForKey:@"CFBundleInfoPlistURL"];
        v13 = 0;
        goto LABEL_18;
      }

LABEL_8:
      v13 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v17 = CFBundleCopyBundleURL(a1);
    v18 = [(__CFURL *)v17 path];
    v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 419, @"MIInstallerErrorDomain", 35, 0, 0, @"CFBundleGetInfoDictionary failed for bundle at %@", v19, v18);
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v10)
  {
    v20 = v13;
    *a3 = v13;
  }

LABEL_18:

  return v10;
}

id MIFetchInfoForUsername(const char *a1, uid_t *a2, gid_t *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (sysconf(71) == -1)
  {
    MIFetchInfoForUsername_cold_2(&v15, v20);
  }

  v8 = MEMORY[0x1EEE9AC00]();
  memset(&v15, 0, sizeof(v15));
  v14 = 0;
  result = getpwnam_r(a1, &v15, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v9, &v14);
  if (result)
  {
    v13 = 0;
    memset(v20, 0, sizeof(v20));
    v11 = result;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = strerror(v11);
    v16 = 136315394;
    v17 = a1;
    v18 = 2080;
    v19 = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    MIFetchInfoForUsername_cold_1(&v16, v20);
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  if (a2)
  {
    *a2 = v15.pw_uid;
  }

  if (a3)
  {
    *a3 = v15.pw_gid;
  }

  if (a4)
  {
    result = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v15.pw_dir isDirectory:1 relativeToURL:0];
    *a4 = result;
  }

  return result;
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UserManagementLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AE1958;
    v5 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    __getUMUserManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUMUserManagerClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UserManagementLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AE1FD8;
    v5 = 0;
    UserManagementLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!UserManagementLibraryCore_frameworkLibrary_0)
  {
    __getUMUserManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getUMUserManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass;
  v7 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUMUserManagerClass_block_invoke;
    v3[3] = &unk_1E7AE1938;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B16A2F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUMUserManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass_0;
  v7 = getUMUserManagerClass_softClass_0;
  if (!getUMUserManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUMUserManagerClass_block_invoke_0;
    v3[3] = &unk_1E7AE1938;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B16A303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_DestroyTraversalState(uint64_t a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    *a1 = *i;
    --*(a1 + 1051);
    _FreeContinuation(a1, i);
  }

  while (1)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      break;
    }

    *(a1 + 8) = *v3;
    free(v3);
  }

  while (1)
  {
    result = *(a1 + 16);
    if (!result)
    {
      break;
    }

    *(a1 + 16) = *result;
    free(result);
  }

  return result;
}

uint64_t _GetContinuationFD(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a2 + 24);
  if (v4 == -1)
  {
    if (a3)
    {
      v8 = 1048832;
    }

    else
    {
      v8 = 0x200000;
    }

    v9 = a1 + 24;
    v10 = open((a1 + 24), v8);
    if ((v10 & 0x80000000) == 0)
    {
      v4 = v10;
      v5 = 0;
      *(a2 + 24) = v4;
      goto LABEL_16;
    }

    v11 = __error();
    v12 = *v11;
    v13 = *MEMORY[0x1E696A798];
    if (v12 == 20 || v12 == 2)
    {
      strerror(*v11);
      v5 = _CreateError("_GetContinuationFD", 315, v13, v12, 0, 0, @"Failed to open %s : %s", v15, v9);
      if (!a4)
      {
LABEL_15:
        v4 = 0xFFFFFFFFLL;
        goto LABEL_16;
      }
    }

    else
    {
      strerror(*v11);
      v5 = _CreateAndLogError("_GetContinuationFD", 317, v13, v12, 0, 0, @"Failed to open %s : %s", v17, v9);
      if (!a4)
      {
        goto LABEL_15;
      }
    }

    v5 = v5;
    *a4 = v5;
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

  return v4;
}

void *_CreateAndPushContinuation(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = *v2;
  }

  else
  {
    v2 = malloc_type_malloc(0x20uLL, 0x103004057E7F81CuLL);
    if (!v2)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      return 0;
    }
  }

  AttrBuffer = _GetAttrBuffer(a1);
  v2[1] = AttrBuffer;
  if (!AttrBuffer)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    free(v2);
    return 0;
  }

  v2[2] = 0;
  v2[3] = 0xFFFFFFFFLL;
  *v2 = *a1;
  *a1 = v2;
  ++*(a1 + 1051);
  return v2;
}

void *_GetAttrBuffer(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    *(a1 + 8) = *v1;
    return v1;
  }

  v3 = *(a1 + 1050);
  if (v3 >= 0x10)
  {
    v4 = *a1;
    if (*a1 && v4[1])
    {
      while (1)
      {
        v5 = v4;
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (!v4[1])
        {
          if (!v5)
          {
            goto LABEL_15;
          }

          break;
        }
      }

      v1 = v5[1];
      v5[1] = 0;
      *(v5 + 7) = 0;
      *(v5 + 5) = 0;
      v6 = *(v5 + 6);
      if ((v6 & 0x80000000) == 0)
      {
        close(v6);
        *(v5 + 6) = -1;
      }
    }

    else
    {
LABEL_15:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      return 0;
    }

    return v1;
  }

  *(a1 + 1050) = v3 + 1;

  return malloc_type_malloc(0x4000uLL, 0x67131B5uLL);
}

uint64_t sub_1B16A3BF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id MILocationSystemDefinedCommon.isEqual(_:)(uint64_t a1)
{
  sub_1B16A3BF0(a1, v5, &unk_1EB759C90);
  if (v6)
  {
    type metadata accessor for MILocationSystemDefinedCommon();
    if (swift_dynamicCast())
    {
      v2 = [v1 isEqualWithLocationSystemDefinedCommon_];

      return v2;
    }
  }

  else
  {
    sub_1B16A3F74(v5);
  }

  return 0;
}

BOOL MICompareObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

unint64_t type metadata accessor for MILocationSystemDefinedCommon()
{
  result = qword_1EB75A240;
  if (!qword_1EB75A240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB75A240);
  }

  return result;
}

uint64_t sub_1B16A3F74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB759C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MIDictionaryContainsOnlyClasses(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MIDictionaryContainsOnlyClasses_block_invoke;
  v8[3] = &unk_1E7AE1FF8;
  v8[4] = &v9;
  v8[5] = a2;
  v8[6] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1B16A40AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MIDictionaryContainsOnlyClasses_block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t sub_1B16A4294(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x1E69E99E0];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_1B16A44F4(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_1B16A4688(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x1E69E99E0];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_1B16A487C(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_1B16A49FC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A168) ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * ((qword_1EB75A150 + dword_1EB75A168) ^ 0x73))] ^ 0xDB]) - 56);
  v2 = *(v1 - 4);
  v3 = *(&off_1F2870B00 + (*(off_1F2870FB8 + (*(off_1F2870CB0 + (79 * ((qword_1EB75A150 - v2) ^ 0x73))) ^ 0x5Eu) - 8) ^ (79 * ((qword_1EB75A150 - v2) ^ 0x73))) - 34);
  v4 = v2 - &v6 + *(v3 - 4);
  *(v1 - 4) = 1889310799 * v4 - 0x6CD83E9A0F465C73;
  *(v3 - 4) = 1889310799 * (v4 ^ 0x6CD83E9A0F465C73);
  v7 = 1103 - 143681137 * ((&v7 & 0xCEF0957E | ~(&v7 | 0xCEF0957E)) ^ 0x5057E151);
  v8 = a1;
  LOBYTE(v3) = 79 * (*(v1 - 4) ^ 0x73 ^ *(v3 - 4));
  return (*(*(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - dword_1EB75A168) ^ 0x73)) ^ byte_1B1765990[byte_1B1761D20[(79 * ((qword_1EB75A150 - dword_1EB75A168) ^ 0x73))] ^ 0x5B]) - 132) + (*(off_1F2870F50 + (*(off_1F28710E0 + v3 - 4) ^ 0x52u) - 8) ^ v3) + 2044))(&v7);
}

uint64_t sub_1B16A4D40(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A1D0) ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * ((qword_1EB75A150 + dword_1EB75A1D0) ^ 0x73))] ^ 0xF1]) + 25);
  v2 = off_1F28710E0 - 4;
  v3 = off_1F2870F50 - 8;
  v4 = *(&off_1F2870B00 + (*(off_1F2870F50 + (*(off_1F28710E0 + (79 * (*v1 ^ qword_1EB75A150 ^ 0x73)) - 4) ^ 0xF0u) - 8) ^ (79 * (*v1 ^ qword_1EB75A150 ^ 0x73))) - 154);
  v5 = &v7[*(v4 - 4) - *v1];
  *v1 = (1889310799 * v5) ^ 0x6CD83E9A0F465C73;
  *(v4 - 4) = 1889310799 * (v5 ^ 0x6CD83E9A0F465C73);
  v9 = 1785193651 * (((&v8 | 0xBDCEB7BD) - &v8 + (&v8 & 0x42314840)) ^ 0x9179EC55) + 978;
  v8 = a1;
  LOBYTE(v4) = 79 * ((*(v4 - 4) - *v1) ^ 0x73);
  return (*(*(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A1D0) ^ 0x73)) ^ byte_1B1765890[byte_1B1761C20[(79 * ((qword_1EB75A150 + dword_1EB75A1D0) ^ 0x73))] ^ 0x4A]) - 174) + (v4 ^ v3[v2[v4] ^ 0x14]) + 2184))(&v8);
}

uint64_t sub_1B16A50AC(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A170) ^ 0x73)) ^ byte_1B1761F20[byte_1B176D0B0[(79 * ((qword_1EB75A150 + dword_1EB75A170) ^ 0x73))] ^ 0x66]) - 3);
  v2 = *(v1 - 4);
  v3 = *(&off_1F2870B00 + ((79 * (v2 ^ qword_1EB75A150 ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * (v2 ^ qword_1EB75A150 ^ 0x73))] ^ 0xDB]) - 175);
  v4 = 1889310799 * (&v6[*(v3 - 4) ^ v2] ^ 0x6CD83E9A0F465C73);
  *(v1 - 4) = v4;
  *(v3 - 4) = v4;
  v7 = a1;
  v8 = (1785193651 * (((&v7 | 0xBB006A34) - &v7 + (&v7 & 0x44FF95C8)) ^ 0x97B731DC)) ^ 0x97;
  LOBYTE(v3) = 79 * ((*(v3 - 4) + *(v1 - 4)) ^ 0x73);
  (*(*(&off_1F2870B00 + ((79 * (dword_1EB75A170 ^ 0x73 ^ qword_1EB75A150)) ^ byte_1B1765890[byte_1B1761C20[(79 * (dword_1EB75A170 ^ 0x73 ^ qword_1EB75A150))] ^ 0xD5]) - 153) + (*(off_1F2870FB8 + (*(off_1F2870CB0 + v3) ^ 0xD5u) - 8) ^ v3) + 1957))(&v7);
  return v9;
}

void g9eargdzvoj3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - dword_1EB759F50) ^ 0x73)) ^ byte_1B1761F20[byte_1B176D0B0[(79 * ((qword_1EB75A150 - dword_1EB759F50) ^ 0x73))] ^ 0x76]) + 25);
  v1 = *(v0 - 4);
  v2 = *(&off_1F2870B00 + (*(off_1F2870FB8 + (*(off_1F2870CB0 + (79 * (v1 ^ qword_1EB75A150 ^ 0x73))) ^ 0x5Cu) - 8) ^ (79 * (v1 ^ qword_1EB75A150 ^ 0x73))) - 227);
  v3 = (*(v2 - 4) + v1) ^ &v5;
  *(v0 - 4) = 1889310799 * v3 + 0x6CD83E9A0F465C73;
  *(v2 - 4) = 1889310799 * (v3 ^ 0x6CD83E9A0F465C73);
  v6[0] = (1037613739 * (v6 ^ 0xD1022D7F)) ^ 0x9617D40F;
  LOBYTE(v2) = 79 * (*(v0 - 4) ^ 0x73 ^ *(v2 - 4));
  v4 = *(&off_1F2870B00 + ((79 * (dword_1EB759F50 ^ 0x73 ^ qword_1EB75A150)) ^ byte_1B1761F20[byte_1B176D0B0[(79 * (dword_1EB759F50 ^ 0x73 ^ qword_1EB75A150))] ^ 0x1C]) - 33) - 8;
  (*&v4[8 * (off_1F2870CC0[(*(off_1F2871068 + v2 - 12) ^ 0xF1) - 8] ^ v2) + 17536])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16A56B4()
{
  v7 = v4 - 1;
  *(v6 + v7) ^= *(v0 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 5) ^ 0x7E;
  return (*(v5 + 8 * ((4051 * (v7 == 0)) ^ (v3 - 117))))();
}

void sub_1B16A57B4(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B16A58DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  LODWORD(STACK[0x2DC]) = 2;
  STACK[0x2C8] = 0;
  LODWORD(STACK[0x4D4]) = 0;
  LODWORD(STACK[0x3A4]) = 0;
  return (*(v30 + 8 * ((208 * (((((a8 - 911) | 0x204) - 978) & v29) == 0)) ^ a8)))(a1, a2, a3, a4, a5, a2 + 2048, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1B16A5AD4()
{
  v6 = 2 * (v0 ^ 0x308);
  (*(v3 + 8 * ((v0 ^ 0x1E9) + 1915)))(*STACK[0x200], *(v1 + 256), LODWORD(STACK[0x46C]));
  v7 = LODWORD(STACK[0x358]);
  v8 = 143681137 * (v2 ^ 0xB18932B461588BD0);
  *(v5 - 180) = v8 + v6 + 1212453544;
  *(v5 - 176) = v8;
  *(v5 - 184) = (v6 - 771098681) ^ v8;
  *(v5 - 216) = ((v6 - 771098653) ^ 0x3D) - v8;
  *(v5 - 196) = v6 - 771098653 - v8;
  *(v4 + 24) = v7 - v8;
  *(v4 + 8) = 3998651063u - v8;
  v9 = (*(v3 + 8 * (v6 ^ 0xFB0)))(v5 - 216);
  return (*(v3 + 8 * *(v5 - 200)))(v9, 0, 0);
}

uint64_t sub_1B16A5BC4(uint64_t a1)
{
  v1 = 1082434553 * ((-2 - ((a1 | 0x87804AFB) + (~a1 | 0x787FB504))) ^ 0xE338438E);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 24) + v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1550341629;
  v5 = v4 - 1550341629 < 0;
  v7 = 1550341629 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F2870B00 + v2 - 770) + ((59 * ((((v2 - 2110225293) ^ ((v3 - 1947943770) < (4 * v7))) & 1) == 0)) ^ v2) - 1))();
}

uint64_t sub_1B16A5C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v48 = ((((((v45 - 237565348) ^ 0xFFFFEC01) + v43) ^ (v43 - 5120)) - 1) & (5119 - v43) & 0x8000000000000000) == 0;
  v56 = (v45 - 237565045) | 0x241;
  *a24 = 0;
  v57 = (v42 >> (((v45 - 117) | 0x41) ^ 0x7A)) ^ v42;
  v58 = (((v57 << 7) & 0x9D2C5680 ^ v57) << (v48 + 15)) & ((v45 - 237565348) ^ 0xEFC60001) ^ (v57 << 7) & 0x9D2C5680 ^ v57 ^ (((((v57 << 7) & 0x9D2C5680 ^ v57) << (v48 + 15)) & ((v45 - 237565348) ^ 0xEFC60001) ^ (v57 << 7) & 0x9D2C5680 ^ v57) >> 18);
  v49 = &a42 + (a21 - 1);
  v50 = -1508932039 * ((*(*v46 + (*a31 & (((v56 - 1047647226) & 0x3E71D7D8u) + 497920948))) ^ v49) & 0x7FFFFFFF);
  v51 = -1508932039 * (v50 ^ HIWORD(v50));
  v52 = *(*(v47 + 8 * (v56 ^ 0x3E4)) + (v51 >> 24) - 10);
  v53 = *(*(v47 + 8 * (v56 - 772)) + (v51 >> 24) - 4);
  v54 = (v58 - ((2 * v58) & 0x5C) + ((v56 + 1962162702) & 0x8B0BC6B6 ^ 0xFFFFFFDE) - 58) ^ *(*(v47 + 8 * (v56 ^ 0x343)) + (v51 >> 24) - 4) ^ v52 ^ v53 ^ v51 ^ (-55 * (v51 >> 24));
  LODWORD(v51) = ((v58 - ((2 * v58) & 0x5C) + ((v56 + 14) & 0xB6 ^ 0xDE) - 58) ^ *(*(v47 + 8 * (v56 ^ 0x343)) + (v51 >> 24) - 4) ^ v52 ^ v53 ^ v51 ^ (-55 * BYTE3(v51)));
  *v49 = v54 ^ 0xAE;
  return (*(v44 + 8 * ((247 * (a21 != (v51 != 174))) ^ v56)))();
}

uint64_t sub_1B16A5CEC(uint64_t a1, uint64_t a2, int8x8_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v13 = v11 + 8;
  *(a2 + (v13 ^ a8 ^ a6) + v10) = vadd_s8(vsub_s8(*(a1 + (v13 ^ a8 ^ a6) + v10), vand_s8(vadd_s8(*(a1 + (v13 ^ a8 ^ a6) + v10), *(a1 + (v13 ^ a8 ^ a6) + v10)), a3)), a4);
  return (*(v9 + 8 * (((a7 == v13) * a9) ^ v12)))();
}

uint64_t sub_1B16A5CF4@<X0>(uint64_t a1@<X8>)
{
  v9 = (v3 - 2029923665) & 0x78FE2EF5;
  v10 = (v9 ^ 0x6EB5FE09 ^ *(*(v7 + 8) + 4 * v1)) + v2;
  *(*(a1 + 8) + 4 * v1) = v10 + v5 - (v6 & (2 * v10));
  return (*(v4 + 8 * ((47 * (v8 > (v1 + 1))) ^ v9)))();
}

uint64_t sub_1B16A5FE0()
{
  v4 = 1082434553 * (((((v3 - 144) ^ 0x84006248) & 0xEEF063CA) + ((v3 - 144) ^ 0x7BF59997) - (((v3 - 144) ^ 0x7BF59997) & 0xEEF063CA)) ^ 0xE420CD7);
  *(v3 - 136) = v9;
  *(v3 - 128) = v2;
  *(v3 - 120) = v7 - v4 + ((90 * (v1 ^ 0xA7)) ^ 0x5585D032);
  *(v3 - 116) = (v1 + 679) ^ v4;
  (*(v0 + 8 * (v1 + 2082)))(v3 - 144);
  *v6 = v7;
  result = v8;
  *(v8 + 40) = 296339821;
  return result;
}

uint64_t sub_1B16A6078(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32)
{
  v38 = *(v37 - 156);
  if (v38 == 1)
  {
    v43 = 41 * (a8 ^ (a8 - 3));
    v46 = *(v37 - 188);
    v45 = *(v37 - 184);
    *(v37 - 196) = (41 * (a8 ^ (a8 - 3)) + 8 * (v45 - ((2 * v45) & 0xAA)) + 3) ^ 0xD6;
    *(v37 - 195) = (v45 >> 5) ^ 0x7E;
    *(v37 - 194) = (v45 >> 13) ^ 0x7E;
    *(v37 - 193) = (v45 >> 21) ^ 0x7E;
    *(v37 - 192) = ((__PAIR64__(v46, v45) >> 29) - ((2 * (__PAIR64__(v46, v45) >> 29)) & 0x8F) + 71) ^ 0x39;
    *(v37 - 191) = (v46 >> 5) ^ 0x7E;
    *(v37 - 190) = (v46 >> 13) ^ 0x7E;
    v44 = (v46 >> 21) ^ 0x7E;
  }

  else
  {
    v39 = -1237288304;
    if (v38 != 2)
    {
      goto LABEL_6;
    }

    v40 = *(v37 - 188);
    v44 = *(v37 - 184);
    *(v37 - 196) = (v40 >> 21) - ((v40 >> 20) & 0xFC) + 126;
    v41 = (v40 >> 5) - ((v40 >> 4) & 0xFC);
    v42 = __PAIR64__(v40, v44) >> 29;
    *(v37 - 195) = (~(v40 >> 12) | 3) + (v40 >> 13) + 127;
    v43 = 1189;
    *(v37 - 194) = v41 + 126;
    *(v37 - 193) = v42 - ((2 * v42) & 0xFC) + 126;
    *(v37 - 192) = (v44 >> 21) - ((v44 >> 20) & 0xFC) + 126;
    *(v37 - 191) = (v44 >> 13) - ((v44 >> 12) & 0xFC) + 126;
    *(v37 - 190) = (v44 >> 5) - ((v44 >> 4) & 0xFC) + 126;
    LOBYTE(v44) = (-8 * v44 - 8) ^ 0x86;
  }

  v39 = (v43 + 910181723) | 0x80003090;
  *(v37 - 189) = v44;
LABEL_6:
  v47 = (v37 - 252);
  v48.n128_u64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v48.n128_u64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v49 = vdupq_n_s32(0x11A9C97Du);
  v50 = vdupq_n_s32(0x11A9C96Du);
  a21 = v32 - 582;
  a22 = v36 - 16;
  v51.n128_u64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v51.n128_u64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v156 = *(v33 + 8 * (a2 + v39 - 254));
  v52 = *(v37 - 180);
  v53 = *(v37 - 176);
  v54 = *(v37 - 172);
  v55 = *(v37 - 168);
  v56 = *(v37 - 156);
  if (v56 == 2)
  {
    v157 = vld4q_s8(v47);
    v111 = veorq_s8(v157.val[0], v48);
    v112 = vmovl_high_u8(v111);
    v113 = vmovl_u8(*v111.i8);
    v114 = veorq_s8(v157.val[1], v48);
    _Q21 = vmovl_high_u8(v114);
    _Q20 = vmovl_u8(*v114.i8);
    v117 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v118 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v119 = veorq_s8(v157.val[2], v48);
    v120 = vmovl_u8(*v119.i8);
    v121 = vmovl_high_u8(v119);
    v157.val[0] = veorq_s8(v157.val[3], v48);
    v157.val[1] = vmovl_u8(*v157.val[0].i8);
    v157.val[2] = vmovl_u16(*v157.val[1].i8);
    v157.val[1] = vmovl_high_u16(v157.val[1]);
    v157.val[0] = vmovl_high_u8(v157.val[0]);
    v157.val[3] = vmovl_u16(*v157.val[0].i8);
    v157.val[0] = vmovl_high_u16(v157.val[0]);
    v122 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v121, 8uLL)), vshlq_n_s32(vmovl_high_u16(v112), 0x18uLL)), v157.val[0]);
    v123 = vorrq_s8(vorrq_s8(vorrq_s8(v118, vshll_n_u16(*v121.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v112.i8), 0x18uLL)), v157.val[3]);
    v124 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v120, 8uLL)), vshlq_n_s32(vmovl_high_u16(v113), 0x18uLL)), v157.val[1]);
    v125 = vorrq_s8(vorrq_s8(vorrq_s8(v117, vshll_n_u16(*v120.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v113.i8), 0x18uLL)), v157.val[2]);
    v157.val[0] = veorq_s8(vandq_s8(v122, v49), (*v157.val & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v157.val[3] = veorq_s8(vandq_s8(v123, v49), (*&v157.val[3] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v157.val[1] = veorq_s8(vandq_s8(v124, v49), (*&v157.val[1] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v157.val[2] = veorq_s8(vandq_s8(v125, v49), (*&v157.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v157.val[0] = vaddq_s32(vsubq_s32(v122, vaddq_s32(v157.val[0], v157.val[0])), v50);
    v157.val[3] = vaddq_s32(vsubq_s32(v123, vaddq_s32(v157.val[3], v157.val[3])), v50);
    v157.val[1] = vaddq_s32(vsubq_s32(v124, vaddq_s32(v157.val[1], v157.val[1])), v50);
    v157.val[2] = vaddq_s32(vsubq_s32(v125, vaddq_s32(v157.val[2], v157.val[2])), v50);
    LODWORD(a29) = v157.val[2].i32[0];
    *(&a29 + 4) = vextq_s8(v157.val[2], v157.val[1], 4uLL);
    *(&a30 + 4) = vextq_s8(v157.val[1], v157.val[3], 4uLL);
    *(&a31 + 4) = vextq_s8(v157.val[3], v157.val[0], 4uLL);
    *(&a32 + 4) = vextq_s8(v157.val[0], v157.val[0], 4uLL).u64[0];
    HIDWORD(a32) = v157.val[0].i32[3];
    *(&a29 + v32 + 1224423492) = v35 ^ __ROR4__(*(&a29 + ((a2 + a8 - 784255638) & 0x2EBECB7E ^ a21) + 1224423492) ^ *(&a27 + v32 + 1224423493) ^ *(&a22 + v32 + 1224423492) ^ *(&a21 + v32 + 1224423492), 31);
    return (*(v33 + 8 * ((78 * (v36 == 1224423429)) ^ (a2 + a8 + 209))))(v52);
  }

  else if (v56 == 1)
  {
    v158 = vld4q_s8(v47);
    v57 = veorq_s8(v158.val[0], v48);
    v58 = vmovl_high_u8(v57);
    v59 = vmovl_high_u16(v58);
    v60 = vmovl_u16(*v58.i8);
    v61 = vmovl_u8(*v57.i8);
    v62 = vmovl_high_u16(v61);
    v63 = vmovl_u16(*v61.i8);
    v64 = veorq_s8(v158.val[1], v48);
    v65 = vmovl_u8(*v64.i8);
    v66 = vmovl_high_u8(v64);
    v67 = veorq_s8(v158.val[2], v48);
    _Q25 = vmovl_u8(*v67.i8);
    _Q24 = vmovl_high_u8(v67);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v158.val[0] = veorq_s8(v158.val[3], v48);
    v158.val[1] = vmovl_u8(*v158.val[0].i8);
    v158.val[2] = vmovl_u16(*v158.val[1].i8);
    v158.val[0] = vmovl_high_u8(v158.val[0]);
    v158.val[3] = vmovl_u16(*v158.val[0].i8);
    v158.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v158.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v66, 8uLL), v59));
    v158.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v158.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v66.i8, 8uLL), v60));
    v158.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v158.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v65, 8uLL), v62));
    v158.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v158.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v65.i8, 8uLL), v63));
    v76 = vdupq_n_s32(0x11A9C97Fu);
    v77 = veorq_s8(vandq_s8(v158.val[0], v76), (*&v59 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    v78 = veorq_s8(vandq_s8(v158.val[3], v76), (*&v60 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    v79 = veorq_s8(vandq_s8(v158.val[1], v76), (*&v62 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    v80 = veorq_s8(vandq_s8(v158.val[2], v76), (*&v63 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    v81 = vaddq_s32(vsubq_s32(v158.val[0], vaddq_s32(v77, v77)), v50);
    v82 = vaddq_s32(vsubq_s32(v158.val[3], vaddq_s32(v78, v78)), v50);
    v83 = vaddq_s32(vsubq_s32(v158.val[1], vaddq_s32(v79, v79)), v50);
    v84 = vaddq_s32(vsubq_s32(v158.val[2], vaddq_s32(v80, v80)), v50);
    LODWORD(a29) = v84.i32[0];
    *(&a29 + 4) = vextq_s8(v84, v83, 4uLL);
    *(&a30 + 4) = vextq_s8(v83, v82, 4uLL);
    *(&a31 + 4) = vextq_s8(v82, v81, 4uLL);
    *(&a32 + 4) = vextq_s8(v81, v81, 4uLL).u64[0];
    HIDWORD(a32) = v81.i32[3];
    v85 = (v54 & 0xAF4A6818 ^ 0x20482808 ^ (v53 ^ 0x8F83C516) & (v54 ^ v34) | v53 & 0x81B8DC81 ^ 0x81305081 ^ (v53 ^ 0xDF3652F1) & (v55 ^ 0xA171718F)) + (v52 ^ v34) + *(off_1F2870BC0 + a22 + v32) + (*(&a29 + (*(off_1F2870C98 + a22 + v32 - 8) - 43)) ^ v35);
    v86 = (v85 ^ 0x961AB934) & (2 * (v85 & 0xD69C3A35)) ^ v85 & 0xD69C3A35;
    v87 = ((2 * (v85 ^ 0xBA0AFD16)) ^ 0xD92D8E46) & (v85 ^ 0xBA0AFD16) ^ (2 * (v85 ^ 0xBA0AFD16)) & 0x6C96C722;
    v88 = v87 ^ 0x24924121;
    v89 = (v87 ^ 0x48028000) & (4 * v86) ^ v86;
    v90 = ((4 * v88) ^ 0xB25B1C8C) & v88 ^ (4 * v88) & 0x6C96C720;
    v91 = (v90 ^ 0x20120400) & (16 * v89) ^ v89;
    v92 = ((16 * (v90 ^ 0x4C84C323)) ^ 0xC96C7230) & (v90 ^ 0x4C84C323) ^ (16 * (v90 ^ 0x4C84C323)) & 0x6C96C720;
    v93 = v91 ^ 0x6C96C723 ^ (v92 ^ 0x48044200) & (v91 << 8);
    v94 = (v93 << 16) & 0x6C960000 ^ v93 ^ ((v93 << 16) ^ 0x47230000) & (((v92 ^ 0x24928503) << 8) & 0x6C960000 ^ 0x68100000 ^ (((v92 ^ 0x24928503) << 8) ^ 0x16C70000) & (v92 ^ 0x24928503));
    v95 = *(off_1F2870D58 + a22 + v32 - 8);
    v96 = ((v95 - 71) ^ 0x3E) & (2 * ((v95 - 71) & 0x3F)) ^ (v95 - 71) & 0x3F;
    v97 = ((2 * ((v95 - 71) ^ 0x54)) ^ 0xD6) & ((v95 - 71) ^ 0x54) ^ (2 * ((v95 - 71) ^ 0x54)) & 0x6A;
    LOBYTE(v88) = (v95 - 71) ^ (2 * (((4 * v97) & 0x60 ^ 0x20 ^ ((4 * v97) ^ 0xA0) & v97) & (16 * (v97 & (4 * v96) ^ v96)) ^ v97 & (4 * v96) ^ v96));
    v98 = (((v53 ^ 0x21923B91) - 563231633) ^ ((v53 ^ 0x5CE5B37C) - 1558557564) ^ ((v53 ^ 0x5DBE25E3) - 1572742627)) + 954279113 + (((v85 ^ (2 * v94) ^ 0x87B5B473) << (~v88 & 7) << (~v88 & 0x18)) | ((v85 ^ (2 * v94) ^ 0x87B5B473) >> (40 - v95)));
    v99 = (v98 ^ 0xD7E24915) & (2 * (v98 & 0xE7E88845)) ^ v98 & 0xE7E88845;
    v100 = ((2 * (v98 ^ 0x1B73599F)) ^ 0xF937A3B4) & (v98 ^ 0x1B73599F) ^ (2 * (v98 ^ 0x1B73599F)) & 0xFC9BD1DA;
    v101 = v100 ^ 0x488504A;
    v102 = (v100 ^ 0xB8020110) & (4 * v99) ^ v99;
    v103 = ((4 * v101) ^ 0xF26F4768) & v101 ^ (4 * v101) & 0xFC9BD1D8;
    v104 = (v103 ^ 0xF00B4140) & (16 * v102) ^ v102;
    v105 = ((16 * (v103 ^ 0xC909092)) ^ 0xC9BD1DA0) & (v103 ^ 0xC909092) ^ (16 * (v103 ^ 0xC909092)) & 0xFC9BD1D0;
    v106 = v104 ^ 0xFC9BD1DA ^ (v105 ^ 0xC8991100) & (v104 << 8);
    v107 = (v106 << 16) ^ 0x51DA0000;
    v108 = v98 ^ (2 * ((v106 << 16) & 0x7C9B0000 ^ v106 ^ v107 & (((v105 ^ 0x3402C05A) << 8) & 0x7C9B0000 ^ 0x640A0000 ^ (((v105 ^ 0x3402C05A) << 8) ^ 0x1BD10000) & (v105 ^ 0x3402C05A)))) ^ 0x9F2286FF;
    v109 = *(v33 + 8 * ((491 * (a22 + 1 == v36)) ^ 0x6E5u));
    HIDWORD(a18) = HIDWORD(a15) + 603186996;
    return v109(v109, 1224423492, v107, 1765, 1806, v108, v53, off_1F2870BC0, a9, a10, a11, a12, a13, a14, a15, a16, a12 + a13, a18, v156, 0xA171718F0000004BLL, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  else
  {
    v126 = *(v37 - 168);
    v127 = (((v52 ^ 0x4B400A4F) - 1262488143) ^ ((v52 ^ 0xBD4BE81B) + 1119098853) ^ ((v52 ^ 0xD6C24F5A) + 691908774)) + (((*(v37 - 180) ^ 0xF4D694E2) + 187263774) ^ ((*(v37 - 180) ^ 0xB1255E7F) + 1322951041) ^ ((*(v37 - 180) ^ 0x653A6793) - 1698326419)) + 1904941370;
    v128 = (v127 ^ 0xDA8066FB) & (2 * (v127 & 0xD00840E2)) ^ v127 & 0xD00840E2;
    v129 = (2 * (v127 ^ 0xDA90E6BF)) & 0xA98A65C ^ 0xA88A245 ^ ((2 * (v127 ^ 0xDA90E6BF)) ^ 0x15314CBA) & (v127 ^ 0xDA90E6BF);
    v130 = ((4 * v128) & 0x618 | v128) ^ (4 * v128) & v129;
    v131 = ((4 * v129) ^ 0x2A629974) & v129 ^ (4 * v129) & 0xA98A65C;
    v132 = v131 ^ 0x982609;
    v133 = (v131 ^ 0xA008050) & (16 * v130) ^ v130;
    v134 = ((16 * v132) ^ 0xA98A65D0) & v132 ^ (16 * v132) & 0xA98A650;
    v135 = v133 ^ 0xA98A65D ^ (v134 ^ 0x8882400) & (v133 << 8);
    v136 = (((v53 ^ 0xE04CB9A4) + 531842652) ^ ((v53 ^ 0x49D8994E) - 1238931790) ^ ((v53 ^ 0x895D8DE4) + 1990357532)) + (((*(v37 - 176) ^ 0xB12E7F80) + 1322352768) ^ ((*(v37 - 176) ^ 0xA8DB53B1) + 1462021199) ^ ((*(v37 - 176) ^ 0x393C813F) - 960266559)) + 2125828653;
    *(v37 - 180) = v127 ^ (2 * ((v135 << 16) & 0xA980000 ^ v135 ^ ((v135 << 16) ^ 0x265D0000) & (((v134 ^ 0x210820D) << 8) & 0xA980000 ^ 0x2180000 ^ (((v134 ^ 0x210820D) << 8) ^ 0x18A60000) & (v134 ^ 0x210820D)))) ^ 0xE1C0A156;
    *(v37 - 176) = v136 ^ ((v136 ^ 0x20B97E28) - 496715321) ^ ((v136 ^ 0xA151A4F4) + 1670144795) ^ ((v136 ^ 0xC3355C30) + 32021471) ^ ((v136 ^ 0x7FFFBEFD) - 1121814252) ^ 0x1DEB951F;
    v137 = (((v54 ^ 0x3023AB93) - 807644051) ^ ((v54 ^ 0x75118398) - 1964082072) ^ ((v54 ^ 0x65FB8505) - 1710982405)) + (((*(v37 - 172) ^ 0x5C1CC291) - 1545388689) ^ ((*(v37 - 172) ^ 0xEE3C21EA) + 298049046) ^ ((*(v37 - 172) ^ 0x92E94E75) + 1830203787)) + 1710026276;
    v138 = (v137 ^ 0x931763F9) & (2 * (v137 & 0xDBA66BF8)) ^ v137 & 0xDBA66BF8;
    v139 = ((2 * (v137 ^ 0x31B24C9)) ^ 0xB17A9E62) & (v137 ^ 0x31B24C9) ^ (2 * (v137 ^ 0x31B24C9)) & 0xD8BD4F30;
    v140 = v139 ^ 0x48854111;
    v141 = (v139 ^ 0x90380E20) & (4 * v138) ^ v138;
    v142 = ((4 * v140) ^ 0x62F53CC4) & v140 ^ (4 * v140) & 0xD8BD4F30;
    v143 = (v142 ^ 0x40B50C00) & (16 * v141) ^ v141;
    v144 = ((16 * (v142 ^ 0x98084331)) ^ 0x8BD4F310) & (v142 ^ 0x98084331) ^ (16 * (v142 ^ 0x98084331)) & 0xD8BD4F30;
    v145 = v143 ^ 0xD8BD4F31 ^ (v144 ^ 0x88944300) & (v143 << 8);
    v146 = v137 ^ (2 * ((v145 << 16) & 0x58BD0000 ^ v145 ^ ((v145 << 16) ^ 0x4F310000) & (((v144 ^ 0x50290C21) << 8) & 0x58BD0000 ^ 0x40B00000 ^ (((v144 ^ 0x50290C21) << 8) ^ 0x3D4F0000) & (v144 ^ 0x50290C21))));
    v147 = (((v126 ^ 0xDF94E0E2) + 543891230) ^ ((v126 ^ 0x402F6615) - 1076848149) ^ ((v126 ^ 0xBF722BF9) + 1083036679)) + (((*(v37 - 168) ^ 0xAD3654F8) + 1388948232) ^ ((*(v37 - 168) ^ 0x60EA993) - 101624211) ^ ((*(v37 - 168) ^ 0x8BF15065) + 1947119515)) - 1915837920;
    v148 = (v147 ^ 0xABD2B7F8) & (2 * (v147 & 0xB3C4B7FC)) ^ v147 & 0xB3C4B7FC;
    v149 = ((2 * (v147 ^ 0xE95AB9A0)) ^ 0xB53C1CB8) & (v147 ^ 0xE95AB9A0) ^ (2 * (v147 ^ 0xE95AB9A0)) & 0x5A9E0E5C;
    v150 = v149 ^ 0x4A820244;
    v151 = (v149 ^ 0x10140C10) & (4 * v148) ^ v148;
    v152 = ((4 * v150) ^ 0x6A783970) & v150 ^ (4 * v150) & 0x5A9E0E5C;
    v153 = (v152 ^ 0x4A180840) & (16 * v151) ^ v151;
    v154 = ((16 * (v152 ^ 0x1086060C)) ^ 0xA9E0E5C0) & (v152 ^ 0x1086060C) ^ (16 * (v152 ^ 0x1086060C)) & 0x5A9E0E50;
    v155 = v153 ^ 0x5A9E0E5C ^ (v154 ^ 0x8800400) & (v153 << 8);
    *(v37 - 172) = v146 ^ 0xDA775894;
    *(v37 - 168) = v147 ^ (2 * ((v155 << 16) & 0x5A9E0000 ^ v155 ^ ((v155 << 16) ^ 0xE5C0000) & (((v154 ^ 0x521E0A1C) << 8) & 0x5A9E0000 ^ 0x40900000 ^ (((v154 ^ 0x521E0A1C) << 8) ^ 0x1E0E0000) & (v154 ^ 0x521E0A1C)))) ^ 0x3209064A;
    return v156(v48, v49, v50, v51);
  }
}

uint64_t sub_1B16A62B4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 + 597142019 > ((v4 - 328) ^ 0xFFFFFF76))
  {
    a3 = -1194284038 - a3;
  }

  return (*(v3 + 8 * ((1850 * (a3 - 1550341630 > ((v4 + 1531) ^ 0xFFFFF833))) ^ (v4 - 328))))();
}

uint64_t sub_1B16A6388(int a1, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int32x4_t a9)
{
  v15 = v14 + 4 * v10;
  a3.i64[0] = *(v15 + 4);
  a3.i32[2] = *(v15 + 12);
  v16 = vextq_s8(a2, a3, 0xCuLL);
  v17 = a3;
  v17.i32[3] = *(v14 + 4 * (v10 + 4));
  v18 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v17, a8), vandq_s8(v16, a6)), 1uLL), *(v15 + 1588));
  v16.i32[0] = *(v13 + 4 * (*(v15 + 4) & v9));
  v16.i32[1] = *(v13 + 4 * (*(v15 + 8) & 1));
  v16.i32[2] = *(v13 + 4 * (*(v15 + 12) & 1));
  v16.i32[3] = *(v13 + 4 * (v17.i8[12] & 1));
  *v15 = veorq_s8(vaddq_s32(vsubq_s32(v18, vandq_s8(vaddq_s32(v18, v18), a7)), a9), v16);
  return (*(v12 + 8 * ((1023 * (v10 == 220)) ^ (a1 + v11 + 634))))();
}

uint64_t sub_1B16A6390@<X0>(uint64_t a1@<X8>)
{
  v5 = v2;
  v6 = v3 + 843532609 * ((((2 * &v5) | 0x7BDCD97C) - &v5 + 1108448066) ^ 0xE1A3383B) - 9;
  v7 = v2;
  v8 = a1;
  return (*(v1 + 8 * (v3 ^ 0xDF2)))(&v5);
}

uint64_t sub_1B16A63F4()
{
  v6 = STACK[0x298] + 4 * v0;
  v7 = *(*STACK[0x270] + (*STACK[0x278] & 0x5F418994));
  v8 = *v6;
  v9 = v5 - (v3 - 2021) < ~(v3 - 2021);
  v10 = (-1508932039 * ((v9 ^ v6 ^ v7) & ((v3 - 1308) ^ 0x7FFFFD33))) ^ ((-1508932039 * ((v9 ^ v6 ^ v7) & ((v3 - 1308) ^ 0x7FFFFD33))) >> 16);
  LODWORD(v6) = -1508932039 * v10;
  *(v4 + 4 * v0) ^= v8 ^ *(*(&off_1F2870B00 + v3 - 1933) + BYTE3(v6)) ^ *(*(&off_1F2870B00 + SLODWORD(STACK[0x26C])) + BYTE3(v6) - 2) ^ *(*(&off_1F2870B00 + v3 - 1883) + BYTE3(v6) + 4) ^ (-2043084800 * v10) ^ v6 ^ (-471850983 * BYTE3(v6));
  return (*(v2 + 8 * ((((((v3 + 1257435140) & 0xB50D0FFB) + 1306) ^ v3) * (v1 == 1)) ^ (v3 - 1308))))();
}

uint64_t sub_1B16A6528(uint64_t a1)
{
  v4 = (v1 - 551888012) & 0x20E525DF;
  LODWORD(STACK[0x358]) = v3 - 50;
  v5 = STACK[0x430];
  v6 = (LODWORD(STACK[0x46C]) ^ 0x7FFB70DF77F6D3F5) - 0x7FFB70DF77F6D3F6 + ((LODWORD(STACK[0x46C]) << (((((v1 + 116) & 0xDF) + 15) & 0x77u) - 20)) & 0xEFEDA7EA) + 1;
  STACK[0x4B8] = v6;
  return (*(v2 + 8 * ((21 * (v6 == 0)) ^ v4)))(a1, v5);
}

uint64_t sub_1B16A661C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, unsigned int a30)
{
  v33 = !((((v31 ^ 0x13FF) & v31) >> (__clz(v31 ^ 0x13FF | 1) ^ 0x1F)) & 1);
  *a24 = 0;
  v34 = ((v30 ^ (v30 >> 11)) << 7) & 0x9D2C56CA ^ v30 ^ (v30 >> 11);
  *(*a28 + a30) ^= v34 ^ v33 ^ (v34 << 15) & 0xEFC60000 ^ ((v34 ^ v33 ^ (v34 << 15) & 0xEFC60000) >> 18);
  return (*(v32 + 8 * ((81 * (a30 + 4 > 0x1FF)) ^ 0x735)))();
}

void sub_1B16A66BC(uint64_t a1)
{
  v2 = off_1F2870EA8 - 4;
  v3 = off_1F2870D70 - 12;
  v4 = *(&off_1F2870B00 + (*(off_1F2870D70 + (*(off_1F2870EA8 + (79 * (dword_1EB75A1C0 ^ 0x73 ^ qword_1EB75A150)) - 4) ^ 0xDEu) - 12) ^ (79 * (dword_1EB75A1C0 ^ 0x73 ^ qword_1EB75A150))) + 75);
  v5 = *(v4 - 4);
  v6 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - v5) ^ 0x73)) ^ *(off_1F2870D70 + (*(off_1F2870EA8 + (79 * ((qword_1EB75A150 - v5) ^ 0x73)) - 4) ^ 0xDEu) - 12)) - 86);
  v7 = (*(v6 - 4) + v5) ^ &v11;
  v8 = 1889310799 * v7 - 0x77891E10DC513083;
  v9 = 1889310799 * (v7 ^ 0x6CD83E9A0F465C73);
  *(v4 - 4) = v8;
  *(v6 - 4) = v9;
  LODWORD(v6) = *(v4 - 4);
  v10 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A1C0) ^ 0x73)) ^ byte_1B1765890[byte_1B1761C20[(79 * ((qword_1EB75A150 + dword_1EB75A1C0) ^ 0x73))] ^ 0x5E]) + 14) - 8;
  (*&v10[8 * (off_1F2870CC0[(*(off_1F2871068 + (79 * ((v9 - v6) ^ 0x73)) - 12) ^ 0xAD) - 8] ^ (79 * ((v9 - v6) ^ 0x73))) + 17040])(*(&off_1F2870B00 + ((79 * ((v9 + v6) ^ 0x73)) ^ v3[v2[(79 * ((v9 + v6) ^ 0x73))] ^ 0xDE]) - 37) - 4, sub_1B16A6CC8);
  __asm { BRAA            X10, X17 }
}

void sub_1B16A6898(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = 1388665877 * (((a1 | 0x37BF73D7) - (a1 & 0x37BF73D7)) ^ 0xBA12113B);
  v2 = *(a1 + 48) - v1;
  v3 = *(a1 + 44) ^ v1;
  v4 = *(a1 + 56);
  v5 = *(a1 + 24);
  v6 = 742307843 * (((v9 | 0xA4AB2F3B) + (~v9 | 0x5B54D0C4)) ^ 0xF9D75040);
  v7 = 181135997 * (*(a1 + 16) ^ v1);
  v12 = *(a1 + 8);
  v14 = v3 - v6 - 776148066;
  v9[1] = v4;
  v9[2] = v5;
  v10 = v7 - v6 - 1786726535;
  v11 = v2 + v6 + 1421511789;
  v9[0] = v12;
  v8 = *(&off_1F2870B00 + v2 - 653) - 8;
  (*&v8[8 * v2 + 11736])(v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16A6A00()
{
  v4 = 506 * (v0 ^ 0x34C);
  v5 = v3[20];
  v6 = (v4 - 1071255547) & 0x3FDA0F37;
  v7 = LODWORD(STACK[0x490]);
  v8 = STACK[0x3F0];
  v3[6] = *(v2 + 8 * (v4 - 1989));
  v3[4] = v1 + (v6 ^ 0x51Fu) + (((v6 + 3) | 0xC0u) ^ 0xFFFFFFFFFFFFF9DELL);
  v3[27] = v8;
  if (v8)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v2 + 8 * ((v10 | (2 * v10)) ^ v6)))(v7);
}

uint64_t sub_1B16A6A64@<X0>(int a1@<W5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v25 = 742307843 * ((((v24 - 128) | 0xC7949FA6) - (v24 - 128) + ((v24 - 128) & 0x386B6058)) ^ 0x9AE8E0DC);
  *(v24 - 128) = a1 - v25 - 473375451;
  v26 = a1 - 475;
  v27 = a1 - 546;
  *(v24 - 108) = a2 - v25 + 1267016940;
  *(v24 - 120) = &a13;
  v28 = (*(v22 + 8 * (a1 + 398)))(v24 - 128);
  return (*(v22 + 8 * (((v26 + *v23 + (a22 & 0x3Fu) - 930571068 < 0xFFFFFFC0) * (v27 ^ 0x522)) ^ a1)))(v28);
}

uint64_t sub_1B16A6BFC(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v11 = v5 + a1 - 1284;
  *(v6 + v8 - v11) = vaddq_s8(vsubq_s8(*(v4 + v8 - v11), vandq_s8(vaddq_s8(*(v4 + v8 - v11), *(v4 + v8 - v11)), a2)), a3);
  return (*(v10 + 8 * (((v11 == 0) * v9) ^ v3)))((v3 + 460) | v7);
}

uint64_t sub_1B16A6C50@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v4 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v3 + 8 * ((1842 * ((((v2 ^ 0x58) - 1910242025) & 0x71DBF737 ^ 0x417) == (v1 & 0xFFFFFFE0))) ^ ((v2 ^ 0x58) - 1875))))(1047);
}

uint64_t sub_1B16A6CC8()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - dword_1EB75A0F8) ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * ((qword_1EB75A150 - dword_1EB75A0F8) ^ 0x73))] ^ 0xDB]) - 87);
  v1 = *(&off_1F2870B00 + (*(off_1F2870FB8 + (*(off_1F2870CB0 + (79 * ((qword_1EB75A150 - *v0) ^ 0x73))) ^ 0x5Cu) - 8) ^ (79 * ((qword_1EB75A150 - *v0) ^ 0x73))) - 227);
  v2 = *v0 ^ &v6 ^ *(v1 - 4);
  v3 = 1889310799 * (v2 - 0x6CD83E9A0F465C73);
  v4 = 1889310799 * (v2 ^ 0x6CD83E9A0F465C73);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = 79 * (*v0 ^ 0x73 ^ v4);
  v7 = *(&off_1F2870B00 + (*(off_1F2870D70 + (*(off_1F2870EA8 + v4 - 4) ^ 0x55u) - 12) ^ v4) - 92);
  v8 = (1785193651 * ((&v7 + 1929731678 - 2 * (&v7 & 0x73055E5E)) ^ 0x5FB205B6)) ^ 0x97;
  LOBYTE(v0) = 79 * ((*(v1 - 4) - *v0) ^ 0x73);
  return (*(*(&off_1F2870B00 + ((79 * (dword_1EB75A0F8 ^ 0x73 ^ qword_1EB75A150)) ^ byte_1B1761F20[byte_1B176D0B0[(79 * (dword_1EB75A0F8 ^ 0x73 ^ qword_1EB75A150))] ^ 0x1C]) - 33) + (*(off_1F2870F50 + (*(off_1F28710E0 + v0 - 4) ^ 0xF0u) - 8) ^ v0) + 2004))(&v7);
}

void sub_1B16A7104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (((a29 - v33) | (v33 - a29)) > (((v33 + 1896939528) | 0x80C60CC2) ^ (v34 - 624)))
  {
    v37 = 0x80000000;
  }

  else
  {
    v37 = 0x7FFFFFFF;
  }

  *v36 = v37;
  (*(v35 + 8 * (v33 ^ 0x861)))(a33);
  vld1q_dup_f32(v36);
  JUMPOUT(0x1B16A71C8);
}

uint64_t sub_1B16A7284(uint64_t a1)
{
  v7 = (v4 + 4 * (a1 + v3));
  *v7 = ((v5 - 101) | 0x248) ^ (v1 + 1479) ^ __ROR4__(*(v7 - 8) ^ *(v7 - 3) ^ *(v7 - 14) ^ *(v7 - 16), 31);
  return (*(v2 + 8 * ((3120 * (a1 + 1 == v6 + 80)) ^ v5)))();
}

void sub_1B16A72FC(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16A73D8()
{
  v3 = 44 * (v0 ^ 0x65);
  v4 = *v2;
  v5 = v2[20];
  v6 = v3 - 1828;
  v7 = v3 - 1421;
  v2[7] = *(v1 + 8 * v0);
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v1 + 8 * ((v9 * (v6 ^ 0xFF)) ^ v7)))();
}

uint64_t sub_1B16A742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = (a10 + v12);
  *(v16 - 1) = v15;
  *v16 = v15;
  return (*(v14 + 8 * ((2767 * ((v13 + 26) - 1488 == (v10 & 0x30))) ^ v11)))();
}

uint64_t sub_1B16A74E8@<X0>(int a1@<W8>)
{
  v8 = STACK[0x43C];
  v9 = *(v7 + 360);
  v10 = STACK[0x314];
  v11 = &v6[6 * v3];
  v11[2] = v5;
  v11[3] = v10;
  *(v11 + 2) = v9;
  v11[6] = v8;
  *v6 = v1 + 1;
  LODWORD(STACK[0x2B8]) = v2;
  v13 = v2 - 946996844 > -2010784477 && v2 - 946996844 < SLODWORD(STACK[0x250]);
  return (*(v4 + 8 * (((((197 * (a1 ^ 0x4BD)) ^ 0xFFFFF9BC) + 8 * (a1 ^ 0x445)) * v13) ^ a1)))();
}

uint64_t sub_1B16A75C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W8>)
{
  v8 = ((6 * (v3 ^ 0x94u)) ^ v5) + v4;
  *(a2 + 408) = v8;
  *(a1 + v8) = ((a3 + 1) ^ v6) * (a3 + 18);
  return (*(v7 + 8 * (v3 ^ (2 * (*(a2 + 408) == 0)))))();
}

uint64_t sub_1B16A762C()
{
  *(v3 - 112) = (v2 + 1588) ^ (1564307779 * ((((2 * (v3 - 128)) | 0x9411B4C) - (v3 - 128) + 2069852762) ^ 0x13AD41B5));
  *(v3 - 128) = v5;
  *(v3 - 120) = v0;
  return (*(v1 + 8 * (v2 + 1964)))(v3 - 128);
}

uint64_t sub_1B16A76C8(uint64_t a1, int a2)
{
  v6 = (v4 + a1 - 12);
  v7.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v7.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v8.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v8.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v9 = vaddq_s8(vsubq_s8(*(v4 + v3 - 16), vandq_s8(vaddq_s8(*(v4 + v3 - 16), *(v4 + v3 - 16)), v7)), v8);
  v6[-1] = vaddq_s8(vsubq_s8(*(v4 + v3 - 32), vandq_s8(vaddq_s8(*(v4 + v3 - 32), *(v4 + v3 - 32)), v7)), v8);
  *v6 = v9;
  return (*(v2 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * (((v5 + a2 + 1008) | 0x24F) + 385)) ^ (v5 + a2 + 868))))();
}

uint64_t sub_1B16A78D0()
{
  *(v7 - 128) = v1 + 742307843 * (v0 ^ 0x5D7C7F7A) + 450;
  *(v7 - 136) = v6;
  *(v7 - 120) = v2;
  v8 = (*(v3 + 8 * (v1 ^ 0xE7E)))(v7 - 136);
  return (*(v3 + 8 * ((2 * (v5 != ((11 * (v1 ^ 0x63E) - 1) ^ v4))) | (4 * (v5 != ((11 * (v1 ^ 0x63E) - 1) ^ v4))) | v1)))(v8);
}

uint64_t sub_1B16A7958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 + 32) = a67 - 1712;
  LODWORD(STACK[0x310]) = v69;
  return (*(v68 + 8 * ((((((v67 - 2008) | 0x387) + 501) ^ 0x560) * (STACK[0x2C8] == 0)) ^ (v67 - 648))))();
}

uint64_t sub_1B16A79AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_1B16A79C4(uint64_t a1)
{
  v1 = 2066391179 * ((-2 - ((a1 | 0xDAF47D5D) + (~a1 | 0x250B82A2))) ^ 0x8A2C00BA);
  v2 = *a1 - v1;
  v3 = *(a1 + 16) ^ v1;
  v5 = v3 - 1094718209;
  v4 = v3 - 1094718209 < 0;
  v6 = 1094718209 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 1550341629;
  v4 = v7 - 1550341629 < 0;
  v9 = 1550341629 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_1F2870B00 + (v2 ^ 0x30D)) + ((42 * ((v6 >> 5) < v9)) ^ v2) - 1))();
}

uint64_t sub_1B16A7AE8(int a1)
{
  v10 = *(v3 + 4 * (v9 + v4 - 14));
  HIDWORD(v11) = *(v3 + 4 * (v9 + v4 - 8)) ^ *(v3 + 4 * (v9 + v4 - 3)) ^ v10 ^ *(v3 + 4 * (v9 + v4 - 16)) ^ v8;
  LODWORD(v11) = *(v3 + 4 * (v9 + v4 - 8)) ^ *(v3 + 4 * (v9 + v4 - 3)) ^ v10 ^ *(v3 + 4 * (v9 + v4 - 16));
  *(v3 + 4 * (v2 + v9)) = ((v1 - 111) | v6) ^ v5 ^ (v11 >> 31);
  return (*(v7 + 8 * ((((v2 + 1 + v9) > 0x4F) * a1) ^ v1)))();
}

uint64_t sub_1B16A7B60(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v20 = (*(v12 + 4 * (*(v10 + v9 + v18) - 43)) ^ v17) + (v8 ^ v16) + *(v11 + 4 * (v9 + v18)) + (v14 & 0xD67B2677 ^ 0x492406 ^ (a2 ^ 0xF6B28B79) & (v14 ^ v16) | (((a8 - 1086962128) & 0x15F7) - 938939449) & v14 ^ (a1 ^ 0xE8C141A4) & (v14 ^ 0xDF3652F1) ^ 0xC80040A0);
  v21 = (v20 ^ 0x86D8B925) & (2 * (v20 & v13)) ^ v20 & v13;
  v22 = ((2 * (v20 ^ 0x2EF8F967)) ^ 0xF0C986A4) & (v20 ^ 0x2EF8F967) ^ (2 * (v20 ^ 0x2EF8F967)) & 0xF864C352;
  v23 = v22 ^ 0x8244152;
  v24 = (v22 ^ 0xF0448000) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xE1930D48) & v23 ^ (4 * v23) & 0xF864C350;
  v26 = (v25 ^ 0xE0000140) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x1864C212)) ^ 0x864C3520) & (v25 ^ 0x1864C212) ^ (16 * (v25 ^ 0x1864C212)) & 0xF864C350;
  v28 = v26 ^ 0xF864C352 ^ (v27 ^ 0x80440100) & (v26 << 8);
  v29 = (v28 << 16) & 0x78640000 ^ v28 ^ ((v28 << 16) ^ 0x43520000) & (((v27 ^ 0x7820C252) << 8) & 0x78640000 ^ 0x18240000 ^ (((v27 ^ 0x7820C252) << 8) ^ 0x64C30000) & (v27 ^ 0x7820C252));
  v30 = (((a2 ^ 0xD851526F) + 665759121) ^ ((a2 ^ 0x30993C5F) - 815348831) ^ ((a2 ^ 0xC801C33E) + 939408578)) + 1803876649 + (((v20 ^ (2 * v29) ^ 0xA6D5BC91) << (((*(a6 + v9 + v18) - 8) ^ 0xA2) & 7 ^ 2) << (((*(a6 + v9 + v18) - 8) ^ 0xA2) & 0x18)) | ((v20 ^ (2 * v29) ^ 0xA6D5BC91) >> (a5 - *(a6 + v9 + v18))));
  v31 = (v30 ^ 0xA07023F1) & (2 * (v30 & 0xB544B3E5)) ^ v30 & 0xB544B3E5;
  v32 = ((2 * (v30 ^ 0xE0F1253B)) ^ 0xAB6B2DBC) & (v30 ^ 0xE0F1253B) ^ (2 * (v30 ^ 0xE0F1253B)) & 0x55B596DE;
  v33 = v32 ^ 0x54949242;
  v34 = (v32 ^ 0x121049C) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x56D65B78) & v33 ^ (4 * v33) & 0x55B596DC;
  v36 = (v35 ^ 0x54941250) & (16 * v34) ^ v34;
  v37 = ((16 * (v35 ^ 0x1218486)) ^ 0x5B596DE0) & (v35 ^ 0x1218486) ^ (16 * (v35 ^ 0x1218486)) & 0x55B596D0;
  v38 = v36 ^ 0x55B596DE ^ (v37 ^ 0x51110400) & (v36 << 8);
  return (*(v15 + 8 * ((115 * (v9 + 1 == v19 + 16)) ^ a8)))(a2, v30 ^ (2 * ((v38 << 16) & 0x55B50000 ^ v38 ^ ((v38 << 16) ^ 0x16DE0000) & (((v37 ^ 0x4A4921E) << 8) & 0x55B50000 ^ 0x40210000 ^ (((v37 ^ 0x4A4921E) << 8) ^ 0x35960000) & (v37 ^ 0x4A4921E)))) ^ 0x17CE3357u);
}

uint64_t sub_1B16A800C(uint64_t result)
{
  v1 = 1361651671 * (((result | 0x43FE8A9C55C36F0ALL) - result + (result & 0xBC017563AA3C90F5)) ^ 0x9053F9A586E19F86);
  v2 = *(result + 36) - v1;
  v3 = *result ^ v1;
  v4 = *(result + 16) + v1;
  v5 = *(result + 24) + v1;
  v6 = *(result + 28) + v1;
  v7 = *(result + 8) + v1;
  v8 = v3 == v4;
  v9 = v3 >= v4;
  v10 = !v8;
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v2;
  }

  *(result + 32) = v12 ^ v6;
  return result;
}

uint64_t sub_1B16A8110()
{
  v5 = *(v3 + 1) + ((v2 + 411) ^ 0xFFFFFD56);
  v6 = (v1 & (2 * v5)) + (v5 ^ v0) == v0;
  return (*(v4 + 8 * (((16 * v6) | (32 * v6)) ^ v2)))();
}

uint64_t sub_1B16A8154(uint64_t a1)
{
  v1 = (*a1 - 1082434553 * ((994318387 - (a1 | 0x3B441833) + (a1 | 0xC4BBE7CC)) ^ 0x5FFC1146)) ^ 0x5F0;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 1550342954;
  v3 = v2 - 1550342954 < 0;
  v5 = 1550342954 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_1F2870B00 + v1 - 1254) + ((27 * (((v1 - 80) ^ (v5 > 0)) & 1)) ^ v1) - 1))();
}

uint64_t sub_1B16A8778@<X0>(uint64_t a1@<X8>)
{
  v4 = 143681137 * ((&v6 + 2140865722 - 2 * (&v6 & 0x7F9B04BA)) ^ 0x1EC38F6A);
  v6 = v2;
  v7 = v1 - v4 - 68;
  v8 = v3 ^ ((v3 ^ 0xF7B6B770) + 235696548) ^ ((v3 ^ 0xC430C801) + 1032457939) ^ ((v3 ^ 0x8ABCB0A2) + 1929803378) ^ v4 ^ ((v3 ^ 0xBF7FF196 ^ (v1 + 1221534932) & 0xB730DFEF) + 1187328045) ^ 0x91649BE2;
  return (*(a1 + 8 * (v1 + 1483)))(&v6);
}

void sub_1B16A8898(_DWORD *a1)
{
  v1 = 1082434553 * ((2 * (a1 & 0x312F7059) - a1 - 825192538) ^ 0x5597792C);
  v2 = a1[1] ^ v1;
  v3 = *a1 ^ v1;
  v5 = (v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 704643072;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B16A89CC(uint64_t a1)
{
  v9 = v2 + 8;
  v10 = (v9 ^ 0xFFFFFFFFFFFFFE51 ^ ((v3 - 730) | 0x8Eu)) + v1;
  *(v5 + v10) = vadd_s8(vsub_s8(*(v4 + v10), vand_s8(vadd_s8(*(v4 + v10), *(v4 + v10)), v7)), v8);
  return (*(v6 + 8 * ((1900 * (a1 == v9)) ^ v3)))();
}

uint64_t sub_1B16A8A58()
{
  v11 = v2 - 1;
  v13 = ((*v3 - (*v1 ^ 0x7E)) ^ v7) + (v10 & (2 * (*v3 - (*v1 ^ 0x7E)))) + v8 == (v0 ^ (v9 + 716)) + v4 && v11 != 0;
  return (*(v5 + 8 * ((v13 * v6) ^ v0)))();
}

uint64_t sub_1B16A8ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) + 973437622;
  v5 = v4 < 0x66CD6BBA;
  v6 = v4 > 0x66CD6BBB;
  if (v5)
  {
    v6 = v5;
  }

  return (*(a3 + 8 * ((76 * !v6) ^ 0x59Fu)))();
}

uint64_t sub_1B16A8B68@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v5.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v6.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v6.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v7 = *(v3 + v1 - 1 - 31);
  v8 = a1 + v1 - 1;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(v3 + v1 - 1 - 15), vandq_s8(vaddq_s8(*(v3 + v1 - 1 - 15), *(v3 + v1 - 1 - 15)), v5)), v6);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v5)), v6);
  return (*(v4 + 8 * ((1516 * (((v2 + 1161) ^ 0x155u) - 1222 == (v1 & 0xFFFFFFE0))) ^ (v2 + 552))))();
}

uint64_t sub_1B16A8C34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int8x16_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int8x16_t a35)
{
  *(&STACK[0x540] + v37) = veorq_s8(*a16, a35);
  v39 = v38[53];
  v38[54] = a1;
  v38[55] = a1;
  v38[53] = v39 + 32;
  return (*(v36 + 8 * ((((v35 ^ 0x255) - 403) * ((&STACK[0x540] + v37) == a1)) ^ v35)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B16A8C8C(uint64_t a1)
{
  v7 = *(v3 + 8 * (v6 ^ 0x8C6));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1994)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 12) = v5;
  return result;
}

uint64_t sub_1B16A8D08@<X0>(uint64_t a1@<X1>, unsigned int a2@<W3>, int a3@<W4>, unsigned int a4@<W8>)
{
  v9 = (v8 + 4 * v5);
  v10 = v5 + 1;
  *v9 = v9[397] ^ v6 ^ *(a1 + 4 * (*(v8 + 4 * v10) & 1)) ^ ((*(v8 + 4 * v10) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((v10 == (a4 ^ a2) - 1797) * a3) ^ a4)))();
}

uint64_t sub_1B16A8ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v30 = (v28 - 1744) | 0x323;
  v32 = v27 == 489738311 || a27 - a5 != v30 + 155 + v30 - 777 - 683320571;
  return (*(v29 + 8 * ((2024 * v32) ^ v30)))();
}

void sub_1B16A91E4(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1B16A9350()
{
  v6 = *(v9 + 24);
  v7 = ((2 * ((v5 - 144) & 0x83864F0) - (v5 - 144) + 2009570061) ^ 0xD8E01915) * v4;
  *(v5 - 144) = v11;
  *(v5 - 136) = v7 + v0 + 1058;
  *(v5 - 132) = v7 + 1368901861;
  (*(v3 + 8 * (v0 ^ 0xB54)))(v5 - 144);
  *(v5 - 128) = v0 - ((((v5 - 144) | 0x6031F712) - (v5 - 144) + ((v5 - 144) & 0x9FCE08E8)) ^ 0xCF16750A) * v4 + 648;
  *(v5 - 120) = v2;
  *(v5 - 112) = v11;
  *(v5 - 104) = v1;
  *(v5 - 144) = v10;
  *(v5 - 136) = v10;
  (*(v3 + 8 * (v0 + 1338)))(v5 - 144);
  *(v5 - 144) = v6;
  *(v5 - 136) = v10;
  *(v5 - 128) = (v0 + 1001) ^ (1564307779 * ((((2 * (v5 - 144)) | 0x55F5A352) - (v5 - 144) + 1426402903) ^ 0x3DF71DBA));
  return (*(v3 + 8 * (v0 ^ 0xBA3)))(v5 - 144);
}

uint64_t sub_1B16A94C4@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v10 = v3 - 1;
  *(v9 + 176) = v10;
  *(a1 + v10) = (a2 ^ v4 ^ ((v2 ^ v7) * v6)) * (a2 + 17);
  return (*(v8 + 8 * (((*(v9 + 176) == 0) * v5) ^ v2)))();
}

void sub_1B16A95FC(unsigned int *a1, uint64_t a2, int a3)
{
  *(a1 + v4 + 4) = 85;
  *(a1 + (v3 + 2) + 4) = 73;
  v6 = ((57 * (a3 ^ (v5 - 2)) - 1643994606) | 0x1191C0A) + v3 + 4 + 1625571699;
  *a1 = v6;
  v7 = a1 + 1;
  *(v7 + (v3 + 3)) = 68;
  *(v7 + v3) = 47;
  *(v7 + (v3 + 4)) = 61;
  *(v7 + v6) = 0;
  JUMPOUT(0x1B16CE258);
}

uint64_t sub_1B16A9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v24 - 128) = v18 - ((v24 - 144) ^ 0xAF278218) * v23 + 1289;
  *(v24 - 120) = v20;
  *(v24 - 112) = &a18;
  *(v24 - 104) = v21;
  *(v24 - 144) = &a16;
  *(v24 - 136) = &a16;
  v25 = (*(v19 + 8 * (v18 ^ 0x8FB)))(v24 - 144);
  return (*(v19 + 8 * ((250 * (v22 - 1344007376 >= (((v18 ^ 0x466) + 1145000471) & 0xBBC0ADFE) + 2147482403)) ^ ((v18 ^ 0x466) - 588))))(v25);
}

uint64_t sub_1B16A96D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 136) = &a15;
  *(v20 - 120) = v16;
  *(v20 - 128) = v19 - ((2 * ((v20 - 136) & 0x2D8114A0) - (v20 - 136) - 763434146) ^ 0xB326608E) * v18 - 113;
  v21 = (*(v17 + 8 * (v19 ^ 0x846)))(v20 - 136);
  return (*(v17 + 8 * ((1591 * (*(v20 - 112) + v15 < ((v19 + 821) | 1u) - 588873088)) ^ v19)))(v21);
}

uint64_t sub_1B16A9848(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *(v6 + v7 * a3 + 36);
  v11 = v9 != v8 && (v9 + v4) < 0x80000003;
  return (*(v5 + 8 * ((v11 * (v3 ^ 0x74F ^ (v3 - 1111004295) & 0x423890B7)) ^ v3)))();
}

uint64_t sub_1B16A991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x2B8]) = v5;
  *(v6 + 32) -= 432;
  return (STACK[0x2C0])(a1, a2, a3, a4, a5, 1083696015);
}

uint64_t sub_1B16A994C()
{
  v3 = &STACK[0x540] + v0;
  *v3 = 930569692;
  *(v3 + 1) = 0;
  *(v3 + 4) = 1412343565;
  *(v3 + 6) = 751300868;
  *(v3 + 4) = 0;
  *(&STACK[0x540] + v0 + 40) = 751300868;
  *(&STACK[0x540] + v0 + 48) = 0;
  v2[12] = &STACK[0x540] + v0 + 40;
  v2[37] = &STACK[0x540] + v0 + 48;
  *(&STACK[0x540] + v0 + 56) = 751300868;
  v2[40] = &STACK[0x540] + v0 + 56;
  *(&STACK[0x540] + v0 + 64) = 0;
  v2[30] = &STACK[0x540] + v0 + 64;
  STACK[0x2F8] = &STACK[0x540] + v0 + 0x1190F38222DAFAE4;
  *(v3 + 18) = 751300868;
  *(&STACK[0x540] + v0 + 80) = 0;
  STACK[0x2A8] = &STACK[0x540] + v0 + 80;
  v3[88] = 120;
  *v1 = 930569692;
  memset(v1 + 1, 126, 20);
  v1[6] = 751300868;
  v1[7] = 0;
  STACK[0x218] = (v1 + 7);
  v1[58] = 0;
  STACK[0x208] = (v1 + 58);
  memset(v1 + 109, 126, 40);
  memset(v1 + 282, 126, 40);
  return sub_1B16A9A4C();
}

uint64_t sub_1B16A9A4C@<X0>(int a1@<W8>)
{
  v5 = (v2 + v1);
  *v5 = 0u;
  v5[1] = 0u;
  return (*(v4 + 8 * ((124 * ((((a1 - 548) | 1u) ^ v3) + v1 == 256)) ^ a1)))();
}

uint64_t sub_1B16A9A90@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = v7 - 1;
  *(a1 + v11) = *(v10 + v11) ^ *(v5 + (v11 & 0xF)) ^ *((v11 & 0xF) + v4 + 2) ^ ((v11 & 0xF) * v8) ^ *(a4 + (v11 & 0xF)) ^ 0x7E;
  return (*(v9 + 8 * ((213 * (v11 != (((v6 - 289) | a2) ^ a3))) ^ v6)))();
}

void sub_1B16A9B34()
{
  *(v0 + 152) = 0;
  LODWORD(STACK[0x3B0]) = 751300868;
  *(v0 + 192) = 0;
  LODWORD(STACK[0x490]) = 751300868;
  JUMPOUT(0x1B16A9B90);
}

uint64_t sub_1B16A9C44@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v5 = v4[40];
  v6 = v4[30];
  STACK[0x248] = STACK[0x208];
  v7 = *v6;
  v8 = *v5;
  STACK[0x2C0] = *(v3 + 8 * v2);
  v9 = (((v2 + 1029) | 0x2D0) + 1902069823) & 0x8EA0B2F9;
  v4[34] = &STACK[0x540] + a2;
  v4[4] = a2 + 432;
  LODWORD(STACK[0x270]) = v8;
  LODWORD(STACK[0x314]) = v8;
  v4[45] = v7;
  LODWORD(STACK[0x2B4]) = 730882391;
  LODWORD(STACK[0x44C]) = 751300868;
  STACK[0x2E0] = 0;
  LODWORD(STACK[0x43C]) = 67981681;
  LODWORD(STACK[0x2B8]) = a1 + 1;
  *(&STACK[0x540] + a2) = 724410440;
  LODWORD(STACK[0x260]) = 1256323851;
  LODWORD(STACK[0x298]) = -513528329;
  LODWORD(STACK[0x250]) = 136699176;
  LODWORD(STACK[0x258]) = 522475552;
  v10 = *(&STACK[0x540] + a2);
  v11 = STACK[0x2B8];
  LODWORD(STACK[0x278]) = a1 - 497;
  v13 = v10 != ((v9 + 140) ^ 0x2B2DA2D5) || v11 != (v9 ^ (a1 - 497));
  return (*(v3 + 8 * ((1582 * v13) ^ v9)))();
}

uint64_t sub_1B16A9D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27)
{
  v75 = *(v29 + 8 * (v27 - 23));
  v67 = STACK[0x280];
  v68 = STACK[0x284];
  v69 = LOBYTE(STACK[0x290]);
  if (v69 == 2)
  {
    v72 = &STACK[0x230] + v32 + 1431117144;
    v73 = ((*v72 ^ 0x7E) << 24) | ((v72[1] ^ 0x7E) << 16) | ((v72[2] ^ 0x7E) << 8);
    *(v28 + 4 * (v34 ^ 0x15534756)) = (v73 | v72[3] ^ 0x7E) + v30 - 2 * ((v73 | v72[3] ^ 0x7E) & (v30 + 16) ^ (v72[3] ^ 0x7E) & 0x10);
    v74 = *(v29 + 8 * ((89 * ((v32 + 1431117148) < 0x40)) ^ a27));
    return v74(v74, 0, v33 + 16, 0, 1430592987, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else if (v69 == 1)
  {
    v70 = &STACK[0x230] + v32 + 1431117144;
    v71 = *v70 ^ 0x7E;
    LODWORD(v70) = ((v70[2] ^ (v31 + 88)) << 16) | ((v70[3] ^ 0x7E) << 24) | v71 | ((v70[1] ^ 0x7E) << 8);
    *(v28 + 4 * (v34 ^ 0x15534756)) = v70 + v30 - 2 * (v70 & (v30 + 18) ^ v71 & 0x12);
    return (*(v29 + 8 * ((1601 * ((v32 + 1431117148) < 0x40)) ^ (v31 + 790))))(0, 0, 0, 1431117144, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v66 = STACK[0x278];
    v35 = (((v66 ^ 0xE2CCD6BF) + 489892161) ^ ((v66 ^ 0xE1DAA998) + 505763432) ^ ((v66 ^ 0x23DFD229) - 601870889)) + (((v66 ^ 0xF29CA2C4) + 224615740) ^ ((v66 ^ 0x9BE7E0A7) + 1679302489) ^ ((v66 ^ 0x49B2EF6D) - 1236463469)) + 1160023296;
    v36 = (v35 ^ 0xFA6EA898) & (2 * (v35 & 0xFC6ECD1C)) ^ v35 & 0xFC6ECD1C;
    v37 = ((2 * (v35 ^ 0x723FAAA0)) ^ 0x1CA2CF78) & (v35 ^ 0x723FAAA0) ^ (2 * (v35 ^ 0x723FAAA0)) & 0x8E5167BC;
    v38 = v37 ^ 0x82512084;
    v39 = (v37 ^ 0x4430) & (4 * v36) ^ v36;
    v40 = ((4 * v38) ^ 0x39459EF0) & v38 ^ (4 * v38) & 0x8E5167BC;
    v41 = (v40 ^ 0x84106A0) & (16 * v39) ^ v39;
    v42 = ((16 * (v40 ^ 0x8610610C)) ^ 0xE5167BC0) & (v40 ^ 0x8610610C) ^ (16 * (v40 ^ 0x8610610C)) & 0x8E5167B0;
    v43 = v41 ^ 0x8E5167BC ^ (v42 ^ 0x84106300) & (v41 << 8);
    v44 = (v43 << 16) ^ 0x67BC0000;
    v45 = (((LODWORD(STACK[0x27C]) ^ 0xB0DE518) - 185459992) ^ ((LODWORD(STACK[0x27C]) ^ 0x87B16B20) + 2018415840) ^ ((LODWORD(STACK[0x27C]) ^ 0xAC752336) + 1401609418)) + (((LODWORD(STACK[0x27C]) ^ 0xFD305C72) + 47162254) ^ ((LODWORD(STACK[0x27C]) ^ 0xC8D0846E) + 925858706) ^ ((LODWORD(STACK[0x27C]) ^ 0x15297512) - 355038482)) - 1980061135;
    LODWORD(STACK[0x278]) = v35 ^ (2 * ((v43 << 16) & 0xE510000 ^ v43 ^ v44 & (((v42 ^ 0xA41043C) << 8) & 0xE510000 ^ 0xE100000 ^ (((v42 ^ 0xA41043C) << 8) ^ 0x51670000) & (v42 ^ 0xA41043C)))) ^ 0xCC25AF6A;
    LODWORD(STACK[0x27C]) = v45 ^ ((v45 ^ 0xFD231F52) + 1253814457) ^ ((v45 ^ 0x4083D888) - 149194909) ^ ((v45 ^ 0xA206850) - 1111963717) ^ ((v45 ^ 0xFFE7FF9F) + 1216303222) ^ 0x68AEFD1B;
    v46 = (((v67 ^ 0xDA01B106) + 637423354) ^ ((v67 ^ 0xC8F0CCD5) + 923743019) ^ ((v67 ^ 0x3238D0DD) - 842584285)) + (((LODWORD(STACK[0x280]) ^ 0x5BA01752) - 1537218386) ^ ((LODWORD(STACK[0x280]) ^ 0x203A71C9) - 540701129) ^ ((LODWORD(STACK[0x280]) ^ 0x5B53CB95) - 1532218261)) + 1936182443;
    v47 = (v46 ^ 0xEC0B4D70) & (2 * (v46 & 0xCE2B8D71)) ^ v46 & 0xCE2B8D71;
    v48 = ((2 * (v46 ^ 0xF04E4770)) ^ 0x7CCB9402) & (v46 ^ 0xF04E4770) ^ (2 * (v46 ^ 0xF04E4770)) & 0x3E65CA00;
    v49 = v48 ^ 0x2244A01;
    v50 = (v48 ^ 0x38400000) & (4 * v47) ^ v47;
    v51 = ((4 * v49) ^ 0xF9972804) & v49 ^ (4 * v49) & 0x3E65CA00;
    v52 = v50 ^ 0x3E65CA01 ^ (v51 ^ 0x38050800) & (16 * v50);
    v53 = (16 * (v51 ^ 0x660C201)) & 0x3E65CA00 ^ 0x18214A01 ^ ((16 * (v51 ^ 0x660C201)) ^ 0xE65CA010) & (v51 ^ 0x660C201);
    v54 = (v52 << 8) & 0x3E65CA00 ^ v52 ^ ((v52 << 8) ^ 0x65CA0100) & v53;
    v55 = v46 ^ (2 * ((v54 << 16) & 0x3E650000 ^ v54 ^ ((v54 << 16) ^ 0x4A010000) & ((v53 << 8) & 0x3E650000 ^ 0x1A250000 ^ ((v53 << 8) ^ 0x65CA0000) & v53))) ^ 0xCEABB47D;
    v56 = (((v68 ^ 0x6F80A48A) - 1870701706) ^ ((v68 ^ 0x1BB537EC) - 464861164) ^ ((v68 ^ 0x54FC3E68) - 1425817192)) + (((LODWORD(STACK[0x284]) ^ 0x3316F19) - 53571353) ^ ((LODWORD(STACK[0x284]) ^ 0xB15F7FD8) + 1319141416) ^ ((LODWORD(STACK[0x284]) ^ 0x92A7BDCF) + 1834500657)) - 1073589467;
    v57 = (v56 ^ 0xED5466E6) & (2 * (v56 & 0x819106F7)) ^ v56 & 0x819106F7;
    v58 = ((2 * (v56 ^ 0xEF766BEE)) ^ 0xDDCEDA32) & (v56 ^ 0xEF766BEE) ^ (2 * (v56 ^ 0xEF766BEE)) & 0x6EE76D18;
    v59 = v58 ^ 0x22212509;
    v60 = (v58 ^ 0xCC40810) & (4 * v57) ^ v57;
    v61 = ((4 * v59) ^ 0xBB9DB464) & v59 ^ (4 * v59) & 0x6EE76D18;
    v62 = (v61 ^ 0x2A852400) & (16 * v60) ^ v60;
    v63 = ((16 * (v61 ^ 0x44624919)) ^ 0xEE76D190) & (v61 ^ 0x44624919) ^ (16 * (v61 ^ 0x44624919)) & 0x6EE76D10;
    v64 = v62 ^ 0x6EE76D19 ^ (v63 ^ 0x6E664100) & (v62 << 8);
    LODWORD(STACK[0x280]) = v55;
    LODWORD(STACK[0x284]) = v56 ^ (2 * ((v64 << 16) & 0x6EE70000 ^ v64 ^ ((v64 << 16) ^ 0x6D190000) & (((v63 ^ 0x812C09) << 8) & 0x6EE70000 ^ 0x8820000 ^ (((v63 ^ 0x812C09) << 8) ^ 0x676D0000) & (v63 ^ 0x812C09)))) ^ 0xA49471CB;
    return v75(v44, &STACK[0x230], a3, a4, a24, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_1B16A9DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31)
{
  *(v36 - 136) = v34;
  *(v36 - 128) = v35;
  *(v36 - 144) = v33 + 819 - ((1314589540 - ((v36 - 144) | 0x4E5B0B64) + ((v36 - 144) | 0xB1A4F49B)) ^ 0x3C099677) * v32 + 1137;
  (*(v31 + 8 * (v33 + 2044)))(v36 - 144);
  v37 = a31;
  *(v36 - 128) = v33 + 1293 - 2066391179 * ((((v36 - 144) | 0x8BB17607) - ((v36 - 144) & 0x8BB17607)) ^ 0x2496F41F);
  *(v36 - 144) = &a22;
  *(v36 - 136) = v37;
  *(v36 - 112) = &a22;
  *(v36 - 104) = &a30;
  *(v36 - 120) = v34;
  (*(v31 + 8 * ((v33 + 819) ^ 0xB94)))(v36 - 144);
  *(v36 - 112) = a16;
  *(v36 - 104) = &a30;
  *(v36 - 120) = v34;
  *(v36 - 144) = &a22;
  *(v36 - 136) = &a22;
  *(v36 - 128) = v33 + 1293 - 2066391179 * ((((v36 - 144) | 0x3B731CE9) - (v36 - 144) + ((v36 - 144) & 0xC48CE310)) ^ 0x94549EF1);
  (*(v31 + 8 * (v33 + 1983)))(v36 - 144);
  *(v36 - 144) = v33 + 819 - 1361651671 * (((((v36 - 144) | 0xD3364CAE) ^ 0xFFFFFFFE) - (~(v36 - 144) | 0x2CC9B351)) ^ 0xFFEB43DD) - 562359827;
  *(v36 - 136) = a21;
  *(v36 - 128) = &a22;
  (*(v31 + 8 * (v33 + 2057)))(v36 - 144);
  *(v36 - 144) = v33 + 819 - 1388665877 * ((2 * ((v36 - 144) & 0x5375148) - (v36 - 144) + 2059972273) ^ 0xF765CC5D) + 1137;
  *(v36 - 136) = &a24;
  *(v36 - 128) = &a22;
  (*(v31 + 8 * ((v33 + 819) ^ 0xB57)))(v36 - 144);
  *(v36 - 128) = (v33 + 1646) ^ (1564307779 * (((((v36 - 144) | 0xAFADAACA) ^ 0xFFFFFFFE) - (~(v36 - 144) | 0x50525535)) ^ 0xC75F9926));
  *(v36 - 144) = &a24;
  *(v36 - 136) = &a22;
  v38 = (*(v31 + 8 * (v33 + 2022)))(v36 - 144);
  return (*(v31 + 8 * ((123 * (((a20 == 0) ^ (v33 + 6 + ((v33 + 51) ^ 0x6D) + 1)) & 1)) ^ (v33 + 794))))(v38);
}

uint64_t sub_1B16AA0F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v17 = 1564307779 * ((-1942077248 - ((v16 - 136) | 0x8C3E40C0) + ((v16 - 136) | 0x73C1BF3F)) ^ 0xE4CC732C);
  *(v16 - 120) = v17 + ((32 * a4) ^ 0x5ED5BBEF) + (((19 * (v14 ^ 0xCB)) ^ 0xBDAB7740) & (a4 << 6)) - 1485865667;
  *(v16 - 128) = &a14;
  *(v16 - 136) = v17 + v14 + 1703;
  v18 = (*(v15 + 8 * (v14 ^ 0x875)))(v16 - 136);
  return (*(v15 + 8 * ((1382 * (*(a9 + 4) - 1550341630 < (v14 ^ 0x183u) + 2147483326)) ^ v14)))(v18);
}

uint64_t sub_1B16AA1EC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v9 = *(v7 + 8);
  v10 = ((2 * (*(v9 + (((a2 << 32) + 0x100000000) >> 30)) ^ (v2 + v6 - 157 - 338))) << ~(a1 ^ 0xE)) | ((v9[a2] ^ v2) >> (a1 ^ 0xE));
  *v9 = v10 + v2 - (v3 & (2 * v10));
  return (*(v8 + 8 * (((v4 == 1) * v5) ^ v6)))();
}

uint64_t sub_1B16AA368@<X0>(void *a1@<X0>, int a2@<W8>)
{
  if (a1[4])
  {
    v3 = (a1[5] | a1[7]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * (((((a2 + 42) ^ v4) & 1) * (((a2 - 1227) | 0x341) - 844)) ^ a2)))();
}

uint64_t sub_1B16AA3B8(uint64_t result)
{
  v1 = 1388665877 * (((result | 0x2916B44FED2ABA0BLL) - (result & 0x2916B44FED2ABA0BLL)) ^ 0x1C6C24006087D8E7);
  v2 = *result ^ v1;
  v3 = *(result + 8) - v1;
  v4 = *(result + 12) + v1;
  v5 = *(result + 20) - v1;
  v6 = *(result + 16) ^ v1;
  v7 = *(result + 32) ^ v1;
  v8 = v7 < v2;
  v9 = v7 < v2;
  v10 = v8;
  if (v5)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  *(result + 24) = v11 ^ v4;
  return result;
}

uint64_t sub_1B16AA448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *v24 = v22 - 1;
  v27 = ((((a8 - 994461167) & 0x3B4647FE) + 1212) ^ 0xE2CF2816) + v22;
  return (*(v23 + 8 * ((1337 * (*(v25 + (*(a22 + 24 * v27) + a5) * a3 + 36) == v26)) ^ a8)))(a1, a2, a3, a4, *(a22 + 24 * v27 + 4), a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B16AA4F8(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (50899313 * ((a1 - 537014236 - 2 * (a1 & 0xDFFDD024)) ^ 0x179C1472));
  v2 = *(*(a1 + 16) + 24) == 296339821;
  return (*(*(&off_1F2870B00 + v1 - 159) + ((v2 ^ (v1 + 1)) & 1 | (8 * ((v2 ^ (v1 + 1)) & 1)) | v1) - 1))();
}

uint64_t sub_1B16AA580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  LODWORD(STACK[0x35C]) = 1965362773;
  LODWORD(STACK[0x4A4]) = 128;
  v54 = 843532609 * (((v52 | 0xD9E699F2) - v52 + (v52 & 0x26196608)) ^ 0x85ABCD77);
  v51[5] = a38;
  v51[6] = a49;
  v51[4] = &STACK[0x4A4];
  v51[9] = 0;
  *v51 = a49 + 928;
  v51[2] = a49 + 656;
  v51[7] = 0;
  *(v53 - 152) = v54 + v49 + 291;
  *(v53 - 192) = v54 ^ 0x39CA54BD;
  v55 = (*(v50 + 8 * (v49 ^ 0xA50)))(v53 - 216);
  return (*(v50 + 8 * ((94 * (((v49 - 1) ^ (*(v53 - 208) == 296339821)) & 1)) ^ v49)))(v55);
}

uint64_t sub_1B16AA66C(__n128 a1)
{
  v2.n128_u64[0] = (v1 + 13) & 0xF;
  v2.n128_u64[1] = (v1 + 12) & 0xF;
  v3.n128_u64[0] = (v1 + 11) & 0xF;
  v3.n128_u64[1] = (v1 + 10) & 0xF;
  v4.n128_u64[0] = (v1 + 9) & 0xF;
  v4.n128_u64[1] = v1 & 0xF ^ 8;
  v8.val[0].i64[0] = (v1 + 7) & 0xF;
  v8.val[0].i64[1] = (v1 + 6) & 0xF;
  v8.val[1].i64[0] = (v1 + 5) & 0xF;
  v8.val[1].i64[1] = (v1 + 4) & 0xF;
  v8.val[2].i64[0] = (v1 + 3) & 0xF;
  v8.val[2].i64[1] = (v1 + 2) & 0xF;
  v8.val[3].i64[0] = (v1 + 1) & 0xF;
  v8.val[3].i64[1] = v1 & 0xF;
  v5.n128_u64[0] = 0x6161616161616161;
  v5.n128_u64[1] = 0x6161616161616161;
  v6.n128_u64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v6.n128_u64[1] = 0x7E7E7E7E7E7E7E7ELL;
  return sub_1B16AA740((v1 + 14) & 0xF, 1782, a1, v2, v3, v4, xmmword_1B176D1B0, vqtbl4q_s8(v8, xmmword_1B176D1B0), v5, v6);
}

uint64_t sub_1B16AA740(uint64_t a1, unint64_t a2, double a3, __n128 a4, __n128 a5, __n128 a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, int a12)
{
  v21 = ~v17 + v15;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a4 - 1), a7).u64[0];
  *&v24.i64[1] = a8;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(v19 + v21), *(v12 + v22 - 15)), veorq_s8(*(v22 + v13 - 12), *(v22 + v14 - 10))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a10), vmulq_s8(v24, a9)));
  *(v19 + v21) = vextq_s8(v26, v26, 8uLL);
  return (*(v20 + 8 * (((((v18 + 1306) ^ a2) + v17 == v16) * a12) ^ v18)))();
}

uint64_t sub_1B16AA91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 2066391179 * (((&a13 | 0xBDD00F55) - &a13 + (&a13 & 0x422FF0A8)) ^ 0x12F78D4D) + 308;
  a14 = &a9;
  v17 = (*(v16 + 17448))(&a13);
  return (*(v16 + 8 * ((982 * (a13 == v15)) ^ 0x51Fu)))(v17);
}

uint64_t sub_1B16AA9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, unsigned int a39, unsigned int a40, unsigned int a41, int a42, int a43, char a44)
{
  v89 = v51 - 188;
  v53 = *(v46 + 8 * (v44 + 14));
  if (a44 == 2)
  {
    v57 = &a28 + v47 + 1076256871;
    v58 = ((*v57 ^ 0x7E) << 24) | ((v57[1] ^ 0x7E) << 16) | ((v57[2] ^ 0x7E) << 8);
    *v48 = (v58 | v57[3] ^ 0x7E) + v45 - 2 * ((v58 | v57[3] ^ 0x7E) & (v45 + 16) ^ (v57[3] ^ 0x7E) & 0x10);
    return (*(v46 + 8 * (((2 * ((v47 + 1076256871) < 0x40)) | (8 * ((v47 + 1076256871) < 0x40))) ^ v49)))(v50 + 16);
  }

  else if (a44 == 1)
  {
    v54 = &a28 + v47 + 1076256871;
    v55 = *v54 ^ 0x7E;
    LODWORD(v54) = ((((v52 - 27) | 0x96) ^ 0xE9 ^ v54[2]) << 16) | ((v54[3] ^ 0x7E) << 24) | v55 | ((v54[1] ^ 0x7E) << 8);
    *v48 = v54 + v45 - 2 * (v54 & (v45 + 18) ^ v55 & 0x12);
    return (*(v46 + 8 * ((14 * ((v47 + 1076256871) < 0x40)) ^ (v52 + 1659))))((v52 + 1509) | 0x96u, 1344339968, 1076256867, 1482752000, 1073742920, a6, a7, a8, a9, a10, a11, a12, v89, a14, a15, a16, a17);
  }

  else
  {
    v59 = (((a38 ^ 0x2F9A9914) - 798660884) ^ ((a38 ^ 0x1E4A980F) - 508205071) ^ ((a38 ^ 0x1119AC15) - 286895125)) + (((a38 ^ 0x3AFE4912) - 989743378) ^ ((a38 ^ 0xD56DC32C) + 714226900) ^ ((a38 ^ 0xCF5A2730) + 816175312)) + 2105478759;
    v60 = (v59 ^ 0xC0C423A4) & (2 * (v59 & 0xC4144BB5)) ^ v59 & 0xC4144BB5;
    v61 = ((2 * (v59 ^ 0x48E4A7EC)) ^ 0x19E1D8B2) & (v59 ^ 0x48E4A7EC) ^ (2 * (v59 ^ 0x48E4A7EC)) & 0x8CF0EC58;
    v62 = v61 ^ 0x84102449;
    v63 = (v61 ^ 0xE04810) & (4 * v60) ^ v60;
    v64 = ((4 * v62) ^ 0x33C3B164) & v62 ^ (4 * v62) & 0x8CF0EC58;
    v65 = (v64 ^ 0xC0A040) & (16 * v63) ^ v63;
    v66 = ((16 * (v64 ^ 0x8C304C19)) ^ 0xCF0EC590) & (v64 ^ 0x8C304C19) ^ (16 * (v64 ^ 0x8C304C19)) & 0x8CF0EC50;
    v67 = v65 ^ 0x8CF0EC59 ^ (v66 ^ 0x8C00C400) & (v65 << 8);
    v68 = (v67 << 16) ^ 0x6C590000;
    v69 = (((a39 ^ 0xE9588605) + 380074491) ^ ((a39 ^ 0x56797CE1) - 1450802401) ^ ((a39 ^ 0x9FE857EA) + 1612163094)) + (((a39 ^ 0xE28DFFE6) + 494010394) ^ ((a39 ^ 0xF157CFCB) + 245903413) ^ ((a39 ^ 0x33139D23) - 856923427)) + 1828768941;
    a38 = v59 ^ (2 * ((v67 << 16) & 0xCF00000 ^ v67 ^ v68 & (((v66 ^ 0xF02849) << 8) & 0xCF00000 ^ 0xC100000 ^ (((v66 ^ 0xF02849) << 8) ^ 0x70EC0000) & (v66 ^ 0xF02849)))) ^ 0xE59C3E09;
    a39 = v69 ^ ((v69 ^ 0x60BE4E5F) - 1272134862) ^ ((v69 ^ 0xAA22AB52) + 2125473341) ^ ((v69 ^ 0x5E0E78E3) - 1969425010) ^ ((v69 ^ 0xBFFFEF7F) + 1802330642) ^ 0xBA4DF9F;
    v70 = (((a40 ^ 0x1826D68C) - 405198476) ^ ((a40 ^ 0xF8D3E8B2) + 120330062) ^ ((a40 ^ 0xC03C9330) + 1069771984)) + (((a40 ^ 0xB3779F7C) + 1284006020) ^ ((a40 ^ 0x8B8F7808) + 1953531896) ^ ((a40 ^ 0x18314A7A) - 405883514)) + 1741072135;
    v71 = (v70 ^ 0x9D8A2395) & (2 * (v70 & 0xD9CCB315)) ^ v70 & 0xD9CCB315;
    v72 = ((2 * (v70 ^ 0x1C9363BD)) ^ 0x8ABFA150) & (v70 ^ 0x1C9363BD) ^ (2 * (v70 ^ 0x1C9363BD)) & 0xC55FD0A8;
    v73 = v72 ^ 0x454050A8;
    v74 = (v72 ^ 0x80178000) & (4 * v71) ^ v71;
    v75 = ((4 * v73) ^ 0x157F42A0) & v73 ^ (4 * v73) & 0xC55FD0A8;
    v76 = (v75 ^ 0x55F40A0) & (16 * v74) ^ v74;
    v77 = ((16 * (v75 ^ 0xC0009008)) ^ 0x55FD0A80) & (v75 ^ 0xC0009008) ^ (16 * (v75 ^ 0xC0009008)) & 0xC55FD0A0;
    v78 = v76 ^ 0xC55FD0A8 ^ (v77 ^ 0x455D0000) & (v76 << 8);
    v79 = v70 ^ (2 * ((v78 << 16) & 0x455F0000 ^ v78 ^ ((v78 << 16) ^ 0x50A80000) & (((v77 ^ 0x8002D028) << 8) & 0x455F0000 ^ (((v77 ^ 0x8002D028) << 8) ^ 0x5FD00000) & (v77 ^ 0x8002D028) ^ 0xF0000))) ^ 0xF3AABF4B;
    v80 = (((a41 ^ 0x5F9E4D91) - 1604210065) ^ ((a41 ^ 0x824B3EBB) + 2108997957) ^ ((a41 ^ 0xFD1CDE24) + 48439772)) + (((a41 ^ 0xB8C44A29) + 1195095511) ^ ((a41 ^ 0x37509FB6) - 928030646) ^ ((a41 ^ 0xAF5D7891) + 1352828783)) + 1824354195;
    v81 = (v80 ^ 0xC095E245) & (2 * (v80 & 0xD4D5EA89)) ^ v80 & 0xD4D5EA89;
    v82 = ((2 * (v80 ^ 0x609F6345)) ^ 0x68951398) & (v80 ^ 0x609F6345) ^ (2 * (v80 ^ 0x609F6345)) & 0xB44A89CC;
    v83 = v82 ^ 0x944A8844;
    v84 = (v82 ^ 0x20000008) & (4 * v81) ^ v81;
    v85 = ((4 * v83) ^ 0xD12A2730) & v83 ^ (4 * v83) & 0xB44A89CC;
    v86 = (v85 ^ 0x900A0100) & (16 * v84) ^ v84;
    v87 = ((16 * (v85 ^ 0x244088CC)) ^ 0x44A89CC0) & (v85 ^ 0x244088CC) ^ (16 * (v85 ^ 0x244088CC)) & 0xB44A89C0;
    v88 = v86 ^ 0xB44A89CC ^ (v87 ^ 0x4088800) & (v86 << 8);
    a40 = v79;
    a41 = v80 ^ (2 * ((v88 << 16) & 0x344A0000 ^ v88 ^ ((v88 << 16) ^ 0x9CC0000) & (((v87 ^ 0xB042010C) << 8) & 0x344A0000 ^ 0x34420000 ^ (((v87 ^ 0xB042010C) << 8) ^ 0x4A890000) & (v87 ^ 0xB042010C)))) ^ 0x9C19541F;
    return v53(v68, 217055232, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v89, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v53, a26, a27, a28, a29, a30);
  }
}

uint64_t sub_1B16AA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(void))
{
  v29 = v27;
  v30 = (((LODWORD(STACK[0x278]) ^ 0xE2CCD6BF) + 489892161) ^ ((LODWORD(STACK[0x278]) ^ 0xE1DAA998) + 505763432) ^ ((LODWORD(STACK[0x278]) ^ 0x23DFD229) - 601870889)) + (((v28 ^ 0xF29CA2C4) + 224615740) ^ ((v28 ^ 0x9BE7E0A7) + 1679302489) ^ ((v28 ^ 0x49B2EF6D) - 1236463469)) + 1160023296;
  v31 = (v30 ^ 0xFA6EA898) & (2 * (v30 & 0xFC6ECD1C)) ^ v30 & 0xFC6ECD1C;
  v32 = ((2 * (v30 ^ 0x723FAAA0)) ^ 0x1CA2CF78) & (v30 ^ 0x723FAAA0) ^ (2 * (v30 ^ 0x723FAAA0)) & 0x8E5167BC;
  v33 = v32 ^ 0x82512084;
  v34 = (v32 ^ 0x4430) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x39459EF0) & v33 ^ (4 * v33) & 0x8E5167BC;
  v36 = (v35 ^ 0x84106A0) & (16 * v34) ^ v34;
  v37 = ((16 * (v35 ^ 0x8610610C)) ^ 0xE5167BC0) & (v35 ^ 0x8610610C) ^ (16 * (v35 ^ 0x8610610C)) & 0x8E5167B0;
  v38 = v36 ^ 0x8E5167BC ^ (v37 ^ 0x84106300) & (v36 << 8);
  v39 = (((LODWORD(STACK[0x27C]) ^ 0xB0DE518) - 185459992) ^ ((LODWORD(STACK[0x27C]) ^ 0x87B16B20) + 2018415840) ^ ((LODWORD(STACK[0x27C]) ^ 0xAC752336) + 1401609418)) + (((v29 ^ 0xFD305C72) + 47162254) ^ ((v29 ^ 0xC8D0846E) + 925858706) ^ ((v29 ^ 0x15297512) - 355038482)) - 1980061135;
  LODWORD(STACK[0x278]) = v30 ^ (2 * ((v38 << 16) & 0xE510000 ^ v38 ^ ((v38 << 16) ^ 0x67BC0000) & (((v37 ^ 0xA41043C) << 8) & 0xE510000 ^ 0xE100000 ^ (((v37 ^ 0xA41043C) << 8) ^ 0x51670000) & (v37 ^ 0xA41043C)))) ^ 0xCC25AF6A;
  LODWORD(STACK[0x27C]) = v39 ^ ((v39 ^ 0xFD231F52) + 1253814457) ^ ((v39 ^ 0x4083D888) - 149194909) ^ ((v39 ^ 0xA206850) - 1111963717) ^ ((v39 ^ 0xFFE7FF9F) + 1216303222) ^ 0x68AEFD1B;
  v40 = (((v26 ^ 0xDA01B106) + 637423354) ^ ((v26 ^ 0xC8F0CCD5) + 923743019) ^ ((v26 ^ 0x3238D0DD) - 842584285)) + (((LODWORD(STACK[0x280]) ^ 0x5BA01752) - 1537218386) ^ ((LODWORD(STACK[0x280]) ^ 0x203A71C9) - 540701129) ^ ((LODWORD(STACK[0x280]) ^ 0x5B53CB95) - 1532218261)) + 1936182443;
  v41 = (v40 ^ 0xEC0B4D70) & (2 * (v40 & 0xCE2B8D71)) ^ v40 & 0xCE2B8D71;
  v42 = ((2 * (v40 ^ 0xF04E4770)) ^ 0x7CCB9402) & (v40 ^ 0xF04E4770) ^ (2 * (v40 ^ 0xF04E4770)) & 0x3E65CA00;
  v43 = v42 ^ 0x2244A01;
  v44 = (v42 ^ 0x38400000) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0xF9972804) & v43 ^ (4 * v43) & 0x3E65CA00;
  v46 = v44 ^ 0x3E65CA01 ^ (v45 ^ 0x38050800) & (16 * v44);
  v47 = (16 * (v45 ^ 0x660C201)) & 0x3E65CA00 ^ 0x18214A01 ^ ((16 * (v45 ^ 0x660C201)) ^ 0xE65CA010) & (v45 ^ 0x660C201);
  v48 = (v46 << 8) & 0x3E65CA00 ^ v46 ^ ((v46 << 8) ^ 0x65CA0100) & v47;
  v49 = v40 ^ (2 * ((v48 << 16) & 0x3E650000 ^ v48 ^ ((v48 << 16) ^ 0x4A010000) & ((v47 << 8) & 0x3E650000 ^ 0x1A250000 ^ ((v47 << 8) ^ 0x65CA0000) & v47))) ^ 0xCEABB47D;
  v50 = (((v25 ^ 0x6F80A48A) - 1870701706) ^ ((v25 ^ 0x1BB537EC) - 464861164) ^ ((v25 ^ 0x54FC3E68) - 1425817192)) + (((LODWORD(STACK[0x284]) ^ 0x3316F19) - 53571353) ^ ((LODWORD(STACK[0x284]) ^ 0xB15F7FD8) + 1319141416) ^ ((LODWORD(STACK[0x284]) ^ 0x92A7BDCF) + 1834500657)) - 1073589467;
  v51 = (v50 ^ 0xED5466E6) & (2 * (v50 & 0x819106F7)) ^ v50 & 0x819106F7;
  v52 = ((2 * (v50 ^ 0xEF766BEE)) ^ 0xDDCEDA32) & (v50 ^ 0xEF766BEE) ^ (2 * (v50 ^ 0xEF766BEE)) & 0x6EE76D18;
  v53 = v52 ^ 0x22212509;
  v54 = (v52 ^ 0xCC40810) & (4 * v51) ^ v51;
  v55 = ((4 * v53) ^ 0xBB9DB464) & v53 ^ (4 * v53) & 0x6EE76D18;
  v56 = (v55 ^ 0x2A852400) & (16 * v54) ^ v54;
  v57 = ((16 * (v55 ^ 0x44624919)) ^ 0xEE76D190) & (v55 ^ 0x44624919) ^ (16 * (v55 ^ 0x44624919)) & 0x6EE76D10;
  v58 = v56 ^ 0x6EE76D19 ^ (v57 ^ 0x6E664100) & (v56 << 8);
  LODWORD(STACK[0x280]) = v49;
  LODWORD(STACK[0x284]) = v50 ^ (2 * ((v58 << 16) & 0x6EE70000 ^ v58 ^ ((v58 << 16) ^ 0x6D190000) & (((v57 ^ 0x812C09) << 8) & 0x6EE70000 ^ 0x8820000 ^ (((v57 ^ 0x812C09) << 8) ^ 0x676D0000) & (v57 ^ 0x812C09)))) ^ 0xA49471CB;
  return a25();
}

uint64_t sub_1B16AAA14@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = LODWORD(STACK[0x2A0]) - 972;
  v5 = v3[17];
  v3[23] = *(v2 + 8 * (LODWORD(STACK[0x2A0]) - 1919));
  v3[58] = v5;
  LODWORD(STACK[0x50C]) = 1963376782;
  STACK[0x2E8] = a2;
  return (*(v2 + 8 * ((115 * (((v4 + 245548985) & 0xF15D37BB) - 963 + (*(v5 + 68) & ((v4 - 1936402590) & 0x736B27FF ^ 0x341)) > 0xFFFFFFBF)) ^ v4)))(a1, 225);
}

uint64_t sub_1B16AAC78(int a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23)
{
  v26 = v23 - 1070;
  v27 = v23 + 22331278;
  *a23 = 1297775726;
  v28 = *a2;
  v29 = 1564307779 * ((((v25 - 152) | 0x8CB2836C897A39E3) - ((v25 - 152) & 0x8CB2836C897A39E3)) ^ 0xA97177161E77F5F0);
  *(v25 - 116) = -1793179946 - v29 + v26;
  v30 = v25 - 168;
  *(v30 + 32) = v28 + v29;
  *(v30 + 40) = v29 ^ 0x13FF;
  v31 = v27 - v29 + 13;
  v32 = v27 + v29;
  *(v25 - 148) = v32;
  *(v25 - 144) = v29 ^ 1;
  *(v25 - 120) = v32 + 90;
  *(v25 - 152) = v31;
  v33 = (*(v24 + 8 * (a1 + v26 + 1534)))(v25 - 152);
  return (*(v24 + 8 * *(v25 - 140)))(v33);
}

void sub_1B16AACD0(uint64_t a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0x8DEF8326) + (~a1 | 0x72107CD9))) ^ 0xFFBD1E35);
  v2 = *(*(a1 + 8) + 4) == 1550341629;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B16AAD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35, int a36, int a37)
{
  v45 = v44 - 168;
  *(v45 + 32) = (v43 + 1) + v40;
  *(v45 + 40) = v40 ^ 3;
  *(v44 - 116) = -2030744672 - v40;
  *(v44 - 148) = a37 + v40 + (~((v38 + 237565349 - v41) & ((v38 + 237565349) ^ (-2 - v39)) | v41 & ~(v38 + 237565349)) >> 31) + a35;
  *(v44 - 144) = v40 ^ 1;
  *(v44 - 120) = a37 + v40 - 94;
  *(v44 - 152) = a33;
  v46 = (*(v37 + 8 * (v42 ^ 0xF1D70CCA)))(v44 - 152);
  return (*(v37 + 8 * *(v44 - 140)))(v46);
}

void sub_1B16AAE48(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 843532609 * ((-2 - ((a1 | 0xE4DA0525) + (~a1 | 0x1B25FADA))) ^ 0x4768AE5F);
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 1550341629 < 0)
  {
    v3 = 1550341629 - v2;
  }

  else
  {
    v3 = v2 - 1550341629;
  }

  v5 = *(a1 + 8);
  v6 = v1 + 50899313 * (((&v5 | 0x8F2BF58E) - &v5 + (&v5 & 0x70D40A70)) ^ 0x474A31D8) - 221;
  v4 = *(&off_1F2870B00 + v1 - 1877) - 8;
  (*&v4[8 * v1 + 896])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16AAFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v34 - 144) = v30;
  *(v34 - 136) = &a16;
  *(v34 - 128) = &a16;
  *(v34 - 120) = v31;
  *(v34 - 112) = v28 + 1082434553 * ((v34 + 1030906430 - 2 * ((v34 - 144) & 0x3D7262CE)) ^ 0xA6359444) + 164;
  (*(v29 + 8 * (v28 + 1942)))(v34 - 144);
  *(v34 - 144) = &a16;
  *(v34 - 136) = &a16;
  *(v34 - 128) = v28 - ((1392311780 - ((v34 - 144) | 0x52FCFDE4) + ((v34 - 144) | 0xAD03021B)) ^ 0x2248003) * v33 + 1289;
  *(v34 - 120) = v30;
  *(v34 - 112) = &a28;
  *(v34 - 104) = v31;
  v35 = (*(v29 + 8 * (v28 + 1979)))(v34 - 144);
  return (*(v29 + 8 * ((250 * (v32 + (v28 ^ 0x466u) - 1344008600 >= (((v28 ^ 0x466) + 1145000471) & 0xBBC0ADFE) + 2147482403)) ^ ((v28 ^ 0x466) - 588))))(v35);
}

uint64_t sub_1B16AB180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v23 = *(v17 + 8 * (v13 - 978));
  v24 = *v15;
  v25 = v14 - 4 + v22;
  *(*v15 + v25) = (v21 ^ 0x2D) - ((2 * (v21 ^ 0x2D)) & 0xFC) + 126;
  *(v24 + v25 + 1) = (v20 ^ 0xEF) - 2 * (v20 ^ 0xEE) + 126;
  *(v24 + v25 + 2) = (v16 ^ 0xA0) + (v18 | ~(2 * (v16 ^ 0xA0))) + 127;
  *(v24 + v25 + 3) = v19 ^ 0xC0;
  return v23(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1B16AB19C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  v38 = 7 * (a36 ^ 0x38B);
  v39 = *(v37 + 200);
  v40 = *(a1 + 72);
  *(v39 + ((8 * v38) ^ 0xDEEDBB07) + 554845009) = v40 ^ 0x70;
  *(v39 + ((8 * v38) ^ 0xDEEDBB07) + 554845010) = (BYTE1(v40) ^ 0xAD) - ((2 * (BYTE1(v40) ^ 0xAD)) & 0xFC) + 126;
  *(v39 + ((8 * v38) ^ 0xDEEDBB07) + 554845011) = (BYTE2(v40) ^ 0xC9) + (~(2 * (BYTE2(v40) ^ 0xC9)) | 3) + 127;
  *(v39 + ((8 * v38) ^ 0xDEEDBB07) + 554845012) = (HIBYTE(v40) ^ 0x20) - ((2 * (HIBYTE(v40) ^ 0x20)) & 0xFC) + 126;
  return (*(v36 + 8 * ((861 * (*(a1 + 92) > 4u)) ^ v38)))();
}

uint64_t sub_1B16AB2E0@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W8>)
{
  v9 = (v6 - 1585) | 0x348;
  v10 = a4 + 1;
  *(v8 + v4) = *(STACK[0x2E8] + a4);
  v11 = a4 + ((v9 + 1130) ^ (a3 - 1815)) < v5;
  if (v5 < a3 != v10 > a2 + 2024)
  {
    v11 = v5 < a3;
  }

  return (*(v7 + 8 * ((v11 * a1) ^ v9)))();
}

uint64_t sub_1B16AB348(uint64_t a1, uint64_t a2)
{
  v5 = STACK[0x200];
  (*(v2 + 8 * (v3 ^ 0x843)))(*STACK[0x200], a2, 2048);
  v6 = *(v2 + 8 * ((479 * ((*(v2 + 8 * (v3 + 1930)))(*v5, &STACK[0x4C0], LODWORD(STACK[0x414]) + (((v3 ^ 0x3D7) + 1252) ^ (v4 - 1512)), 1) == 0)) ^ v3));
  return v6();
}

uint64_t sub_1B16AB414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *(*(a14 + 96) + 504) = v16 + 1;
  *(*(a14 + 96) + 496) = a16 - 1;
  v19 = 742307843 * ((v18 - 152) ^ 0x5D7C7F7A);
  *(v18 - 152) = -473373664 - v19;
  *(v18 - 144) = v18 - 252;
  *(v18 - 132) = 1267016942 - v19;
  v20 = (*(v17 + 17480))(v18 - 152);
  return (*(v17 + 8 * ((1149 * (a16 + 1231 + (*(v18 - 184) & 0x3Fu) - 751302164 < 0xFFFFFFC0)) ^ 0x34Fu)))(v20, 1237288649);
}

uint64_t sub_1B16AB62C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v9 = v5 - v2;
  *(v9 + 91) = ((v2 + v3) ^ v4) * (v2 + v3 + 17);
  *(v9 + 90) = ((v2 + v3) ^ 0xBB) * (v2 + v3 + 18);
  return (*(v8 + 8 * (((v2 + v6 + (a1 + a2 - 438) == 92) * v7) ^ a2)))(0);
}

void sub_1B16AB71C()
{
  if (v0 == 812202956)
  {
    v2 = 296339821;
  }

  else
  {
    v2 = -296316235;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_1B16AB77C@<X0>(int a1@<W8>)
{
  v6 = ((2 * (&v8 & 0x267918C8) - &v8 - 645470414) ^ 0xB8DE6CE2) * v1;
  v9 = v2 - v6 - 515;
  v8 = 0;
  v10 = v4;
  v11 = 1696005617 - v6;
  v12 = v6 ^ a1;
  result = (*(v5 + 8 * (v2 + 1418)))(&v8);
  *v3 = *(v4 + 24);
  return result;
}

void sub_1B16AB83C(uint64_t a1)
{
  v1 = *(a1 + 8) - 742307843 * ((2 * (a1 & 0xA7F53AE) - a1 + 1971366993) ^ 0x28FCD32B);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1B16AB8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46)
{
  STACK[0x298] = v46;
  v51 = STACK[0x33C];
  *(*(v50 + 496) + 4 * (((((v51 ^ 0xA104C1CD) + 749529145) ^ v51 ^ ((v51 ^ 0x7AC99F62) - 144591208) ^ ((v51 ^ 0x5AE1675B) - 683061585) ^ ((a46 ^ v51) + 2127808012)) >> 2) ^ 0x1C95F582)) = v47;
  LODWORD(STACK[0x33C]) = v51 + 4;
  return (*(v48 + 8 * ((905 * (v51 + 4 + v49 < ((a8 - 1985) ^ 0x67u))) | (a8 - 1908))))();
}

void sub_1B16AB990()
{
  v7 = (v2 - 740) ^ 0x4000010F | v0;
  v8 = *v3;
  v9 = *(v3 + 4) + v1;
  *(*v3 + v9) = (HIBYTE(v7) ^ 0xB7) - ((2 * (HIBYTE(v7) ^ 0xB7)) & 0xFC) + 126;
  *(v8 + v9 + 1) = (BYTE2(v7) ^ 0x15) - ((2 * (BYTE2(v7) ^ 0x15)) & 0xFC) + 126;
  *(v8 + v9 + 2) = (BYTE1(v7) ^ 0xAC) + (~(2 * (BYTE1(v7) ^ 0xAC)) | 3) + 127;
  *(v8 + v9 + 3) = v7 ^ 0xD9;
  v10 = *v3;
  v11 = (v5 ^ 0x50C999AE) & (2 * (v5 & v6)) ^ v5 & v6;
  LODWORD(v8) = ((2 * (v5 ^ 0x710999BA)) ^ 0xD7C1376A) & (v5 ^ 0x710999BA) ^ (2 * (v5 ^ 0x710999BA)) & 0xEBE09BB4;
  v12 = v8 ^ 0x28208895;
  LODWORD(v8) = (v8 ^ 0xC3C090A0) & (4 * v11) ^ v11;
  v13 = ((4 * v12) ^ 0xAF826ED4) & v12 ^ (4 * v12) & 0xEBE09BB4;
  LODWORD(v8) = (v13 ^ 0xAB800A90) & (16 * v8) ^ v8;
  v14 = ((16 * (v13 ^ 0x40609121)) ^ 0xBE09BB50) & (v13 ^ 0x40609121) ^ (16 * (v13 ^ 0x40609121)) & 0xEBE09BB0;
  LODWORD(v8) = v8 ^ 0xEBE09BB5 ^ (v14 ^ 0xAA009B00) & (v8 << 8);
  LODWORD(v8) = v5 ^ (2 * ((v8 << 16) & 0x6BE00000 ^ v8 ^ ((v8 << 16) ^ 0x1BB50000) & (((v14 ^ 0x41E000A5) << 8) & 0x6BE00000 ^ 0xB600000 ^ (((v14 ^ 0x41E000A5) << 8) ^ 0x609B0000) & (v14 ^ 0x41E000A5))));
  v15 = ((2 * (v1 + *(v3 + 4) + 4)) & 0xFDFFFF8E) + ((v1 + *(v3 + 4) + 4) ^ 0x7EFFFFC7) - 2130706375;
  *(*v3 + v15) = (BYTE3(v8) ^ 0x5A) - 2 * (BYTE3(v8) ^ 0x5A ^ BYTE3(v8) & 1) + 126;
  *(v10 + v15 + 1) = (BYTE2(v8) ^ 0x68) - 2 * (BYTE2(v8) ^ 0x68 ^ BYTE2(v8) & 1) + 126;
  *(v10 + v15 + 2) = (BYTE1(v8) ^ 0x35) + (~(2 * (BYTE1(v8) ^ 0x35)) | 3) + 127;
  *(v10 + v15 + 3) = v8 ^ 0x1B;
  *(v3 + 4) = v4;
}

uint64_t sub_1B16ABBFC()
{
  v3 = (v0 + 701243158) > 0x9ED2DF96;
  if ((v0 + 701243158) < 0x9ED2DF96)
  {
    v3 = 1;
  }

  return (*(v2 + 8 * ((v3 * ((v1 + 745) ^ 0x686)) ^ v1)))(1305);
}

void sub_1B16ABC08(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) - 50899313 * ((a1 + 2038787724 - 2 * (a1 & 0x79856E8C)) ^ 0xB1E4AADA);
  v2 = *a1;
  v4[0] = (50899313 * (((v4 | 0x15EC828) - (v4 & 0x15EC828)) ^ 0xC93F0C7E)) ^ (v1 - 1190);
  v5 = v2;
  v3 = *(&off_1F2870B00 + v1 - 1656) - 8;
  (*&v3[8 * v1 + 4016])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16ABE98(uint64_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = v9 + 8;
  *(a1 + (a5 ^ v13) + v8) = vadd_s8(vsub_s8(*(v10 + (a5 ^ v13) + v8), vand_s8(vadd_s8(*(v10 + (a5 ^ v13) + v8), *(v10 + (a5 ^ v13) + v8)), a2)), a3);
  return (*(v12 + 8 * (((a8 == v13) * a6) ^ v11)))();
}

uint64_t sub_1B16ABFE0(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = 121;
  }

  else
  {
    v2 = 120;
  }

  *(a1 + 88) = v2;
  return 0;
}

void sub_1B16AC010(uint64_t a1)
{
  v1 = *(a1 + 20) - 210068311 * (a1 ^ 0xF28BAFE8);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1B16AC148(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 120;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_1B16AC1B4(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_1B16AC1CC(uint64_t result)
{
  v1 = 1564307779 * ((((2 * result) | 0x3BE076D6021D91FELL) - result - 0x1DF03B6B010EC8FFLL) ^ 0x3833CF11960304ECLL);
  v2 = *(result + 24) ^ v1;
  v3 = *(result + 32) - v1;
  v4 = *(result + 4) - v1;
  v5 = *(result + 8) ^ v1;
  v6 = *result + v1;
  v7 = *(result + 16) - v1;
  v8 = v7 == v2;
  v9 = v7 > v2;
  v10 = v8;
  if ((v5 & 1) == 0)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  *(result + 12) = v11 ^ v3;
  return result;
}

void sub_1B16AC268(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40) ^ (2066391179 * ((((2 * a1) | 0xC785A6D2) - a1 - 1673712489) ^ 0xCCE55171));
  v2 = *(a1 + 32);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v10[0] = 0x5C6855FD00000082;
  v10[1] = &v12;
  v9[0] = 0x5C6855FD00000082;
  v9[1] = &v11;
  v6 = v3[1];
  v16 = v5;
  v17 = v2;
  v15 = v1 - 2066391179 * ((2 * (&v13 & 0x63063E80) - &v13 - 1661353608) ^ 0x33DE4360) + 648;
  v18 = v3;
  v13 = v10;
  v14 = v6;
  v7 = *(&off_1F2870B00 + v1 - 730) - 8;
  (*&v7[8 * v1 + 10704])(&v13);
  v8 = *v3;
  v15 = (1564307779 * ((2 * (&v13 & 0x27084748) - &v13 + 1492629687) ^ 0xCFFA74A4)) ^ (v1 + 1001);
  v13 = v9;
  v14 = v8;
  (*&v7[8 * (v1 ^ 0xBA3)])(&v13);
  v14 = v4;
  LODWORD(v13) = v1 + 1082434553 * (((&v13 | 0x333A8433) - &v13 + (&v13 & 0xCCC57BC8)) ^ 0xA87D72B9) - 580;
  (*&v7[8 * (v1 ^ 0xB8F)])(&v13);
  __asm { BRAA            X8, X17 }
}

void sub_1B16AC484(int a1@<W8>)
{
  *v7 = *v2;
  *v6 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x25E7AFF025E7AFF0;
  v3 = (a1 + 44) ^ 0x3F3;
  v4 = *(v2 + 24);
  v5 = *(v2 + 20) | v3;
  *(v2 + 16) = 363252333;
  *(v2 + 20) = v5;
  *v8 = v4;
}

uint64_t sub_1B16AC510()
{
  result = (*(v3 + 8 * ((v0 | 0x400) + 532)))(v2);
  *(v1 + 16) = 1871207081;
  return result;
}

uint64_t sub_1B16AC5A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{
  v24 = 1785193651 * ((~((v23 - 168) | 0xE3F0DF02) + ((v23 - 168) & 0xE3F0DF02)) ^ 0x30B87B15);
  *(v23 - 152) = 460197736 - v24;
  *(v23 - 168) = (a1 + 1437) ^ v24;
  *(v23 - 160) = &a22;
  (*(v22 + 8 * (a1 ^ 0x89B)))(v23 - 168);
  return a13(1686, a15);
}

void sub_1B16AC638(uint64_t a1)
{
  v1 = *a1 + 143681137 * ((a1 - 1148434714 - 2 * (a1 & 0xBB8C46E6)) ^ 0xDAD4CD36);
  v2 = *(a1 + 8);
  v3 = *(&off_1F2870B00 + (v1 ^ 0x408)) - 8;
  (*&v3[8 * (v1 ^ 0xC34)])(*(&off_1F2870B00 + v1 - 1031) - 4, sub_1B16A6CC8);
  __asm { BRAA            X9, X17 }
}

void sub_1B16AC750(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = 843532609 * ((a1 + 918077498 - 2 * (a1 & 0x36B8C03A)) ^ 0x6AF594BF);
  v2 = *(a1 + 64) - v1;
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 24) ^ v1;
  v11 = 0x5C6855FD00000040;
  v12 = &v19;
  v17 = 0x5C6855FD00000082;
  v18 = &v20;
  v15 = 0x5C6855FD00000001;
  v16 = &v8;
  v13 = 0x5C6855FD00000082;
  v14 = &v22;
  v9 = 0x5C6855FD00000082;
  v10 = &v21;
  if (v3 | v4)
  {
    v6 = v5 == 969561149;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1B16ACA24(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  v23.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v23.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v24.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v24.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v25 = (&a19 + v20);
  v26 = vaddq_s8(vsubq_s8(v22[1], vandq_s8(vaddq_s8(v22[1], v22[1]), v23)), v24);
  *v25 = vaddq_s8(vsubq_s8(*v22, vandq_s8(vaddq_s8(*v22, *v22), v23)), v24);
  v25[1] = v26;
  return (*(v21 + 8 * ((a3 + (v19 | 0x11310) + 773) | (16 * ((((v19 | 0x11310) - 1070969763) & 0x9BC8635E) - 758 == (a2 & 0x60))))))();
}

uint64_t sub_1B16ACAB8(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14 = (a11 + v11);
  v15 = vaddq_s8(vsubq_s8(v14[1], vandq_s8(vaddq_s8(v14[1], v14[1]), a5)), a6);
  *&STACK[0x230] = vaddq_s8(vsubq_s8(*v14, vandq_s8(vaddq_s8(*v14, *v14), a5)), a6);
  *&STACK[0x240] = v15;
  return (*(v13 + 8 * (((((v12 - 519372619) & a8) == 21) * a9) ^ v12)))();
}

uint64_t sub_1B16ACD00@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W8>)
{
  LODWORD(STACK[0x4B0]) = a3;
  LODWORD(STACK[0x32C]) = a2;
  LODWORD(STACK[0x488]) = v3;
  LODWORD(STACK[0x304]) = v4;
  LODWORD(STACK[0x33C]) = 1918359114;
  v6 = *(v5 + 480);
  v7 = (((a3 ^ 0x43A3D5CD) - 1134810573) ^ ((a3 ^ 0xFEC4AB95) + 20665451) ^ ((a3 ^ 0x9DAED356) + 1649487018)) + (((*(v6 + 72) ^ 0xF8DA135) - 260940085) ^ ((*(v6 + 72) ^ 0xB29233F7) + 1299041289) ^ ((*(v6 + 72) ^ 0x9DD63FCC) + 1646903348)) + 1336776728;
  v8 = (((v3 ^ 0xE78EA50C) + 410082036) ^ ((v3 ^ 0x964DEC50) + 1773278128) ^ ((v3 ^ 0x510AE452) - 1359668306)) + (((*(v6 + 76) ^ 0x3A08837F) - 973636479) ^ ((*(v6 + 76) ^ 0xB81F0A70) + 1205925264) ^ ((*(v6 + 76) ^ 0xA2DE2401) + 1562500095)) - 1876647555;
  v9 = (v8 ^ 0xA16C385E) & (2 * (v8 & 0xB16EB89F)) ^ v8 & 0xB16EB89F;
  v10 = ((2 * (v8 ^ 0xE16C3950)) ^ 0xA005039E) & (v8 ^ 0xE16C3950) ^ (2 * (v8 ^ 0xE16C3950)) & 0x500281CE;
  v11 = v10 ^ 0x50028041;
  v12 = (v10 ^ 0x1000008D) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x400A073C) & v11 ^ (4 * v11) & 0x500281CC;
  v14 = (v13 ^ 0x40020100) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x100080C3)) ^ 0x281CF0) & (v13 ^ 0x100080C3) ^ (16 * (v13 ^ 0x100080C3)) & 0x500281C0;
  *(v6 + 72) = v7 ^ ((v7 ^ 0x47D2EC1A) - 1237897702) ^ ((v7 ^ 0x53E38506) - 1576646906) ^ ((v7 ^ 0x6544BB1B) - 1801357031) ^ ((v7 ^ 0x7F6FEFFB) - 1903546887) ^ 0x2ED390F2;
  *(v6 + 76) = v8 ^ (2 * (((v14 ^ 0x500281CF ^ v15 & (v14 << 8)) << 16) & 0x50020000 ^ v14 ^ 0x500281CF ^ v15 & (v14 << 8) ^ (((v15 ^ 0x5002810F) << 8) & 0x50020000 ^ 0x50020000 ^ (((v15 ^ 0x5002810F) << 8) ^ 0x2810000) & (v15 ^ 0x5002810F)) & (((v14 ^ 0x500281CF ^ v15 & (v14 << 8)) << 16) ^ 0x1CF0000))) ^ 0x31A6160F;
  v16 = *(v5 + 480);
  v17 = (((LODWORD(STACK[0x32C]) ^ 0x29D5A611) - 701867537) ^ ((LODWORD(STACK[0x32C]) ^ 0x769AA726) - 1989846822) ^ ((LODWORD(STACK[0x32C]) ^ 0x7F86AC39) - 2139532345)) - 2020419123 + (((*(v16 + 80) ^ 0x5730C43B) - 1462813755) ^ ((*(v16 + 80) ^ 0x839F5BD3) + 2086708269) ^ ((*(v16 + 80) ^ 0xF46632E6) + 194628890));
  v18 = (v17 ^ 0x3BE03C6E) & (2 * (v17 & 0xBA00804F)) ^ v17 & 0xBA00804F;
  v19 = (2 * (v17 ^ 0x3FE13C7C)) & 0x85E1BC32 ^ 0x84208411 ^ ((2 * (v17 ^ 0x3FE13C7C)) ^ 0xBC37866) & (v17 ^ 0x3FE13C7C);
  v20 = (4 * v18) & v19 ^ v18 ^ ((4 * v18) & 0x80000030 | 0x580B000);
  v21 = (4 * v19) & 0x85E1BC30 ^ 0x80610C33 ^ ((4 * v19) ^ 0x1786F0CC) & v19;
  v22 = (16 * v20) & 0x85E1BC30 ^ v20 ^ ((16 * v20) ^ 0x580B0000) & v21;
  v23 = (16 * v21) & 0x85E1BC30 ^ 0x81E03C03 ^ ((16 * v21) ^ 0x5E1BC330) & v21;
  v24 = v22 ^ (v22 << 8) & 0x85E1BC00 ^ ((v22 << 8) ^ 0x81B00000) & v23 ^ 0x1C00C33;
  v25 = v17 ^ (2 * ((v24 << 16) & 0x5E10000 ^ v24 ^ ((v24 << 16) ^ 0x3C330000) & ((v23 << 8) & 0x5E10000 ^ 0x4410000 ^ ((v23 << 8) ^ 0xE1BC0000) & v23)));
  v26 = (((LODWORD(STACK[0x304]) ^ 0x5A63AC28) - 1516481576) ^ ((LODWORD(STACK[0x304]) ^ 0x9020E24) - 151129636) ^ ((LODWORD(STACK[0x304]) ^ 0x73A80F02) - 1940393730)) - 1331954497 + (((*(v16 + 84) ^ 0x5066A973) - 1348905331) ^ ((*(v16 + 84) ^ 0x3D9D7808) - 1033730056) ^ ((*(v16 + 84) ^ 0x4D327C75) - 1295154293));
  v27 = (v26 ^ 0x40E71959) & (2 * (v26 & 0x90F75D5D)) ^ v26 & 0x90F75D5D;
  v28 = ((2 * (v26 ^ 0x41A7294B)) ^ 0xA2A0E82C) & (v26 ^ 0x41A7294B) ^ (2 * (v26 ^ 0x41A7294B)) & 0xD1507416;
  v29 = v28 ^ 0x51501412;
  v30 = (v28 ^ 0x80006004) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x4541D058) & v29 ^ (4 * v29) & 0xD1507414;
  v32 = (v31 ^ 0x41405010) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x90102406)) ^ 0x15074160) & (v31 ^ 0x90102406) ^ (16 * (v31 ^ 0x90102406)) & 0xD1507410;
  v34 = v32 ^ 0xD1507416 ^ (v33 ^ 0x11004000) & (v32 << 8);
  *(v16 + 80) = v25 ^ 0x99485527;
  *(v16 + 84) = v26 ^ (2 * ((v34 << 16) & 0x51500000 ^ v34 ^ ((v34 << 16) ^ 0x74160000) & (((v33 ^ 0xC0503416) << 8) & 0x51500000 ^ (((v33 ^ 0xC0503416) << 8) ^ 0x50740000) & (v33 ^ 0xC0503416) ^ 0x1000000))) ^ 0xB2BE187F;
  *(v5 + 32) -= 320;
  return (*(v5 + 288))(a1, 227743713);
}

uint64_t sub_1B16ACD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = v34 - 509;
  v40 = (v39 - 103323016) & 0xF7FF9EFA;
  v41 = (*(v35 + 8 * (v39 ^ 0xB2A)))(&STACK[0x520], 0);
  v42 = LODWORD(STACK[0x528]) - 593428799 - ((2 * LODWORD(STACK[0x528])) & 0xB941FD82);
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x520]) + (v40 ^ 0x2D77F20B) - ((2 * LODWORD(STACK[0x520])) & 0xB941FD82);
  LODWORD(STACK[0x514]) = v42;
  v39 += 1296;
  v43 = (*(v35 + 8 * v39))(v41);
  LODWORD(STACK[0x51C]) = v43 - 593428799 - ((2 * v43) & 0xB941FD82);
  v44 = (*(v35 + 8 * v39))();
  LODWORD(STACK[0x510]) = v44 - 593428799 - ((2 * v44) & 0xB941FD82);
  v45 = *v37;
  v46 = 1664525 * (((((v45 >> 30) | 0xE11F29D0) ^ v45 ^ 0xB4508C33) + 1269789645) ^ ((((v45 >> 30) | 0xE11F29D0) ^ v45 ^ 0x1F8E9FDA) - 529440730) ^ ((((v45 >> 30) | 0xE11F29D0) ^ v45 ^ 0x4AC13A39) - 1254177337)) + 629971411;
  v47 = (v46 ^ 0xC93D41B9) & (2 * (v46 & 0xC90165BD)) ^ v46 & 0xC90165BD;
  v48 = ((2 * (v46 ^ 0xD93FC38B)) ^ 0x207D4C6C) & (v46 ^ 0xD93FC38B) ^ (2 * (v46 ^ 0xD93FC38B)) & 0x103EA636;
  v49 = v48 ^ 0x1002A212;
  v50 = (v48 ^ 0xC0424) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0x40FA98D8) & v49 ^ (4 * v49) & 0x103EA634;
  v52 = (v51 ^ 0x3A8010) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x10042626)) ^ 0x3EA6360) & (v51 ^ 0x10042626) ^ (16 * (v51 ^ 0x10042626)) & 0x103EA630;
  v54 = v52 ^ 0x103EA636 ^ (v53 ^ 0x2A2200) & (v52 << 8);
  v37[1] = (LODWORD(STACK[0x510]) ^ 0xDCA0FEC1) + ((v37[1] - 2095864441 + (~(2 * v37[1]) | 0xF9D8B4F3)) ^ v46 ^ (2 * ((v54 << 16) & 0x103E0000 ^ v54 ^ ((v54 << 16) ^ 0x26360000) & (((v53 ^ 0x10148416) << 8) & 0x103E0000 ^ (((v53 ^ 0x10148416) << 8) ^ 0x3EA60000) & (v53 ^ 0x10148416) ^ 0x180000))) ^ 0x6A038C57);
  *(v38 - 124) = (v40 - 304831800) ^ v36;
  *(v38 - 144) = v40 + 1625594136 + v36;
  *(v38 - 140) = ((v40 + 1625594136) ^ 0x7C) - v36;
  *(v38 - 136) = ((v40 + 1625594136) | 1) ^ v36;
  *(v38 - 132) = v36;
  v55 = v38 - 168;
  *(v55 + 16) = v36 ^ 2;
  *(v55 + 48) = a34;
  v56 = (*(v35 + 8 * (v40 & 0xA20CB53)))(v38 - 152);
  return (*(v35 + 8 * *(v38 - 128)))(v56);
}

uint64_t sub_1B16AD0E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, int8x16_t a8, int8x8_t a9)
{
  v14 = a3 - 8;
  v16.val[0].i64[0] = (v12 + v14 - 1) & a6;
  v16.val[0].i64[1] = (v12 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + v14) & 0xFLL ^ 8;
  *(a4 - 8 + v12) = veor_s8(veor_s8(veor_s8(*(v11 + v16.val[0].i64[0] - 7), *(a5 - 8 + v12)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v10 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a8), a9)));
  return (*(v13 + 8 * (((a2 == v14) * a7) ^ a1)))();
}

uint64_t sub_1B16AD0F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_1B16AD218(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1B16AD35C()
{
  v8 = (v1 ^ 0x914A07B7) + v3;
  *(v6 + 4 * v7) = v8 + v1 - (v2 & (2 * v8));
  return (*(v0 + 8 * ((30 * (v4 & ~((v5 - 615) ^ (HIDWORD(v8) == 0)))) ^ v5)))();
}

uint64_t sub_1B16AD468@<X0>(int a1@<W3>, int a2@<W4>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q2>, int8x16_t a7@<Q3>, int32x4_t a8@<Q4>, int8x16_t a9@<Q5>)
{
  v14 = v13 + 4 * v10;
  a9.i32[0] = *(v14 + 4);
  a9.i32[1] = *(v13 + 4 * (v11 ^ (a1 + 254) ^ 0x100 | v10));
  a9.i32[2] = *(v14 + 12);
  v15 = vextq_s8(a4, a9, 0xCuLL);
  v16 = a9;
  v16.i32[3] = *(v13 + 4 * (v10 + 4));
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a6), vandq_s8(v15, a5)), 1uLL), *(v14 + 1588));
  v15.i32[0] = *(a3 + 4 * (*(v14 + 4) & 1));
  v15.i32[1] = *(a3 + 4 * (*(v13 + 4 * (v11 ^ (a1 + 254) ^ 0x100 | v10)) & 1));
  v15.i32[2] = *(a3 + 4 * (*(v14 + 12) & 1));
  v15.i32[3] = *(a3 + 4 * (v16.i8[12] & 1));
  *v14 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a7)), a8), v15);
  return (*(v12 + 8 * (((v10 == 220) * v9) ^ (a2 + v11 + 325))))();
}

uint64_t sub_1B16AD470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 2066391179 * (&a13 ^ 0xAF278218) + 308;
  a14 = &a9;
  v17 = (*(v15 + 17448))(&a13);
  return (*(v15 + 8 * ((1814 * (a13 == 296339821)) ^ v16)))(v17);
}

uint64_t sub_1B16AD4D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v19 = 109 * (a2 ^ 0x4E);
  v14 = 1785193651 * ((v13 - 120) ^ 0x2CB75BE8);
  *(v13 - 120) = (a2 + 1397) ^ v14;
  *(v13 - 104) = a12 - v14 - 470371960;
  *(v13 - 112) = v13 - 220;
  v15 = (*(v12 + 8 * (a2 ^ 0x8C3)))(v13 - 120);
  v16 = *(v13 - 152);
  *(v13 - 220 + (v16 & 0x3F)) = -2;
  return (*(v12 + 8 * ((((v16 & 0x3Fu) > 0x37) * (v19 + 472)) ^ a2)))(v15);
}

uint64_t sub_1B16AD5C8()
{
  v2 = 433 * (v0 ^ 0x708);
  v3 = (*(v1 + 8 * (v2 + 875)))(1576, 0x105004009637391);
  STACK[0x330] = v3;
  return (*(v1 + 8 * (((v3 == 0) * ((v2 + 725) ^ v2 ^ 0x1A3 ^ 0x353)) ^ v2)))();
}

uint64_t sub_1B16AD658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = LODWORD(STACK[0x2A0]) - 2018;
  v53 = *(v51 + 136);
  STACK[0x318] = *(v50 + 8 * (LODWORD(STACK[0x2A0]) - 1966));
  STACK[0x2D0] = v53;
  *(v51 + 200) = a50;
  v54 = *(v53 + 68);
  *(v53 + (v54 & 0x3F)) = -2;
  return (*(v50 + 8 * ((331 * ((v54 & 0x3Fu) > 0x37)) ^ v52)))(a1, 227743713);
}

uint64_t sub_1B16ADB30@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24)
{
  v29 = (v25 - 1681886632) & 0x643F8D9B;
  *(&a24 + v24 + a3) = vadd_s8(vsub_s8(*(a2 + v24), vand_s8(vadd_s8(*(a2 + v24), *(a2 + v24)), v27)), v28);
  v30 = ((v29 + 473) ^ 0x263) + v24 != ((v29 ^ 0xEA) & a1);
  return (*(v26 + 8 * ((4 * v30) | (8 * v30) | v29)))();
}

uint64_t sub_1B16ADF68@<X0>(int a1@<W8>)
{
  v4 = a1 + 614;
  (*(v1 + 8 * (a1 + 1681)))(*v6);
  *(v3 - 216) = (v4 - 875955213) ^ (1564307779 * ((((2 * (v3 - 216)) | 0x84237A64) - (v3 - 216) + 1039024846) ^ 0x551C7121));
  result = (*(v1 + 8 * (v4 + 1001)))(v3 - 216);
  *(v2 + 32) = v7;
  return result;
}

uint64_t sub_1B16AE138()
{
  v5 = *(v4 + 136);
  v6 = 742307843 * ((v3 - 1032807984 - 2 * ((v3 - 216) & 0xC2709AA8)) ^ 0x9F0CE5D2);
  *(v3 - 216) = -473373760 - v6 + v0 + 26;
  *(v3 - 196) = 1267016942 - v6;
  *(v2 + 8) = v5;
  v7 = (*(v1 + 8 * (v0 + 2115)))(v3 - 216);
  STACK[0x3E8] = *(v1 + 8 * v0);
  v8 = STACK[0x298];
  STACK[0x500] = v5;
  LODWORD(STACK[0x50C]) = 1963376785;
  STACK[0x2E8] = v8;
  return (*(v1 + 8 * ((115 * ((((v0 ^ 0x45A) + 245548985) & 0xF15D37BB) - 960 + (*(v5 + 68) & (((v0 ^ 0x45A) - 1936402590) & 0x736B27FF ^ 0x341)) > 0xFFFFFFBF)) ^ v0 ^ 0x45A)))(v7, 225);
}

uint64_t sub_1B16AE268(_DWORD *a1)
{
  v2 = *a1 ^ (1037613739 * (a1 ^ 0xD1022D7F));
  result = (*(*(&off_1F2870B00 + (v2 + 1776823352)) + (v2 + 1776825452) - 1))(*(&off_1F2870B00 + (v2 ^ 0x9617D452)) - 4, sub_1B16BE14C);
  v4 = **(&off_1F2870B00 + (v2 ^ 0x9617D474));
  if (result)
  {
    v4 = -296315949;
  }

  a1[1] = v4;
  return result;
}

void sub_1B16AE324(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) ^ (1388665877 * (((a1 | 0x3647F9EA) - (a1 | 0xC9B80615) - 910686699) ^ 0xBBEA9B06));
  v2 = 742307843 * (&v5 ^ 0x5D7C7F7A);
  v6 = v4;
  v5 = v1 - v2 - 473373692;
  v7 = 1267016942 - v2;
  v3 = *(&off_1F2870B00 + (v1 ^ 0x5B)) - 8;
  (*&v3[8 * v1 + 17256])(&v5);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1B16AE528@<X0>(int a1@<W8>)
{
  v10 = v2 + 1;
  v11 = v1 < v4;
  *(*(v8 + 8) + 4 * v10) = *(*(v8 + 8) + 4 * (v10 + a1));
  if (v11 == v5 + v10 < v6)
  {
    v11 = v5 + v10 < v1;
  }

  return (*(v9 + 8 * ((v11 * v7) ^ v3)))();
}

uint64_t sub_1B16AE74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{
  v69 = 1388665877 * ((757776840 - (v67 | 0x2D2AC1C8) + (v67 | 0xD2D53E37)) ^ 0x5F785CDB);
  v70 = *(STACK[0x240] + 52) + v69 + (((v63 - 576) | 0x18) ^ 0xF8F2E356);
  *(v68 - 216) = ((v64 ^ 0xE7BF6ACF) + ((2 * v64) & 0xCF7ED59E) + 1548983844 + ((v63 - 315) | 0x88)) ^ v69;
  *(v68 - 212) = v70;
  v71 = (v68 - 216);
  v71[5] = v66;
  *(v68 - 192) = (v63 - 613) ^ v69;
  *(v68 - 184) = a62 - v69 + 1487362392;
  v71[1] = v65;
  v71[2] = &STACK[0x530];
  v72 = (*(v62 + 8 * (v63 + 1546)))(v68 - 216);
  v73 = *(v68 - 188);
  LODWORD(STACK[0x358]) = v73;
  return (*(v62 + 8 * ((126 * (v73 == 296339821)) | v63)))(v72, v65);
}

uint64_t sub_1B16AE878@<X0>(int a1@<W8>)
{
  v6 = (v4 + v1 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v3 + 8 * ((14 * (((((((v2 - 29707770) & 0x1C54DF7) - 102) & a1) == 16) ^ (19 * ((v2 + 6) & 0xF7 ^ 0x8B))) & 1)) ^ (v2 - 29707770) & 0x1C54DF7u)))();
}

uint64_t sub_1B16AE8E4(int8x16_t a1, int8x16_t a2)
{
  v8 = v2 + 2;
  v9 = v4 + 2;
  v10 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a1)), a2);
  v9[-1] = vaddq_s8(vsubq_s8(v8[-1], vandq_s8(vaddq_s8(v8[-1], v8[-1]), a1)), a2);
  *v9 = v10;
  return (*(v7 + 8 * (((v3 != 32) * ((v5 + 917) ^ v6)) ^ (v5 + 1454))))();
}

uint64_t sub_1B16AECD0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1B16AEE94(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v20) = a1 ^ v18;
  LODWORD(v20) = a1 ^ 0x20000000;
  v21 = (v20 >> 27) + (a3 ^ v16 ^ v11 ^ a2) + (((v13 ^ 0x6187D8D8) - 1636292824) ^ ((v13 ^ 0x1C6B1373) - 476779379) ^ (((v8 + 2061860219) & 0x851A82F7 ^ v13 ^ 0x5D256410) - 1562732197)) - 1150992233 + (((*(v15 + 4 * (a8 + v12)) ^ 0xD85B054B) + 665123509) ^ ((*(v15 + 4 * (a8 + v12)) ^ 0xA4B9B109) + 1531334391) ^ ((*(v15 + 4 * (a8 + v12)) ^ 0x6D4B7D2F) - 1833663791));
  v22 = (v21 ^ 0xF1CE3171) & (2 * (v21 & 0xE5E82185)) ^ v21 & 0xE5E82185;
  v23 = ((2 * (v21 ^ 0xB2CE3079)) ^ 0xAE4C23F8) & (v21 ^ 0xB2CE3079) ^ (2 * (v21 ^ 0xB2CE3079)) & v9;
  v24 = v23 ^ 0x51221004;
  v25 = (v23 ^ 0x6000038) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x5C9847F0) & v24 ^ (4 * v24) & v9;
  v27 = (v26 ^ 0x540001F0) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x326100C)) ^ 0x72611FC0) & (v26 ^ 0x326100C) ^ (16 * (v26 ^ 0x326100C)) & (v9 - 12);
  v29 = v27 ^ v9 ^ (v28 ^ 0x52201100) & (v27 << 8);
  return (*(v14 + 8 * ((247 * (a8 + 1 == v17 + 24)) ^ v8)))(v21 ^ (2 * ((v29 << 16) & 0x57260000 ^ v29 ^ ((v29 << 16) ^ 0x11FC0000) & (((v28 ^ 0x506003C) << 8) & 0x57260000 ^ 0x51260000 ^ (((v28 ^ 0x506003C) << 8) ^ 0x26110000) & (v28 ^ 0x506003C)))) ^ 0x4925AF73u, a1, v10 ^ __ROR4__(a2, 2));
}

uint64_t sub_1B16AF100(uint64_t a1, uint64_t a2)
{
  v8 = v3 + v4 + v2;
  *(v5 + 392) = v8;
  *(a2 + v8) = (&STACK[0x4B8] ^ 0x46 ^ (v6 - 3) ^ 0x77) * (&STACK[0x4B8] + 17);
  return (*(v7 + 8 * ((38 * (v8 == 0)) ^ (v6 - 1283))))();
}

void sub_1B16AF154(uint64_t a1)
{
  (*(v1 + 17896))();
  (*(v1 + 17160))(a1);
  JUMPOUT(0x1B16AB12CLL);
}

uint64_t sub_1B16AF244@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = (v9 - 1);
  *(a5 + v12) = *(a6 + v12) ^ *(v8 + (((v10 + 2019) ^ a3) & v12)) ^ *((((v10 + 2019) ^ a3) & v12) + a7 + 5) ^ *((((v10 + 2019) ^ a3) & v12) + v7 + 1) ^ ((((v10 - 29) ^ a3) & v12) * a4) ^ 0x7E;
  return (*(v11 + 8 * ((((((v10 + 2019 + a1) & a2) - 65) ^ 6) * (v12 != 0)) ^ (v10 + 1560))))();
}

uint64_t sub_1B16AF2B4()
{
  result = (*(v2 + 8 * ((v0 + 482) ^ 0xDF5)))(*v3, *v1, (v0 - 635941747 + *(v1 + 8)));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return result;
}

uint64_t sub_1B16AF5B8@<X0>(int a1@<W6>, int a2@<W7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, char a42)
{
  v46 = STACK[0x2E8] + a3;
  v47 = v45[58];
  v45[36] = *(v43 + 8 * v42);
  v45[60] = v47;
  v45[61] = v46;
  v48 = v45[4];
  v49 = (&STACK[0x540] + v48);
  v45[62] = &STACK[0x540] + v48;
  v45[4] = v48 + 320;
  LODWORD(STACK[0x4B0]) = *(v47 + 72);
  LODWORD(STACK[0x488]) = *(v47 + 76);
  LODWORD(STACK[0x32C]) = *(v47 + 80);
  LODWORD(STACK[0x304]) = *(v47 + 84);
  v50 = *(v47 + 96);
  if (v50 == 2)
  {
    LODWORD(STACK[0x34C]) = *(v47 + 88);
    LODWORD(STACK[0x33C]) = 1918359050;
    return (*(v43 + 8 * ((905 * (v44 + 1918359050 < ((29 * (a2 ^ 0x7EC) - 77) ^ 0x67u))) | (29 * (a2 ^ 0x7EC)))))();
  }

  else
  {
    if (v50 != 1)
    {
      JUMPOUT(0x1B16B799CLL);
    }

    v51 = *(v46 + (v44 + 1918359050)) ^ 0x7E;
    v52 = ((*(v46 + (v44 + 1918359052)) ^ 0x7E) << 16) | ((*(v46 + (v44 + 1918359053)) ^ 0x7E) << 24) | v51 & 0xFFFF00FF | (((a42 ^ *(v46 + (v44 + 1918359051))) ^ 0x7C) << 8);
    *v49 = v52 + a1 - 2 * (v52 & (a1 + 18) ^ v51 & 0x12);
    return (*(v43 + 8 * ((61 * ((v44 + 1918359054) < 0x40)) ^ (a2 - 1115))))();
  }
}

void sub_1B16AF688(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v9 = (((&a3 | 0xD4D32CA6) - (&a3 & 0xD4D32CA6)) ^ 0xB58BA776) * a1;
  a4 = v7 - v9 - 1188;
  a3 = 0;
  a6 = 1696005617 - v9;
  a7 = v9 ^ 0xB74A6C2F;
  (*(v8 + 8 * (v7 ^ 0xD2F)))(&a3);
  JUMPOUT(0x1B16AF704);
}

uint64_t sub_1B16AF78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35, uint64_t a36, int a37)
{
  v42 = __ROR8__((((v38 >> 37) ^ 0x726BFC1A927F34B9) & ((v38 << 27) ^ 0x81ADD7879FFFFFFFLL) | (v38 << 27) & 0x8D9403E568000000) ^ 0x853C3005FBFF636DLL, 27);
  v43 = ((v41 - 263) + 0x6FF311DF408C623ELL) ^ v42 ^ v37;
  v44 = v40 ^ a36 ^ a3;
  v45 = ((v42 ^ a2 ^ 0x9CEB7ACF3554852ELL) & (v42 ^ v37 ^ 0x68F14E58E936564ELL) ^ v43 & 0x3EA44F60CA273B33 ^ 0xF9FFB0FF77DDC5CCLL) - (v42 ^ a2 ^ 0xA54D6A2856C98026 ^ v43);
  v46 = v44 & 0xDEA890AB5EF4BBELL ^ v42 ^ a2 ^ (v40 ^ a36 ^ (v41 - 450) ^ 0xA049D6D33EBEE8D2) & (v44 ^ 0x30C6C1C48A3C940BLL) ^ 0x4BD328805C8696C4;
  v47 = v42 & 0x25FC2B85CD5B505DLL ^ v44 ^ (v42 ^ 0xD70BB1575C64E88CLL) & (v37 ^ 0x65F92B7587F61160);
  v48 = v40 ^ a36 ^ 0x44FDC3F6A8888EC3 ^ v46;
  v49 = (v42 ^ a2 ^ 0x2ED99138901D2B1CLL) & (v40 ^ a36 ^ 0x525CA02674AE59EFLL) ^ (v40 ^ a36) & 0x8C96A4976F6E9501 ^ v43;
  v50 = (v44 ^ 0xCF393E3B75C36BF4) & (v37 ^ 0xCC8D9758DD319222);
  v51 = v44 & 0x7377685768632CE0 ^ 0x43312813604328E0 ^ v50;
  v52 = v46 ^ v49;
  v53 = v46 ^ v49 ^ 0xCC19EEF1C96CE1EBLL;
  v54 = v48 & 1;
  if ((v48 & 1 & v50) != 0)
  {
    v54 = -v54;
  }

  v55 = (v54 + v51) ^ v48 & 0xFFFFFFFFFFFFFFFELL;
  v56 = v47 ^ v37 ^ v45;
  v57 = v55 ^ 0x33BBB51F3DC59DA9 ^ (8 * (v55 ^ 0x33BBB51F3DC59DA9));
  *(&v58 + 1) = v55 ^ 0x33BBB51F3DC59DA9;
  *&v58 = v55;
  v59 = (v58 >> 39) & 0x41243BE5EDFFFFFFLL ^ v57 & 0x77C65610C849375CLL ^ (v57 ^ 0x8810898124100003) & ((v55 >> 61) ^ 0x8839A9EF37B6C8A7) ^ (v57 & 0x7FBB0C30214A2B7 ^ 0xBFF0E45810B0DBA2 ^ (v57 ^ 0x12B2042020480B4) & ((v55 >> 61) ^ 0x7FBB0C30214A2B3)) & (((v55 ^ 0x33BBB51F3DC59DA9) << 25) ^ 0x78906479AAFCFBB7);
  v60 = v59 ^ 0x6C471450416FF19;
  v61 = v47 ^ 0xD3C2DAD50F2833DDLL ^ (v47 >> 1) ^ (((v47 ^ 0xD3C2DAD50F2833DDLL) << 63) | 0x7FFFFFFFFFFFFFFFLL) & ((v47 >> 6) ^ 0xCAD38D1E912EE523) ^ ((v59 ^ 0x6C471450416FF19) + ((v47 << 58) ^ 0x1000000000000000) - 2 * ((v59 ^ 0x6C471450416FF19) & ((v47 << 58) ^ 0x1000000000000000)));
  v62 = v49 ^ 0x7A0BAAAAED9F4E2 ^ (v49 >> 7);
  v63 = (v56 >> 17) ^ (v56 >> 10) ^ v56 ^ 0xFC81A4CE0DC9C27FLL ^ ((v56 ^ 0xFC81A4CE0DC9C27FLL) << 47) ^ ((v56 ^ 0xFC81A4CE0DC9C27FLL) << 54);
  v64 = v63 ^ 0xB87B5359E61D674FLL;
  *(&v58 + 1) = v49 ^ 0x7A0BAAAAED9F4E2;
  *&v58 = v49;
  v65 = ((v49 ^ 0x7A0BAAAAED9F4E2) << 57) ^ ((v49 ^ 0x7A0BAAAAED9F4E2) << 23) ^ __ROR8__((v58 >> 44) & 0xE0000000000FFFFFLL ^ 0x6263B1018F5DF67FLL ^ (((v62 >> 3) ^ 0x94A8214B47581CA1) & ((v62 << 61) ^ 0x3FFFFFFFFFFFFFFFLL) & 0x9FFFFFFFFFFFFFFFLL | ((v62 & 3) << 61)), 61);
  *(&v58 + 1) = v53;
  *&v58 = v52;
  v66 = v53 ^ __ROR8__(v53, 19) ^ (v58 >> 28) ^ v65;
  v67 = v66 ^ 0x90D90983D10862E5;
  v68 = v63 ^ 0xB87B5359E61D674FLL ^ v65;
  v69 = (v68 ^ 0xA840D304AE64AD3CLL) & (v66 ^ 0x90D90983D10862E5);
  v70 = v66 & 0xAEBC6F8B69D11590;
  v71 = (v61 ^ 0x10F31DC04BAE8972) & (v63 ^ 0x9E0972BD954447CLL);
  v72 = v61 & 0x7232B9350C4D898FLL;
  v73 = (v59 ^ 0x6C471450416FF19) & (~(2 * v67) + v67);
  v74 = v59 & 0xC6F72021625D4D76 ^ v67 ^ (v61 ^ 0x29FBC21ED60C3BFBLL) & (v59 ^ 0xF93B8EBAFBE900E6);
  v75 = (v63 ^ 0x7A44130ADA89C8D1) & (v68 ^ 0xF9034370384A4753) ^ v68 & 0xFE69C2EBF06FFADDLL ^ v61;
  v76 = ((v74 & 0xE0096EE0D8B2C64DLL ^ 0x7154661EFE167CA7) & (v74 & 0x1FF6911F274D39B2 ^ 0xFB6F7FFFDDF6FFCDLL) | v74 & 0xEA2910101490110) ^ 0xFA4026B71F2EDC46;
  if ((v73 & 0x100000000 & v68) != 0)
  {
    v77 = -(v73 & 0x100000000);
  }

  else
  {
    v77 = v73 & 0x100000000;
  }

  v78 = (v77 + (v68 ^ 0xF9034370384A4753)) ^ v73 & 0xFFFFFFFEFFFFFFFFLL;
  v79 = v72 ^ v60 ^ v71 ^ v76;
  v80 = v79 ^ 0xBAD81A8D783AF991;
  v81 = v76 ^ v78;
  v82 = v81 ^ 0xE74B4F7DA054C546;
  v83 = v70 ^ v64 ^ v69 ^ v75;
  if ((v81 & 0x8000) != 0)
  {
    v84 = 0x8000;
  }

  else
  {
    v84 = -32768;
  }

  v85 = v84 + v82;
  *(&v86 + 1) = v83 ^ 0x256;
  *&v86 = v83 ^ 0x56B371002B574C00;
  v87 = (v86 >> 10) - ((2 * (v86 >> 10)) & 0x8BA509A145691E58);
  *(&v86 + 1) = v79 ^ 0xBAD81A8D783AF991;
  *&v86 = v79;
  v88 = v86 >> 39;
  *&v86 = __ROR8__(v80, 61);
  v89 = ((v88 ^ v86 ^ 0x10B8366C708B7234) - ((2 * (v88 ^ v86 ^ 0x10B8366C708B7234)) & 0x6D3504A46C24FDC0) - 0x49657DADC9ED8120) ^ v80;
  *(&v86 + 1) = v83 ^ 0x80C661155AC884A3;
  *&v86 = v70 ^ v64 ^ v69 ^ v75;
  v90 = (((v87 + 0x45D284D0A2B48F2CLL) ^ (v86 >> 17) ^ 0xA0A82F891A349A87) - 2 * (((v87 + 0x45D284D0A2B48F2CLL) ^ (v86 >> 17) ^ 0xA0A82F891A349A87) & 0x56751015719FCAFDLL ^ ((v87 + 0x45D284D0A2B48F2CLL) ^ (v86 >> 17)) & 8) - 0x298AEFEA8E60350BLL) ^ v83 ^ 0x80C661155AC884A3;
  v91 = ((v78 >> 41) | (v78 << 57)) ^ (v78 >> 7) ^ 0x8B347079F14E1CF4 ^ ((v78 ^ 0x9A383CF881807545) << (~((v75 >> 1) & 0x17 ^ 0xED) & 6) << (((v75 >> 1) & 0x17 ^ 0xED) & 0x11 ^ 0x10) << ((v75 >> 1) & 0x17 ^ 4));
  v92 = v78 ^ 0x9A48FC1D541EAA4 ^ (v91 - ((2 * v91) & 0x27396672A9833FC2) - 0x6C634CC6AB3E601FLL);
  v93 = (((v75 << 63) | 0x60C1198E434CFB6DLL) ^ v75 & 0x9B6535C14F352826) & 0x4A6525414110B802 ^ __ROR8__(v75, 6) ^ (((v75 << 63) | 0x60C1198E434CFB6DLL) ^ v75 & 0x9B6535C14F352826 ^ 0x851AD2B0B0A704B4) & (v75 & 0x649ACA3EB0CAD7D9 ^ 0xD5981A8A0E67973DLL) ^ 0x65CDEA4B1037B72CLL ^ v89;
  v94 = (v93 - ((2 * v93) & 0xFF8B99EC67CA812ELL) + 0x7FC5CCF633E54097) ^ (v75 >> 1);
  v95 = v92 ^ v82 ^ (v85 << 45) ^ (((v85 >> 28) ^ (v82 >> 19) ^ (v85 << 36) ^ 0x8000000000000) - 2 * (((v85 >> 28) ^ (v82 >> 19) ^ (v85 << 36) ^ 0x8000000000000) & 0xFFAE59AF741A13FLL ^ ((v85 >> 28) ^ (v82 >> 19)) & 0x35) - 0x70051A6508BE5EF6);
  v96 = v95 ^ 0x9FFAE59AF741A10ALL;
  v97 = v92 ^ v90;
  v98 = v94 ^ 0x425CB2C85BE245E4 ^ v92 & ~v90;
  v99 = (v94 ^ 0x425CB2C85BE245E4) & ~v89 ^ v95 ^ 0x9FFAE59AF741A10ALL;
  v100 = (v95 ^ 0x60051A6508BE5EF5) & v89 ^ v97;
  v101 = v99 + v89 - 2 * ((v95 ^ 0x9FFAE59AF741A10ALL) & v89);
  v102 = (v62 >> 3) & 1;
  v103 = v99 ^ v100 ^ 0x6E04C15915AB860ALL;
  v104 = v103 >> 19;
  *(&v86 + 1) = (v103 >> 19) & v103 & 0x1A36E0206AEDLL ^ (v103 >> 28) ^ (((v103 >> 19) | v103) & 0xD8807A36E0206AEDLL | (v103 >> 19) & 0x5C91FDF9512 ^ v103 & 0x277F85C91FDF9512);
  *&v86 = (v103 << 36) ^ (v103 << 45) ^ *(&v86 + 1);
  v105 = v101 ^ (v94 ^ 0xBDA34D37A41DBA1BLL) & v90;
  v106 = v98 ^ v90 ^ v96 & ((v97 - ((2 * v97) & 0x4BCF7563A6B4D67ELL) - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ 0x7370AC685030CB36;
  v107 = (v105 >> 39) ^ (v105 >> 61) ^ (8 * (v105 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v105 ^ 0x3278F838FE43D2BCLL) - (((v105 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v105 ^ 0x3278F838FE43D2BCLL))));
  v108 = v107 ^ 0x64F1F1;
  v109 = v100 ^ 0x26974B18501E2B14 ^ ((v100 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v100 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v100 ^ 0x26974B18501E2B14) << 23) ^ ((v100 ^ 0x26974B18501E2B14) << 57);
  v110 = v98 ^ 0x7955EAEC4D48B80CLL ^ (v98 << 63) ^ __ROR8__(v98 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v98 ^ 0x7955EAEC4D48B80CuLL) >> v102 >> (v102 ^ 1u));
  v111 = v107 ^ 0x64F1F1 ^ v110;
  v112 = (v106 >> 17) ^ __ROR8__(v106, 10) ^ __ROR8__(__ROR8__(v106, 14) & 0xFFFC000000000007 ^ __ROR8__(v106, 61), 3);
  v113 = (((v111 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v111 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v112;
  *&v86 = __ROR8__(__ROR8__(v109, 7) ^ __ROR8__(__ROR8__(v86 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v114 = v109 & ~v112 ^ v111;
  v115 = v86 ^ 0xBBDB0FB7A00B9120 ^ (v107 ^ 0xFFFFFFFFFF9B0E0ELL) & v110;
  v116 = v107 ^ v113 ^ v115 ^ 0x425764BB58132BD4;
  v117 = (v86 ^ 0x4424F0485FF46EDFLL) & v108 ^ v112 ^ v109;
  v118 = v115 ^ 0x97F6A7E5F6E8F58ALL ^ v117;
  v119 = (v117 ^ -v117 ^ (0x70C7A8D3F3643DFDLL - (v117 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v120 = v112 ^ 0x44C9D571A5C4A51CLL ^ v114 ^ (v86 ^ 0xBBDB0FB7A00B9120) & ~(v112 ^ v109);
  v121 = v114 ^ 0xD3DA1E3360BF843ALL ^ ((v114 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v114 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v123 = __ROR8__(__ROR8__(v116, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v116 ^ (8 * v116) ^ ((v116 >> 61) | (v116 << 25)), 23) ^ 0x735302FC48340548, 41);
  v124 = (v119 >> 7) ^ (v119 >> 41) ^ (v119 << 23) ^ (v119 << 57);
  v125 = v124 ^ v119;
  v126 = v118 ^ (v118 >> 28) ^ (v118 >> 19) ^ (v118 << 36) ^ (v118 << 45) ^ v124 ^ v119;
  v127 = v121 & 0xFFFFFFF7FFFFFFFFLL ^ (v114 << 63) ^ (v121 & 0x800000000 | ((v114 ^ 0xD3DA1E3360BF843ALL) << (v104 & 0x12) << (v104 & 0x12 ^ 0x3A))) ^ v123;
  if (v124 == v119)
  {
    v128 = 0;
  }

  else
  {
    v128 = v120 << 47;
  }

  v129 = v123 ^ 0x7E241A02A439A981;
  v122 = (v120 ^ (v120 >> 10) | (v120 << 54)) ^ (v120 << 54) & v120;
  v130 = (v128 ^ v122 | (v120 << 47)) ^ (v122 & (v120 << 47) & 0xFFFF800000000000 | (v120 >> 17));
  v131 = v127 ^ 0x7E241A02A439A981;
  v132 = v130 & (v127 ^ 0x81DBE5FD5BC6567ELL);
  v133 = v130 ^ v125 ^ v129 & ~v126;
  v134 = (~(2 * v129) + v129) & (v127 ^ 0x7E241A02A439A981) ^ v126;
  v135 = v133 ^ v134;
  v136 = v133 ^ v134 ^ 0x93C23431B76D41FLL;
  *(&v137 + 1) = v136;
  *&v137 = v133 ^ v134;
  v138 = v129 ^ 0x6005BE354A5BB0B2 ^ v134;
  v139 = v125 & ~v130 ^ v131;
  v140 = v126 & ~(v130 ^ v125) ^ v130 ^ v139;
  v141 = (v137 >> 62) ^ (4 * (v136 >> 28)) ^ 0x406FF36C296024B3;
  v142 = ((v138 ^ v132) << (v125 & 3) << (v125 & 3 ^ 3)) ^ v138 ^ v132 ^ (((v138 ^ v132) >> 39) ^ ((v138 ^ v132) >> 61) | ((v138 ^ v132) << 25));
  *(&v137 + 1) = v136;
  *&v137 = v135;
  v143 = ((v137 >> 19) ^ __ROR8__(v141, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v144 = v139 ^ 0x6DC4FB0BD4FFFF44 ^ ((v139 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v139 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v139 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v139 << 63));
  v145 = v133 ^ 0x2DB5B6AF87F64351 ^ ((v133 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v133 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v133 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v133 ^ 0x2DB5B6AF87F64351) >> 41);
  v146 = v142 ^ v144;
  v147 = __ROR8__(v140 ^ 0xF374A001D380BDC2, 17) ^ ((v140 ^ 0xF374A001D380BDC2) >> 10) ^ (((v140 ^ 0xF374A001D380BDC2) << 54) | (v140 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v140 ^ 0xF374A001D380BDC2) << 54) & (v140 ^ 0xF374A001D380BDC2) | v140 & 0x20);
  v148 = v145 ^ (v136 << 36) ^ (((2 * v143) & 0xFFFFFFFF18D20D4ALL) + (v143 ^ 0xFFFFFFFF8C6906A5));
  v149 = v148 ^ v144 & ~v142;
  v150 = v142 & ~v148 ^ v147 ^ v145;
  v151 = v145 & ~v147 ^ v146;
  v152 = v142 ^ v147 & ~v146 ^ 0x62030E578F798D5ALL ^ v149;
  *(&v137 + 1) = (v150 ^ -v150 ^ (v149 - (v150 ^ v149))) + v149;
  *&v137 = *(&v137 + 1) ^ 0x69309AC4CAE2F93;
  v153 = *(&v137 + 1) ^ 0x69309AC4CAE2F93 ^ __ROR8__(*(&v137 + 1) ^ 0x69309AC4CAE2F93, 19) ^ (v137 >> 28);
  *(&v137 + 1) = v151 ^ 0xC39D9869C05A48AELL;
  *&v137 = v151;
  v154 = v137 >> 6;
  *(&v137 + 1) = v151;
  *&v137 = v151 ^ 0xC39D9869C05A48AELL;
  return (*(v39 + 8 * (v41 ^ (110 * (a35 > 2 * (a37 & 1) + (a37 ^ 1u))))))(v154, v153 ^ 0xCAE2F93000000000, v154 ^ v151 ^ 0xC39D9869C05A48AELL ^ (v137 >> 1) ^ 0x30E7661A7016922, a4, (8 * v152) ^ (v152 >> 39) ^ ((v152 >> 61) | v152), a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B16B0860(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, int a18, unsigned int a19)
{
  v20 = a2 + a8 + 682;
  v21 = a16 + 1354487929 < (v20 ^ 0x50BBDC3Au);
  v22 = v20 | 0xD0;
  if (a19 < 0x50BBD839 != v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = a16 + 1354487929 > a19;
  }

  return (*(v19 + 8 * ((v23 * (v22 ^ 0x4B9)) ^ (a2 + a8 + 460))))();
}

uint64_t sub_1B16B0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19)
{
  v26 = 1037613739 * (((&a15 | 0x6C3F62D0) - &a15 + (&a15 & 0x93C09D28)) ^ 0xBD3D4FAF);
  a15 = v20;
  a16 = a11;
  a18 = (v25 + 961) ^ v26;
  a19 = (v21 ^ 0x78BDB5FA) - v26 - 1217921378 + ((v21 << ((v25 ^ (v24 - 102)) + 5)) & 0xF17B6BF4);
  (*(v23 + 8 * (v25 + 1756)))(&a15);
  v27 = 742307843 * ((2 * (&a15 & 0x36485668) - &a15 + 1236773268) ^ 0x14CBD6EE);
  a16 = a11;
  a17 = v27 + 111267003 * v19 + 22556109;
  LODWORD(a15) = v27 + v25 + 1404;
  v28 = (*(v23 + 8 * (v25 + 1642)))(&a15);
  return (*(v23 + 8 * ((1759 * (HIDWORD(a15) == v22)) ^ v25)))(v28);
}

uint64_t sub_1B16B09BC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (a1 - 836) | 8;
  v13 = a1 - 80;
  v14 = a1 + 550;
  *(v11 - 120) = v9;
  *(v11 - 112) = a6;
  *(v11 - 136) = a8;
  *(v11 - 128) = v9;
  *(v11 - 104) = a1 + 1082434553 * ((v11 - 425142735 - 2 * ((v11 - 136) & 0xE6A8D6B9)) ^ 0x7DEF2033) - 1223;
  v15 = (*(v10 + 8 * (a1 ^ 0xE3D)))(v11 - 136);
  return (*(v10 + 8 * ((((v13 ^ (((v8 >> 2) & a5) == 0)) & 1) * (v12 - 715)) | v14)))(v15);
}

uint64_t sub_1B16B0AD4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = 742307843 * ((2 * (a1 & 0x2B3B9499) - a1 - 725324954) ^ 0x89B8141C);
  v3 = *(a1 + 8);
  v4 = *(a1 + 32) ^ v2;
  v5 = *(a1 + 24);
  v6 = 1564307779 * ((&v10 & 0x44C34189 | ~(&v10 | 0x44C34189)) ^ 0x2C317265);
  v7 = *a1 - v2 + v6 - 1156288641;
  v11 = *(a1 + 16);
  v8 = v3 + 1197042481 + v2;
  v12 = v7;
  v13 = v8 - v6 + 1953;
  v10 = (v4 ^ ((v4 ^ 0xF9659E48) + 925937989) ^ ((v4 ^ 0x5283B46A) - 1663657113) ^ ((v4 ^ 0xE5B1C12E) + 736423459) ^ ((v4 ^ 0x7FFD3BFF) - 1314384652) ^ 0x9EF854A) + v6;
  v14 = v5;
  result = (*(*(&off_1F2870B00 + v8) + v8 + 2055))(&v10);
  *(a1 + 4) = v15;
  return result;
}

uint64_t sub_1B16B0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unsigned int a28, unsigned int a29, unsigned int a30, unsigned int a31, int a32, int a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, uint64_t a49, __int128 a50, __int128 a51, __int128 a52, __int128 a53)
{
  LODWORD(v129) = 725383057;
  v125 = (a8 - 1658699103) & 0xBED06F76;
  v126.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v126.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v127 = vdupq_n_s32(0x11A9C97Du);
  v128 = vdupq_n_s32(0x11A9C96Du);
  v130 = *(v54 + 8 * (a3 + v53 - 915));
  v59 = a30;
  v58 = a31;
  if (a34 == 2)
  {
    v131 = vld4q_s8(&a18 + 4);
    v88 = veorq_s8(v131.val[0], v126);
    v89 = vmovl_high_u8(v88);
    v90 = vmovl_u8(*v88.i8);
    v91 = veorq_s8(v131.val[1], v126);
    _Q21 = vmovl_high_u8(v91);
    _Q20 = vmovl_u8(*v91.i8);
    v94 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v95 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v96 = veorq_s8(v131.val[2], v126);
    v97 = vmovl_u8(*v96.i8);
    v98 = vmovl_high_u8(v96);
    v131.val[0] = veorq_s8(v131.val[3], v126);
    v131.val[1] = vmovl_u8(*v131.val[0].i8);
    v131.val[2] = vmovl_u16(*v131.val[1].i8);
    v131.val[1] = vmovl_high_u16(v131.val[1]);
    v131.val[0] = vmovl_high_u8(v131.val[0]);
    v131.val[3] = vmovl_u16(*v131.val[0].i8);
    v131.val[0] = vmovl_high_u16(v131.val[0]);
    v99 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v98, 8uLL)), vshlq_n_s32(vmovl_high_u16(v89), 0x18uLL)), v131.val[0]);
    v100 = vorrq_s8(vorrq_s8(vorrq_s8(v95, vshll_n_u16(*v98.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v89.i8), 0x18uLL)), v131.val[3]);
    v101 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v97, 8uLL)), vshlq_n_s32(vmovl_high_u16(v90), 0x18uLL)), v131.val[1]);
    v102 = vorrq_s8(vorrq_s8(vorrq_s8(v94, vshll_n_u16(*v97.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v90.i8), 0x18uLL)), v131.val[2]);
    v131.val[0] = veorq_s8(vandq_s8(v99, v127), (*v131.val & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v131.val[3] = veorq_s8(vandq_s8(v100, v127), (*&v131.val[3] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v131.val[1] = veorq_s8(vandq_s8(v101, v127), (*&v131.val[1] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v131.val[2] = veorq_s8(vandq_s8(v102, v127), (*&v131.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v131.val[0] = vaddq_s32(vsubq_s32(v99, vaddq_s32(v131.val[0], v131.val[0])), v128);
    v131.val[3] = vaddq_s32(vsubq_s32(v100, vaddq_s32(v131.val[3], v131.val[3])), v128);
    v131.val[1] = vaddq_s32(vsubq_s32(v101, vaddq_s32(v131.val[1], v131.val[1])), v128);
    v131.val[2] = vaddq_s32(vsubq_s32(v102, vaddq_s32(v131.val[2], v131.val[2])), v128);
    LODWORD(a50) = v131.val[2].i32[0];
    *(&a50 + 4) = vextq_s8(v131.val[2], v131.val[1], 4uLL);
    *(&a51 + 4) = vextq_s8(v131.val[1], v131.val[3], 4uLL);
    *(&a52 + 4) = vextq_s8(v131.val[3], v131.val[0], 4uLL);
    *(&a53 + 4) = vextq_s8(v131.val[0], v131.val[0], 4uLL).u64[0];
    HIDWORD(a53) = v131.val[0].i32[3];
    *(&a50 + v55 + 514207202) = v56 ^ __ROR4__(*(&a45 + v55 + 514207202) ^ *(&a48 + v55 + 514207202) ^ *(&a41 + v55 + 514207202) ^ *(&a50 + v55 + (v125 + 337) + 514205457), 31);
    return (*(v54 + 8 * ((908 * (v57 == 514207139)) ^ v125)))(v58);
  }

  else
  {
    if (a34 == 1)
    {
      v132 = vld4q_s8(&a18 + 4);
      v60 = veorq_s8(v132.val[0], v126);
      v61 = vmovl_high_u8(v60);
      v62 = vmovl_high_u16(v61);
      v63 = vmovl_u16(*v61.i8);
      v64 = vmovl_u8(*v60.i8);
      v65 = vmovl_high_u16(v64);
      v66 = vmovl_u16(*v64.i8);
      v67 = veorq_s8(v132.val[1], v126);
      v68 = vmovl_u8(*v67.i8);
      v69 = vmovl_high_u8(v67);
      v70 = veorq_s8(v132.val[2], v126);
      _Q25 = vmovl_u8(*v70.i8);
      _Q24 = vmovl_high_u8(v70);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v132.val[0] = veorq_s8(v132.val[3], v126);
      v132.val[1] = vmovl_u8(*v132.val[0].i8);
      v132.val[2] = vmovl_u16(*v132.val[1].i8);
      v132.val[0] = vmovl_high_u8(v132.val[0]);
      v132.val[3] = vmovl_u16(*v132.val[0].i8);
      v132.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v132.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v69, 8uLL), v62));
      v132.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v132.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v69.i8, 8uLL), v63));
      v132.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v132.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v68, 8uLL), v65));
      v132.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v132.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v68.i8, 8uLL), v66));
      v79 = vdupq_n_s32(0x11A9C97Fu);
      v80 = veorq_s8(vandq_s8(v132.val[0], v79), (*&v62 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
      v81 = veorq_s8(vandq_s8(v132.val[3], v79), (*&v63 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
      v82 = veorq_s8(vandq_s8(v132.val[1], v79), (*&v65 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
      v83 = veorq_s8(vandq_s8(v132.val[2], v79), (*&v66 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
      v84 = vaddq_s32(vsubq_s32(v132.val[0], vaddq_s32(v80, v80)), v128);
      v85 = vaddq_s32(vsubq_s32(v132.val[3], vaddq_s32(v81, v81)), v128);
      v86 = vaddq_s32(vsubq_s32(v132.val[1], vaddq_s32(v82, v82)), v128);
      v87 = vaddq_s32(vsubq_s32(v132.val[2], vaddq_s32(v83, v83)), v128);
      LODWORD(a50) = v87.i32[0];
      *(&a50 + 4) = vextq_s8(v87, v86, 4uLL);
      *(&a51 + 4) = vextq_s8(v86, v85, 4uLL);
      *(&a52 + 4) = vextq_s8(v85, v84, 4uLL);
      HIDWORD(a53) = v84.i32[3];
      *(&a53 + 4) = vextq_s8(v84, v84, 4uLL).u64[0];
      JUMPOUT(0x1B16D9578);
    }

    v104 = (((a28 ^ 0xBE58900E) + 1101492210) ^ ((a28 ^ 0x9610CF91) + 1777283183) ^ ((a28 ^ 0x881F291) - 142733969)) + (((a28 ^ 0xD1DE56CD) + 773957939) ^ ((a28 ^ 0x6336CE0E) - 1664536078) ^ ((a28 ^ 0x922135CD) + 1843317299)) - 1170496301;
    v105 = (v104 ^ 0x1717B545) & (2 * (v104 & 0x8757B549)) ^ v104 & 0x8757B549;
    v106 = ((2 * (v104 ^ 0x1D1CD555)) ^ 0x3496C038) & (v104 ^ 0x1D1CD555) ^ (2 * (v104 ^ 0x1D1CD555)) & 0x9A4B601C;
    v107 = v106 ^ 0x8A492004;
    v108 = (v106 ^ 0x10024008) & (4 * v105) ^ v105;
    v109 = ((4 * v107) ^ 0x692D8070) & v107 ^ (4 * v107) & 0x9A4B601C;
    v110 = v108 ^ 0x9A4B601C ^ (v109 ^ 0x8090010) & (16 * v108);
    v111 = (16 * (v109 ^ 0x9242600C)) & 0x9A4B6010 ^ 0x1A49601C ^ ((16 * (v109 ^ 0x9242600C)) ^ 0xA4B601C0) & (v109 ^ 0x9242600C);
    v112 = (v110 << 8) & 0x9A4B6000 ^ v110 ^ ((v110 << 8) ^ 0x4B601C00) & v111;
    v113 = v104 ^ (2 * ((v112 << 16) & 0x1A4B0000 ^ v112 ^ ((v112 << 16) ^ 0x601C0000) & ((v111 << 8) & 0x9A4B0000 ^ 0x100B0000 ^ ((v111 << 8) ^ 0x4B600000) & v111)));
    v114 = (((a29 ^ 0xCE888ABB) + 829912389) ^ ((a29 ^ 0x5F87437) - 100168759) ^ ((a29 ^ 0xEBB95382) + 340175998)) + (((a29 ^ 0x588E12E9) - 1485705961) ^ ((a29 ^ 0x9B0215FB) + 1694362117) ^ ((a29 ^ 0xE345AA1C) + 481973732)) + 1388382890;
    v115 = (v114 ^ 0xEE896E6A) & (2 * (v114 & 0xEED24F72)) ^ v114 & 0xEED24F72;
    v116 = ((2 * (v114 ^ 0x6EA97ACA)) ^ 0xF66B70) & (v114 ^ 0x6EA97ACA) ^ (2 * (v114 ^ 0x6EA97ACA)) & 0x807B35B8;
    v117 = v116 ^ 0x80091488;
    v118 = (v116 ^ 0x522110) & (4 * v115) ^ v115;
    v119 = ((4 * v117) ^ 0x1ECD6E0) & v117 ^ (4 * v117) & 0x807B35B8;
    v120 = (v119 ^ 0x6814A0) & (16 * v118) ^ v118;
    v121 = ((16 * (v119 ^ 0x80132118)) ^ 0x7B35B80) & (v119 ^ 0x80132118) ^ (16 * (v119 ^ 0x80132118)) & 0x807B35B0;
    v122 = v120 ^ 0x807B35B8 ^ (v121 ^ 0x331100) & (v120 << 8);
    a28 = v113 ^ 0x8798D87F;
    a29 = v114 ^ (2 * ((v122 << 16) & 0x7B0000 ^ v122 ^ ((v122 << 16) ^ 0x35B80000) & (((v121 ^ 0x80482438) << 8) & 0x7B0000 ^ 0x4A0000 ^ (((v121 ^ 0x80482438) << 8) ^ 0x7B350000) & (v121 ^ 0x80482438)))) ^ 0xCE9D890C;
    v123 = (((a30 ^ 0xC61B6805) + 971282427) ^ ((a30 ^ 0xD7A0E387) + 677321849) ^ ((a30 ^ 0x3172268C) - 829564556)) + (((a30 ^ 0x9B128F80) + 1693282432) ^ ((a30 ^ 0xA2C87C31) + 1563919311) ^ ((a30 ^ 0x19135EBF) - 420699839)) + 1717662168;
    v124 = (((a31 ^ 0xE3D835AF) + 472369745) ^ ((a31 ^ 0x9128010D) + 1859649267) ^ ((a31 ^ 0x523999AC) - 1379506604)) + (((a31 ^ 0x6C4098AB) - 1816172715) ^ ((a31 ^ 0xEE99A16A) + 291921558) ^ ((a31 ^ 0xA21094CF) + 1575971633)) + 1775131781;
    a30 = v123 ^ ((v123 ^ 0x51D37A32) - 1964862862) ^ ((v123 ^ 0xE092A947) + 1000554757) ^ ((v123 ^ 0x6231BB56) - 1191161066) ^ ((v123 ^ 0xF7BE7F9F) + 747608029) ^ 0x407BAB2;
    a31 = v124 ^ ((v124 ^ 0xAC305759) + 2079632080) ^ ((v124 ^ 0x77E138C9) - 1608137376) ^ ((v124 ^ 0x8C550206) + 1536294801) ^ ((v124 ^ 0x7FBF6FFF) - 1468296598) ^ 0x8F2AF67;
    HIDWORD(v129) = HIDWORD(a11) - 205186635;
    return v130(v58, 604110848, a3, v59, 2588606464, 1264589824, &a18 + 4, a8, a9, a10, a11, a12, a2, v129, v130, v57 - 16, a17, a18, a19, a20);
  }
}

uint64_t sub_1B16B0CA4()
{
  v5 = 30 * (v3 ^ 0x228);
  v6 = (v5 ^ 0xFFFFFF8D) + *(v2 + 8);
  return (*(v4 + 8 * ((1993 * (((v1 + v5 - 120) & (2 * v6)) + (v6 ^ v0) == v0)) ^ v3)))();
}

void sub_1B16B0D64(uint64_t a1)
{
  v1 = *(a1 + 32) - 1082434553 * (a1 ^ 0x9B47F68A);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1B16B0E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, int a12)
{
  v17 = *(a1 + 24) + v15 + *(v12 + 16) - 1696005617 + 8;
  v18 = 1785193651 * ((&a9 - 1680847719 - 2 * (&a9 & 0x9BD04C99)) ^ 0xB7671771);
  a11 = 1347122499 - v18;
  a12 = v16 - v18 + 598;
  a10 = ((v16 - 2056071445) & 0x7A8D299F ^ 0x4F936E92) - v18 + v17;
  a9 = v12;
  v19 = (*(v14 + 8 * (v16 ^ 0x9B1)))(&a9);
  return (*(v14 + 8 * ((1973 * (*(v12 + 24) == v13)) ^ v16)))(v19);
}

uint64_t sub_1B16B0FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = (1037613739 * ((((2 * &a15) | 0xB144690A) - &a15 + 660458363) ^ 0x9A019FA)) ^ 0x9617D40F;
  v17 = (*(v16 + 17656))(&a15);
  return (*(v16 + 8 * ((1056 * (a16 == 296339821)) | 0x34D)))(v17);
}

uint64_t sub_1B16B1218@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = v5 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((603 * (v6 == (v3 ^ 0x2F3u) - 1802)) ^ v3)))();
}

void sub_1B16B1260()
{
  *(v4 + 1424) = 0;
  memset((v4 + 1432), 126, 104);
  *(v2 + 96) = v4;
  *(v5 + 376) = v2 + 96;
  *(v4 + 476) = v1;
  STACK[0x2C0] = *(v3 + 8 * v0);
  STACK[0x248] = v2;
  JUMPOUT(0x1B16B12F8);
}

uint64_t sub_1B16B140C@<X0>(unint64_t a1@<X1>, int a2@<W5>, _DWORD *a3@<X6>, int a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = (a3[1] ^ v11) + ((v14 + 237) ^ HIDWORD(a1)) + v17 * (*(*(a11 + 8) + 4) ^ v11);
  *a3 = (v13 + v18 - ((v16 ^ a2 ^ v12) & (2 * v18)) + 272) ^ a4;
  return (*(v15 + 8 * ((a5 == 2) | ((a5 == 2) << 6) | v16)))();
}

uint64_t sub_1B16B1480()
{
  v4 = v3 - 216;
  v5 = (v4 ^ 0x3DD) + v0 - 1535643665;
  v6 = v2 + 528785422 > v5;
  if ((v2 + 528785422) < 0x2391F17D != v5 < 0x2391F17D)
  {
    v6 = (v2 + 528785422) < 0x2391F17D;
  }

  return (*(v1 + 8 * ((222 * v6) ^ v4)))();
}

uint64_t sub_1B16B14F4@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v11 = a1 + 1234862748 < a9 + 483561879;
  if (a9 + 483561879 < ((v9 - 1983385397) & 0x763808E5u) + 1234862679 != a1 > 0xB6657D63)
  {
    v11 = a9 + 483561879 < ((v9 - 1983385397) & 0x763808E5u) + 1234862679;
  }

  return (*(v10 + 8 * ((14 * !v11) ^ v9)))();
}

uint64_t sub_1B16B1A24@<X0>(int a1@<W8>)
{
  *v2 = STACK[0x3A4];
  v2[85] = STACK[0x35C];
  v2[86] = STACK[0x48C];
  v2[87] = STACK[0x38C];
  v2[88] = STACK[0x2A4];
  return (*(v1 + 8 * ((((((((a1 - 740538816) & 0x2C23BFEB) - 2008) | 0x387) + 501) ^ 0x560) * (STACK[0x2C8] == 0)) ^ (((a1 - 740538816) & 0x2C23BFEB) - 648))))();
}

uint64_t sub_1B16B1AD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v19 = a1 - 16;
  v20 = (v19 - 1) & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v22.i64[1] = a6;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*(v11 + v19), *(v12 + v20 - 15)), *(v20 + v13 - 10)), *(v14 + v20 + a2 - 15)));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a8), vmulq_s8(v22, a7)));
  *(v17 + v19) = vextq_s8(v24, v24, 8uLL);
  return (*(v18 + 8 * (((v15 == v19) * a3) ^ v16)))();
}

uint64_t sub_1B16B1D78(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v14 = v8 < v10;
  if (v14 == ((a1 + a8) & v12 ^ v13) + v9 > a3)
  {
    v14 = a2 + v9 + 2 < v8;
  }

  return (*(v11 + 8 * ((v14 * a6) ^ a1)))();
}

uint64_t sub_1B16B1DE8()
{
  *v2 = **(v3 + 8);
  v5 = (v1 ^ 0x428u) - 490 == v0;
  return (*(v4 + 8 * ((v5 | (8 * v5)) ^ v1)))();
}

uint64_t sub_1B16B1EC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int a15, unsigned int a16)
{
  v18 = a13 - 142538549 + a15 - 613 - 72;
  v19 = v18 < 0xF78108CB;
  v20 = v18 > a16;
  if (a16 < 0xF78108CB != v19)
  {
    v20 = v19;
  }

  return (*(v16 + 8 * ((25 * !v20) ^ (a4 + v17 + 1613))))(38, 50);
}

uint64_t sub_1B16B1F10@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x230] + (a2 >> (((v3 + 120) | 2) - 36)) + 18);
  v7 = ((2 * a2) & 0xCFFB7B78) + (a2 ^ 0x67FDBDBF) + v2;
  *(a1 + v7) = v6 ^ 0x70;
  *(a1 + v7 + 1) = (BYTE1(v6) ^ 0xAD) - ((2 * (BYTE1(v6) ^ 0xAD)) & 0xFC) + 126;
  *(a1 + v7 + 2) = (BYTE2(v6) ^ 0xC9) + (~(2 * (HIWORD(v6) ^ 0xFFFFFFC9)) | 3) + 127;
  *(a1 + v7 + 3) = (HIBYTE(v6) ^ 0x20) - ((2 * (HIBYTE(v6) ^ 0x20)) & 0xFC) + 126;
  return (*(v5 + 8 * (((a2 + 4 >= LODWORD(STACK[0x28C])) * v4) ^ v3)))();
}

uint64_t sub_1B16B2054(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v12 = v11 - 1;
  v13 = *(v9 + 8);
  v14 = *(v13 + 4 * v12 - 4) ^ v7;
  *(v13 + 4 * (a6 - 1)) = ((v14 >> v8) & a3 | (a7 ^ (a2 + 1571)) & ~(v14 >> v8)) ^ (a1 + 1218 + a2);
  return (*(v10 + 8 * (((v12 < 2) * a5) ^ a1)))();
}

uint64_t sub_1B16B2060(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x11A9C96Du;
}

uint64_t sub_1B16B20C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v19 - 120) = v16 - ((((v19 - 128) | 0x117A69D5) - (v19 - 128) + ((v19 - 128) & 0xEE859628)) ^ 0x7022E205) * v17 - 153;
  *(v19 - 112) = &a15;
  *(v19 - 128) = &a13;
  v20 = (*(v15 + 8 * (v16 ^ 0x87E)))(v19 - 128);
  return (*(v15 + 8 * (((*(v19 - 104) > v18) * ((v16 + 959) ^ 0x55F)) ^ v16)))(v20);
}

uint64_t sub_1B16B274C(uint64_t a1)
{
  v4 = *(STACK[0x240] + 56);
  *(STACK[0x240] + 56) = v4 + 1;
  return (*(v2 + 8 * ((((v4 - 1262799547) < 0xFFFFFFFA) * (v3 + v1 + 296315022)) ^ (v1 - 1935))))(a1, 0, 0);
}

uint64_t sub_1B16B28A8@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 ^ 0xEA012214) & (2 * (v2 & (v4 + 1))) ^ v2 & (v4 + 1);
  v6 = ((v3 + 993363560) ^ (2 * (v2 ^ 0xEF136204))) & (v2 ^ 0xEF136204) ^ (2 * (v2 ^ 0xEF136204)) & 0x1D9AC69C;
  v7 = v6 ^ 0x48A4285;
  v8 = (v6 ^ 0x1880C408) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x766B1A74) & v7 ^ (4 * v7) & 0x1D9AC69C;
  v10 = (v9 ^ 0x140A0210) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x990C489)) ^ 0xD9AC69D0) & (v9 ^ 0x990C489) ^ (16 * (v9 ^ 0x990C489)) & 0x1D9AC690;
  v12 = v10 ^ 0x1D9AC69D ^ (v11 ^ 0x19884000) & (v10 << 8);
  v13 = (v12 << 16) & 0x1D9A0000 ^ v12 ^ ((v12 << 16) ^ 0x469D0000) & (((v11 ^ 0x412860D) << 8) & 0x1D9A0000 ^ 0x5180000 ^ (((v11 ^ 0x412860D) << 8) ^ 0x1AC60000) & (v11 ^ 0x412860D));
  v14 = 843532609 * ((-356546301 - (v16 | 0xEABF8903) + (v16 | 0x154076FC)) ^ 0x490D2279);
  v16[0] = v2 ^ v14 ^ (2 * v13) ^ 0x642D7B9F;
  v16[1] = v14 + v3 + 202;
  v17 = v1;
  return (*(a1 + 8 * (v3 ^ 0xEAB)))(v16);
}

uint64_t sub_1B16B2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  *v12 = v8 - 1;
  v14 = &v12[6 * (v8 - 724410441)];
  v15 = v14[2];
  LODWORD(STACK[0x314]) = v14[3];
  *(v13 + 360) = *(v14 + 2);
  LODWORD(STACK[0x43C]) = v14[6];
  v16 = *(v10 + (v15 + a5) * a8 + 36);
  LODWORD(STACK[0x2B8]) = v16;
  return (*(v11 + 8 * ((371 * (v16 == a6)) ^ v9)))();
}

uint64_t sub_1B16B2B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26, unsigned int a27, int a28)
{
  v31 = 1785193651 * (((&a25 | 0x258B6EC1) - &a25 + (&a25 & 0xDA749138)) ^ 0x93C3529);
  a25 = v29;
  a27 = ((a3 - a14 + 363252333) ^ 0xFF6BF7EB) - v31 + ((2 * (a3 - a14 + 363252333)) & 0xFED7EFD6) + 1356823896;
  a28 = v28 - v31 - 97;
  a26 = ((2 * ((a3 & 0xFFFFFFF0) + 16)) & 0xEB7FF6E0) - v31 + (((a3 & 0xFFFFFFF0) + 16) ^ 0xF5BFF88D ^ (v28 + 44)) + 1870282230;
  v34 = v28;
  v32 = (*(v30 + 8 * (v28 + 1272)))(&a25);
  return (*(v30 + 8 * ((2012 * (*(v29 + 24) == 296339821)) ^ v34)))(v32);
}

uint64_t sub_1B16B2C8C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + v3 + 1436);
  v6.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v6.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v7.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v7.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v8 = vaddq_s8(vsubq_s8(*(v1 + a1 - 16), vandq_s8(vaddq_s8(*(v1 + a1 - 16), *(v1 + a1 - 16)), v6)), v7);
  v5[-1] = vaddq_s8(vsubq_s8(*(v1 + a1 - 32), vandq_s8(vaddq_s8(*(v1 + a1 - 32), *(v1 + a1 - 32)), v6)), v7);
  *v5 = v8;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (v2 ^ 0x676)) ^ v2)))();
}

uint64_t sub_1B16B2D50(uint64_t a1, int a2)
{
  v7 = v3 < v4;
  if (v7 == v2 + 1 > (a2 ^ 0x6Bu) - 542936887)
  {
    v7 = v5 + v2 + 899 < v3;
  }

  return (*(v6 + 8 * ((v7 * (((a2 + 2143347702) & 0x803F1DF6) - 1093)) ^ a2)))();
}

void sub_1B16B2FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v41 = v38 ^ 0xF1D70D15;
  v42 = a5 ^ (a8 | (a37 << 32));
  v43 = a4 ^ 0x174D86C76E6A4D63;
  v44 = ((a4 ^ 0x174D86C76E6A4D63) - 0x1C21C8D5D1473B5ELL - 2 * ((v41 + 0x63DE37293CE1B7ECLL) & (a4 ^ 0x174D86C76E6A4D63) ^ a4 & 0x14)) ^ v40;
  v45 = ((a4 ^ 0x174D86C76E6A4D63) - 2 * ((a4 ^ 0x174D86C76E6A4D63) & 0x1C7BE2C6E3180FFLL ^ a4 & 0x10) - 0x7E3841D391CE7F11) ^ a3;
  v46 = v42 & 0x31D420D4C2CF28F0 ^ v45 ^ 0x47EE7966B16A330ELL ^ (v44 ^ 0xA62FDB7ACB00E420) & (v42 ^ 0xD8D9C12EF39EB2B7) ^ 0x857FB517C7A4B152;
  v47 = __ROR8__(__ROR8__(v46, 48) ^ 0xA6CF8833E0E0DBD5, 16);
  v48 = v47 ^ 0xD268EFC7C2FB3CCFLL ^ ((v47 ^ 0xD268EFC7C2FB3CCFLL) << 23) ^ (((v47 >> 41) ^ (v47 >> 7) ^ 0x84EC52DABEBAC46BLL) & (((v47 ^ 0xD268EFC7C2FB3CCFLL) << 57) ^ 0xB3FFFFFFFFFFFFFFLL) | ((v47 ^ 0xD268EFC7C2FB3CCFLL) << 57) & 0x7A00000000000000);
  v49 = a3 ^ 0x7524F63AA39C0769 ^ ((v44 ^ 0x6A96D715A162E070) & (v45 ^ 0xB81186994E95CCF1) | (v45 ^ 0x47EE7966B16A330ELL) & 0x292D3445752D35FLL);
  if (((a4 ^ 0x174D86C76E6A4D63) & 0x82EE1687ACCADB62) == 0)
  {
    v43 = v45 ^ 0x47EE7966B16A330ELL;
  }

  v50 = v43 & (a3 ^ 0x39D638B520A44C1ELL);
  v51 = v42 ^ 0x92A889B8BA475DDELL;
  v52 = a7 ^ v42 ^ 0x92A889B8BA475DDELL;
  v53 = v50 ^ v52 ^ 0x555152229763AA3BLL;
  if (v44 == 0x68040451F630332FLL)
  {
    v53 = v52 ^ 0x2AAEADDD689C55C4;
  }

  v54 = (v50 ^ v52 ^ 0x2EA3D8C5038DF8DELL) + 2 * (v50 & (v52 ^ 0x2EA3D8C5038DF8DELL)) - 2 * ((v53 ^ 0x40D75186B11AD1ALL) & v50);
  v55 = (-v54 ^ (v49 - (v54 ^ v49)) ^ 0x670EA665FDA0B4ABLL ^ (v54 - ((2 * v54) & 0xCE1D4CCBFB416956) + 0x670EA665FDA0B4ABLL)) + v49;
  v56 = v55 ^ __ROR8__(v55, 17) ^ (v55 << 54) ^ (v55 >> 10);
  v57 = v56 ^ 0x23283B2A3571B85FLL ^ v48 ^ 0x61CCB93124FF3736;
  v58 = v52 & 0x9670ED54E76179E2 ^ (v52 ^ 0x2EA3D8C5038DF8DELL) & (v42 ^ 0xB156D385EB0034AALL) ^ 0x4704644FC45B9ECDLL ^ v44;
  *(&v59 + 1) = v46 ^ v58 ^ 0x34385D4B84048E91;
  *&v59 = v46 ^ v58;
  v60 = *(&v59 + 1) ^ __ROR8__(*(&v59 + 1), 28) ^ (v59 >> 19) ^ v48 ^ 0x61CCB93124FF3736;
  v61 = v52 & 0x2142F9BB0A11F868 ^ v51 ^ (v52 ^ 0xD15C273AFC720721) & (a3 ^ 0xE76B3EF1D54A4B89) ^ v58;
  *(&v59 + 1) = v61 ^ 0x43EF04774522F985;
  *&v59 = v61;
  v62 = v61 ^ 0x43EF04774522F985 ^ __ROR8__(v61 ^ 0x43EF04774522F985, 61) ^ (v59 >> 39);
  v63 = __ROR8__(__ROR8__((v54 >> 6) ^ (v54 >> 1) ^ v54 ^ 0x3EE25D7ECA5DA637 ^ v62 ^ 0xCB473B8770D18525 ^ ((v54 ^ 0x3EE25D7ECA5DA637) << 58) ^ (((v54 ^ 0x3EE25D7ECA5DA637) << 63) | 0x158BE3A097001AE5) ^ 0xE31A516A447834EELL, 31) ^ 0x72207C51FF86F844, 33);
  v64 = (v56 & 0xB889C37411EBAA72 | (v48 ^ 0x9AB31AEC78BAEFDFLL) & ~v56) ^ v63;
  v65 = v64 ^ 0x5B24CCF3238E4BCFLL;
  *(&v59 + 1) = v57 & 0xC12681903A00EE63 ^ v56 ^ 0x23283B2A3571B85FLL ^ (v57 ^ 0x9F21A47C8720353BLL) & (v60 ^ 0xAE6212E2788238F5) ^ v64 ^ 0x5B24CCF3238E4BCFLL ^ 0xE4226D7E61FB7CELL;
  *&v59 = v57 & 0xC12681903A00EE63 ^ v56 ^ 0x23283B2A3571B85FLL ^ (v57 ^ 0x9F21A47C8720353BLL) & (v60 ^ 0xAE6212E2788238F5) ^ v64 ^ 0x5B24CCF3238E4BCFLL;
  v66 = v59 >> 17;
  *&v59 = __ROR8__(*(&v59 + 1), 10);
  v67 = ((v66 ^ v59 ^ 0x2588CED5AF1B710DLL) - ((2 * (v66 ^ v59 ^ 0x2588CED5AF1B710DLL)) & 0x648C82710977DE90) - 0x4DB9BEC77B4410B8) ^ *(&v59 + 1);
  v68 = v60 & 0xB46977D7F78C2958 ^ (v60 ^ 0x90BB6C8DBD7D2969) & (v62 ^ 0xBE53B7D9159C02BFLL) ^ 0x460594DA0F3E138CLL ^ v57;
  v69 = (v68 & 0xF2F0F93CF1701AFDLL ^ 0x26764DD2088A1453) & (v68 & 0xD0F06C30E8FE502 ^ 0xFAF5FD3FFD76FEFFLL) | v68 & 0x90902010605E100;
  v70 = __ROR8__(v69 ^ 0x691908B74738A206, 7);
  *&v59 = __ROR8__(v69 ^ 0x691908B74738A206, 41);
  v71 = ((v70 ^ v59 ^ 0x6049643C8A2B7D8FLL) - ((2 * (v70 ^ v59 ^ 0x6049643C8A2B7D8FLL)) & 0xCF4FA50218AE6620) + 0x67A7D2810C573310) ^ v69 ^ 0x691908B74738A206;
  v72 = v62 & 0x4FD2DEC7BB8CB029 ^ v60 ^ 0x342754B355738270 ^ (v63 ^ 0xB0FCA80E017445D8) & (v62 ^ 0xF5C53FF11DEFD418);
  v73 = v69 ^ v72 ^ ((v69 ^ v72 ^ 0x21BF21290D3C78EELL) >> 19) ^ ((v69 ^ v72 ^ 0x21BF21290D3C78EELL) >> 28) ^ ((v69 ^ v72 ^ 0x16CC026CD9F9D66ELL) << 36) ^ ((v69 ^ v72 ^ 0x16CC026CD9F9D66ELL) << 45) ^ 0x96670BD26580947ELL;
  *(&v59 + 1) = v72 ^ v62 ^ 0xCB473B8770D18525;
  *&v59 = v72 ^ v62;
  v74 = (v63 ^ 0xD1893645070A0ELL) & (v56 ^ 0x7A6FD512F50170D7) ^ v63 & 0x7A6FD512F50170D7 ^ __ROR8__((v59 >> 54) ^ 0x31FBF5956263CB15, 10);
  LOBYTE(v62) = *(v39 + ((v74 >> 61) ^ 0x53));
  v75 = (v62 ^ ((v62 ^ 0x3C) - ((2 * (v62 ^ 0x3C) + 2) & 0x42) - 94) ^ 0x62 ^ ((v62 ^ (57 - (v62 ^ 0xFA)) ^ ((v62 ^ 0x3C) - ((2 * (v62 ^ 0x3C) + 2) & 0x84) + 67) ^ 0x7E) + 1)) - 62;
  v76 = v75 ^ (v74 >> 39) ^ v74 ^ 0xC336E191673CB949 ^ (8 * (v74 ^ 0xC336E191673CB949)) ^ ((v74 ^ 0xC336E191673CB949) << 25);
  v77 = (v71 - ((2 * v71) & 0x4D62102838E9721ALL) - 0x594EF7EBE38B46F3) ^ v73;
  v78 = v67 ^ 0x147D2CDEEA4;
  v79 = v71 ^ v67 ^ 0x147D2CDEEA4;
  v80 = (~(2 * v77) + v77) & (v76 ^ 0x288C096257E66747) ^ v79;
  v81 = ((v80 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v80 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v80 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v80 ^ 0x26974B18501E2B14) - (((v80 ^ 0x26974B18501E2B14) << 58) & (2 * (v80 ^ 0x26974B18501E2B14))));
  v82 = ((v67 ^ 0x147D2CDEEA4) - ((2 * (v67 ^ 0x147D2CDEEA4)) & 0x4D62102838E9721ALL) - 0x594EF7EBE38B46F3) ^ v73;
  if (!v75)
  {
    v82 = v77;
  }

  v83 = v82 & ~v79;
  v84 = v64 >> 1;
  v85 = (v64 >> 1) & 0xFFFFEFFFFFFFFFFFLL ^ (v64 >> 6);
  v86 = v64 ^ (v64 << 58);
  v87 = v86 ^ 0xCCE2C222024C9FB9;
  v88 = v84 & 0x100000000000;
  if ((v88 & v86) != 0)
  {
    v89 = -v88;
  }

  else
  {
    v89 = v88;
  }

  v90 = (v89 + v87) ^ (v85 | (v65 << 63));
  v91 = v71 & (v67 ^ 0xFFFFFEB82D32115BLL) ^ v76 ^ v90;
  v92 = v91 ^ 0x3C5EE37BDEC91AE5;
  v93 = v67 ^ v83 ^ 0x7370AD2F82FD2592 ^ v91 ^ 0x3C5EE37BDEC91AE5;
  v94 = __ROR8__(v93, 10);
  v95 = (v93 ^ v94 ^ (v93 >> 17)) + (v93 << 47) - 2 * ((v93 ^ v94 ^ (v93 >> 17)) & (v93 << 47));
  v96 = v91 ^ 0x450B09979381A2E9;
  v97 = (((2 * (0x34CDB152F4A04500 - ((v91 ^ 0x450B09979381A2E9) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v91 ^ 0x450B09979381A2E9) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v91 ^ 0x450B09979381A2E9) << 58) ^ ((v91 ^ 0x450B09979381A2E9) - ((((v91 ^ 0x450B09979381A2E9) << 58) & 0xF800000000000000 ^ (v91 ^ 0x450B09979381A2E9) & 0xF9BFE541A2368FBELL | (v91 ^ 0x450B09979381A2E9) & 0x6401ABE5DC97041) ^ ((v91 ^ 0x450B09979381A2E9) << 58) & 0x400000000000000));
  v98 = v76 & 0xD15BD85358E11B2ALL ^ 0xD153D01108011828 ^ (v76 ^ 0xD773F69DA81998B8) & (v90 ^ 0xC589324AD1CE6688);
  v99 = (v77 ^ -v77 ^ (v98 - (v77 ^ v98))) + v98;
  v100 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v76 ^ (((v76 ^ v90 ^ 0xC3A11C842136E51ALL) & v78) - ((2 * ((v76 ^ v90 ^ 0xC3A11C842136E51ALL) & v78)) & 0xDD4F0A62F807055ELL) + 0x6EA785317C0382AFLL) ^ v99 ^ 0x7453746BD5A63754, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v101 = v100 ^ 0x93DD7BE3C3310A2CLL ^ ((v100 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v100 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v100 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v100 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v102 = (v97 + v96) ^ (v92 << 63) ^ __ROR8__((v96 >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v101, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v103 = v102 & 0xA8F512753D8F931ELL ^ (v96 >> 1) & 0x28F512753D8F931ELL | (v102 ^ (v96 >> 1)) & 0x570AED8AC2706CE1;
  v104 = v103 ^ v81 & ~v95;
  *(&v105 + 1) = v104;
  *&v105 = v104 ^ 0xD3DA1E3360BF843ALL;
  v106 = ((v105 >> 1) ^ v104 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v104 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v105 >> 1) ^ v104 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v104 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  v107 = v80 ^ 0x6E04C15915AB860ALL ^ v99 ^ __ROR8__(v80 ^ 0x6E04C15915AB860ALL ^ v99, 19) ^ ((v80 ^ 0x6E04C15915AB860ALL ^ v99) << 36) ^ ((v80 ^ 0x6E04C15915AB860ALL ^ v99) >> 28) ^ v81;
  v108 = ((v103 ^ v101) + (v103 | ~v101) + 1) ^ v107;
  v109 = v101 ^ v95 & ~v103 ^ 0x425764BB5877DA25 ^ v108;
  v110 = v109 ^ (v109 >> 61) ^ (v109 >> 39) ^ (8 * v109) ^ (v109 << 25);
  *(&v105 + 1) = v104;
  *&v105 = v104 ^ 0xD3DA1E3360BF843ALL;
  v111 = (v105 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v110 ^ v106, 3) ^ 0x55413C453664FDCDLL;
  v112 = v95 ^ v81;
  v113 = v101 & ~v107 ^ v95 ^ v81;
  v114 = v113 ^ 0xFD;
  v115 = v113 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v113 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v113 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v113 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v116 = v113 ^ 0x97F6A7E5F6E8F58ALL ^ v108 ^ __ROR8__(v113 ^ 0x97F6A7E5F6E8F58ALL ^ v108, 19) ^ ((v113 ^ 0x97F6A7E5F6E8F58ALL ^ v108) << 36) ^ ((v113 ^ 0x97F6A7E5F6E8F58ALL ^ v108) >> 28);
  *&v105 = __ROR8__(v111, 61);
  v117 = ((v116 | v115) ^ v115 & v116) & 0x2D23D578E308995FLL | (v116 ^ v115) & 0xD2DC2A871CF766A0;
  v118 = v107 & ~v112;
  v119 = (v105 ^ 0xAA09E229B327EE6ALL) & ~v110 ^ v117;
  v120 = v95 ^ 0x44C9D571A5C4A51CLL ^ v118 ^ v104 ^ ((v95 ^ 0x44C9D571A5C4A51CLL ^ v118 ^ v104) >> 10) ^ ((v95 ^ 0x44C9D571A5C4A51CLL ^ v118 ^ v104) << 47) ^ ((v95 ^ 0x44C9D571A5C4A51CLL ^ v118 ^ v104) << 54) ^ ((v95 ^ 0x44C9D571A5C4A51CLL ^ v118 ^ v104) >> 17);
  v121 = ((v119 ^ v110) + ((v105 ^ 0x55F61DD64CD81195) & v120) - 2 * ((v119 ^ v110) & (v105 ^ 0x55F61DD64CD81195) & v120)) ^ 0x6005BE354A5BB0B2;
  v122 = v121 >> (v56 & 0x3D) >> (v56 & 0x3D ^ 0x3D);
  v123 = (8 * v121) ^ (v121 >> 39) ^ ((v121 ^ (v121 << 25)) & 0xF21553F3FD140018 ^ v122 & 0x18 | (v121 ^ (v121 << 25)) & 0xDEAAC0C02EBFFE7 ^ v122 & 0xE7);
  v124 = v110 & ~v117 ^ v120 ^ v115;
  v125 = v124 ^ 0x2DB5B6AF87F64351 ^ ((v124 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v124 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v124 ^ 0x2DB5B6AF87F64351) >> 41) | ((v124 ^ 0x2DB5B6AF87F64351) << 57));
  v126 = v124 ^ 0x93C23431B76D41FLL ^ v119;
  v127 = (v126 ^ (v126 >> 28)) + (v126 >> 19) - 2 * ((v126 ^ (v126 >> 28)) & (v126 >> 19));
  v128 = v126 << 36;
  v129 = v127 ^ (v126 << 45);
  v130 = v117 & ~(v120 ^ v115);
  v131 = v129 ^ (v126 << 36);
  v132 = v105 ^ 0xAA09E229B327EE6ALL ^ v115 & ~v120;
  v133 = v131 ^ v125;
  v134 = v120 ^ 0xF374A001D380BDC2 ^ v130 ^ v132 ^ ((v120 ^ 0xF374A001D380BDC2 ^ v130 ^ v132) >> 10) ^ ((v120 ^ 0xF374A001D380BDC2 ^ v130 ^ v132) << 47) ^ ((v120 ^ 0xF374A001D380BDC2 ^ v130 ^ v132) << 54) ^ ((v120 ^ 0xF374A001D380BDC2 ^ v130 ^ v132) >> 17);
  v135 = v134 ^ v125;
  v136 = v123 & ~(v131 ^ v125) ^ v134 ^ v125;
  v137 = v132 ^ 0x6DC4FB0BD4FFFF44;
  *(&v105 + 1) = v132;
  *&v105 = v132 ^ 0x6DC4FB0BD4FFFF44;
  v138 = (v105 >> 1) ^ v132 ^ 0x6DC4FB0BD4FFFF44 ^ ((v132 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v123;
  v139 = v137 >> 6;
  v140 = v128 == v129;
  v141 = v138 + v139;
  if (!v140)
  {
    v139 = ~(v139 ^ v138);
  }

  v142 = v141 - 2 * (v139 & v138);
  v143 = v142 ^ (((~v134 | 0xFFFFFFFFEFFFFFFFLL) - (v134 & 0x4000000000)) ^ v134 & 0xFFFFFFBFEFFFFFFFLL) & v135;
  v140 = v135 == -1;
  v144 = __ROR8__(((v133 << (v127 & 0x2B) << (v127 & 0x2B ^ 0x2B)) + (v133 >> 21)) ^ __ROR8__(v142 & ~v123, 21) ^ 0x6D12C2B6EED373A6, 43);
  v145 = v134 & ~v142 ^ v123 ^ v144;
  v146 = v136 ^ 0x5035F38BF1002A3ALL ^ v144;
  v147 = v146 ^ (v146 >> 19);
  v148 = v147 & 0xD99EEE0927173347 ^ (v146 << 45) & 0xD99EE00000000000 | v147 & 0x266111F6D8E8CCB8 ^ (v146 << 45) & 0x2661000000000000;
  v149 = (v146 << 45) ^ (0xFFFFE00000000000 * v146) ^ (v148 + v147 - 2 * v148);
  v150 = v146 << 36;
  v151 = v149 + v147;
  v152 = (v146 << 36) & 0x78E1346000000000;
  v153 = v151 ^ (v146 >> 28);
  v154 = v153 & 0x78E134634F73AA70 ^ v152 | v153 & 0x871ECB9CB08C558FLL ^ v150 & 0x871ECB9000000000;
  v155 = v154 - 0x1C21C8D5D1473B5ELL - 2 * (v154 & 0x63DE372A2EB8C4A7 ^ v153 & 5);
  v37[65] = v155 ^ 0xA2;
  LOBYTE(v152) = 69 * ((v155 ^ 0xE3DE372A2EB8C4A2) >> (v153 & 8) >> (v153 & 8 ^ 8));
  v156 = v145 ^ 0xE013161F571CC4C5 ^ ((v145 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v145 ^ 0xE013161F571CC4C5));
  v157 = v156 ^ (((v145 ^ 0xE013161F571CC4C5) >> 61) | (v145 << 25));
  v158 = *(a34 + (v152 ^ 0x3DLL)) - 18;
  v159 = (((v158 ^ 0x57) + v158 - 2 * (v158 ^ 0x57)) ^ 0xFE) + v158;
  v37[54] = ((v156 ^ (((v145 ^ 0xE013161F571CC4C5) >> 61) | (v145 << 25))) >> 24) ^ 0x8A;
  v37[28] = BYTE2(v155) ^ 0xB8;
  v37[41] = (v159 >> 2) | (v159 << 6);
  v160 = (v155 ^ 0xE3DE372A2EB8C4A2) >> (v114 & 0x20) >> (v114 & 0x20 ^ 0x20u);
  v37[35] = BYTE1(v156);
  v161 = BYTE6(v155) ^ 0xDE;
  v37[21] = BYTE2(v156);
  v162 = v131 ^ v134;
  if (v140)
  {
    v163 = 0;
  }

  else
  {
    v163 = v162;
  }

  v37[58] = v160;
  v37[17] = BYTE4(v157) ^ 0x89;
  v37[5] = BYTE3(v155) ^ 0x2E;
  v37[47] = BYTE5(v155) ^ 0x37;
  v164 = v143 - ((2 * v143) & 0x5A47EBDAAC1EB792);
  v37[14] = HIBYTE(v155) ^ 0xE3;
  v165 = v164 + 0x2D23F5ED560F5BC9;
  v37[48] = v161;
  v37[16] = (v157 ^ 0x3EAE39898A000000) >> (v145 & 0x28) >> (v145 & 0x28 ^ 0x28);
  v166 = v164 - 0x5BDA183C59819C5ELL;
  v167 = 0x88FE0E29AF90F827;
  if (v165 < 0x88FE0E29AF90F827)
  {
    v166 = v165;
    v167 = 0;
  }

  if (v166)
  {
    v168 = v165;
  }

  else
  {
    v168 = v167;
  }

  *(&v169 + 1) = v168;
  *&v169 = v165;
  v170 = (v169 >> 1) ^ v165;
  v37[6] = v157;
  v171 = *(v39 + (BYTE6(v157) ^ 0xF9));
  v172 = v170 ^ (v168 << 58) ^ (v168 >> 6);
  v37[10] = BYTE1(v172);
  v173 = v134 ^ v163 & v133 ^ 0x29E1AB0124FF49E7 ^ v143;
  *&v169 = __ROR8__(v173, 10);
  v174 = (v173 ^ v169 ^ (v173 << 47)) + (v173 >> 17) - 2 * ((v173 ^ v169 ^ (v173 << 47)) & (v173 >> 17));
  v37[18] = BYTE4(v172);
  v37[25] = BYTE2(v172);
  v37[42] = HIBYTE(v157) ^ 0x3E;
  v37[12] = BYTE5(v172);
  v37[23] = BYTE6(v172);
  v37[44] = v172;
  v37[24] = BYTE3(v172);
  v37[30] = (v171 ^ 0xFA) - 119;
  v37[62] = HIBYTE(v172);
  v37[19] = (v173 ^ v169) + (v173 >> 17) - 2 * ((v173 ^ v169) & (v173 >> 17));
  v175 = *(a36 + ((((v173 ^ v169) + (v173 >> 17) - 2 * ((v173 ^ v169) & (v173 >> 17))) >> 8) ^ 0x27) + 279);
  v37[8] = ((v173 ^ v169) + (v173 >> 17) - 2 * ((v173 ^ v169) & (v173 >> 17))) >> 24;
  v37[33] = ((v173 ^ v169) + (v173 >> 17) - 2 * ((v173 ^ v169) & (v173 >> 17))) >> 16;
  v37[4] = (v175 ^ BYTE1(v174) ^ 0x2D ^ ((BYTE1(v174) ^ 0x2D) + 72) ^ 0x41) + 15;
  v176 = v136 ^ 0x4734313A1F2B2857;
  v177 = v136 ^ __ROR8__(v136 ^ 0x4734313A1F2B2857, 41) ^ ((v136 ^ 0x4734313A1F2B2857) >> 7);
  v178 = *(a35 + (((v174 >> 28) & 0xF0 | (v174 >> 36) & 0xF) ^ 0x5C));
  v37[46] = HIBYTE(v174);
  v37[43] = BYTE6(v174);
  v37[38] = BYTE5(v174);
  v37[31] = ((v178 >> 5) | (8 * v178)) ^ 0xC1;
  LOBYTE(v174) = *(v39 + ((((((4 * v177) | (v177 >> 6)) ^ 0xA) >> 2) | ((((4 * v177) | (v177 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v37[55] = BYTE4(v177) ^ 0x3A;
  v37[34] = BYTE3(v177) ^ 0x1F;
  v37[32] = BYTE1(v177) ^ 0x28;
  v179 = v177 ^ (v176 << 57);
  v37[15] = (v174 ^ 0xFA) - 119;
  v37[7] = (v179 ^ 0x4734313A1F2B2857) >> (v57 & 0x10 ^ 0x10) >> (v57 & 0x10);
  v37[61] = BYTE5(v177) ^ 0x31;
  v37[56] = (*(v39 + (BYTE6(v177) ^ 0x63)) ^ 0xFA) - 119;
  v37[51] = HIBYTE(v179) ^ 0x47;
  *a33 = a37 + 1;
  JUMPOUT(0x1B16B4448);
}

uint64_t sub_1B16B46D8@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0xFC) + 126;
  return (*(v1 + 8 * (v3 ^ (2 * (v5 & ~(v3 ^ (v6 == 0)))))))(0);
}

uint64_t sub_1B16B4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = a14;
  *(v18 - 120) = &a15;
  *(v18 - 128) = v16 - ((v18 - 136) ^ 0x61588BD0) * v17 - 935;
  v19 = (*(v15 + 8 * (v16 + 1164)))(v18 - 136);
  return (*(v15 + 8 * (v16 | (4 * (((7 * (v16 ^ 0x92)) ^ (*(v18 - 112) == (v16 ^ 0x7F934DCA))) & 1)))))(v19);
}

uint64_t sub_1B16B49B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = vdupq_n_s32(0x914A07B7);
  *&STACK[0x248] = v7;
  *&STACK[0x258] = v7;
  return (*(v6 + 8 * ((62 * (((a6 + 396) ^ 0x2D8) != (a3 & 0xFFFFFFF8))) ^ (a6 + 346))))();
}

uint64_t sub_1B16B4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x494];
  v11 = (a8 - 2007) | 0x6E;
  v12 = *(v9 + 120);
  *(v9 + 176) = (v11 ^ 0xD3380E83) + LODWORD(STACK[0x494]);
  return (*(v8 + 8 * ((199 * ((v11 ^ 0xD3380E83) + v10 == 0)) ^ (a8 - 1897))))(v12);
}

uint64_t sub_1B16B4C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19)
{
  v27 = &a19 + 6 * v21;
  v27[2] = v25;
  v27[3] = v26;
  *(v27 + 2) = a14;
  v27[6] = a18;
  a19 = v19 + v24 + ((a9 - 843580048) & 0x37DE6BBF);
  return (*(v23 + 8 * (((a9 - 151) * (v20 + v22 < a4)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B16B4DD4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int32x4_t a23, int32x4_t a24, int32x4_t a25, int32x4_t a26)
{
  v129 = (v33 - 220);
  v130.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v130.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v131 = vdupq_n_s32(0x11A9C97Du);
  v134 = v32 - 16;
  v132 = vdupq_n_s32(0x11A9C96Du);
  v133 = *(v28 + 8 * (v26 + a4));
  v35 = *(v33 - 148);
  v34 = *(v33 - 144);
  v37 = *(v33 - 140);
  v36 = *(v33 - 136);
  v38 = *(v33 - 124);
  if (v38 == 2)
  {
    v135 = vld4q_s8(v129);
    v84 = veorq_s8(v135.val[0], v130);
    v85 = vmovl_high_u8(v84);
    v86 = vmovl_u8(*v84.i8);
    v87 = veorq_s8(v135.val[1], v130);
    _Q21 = vmovl_high_u8(v87);
    _Q20 = vmovl_u8(*v87.i8);
    v90 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v91 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v92 = veorq_s8(v135.val[2], v130);
    v93 = vmovl_u8(*v92.i8);
    v94 = vmovl_high_u8(v92);
    v135.val[0] = veorq_s8(v135.val[3], v130);
    v135.val[1] = vmovl_u8(*v135.val[0].i8);
    v135.val[2] = vmovl_u16(*v135.val[1].i8);
    v135.val[1] = vmovl_high_u16(v135.val[1]);
    v135.val[0] = vmovl_high_u8(v135.val[0]);
    v135.val[3] = vmovl_u16(*v135.val[0].i8);
    v135.val[0] = vmovl_high_u16(v135.val[0]);
    v95 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v94, 8uLL)), vshlq_n_s32(vmovl_high_u16(v85), 0x18uLL)), v135.val[0]);
    v96 = vorrq_s8(vorrq_s8(vorrq_s8(v91, vshll_n_u16(*v94.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v85.i8), 0x18uLL)), v135.val[3]);
    v97 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v93, 8uLL)), vshlq_n_s32(vmovl_high_u16(v86), 0x18uLL)), v135.val[1]);
    v98 = vorrq_s8(vorrq_s8(vorrq_s8(v90, vshll_n_u16(*v93.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v86.i8), 0x18uLL)), v135.val[2]);
    v135.val[0] = veorq_s8(vandq_s8(v95, v131), (*v135.val & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v135.val[3] = veorq_s8(vandq_s8(v96, v131), (*&v135.val[3] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v135.val[1] = veorq_s8(vandq_s8(v97, v131), (*&v135.val[1] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v135.val[2] = veorq_s8(vandq_s8(v98, v131), (*&v135.val[2] & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    a23 = vaddq_s32(vsubq_s32(v98, vaddq_s32(v135.val[2], v135.val[2])), v132);
    a24 = vaddq_s32(vsubq_s32(v97, vaddq_s32(v135.val[1], v135.val[1])), v132);
    a25 = vaddq_s32(vsubq_s32(v96, vaddq_s32(v135.val[3], v135.val[3])), v132);
    a26 = vaddq_s32(vsubq_s32(v95, vaddq_s32(v135.val[0], v135.val[0])), v132);
    return sub_1B16B94E0(v34);
  }

  else if (v38 == 1)
  {
    v136 = vld4q_s8(v129);
    v39 = veorq_s8(v136.val[0], v130);
    v40 = vmovl_high_u8(v39);
    v41 = vmovl_high_u16(v40);
    v42 = vmovl_u16(*v40.i8);
    v43 = vmovl_u8(*v39.i8);
    v44 = vmovl_high_u16(v43);
    v45 = vmovl_u16(*v43.i8);
    v46 = veorq_s8(v136.val[1], v130);
    v47 = vmovl_u8(*v46.i8);
    v48 = vmovl_high_u8(v46);
    v49 = veorq_s8(v136.val[2], v130);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v136.val[0] = veorq_s8(v136.val[3], v130);
    v136.val[1] = vmovl_u8(*v136.val[0].i8);
    v136.val[2] = vmovl_u16(*v136.val[1].i8);
    v136.val[0] = vmovl_high_u8(v136.val[0]);
    v136.val[3] = vmovl_u16(*v136.val[0].i8);
    v136.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v136.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v48, 8uLL), v41));
    v136.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v136.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v48.i8, 8uLL), v42));
    v136.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v136.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v47, 8uLL), v44));
    v58 = vdupq_n_s32(0x11A9C97Fu);
    v136.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v136.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v47.i8, 8uLL), v45));
    v59 = veorq_s8(vandq_s8(v136.val[0], v58), (*&v41 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    v60 = veorq_s8(vandq_s8(v136.val[3], v58), (*&v42 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    v61 = veorq_s8(vandq_s8(v136.val[1], v58), (*&v44 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    v62 = veorq_s8(vandq_s8(v136.val[2], v58), (*&v45 & __PAIR128__(0xFFFFFF12FFFFFF12, 0xFFFFFF12FFFFFF12)));
    a23 = vaddq_s32(vsubq_s32(v136.val[2], vaddq_s32(v62, v62)), v132);
    a24 = vaddq_s32(vsubq_s32(v136.val[1], vaddq_s32(v61, v61)), v132);
    a25 = vaddq_s32(vsubq_s32(v136.val[3], vaddq_s32(v60, v60)), v132);
    a26 = vaddq_s32(vsubq_s32(v136.val[0], vaddq_s32(v59, v59)), v132);
    v63 = (v34 & 0x9F7C5BE2 ^ (v34 ^ 0xDF3652F1) & (v36 ^ 0xBFB5F6EC) ^ 0x9F3452E0 | v37 & 0xA3AC0CCA ^ 0x20880C0A ^ (v34 ^ 0x8365A1C4) & (v37 ^ v29)) + (v35 ^ v29) + *(off_1F2870BC0 + v134 + v31) + (a23.i32[(*(off_1F2870C98 + v134 + v31 - 8) - 43)] ^ v30);
    v64 = (v63 ^ 0xD41BB8A5) & (2 * (v63 & v27)) ^ v63 & v27;
    v65 = ((2 * (v63 ^ 0xF833BCC5)) ^ 0x5D5F0DE0) & (v63 ^ 0xF833BCC5) ^ (2 * (v63 ^ 0xF833BCC5)) & 0x2EAF86F0;
    v66 = v65 ^ 0x22A08210;
    v67 = (v65 ^ 0xC0102E0) & (4 * v64) ^ v64;
    v68 = ((4 * v66) ^ 0xBABE1BC0) & v66 ^ (4 * v66) & 0x2EAF86F0;
    v69 = (v68 ^ 0x2AAE02C0) & (16 * v67) ^ v67;
    v70 = ((16 * (v68 ^ 0x4018430)) ^ 0xEAF86F00) & (v68 ^ 0x4018430) ^ (16 * (v68 ^ 0x4018430)) & 0x2EAF86F0;
    v71 = v69 ^ 0x2EAF86F0 ^ (v70 ^ 0x2AA80600) & (v69 << 8);
    v72 = (v71 << 16) & 0x2EAF0000 ^ v71 ^ ((v71 << 16) ^ 0x6F00000) & (((v70 ^ 0x40780F0) << 8) & 0x2EAF0000 ^ 0x290000 ^ (((v70 ^ 0x40780F0) << 8) ^ 0x2F860000) & (v70 ^ 0x40780F0));
    v73 = *(off_1F2870D58 + v134 + v31 - 8);
    v74 = ((v73 - 2) ^ 0xA9) & (2 * ((v73 - 2) & 0xFA)) ^ (v73 - 2) & 0xFA;
    LOBYTE(v70) = (v73 - 2) ^ (2 * (((v73 - 2) ^ 0xA9) & (2 * ((v73 - 2) ^ 0xA9)) & (4 * v74) ^ v74)) ^ 0x8A;
    v75 = (((v34 ^ 0x19062C0E) - 419834894) ^ ((v34 ^ 0xAFA6F8E7) + 1348011801) ^ ((v34 ^ 0x966979E7) + 1771472409)) + 868068616 + (((v63 ^ (2 * v72) ^ 0x868337D5) << (v70 & 9) << (v70 & 0x16 ^ 0x10)) | ((v63 ^ (2 * v72) ^ 0x868337D5) >> (40 - v73)));
    v76 = (2 * (v75 & 0xED0C0006)) & (v75 ^ 0xA8CF183E) ^ v75 & 0xED0C0006 ^ ((2 * (v75 & 0xED0C0006)) & 0x40000008 | 0x1801020);
    v77 = (2 * (v75 ^ 0xA8CF183E)) & 0x45C31838 ^ 0x44410808 ^ ((2 * (v75 ^ 0xA8CF183E)) ^ 0x8B863070) & (v75 ^ 0xA8CF183E);
    v78 = (4 * v76) & 0x45C31838 ^ v76 ^ ((4 * v76) ^ 0x6004080) & v77;
    v79 = (4 * v77) & 0x45C31838 ^ 0x40C31818 ^ ((4 * v77) ^ 0x170C60E0) & v77;
    v80 = (16 * v78) & 0x45C31830 ^ v78 ^ ((16 * v78) ^ 0x58010200) & v79;
    v81 = (16 * v79) & 0x45C31830 ^ 0x1C21838 ^ ((16 * v79) ^ 0x5C318380) & v79;
    v82 = v80 ^ (v80 << 8) & 0x45C31800 ^ ((v80 << 8) ^ 0x81102000) & v81 ^ 0x1420818;
    return (*(v28 + 6544))(v34, v75 ^ (2 * ((v82 << 16) & 0x45C30000 ^ v82 ^ ((v82 << 16) ^ 0x18380000) & ((v81 << 8) & 0x45C30000 ^ 0x4C30000 ^ ((v81 << 8) ^ 0x43180000) & v81))) ^ 0x46439D78, 1170413624, 783220736, 40, off_1F2870D58 - 8, 818, 1211, a9, a10, a11, a12);
  }

  else
  {
    v99 = (((v35 ^ 0x6D00C84B) - 1828767819) ^ ((v35 ^ 0x36041C08) - 906238984) ^ ((v35 ^ 0x7BCD794D) - 2077063501)) + (((*(v33 - 148) ^ 0x8D7C98BE) + 1921214274) ^ ((*(v33 - 148) ^ 0xC0B6A351) + 1061772463) ^ ((*(v33 - 148) ^ 0x6D0396E1) - 1828951777)) + 1276996082;
    v100 = (v99 ^ 0xF475E229) & (2 * (v99 & 0xF575F02A)) ^ v99 & 0xF575F02A;
    v101 = ((2 * (v99 ^ 0x54F4E26D)) ^ 0x4302248E) & (v99 ^ 0x54F4E26D) ^ (2 * (v99 ^ 0x54F4E26D)) & 0xA1811246;
    v102 = v101 ^ 0xA0811241;
    v103 = (v101 ^ 0x1000000) & (4 * v100) ^ v100;
    v104 = ((4 * v102) ^ 0x8604491C) & v102 ^ (4 * v102) & 0xA1811244;
    v105 = v104 & (16 * v103) ^ v103;
    v106 = ((16 * (v104 ^ 0x21811243)) ^ 0x18112470) & (v104 ^ 0x21811243) ^ (16 * (v104 ^ 0x21811243)) & 0xA1811240;
    v107 = v105 ^ 0xA1811247 ^ (v106 ^ 0x10000) & (v105 << 8);
    v108 = v99 ^ (2 * ((v107 << 16) & 0x21810000 ^ v107 ^ ((v107 << 16) ^ 0x12470000) & (((v106 ^ 0xA1801207) << 8) & 0x21810000 ^ 0x20810000 ^ (((v106 ^ 0xA1801207) << 8) ^ 0x81120000) & (v106 ^ 0xA1801207)))) ^ 0x96BC79AA;
    v109 = (((v34 ^ 0xDEA93D2A) + 559334102) ^ ((v34 ^ 0xC5C58815) + 976910315) ^ ((v34 ^ 0x3BA51831) - 1000675377)) + (((*(v33 - 144) ^ 0x2EB4A082) - 783589506) ^ ((*(v33 - 144) ^ 0xB556BE16) + 1252606442) ^ ((*(v33 - 144) ^ 0xBB2BB39A) + 1154763878)) - 1533976185;
    *(v33 - 148) = v108;
    *(v33 - 144) = v109 ^ ((v109 ^ 0x9AA7EE0B) + 128325280) ^ ((v109 ^ 0xFFDC87BE) + 1658683179) ^ ((v109 ^ 0xF868B121) + 1701398966) ^ ((v109 ^ a3) + 1659643756) ^ 0x4237AA65;
    v110 = (((v37 ^ 0x49B919AB) - 1236867499) ^ ((v37 ^ 0xEFDD38CA) + 270714678) ^ ((v37 ^ 0x86AD8C6F) + 2035446673)) + (((*(v33 - 140) ^ 0x5087B275) - 1351070325) ^ ((*(v33 - 140) ^ 0x3EE7CA42) - 1055377986) ^ ((*(v33 - 140) ^ 0x4EA9D539) - 1319753017)) - 1402773800;
    v111 = (v110 ^ 0x450FF236) & (2 * (v110 & 0x952FFB44)) ^ v110 & 0x952FFB44;
    v112 = ((2 * (v110 ^ 0x651434BE)) ^ 0xE0779FF4) & (v110 ^ 0x651434BE) ^ (2 * (v110 ^ 0x651434BE)) & 0xF03BCFFA;
    v113 = v112 ^ 0x1008400A;
    v114 = (v112 ^ 0xE0338F30) & (4 * v111) ^ v111;
    v115 = ((4 * v113) ^ 0xC0EF3FE8) & v113 ^ (4 * v113) & 0xF03BCFF8;
    v116 = (v115 ^ 0xC02B0FE0) & (16 * v114) ^ v114;
    v117 = ((16 * (v115 ^ 0x3010C012)) ^ 0x3BCFFA0) & (v115 ^ 0x3010C012) ^ (16 * (v115 ^ 0x3010C012)) & 0xF03BCFF0;
    v118 = v116 ^ 0xF03BCFFA ^ (v117 ^ 0x38CF00) & (v116 << 8);
    v119 = (v118 << 16) & 0x703B0000 ^ v118 ^ ((v118 << 16) ^ 0x4FFA0000) & (((v117 ^ 0xF003005A) << 8) & 0x703B0000 ^ 0x40300000 ^ (((v117 ^ 0xF003005A) << 8) ^ 0x3BCF0000) & (v117 ^ 0xF003005A));
    v120 = (((v36 ^ 0x85E8CB17) + 2048341225) ^ ((v36 ^ 0x70F16317) - 1894867735) ^ ((v36 ^ 0xD5D0050E) + 707787506)) + (((*(v33 - 136) ^ 0x9455166A) + 1806363030) ^ ((*(v33 - 136) ^ 0xCA671D45) + 899211963) ^ ((*(v33 - 136) ^ 0x7EFBA621) - 2130421281)) - 1281431097;
    v121 = (v120 ^ 0x2DE66945) & (2 * (v120 & 0x8DF47055)) ^ v120 & 0x8DF47055;
    v122 = ((2 * (v120 ^ 0x250609EF)) ^ 0x51E4F374) & (v120 ^ 0x250609EF) ^ (2 * (v120 ^ 0x250609EF)) & 0xA8F279BA;
    v123 = v122 ^ 0xA812088A;
    v124 = (v122 ^ 0xE04130) & (4 * v121) ^ v121;
    v125 = ((4 * v123) ^ 0xA3C9E6E8) & v123 ^ (4 * v123) & 0xA8F279B8;
    v126 = (v125 ^ 0xA0C060A0) & (16 * v124) ^ v124;
    v127 = ((16 * (v125 ^ 0x8321912)) ^ 0x8F279BA0) & (v125 ^ 0x8321912) ^ (16 * (v125 ^ 0x8321912)) & 0xA8F279B0;
    v128 = v126 ^ 0xA8F279BA ^ (v127 ^ 0x88221900) & (v126 << 8);
    *(v33 - 140) = v110 ^ (2 * v119) ^ 0xD5E5C9BE;
    *(v33 - 136) = v120 ^ (2 * ((v128 << 16) & 0x28F20000 ^ v128 ^ ((v128 << 16) ^ 0x79BA0000) & (((v127 ^ 0x20D0601A) << 8) & 0x28F20000 ^ 0x8820000 ^ (((v127 ^ 0x20D0601A) << 8) ^ 0x72790000) & (v127 ^ 0x20D0601A)))) ^ 0xADBD2E2F;
    return v133(v34);
  }
}

uint64_t sub_1B16B4DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29)
{
  LOBYTE(STACK[0x232]) = *(&a29 + v31);
  v33 = v29 != ((19 * (v30 ^ 0x780) + 947) ^ (6 * (v30 ^ 0x726)));
  return (*(v32 + 8 * (((2 * v33) | (8 * v33)) ^ v30)))();
}

uint64_t sub_1B16B4F88@<X0>(int a1@<W8>)
{
  v4 = ((((v2 - 747) | 0x6C0) - 1409) ^ (a1 + 324)) + v1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * ((484 * (v5 < 131)) ^ v2)))();
}

uint64_t sub_1B16B4FC8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a1 + v5);
  return (*(v3 + 8 * ((56 * (v5 != 0)) ^ (v1 - 1290))))();
}

uint64_t sub_1B16B4FFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = v15 ^ v20;
  v24 = HIDWORD(v17) + v22 * (*(*(a14 + 8) + 4) ^ v14) + (v21[1] ^ (v14 + v23 - 60 - 372)) + HIDWORD(v16) + v19 * (*(*(a12 + 8) + 4) ^ v14);
  *v21 = v24 + v14 - (a2 & (2 * v24));
  return (*(v18 + 8 * (((a8 != 2) * v20) ^ v23)))();
}

uint64_t sub_1B16B50E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 120) = v16;
  *(v19 - 112) = &a13;
  *(v19 - 104) = v15;
  *(v19 - 128) = v14 - ((((v19 - 144) | 0x31C7C8D5) + (~(v19 - 144) | 0xCE38372A)) ^ 0x9EE04ACC) * v18 + 1029;
  *(v19 - 144) = &a11;
  *(v19 - 136) = &a11;
  v20 = (*(v17 + 8 * (v14 ^ 0x9FF)))(v19 - 144);
  return (*(v17 + 8 * ((13 * (v13 - 1344007377 < ((((v14 - 1932662375) & 0x733217E3) + 297607838) & 0xEE42DBDC ^ 0x7FFFFE63))) ^ (v14 - 1932662375) & 0x733217E3)))(v20);
}

uint64_t sub_1B16B51B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFF28 ^ (v4 - 1348)) + v2;
  *(a2 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((14 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ (v4 - 6))))();
}

uint64_t sub_1B16B53BC()
{
  v7 = v6 + v3;
  v8 = ((v4 + 246) ^ 0x2B3) & (v3 + 15);
  v9 = v0 - v3 + v8 + 1;
  v10 = v0 + ((v4 + 1670) ^ 0x84DLL) + v8;
  v11 = v8 + v1 + 4;
  v12 = v8 + v2 + 6;
  v14 = v10 > v6 && v9 < v7;
  if (v11 > v6 && v11 - v3 < v7)
  {
    v14 = 1;
  }

  v17 = v12 > v6 && v12 - v3 < v7 || v14;
  return (*(v5 + 8 * ((1006 * v17) ^ v4)))();
}

uint64_t sub_1B16B5450(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49)
{
  v54 = *(v53 - 128);
  v55 = v54 - 201;
  v56 = v50 + 16;
  v57 = v49 ^ 0x425E7458;
  v58 = v52 ^ 0xD76B5593;
  v59 = a6 ^ 0xADD39701;
  v60 = (v54 + 1101138349) ^ a3;
  *(v53 - 116) = v56;
  *(v53 - 136) = 0;
  v61 = (v51 + v56);
  v62 = *(a19 + (v61[13] ^ 0x90));
  v63 = v61[9] ^ 0xD2;
  *(v53 - 132) = (v54 - 201) ^ 0x1CE;
  *(v53 - 128) = v54;
  v64 = v56 | v54 ^ 0x52E;
  *(v53 - 120) = v64;
  v65 = *(v53 - 168) ^ v59 ^ 0x7AAA4BF0 ^ (((*(a18 + (v61[6] ^ 8)) ^ (v61[6] - ((2 * v61[6]) & 0x84) - 62) ^ 0x19) << 8) | (((*(a17 + (v61[4] ^ 0xC5)) + 15) ^ 0xFFFFFFFB) << 24) | *(a20 + (v61[7] ^ 0xFDLL)) ^ 0x42 | ((*(a19 + (v61[5] ^ 0xF5)) ^ 0x9B) << 16));
  v66 = *(v53 - 160) ^ v57 ^ 0x4D036472 ^ (*(a20 + (v61[3] ^ 0x75)) ^ 0xEF | (((*(a17 + (*v61 ^ 0xB0)) + 15) ^ 0x16) << 24) | ((*(a19 + (v61[1] ^ 0x93)) ^ 0x51) << 16) | ((*(a18 + (v61[2] ^ 0x1CLL)) ^ (v61[2] - ((2 * v61[2]) & 0x84) - 62) ^ 0x5D) << 8));
  v67 = *(v53 - 164) ^ v60 ^ 0x3A12A460 ^ (((v62 ^ 0x2F) << ((v55 ^ 0xCE) + 121)) + (((*(a17 + (*(v51 + v64) ^ 0x80)) + 15) ^ 0x31) << 24) + ((*(a18 + (v61[14] ^ 5)) ^ (v61[14] - ((2 * v61[14]) & 0x84) - 62) ^ 0x99) << 8) + (*(a20 + (v61[15] ^ 8)) ^ 0x42));
  v68 = *(v53 - 156) ^ v58 ^ 0x322D6683 ^ (*(a20 + (v61[11] ^ 9)) ^ 0x45 | ((*(a19 + v63) ^ 0xB9) << 16) | ((*(a18 + (v61[10] ^ 0xA9)) ^ (v61[10] - ((2 * v61[10]) & 0x84) - 62) ^ 0xC2) << 8) | (((*(a17 + (v61[8] ^ 2)) + 15) ^ 0xE2) << 24));
  v69 = *(&off_1F2870B00 + v55 - 1043) - 4;
  v70 = *&v69[4 * ((*(v53 - 168) ^ v59 ^ 0x4BF0 ^ (((*(a18 + (v61[6] ^ 8)) ^ (v61[6] - ((2 * v61[6]) & 0x84) - 62) ^ 0x19) << 8) | *(a20 + (v61[7] ^ 0xFDLL)) ^ 0x42)) >> 8)];
  v71 = *(&off_1F2870B00 + (v55 ^ 0x463)) - 8;
  LODWORD(v63) = *&v71[4 * BYTE2(v68)];
  *(v53 - 124) = v55;
  v72 = *(&off_1F2870B00 + (v55 ^ 0x403)) - 8;
  v73 = v70 ^ 0x7F490BD3 ^ *&v72[4 * HIBYTE(v67)];
  v74 = *&v71[4 * BYTE2(v66)];
  v75 = *(&off_1F2870B00 + (v55 ^ 0x45F));
  v76 = *&v72[4 * HIBYTE(v68)] ^ 0x7F490BD3 ^ *&v69[4 * BYTE1(v66)];
  v77 = (*(v75 + 4 * v67) - 1714531319 - ((2 * *(v75 + 4 * v67) + 1766546274) & 0x4A514CB0)) ^ *&v71[4 * BYTE2(v65)];
  v78 = (v77 - 346988989 - ((2 * v77) & 0xD6A2BC86)) ^ *&v72[4 * HIBYTE(v66)];
  LODWORD(v63) = v63 ^ 0x4E79F81B ^ *&v72[4 * HIBYTE(v65)] ^ (*(v75 + 4 * v66) - 190468687);
  v79 = *&v69[4 * BYTE1(v68)] ^ *(v53 - 172) ^ (v78 - 1810344560 - ((2 * v78) & 0x2830AB20));
  v80 = *&v71[4 * BYTE2(v67)] ^ *(v53 - 180) ^ (v76 - 1524062632 - ((2 * v76) & 0x4A514CB0)) ^ (*(v75 + 4 * v65) - 190468687);
  LODWORD(v63) = *&v69[4 * BYTE1(v67)] ^ *(v53 - 176) ^ (v63 - 1810344560 - ((2 * v63) & 0x2830AB20));
  v81 = v63 ^ 0xBF80DD5E;
  v82 = *(v53 - 184) ^ v74 ^ (*(v75 + 4 * v68) - 190468687) ^ 0x4329B1E1 ^ (v73 - 1524062632 - ((2 * v73) & 0x4A514CB0));
  v83 = *&v71[4 * ((v79 ^ 0xD7674CCB) >> 16)] ^ *&v72[4 * HIBYTE(v82)];
  v84 = *&v69[4 * ((v80 ^ 0xDD4) >> 8)] ^ (*(v75 + 4 * v82) - 2000813247 - ((2 * *(v75 + 4 * v82) + 692804450) & 0x2830AB20));
  LODWORD(v63) = *(v75 + 4 * (v63 ^ 0x48u));
  LODWORD(v63) = (v63 - 537457676 - ((2 * v63 - 380937374) & 0xD6A2BC86)) ^ *&v72[4 * ((v80 ^ 0x16B10DD4u) >> 24)];
  LODWORD(v63) = (v63 - 1810344560 - ((2 * v63) & 0x2830AB20)) ^ *&v69[4 * ((v79 ^ 0x4CCB) >> 8)];
  v85 = *(v75 + 4 * (v79 ^ 0xDDu));
  v86 = (v85 - 2000813247 - ((2 * v85 + 692804450) & 0x2830AB20)) ^ *&v69[4 * BYTE1(v82)];
  v87 = *&v72[4 * ((v79 ^ 0xD7674CCB) >> 24)] ^ (v84 - 346988989 - ((2 * v84) & 0xD6A2BC86));
  v88 = (v86 - 346988989 - ((2 * v86) & 0xD6A2BC86)) ^ *&v72[4 * HIBYTE(v81)];
  v89 = *&v71[4 * ((v80 ^ 0x16B10DD4u) >> 16)];
  LODWORD(v63) = *&v71[4 * BYTE2(v82)] ^ a49 ^ (v63 - 1524062632 - ((2 * v63) & 0x4A514CB0));
  v90 = __ROR4__(__ROR4__(*&v71[4 * BYTE2(v81)] ^ 0xB9AB301 ^ (v87 - 1524062632 - ((2 * v87) & 0x4A514CB0)), 5) ^ 0x50D2ECF9, 27);
  v91 = a47 ^ v90 ^ 0x6EDAF696;
  v92 = ((v83 ^ 0x4E79F81B) - 1810344560 - 2 * ((v83 ^ 0x4E79F81B) & 0x14185594 ^ v83 & 4)) ^ a48 ^ *&v69[4 * BYTE1(v81)] ^ (*(v75 + 4 * (v80 ^ 0xC2u)) - 190468687);
  v93 = *(v53 - 188) ^ v89 ^ 0x2201ECBC ^ (v88 - 1524062632 - ((2 * v88) & 0x4A514CB0));
  v94 = *(v75 + 4 * (v63 ^ 0x37u));
  v95 = (v94 - 1714531319 - ((2 * v94 + 1766546274) & 0x4A514CB0)) ^ *&v71[4 * (((a47 ^ v90) >> 16) ^ 0x45)];
  v96 = *&v69[4 * BYTE1(v91)] ^ *&v72[4 * ((v63 ^ 0xD62C0A37) >> 24)] ^ 0x7F490BD3;
  v97 = (v95 - 1810344560 - ((2 * v95) & 0x2830AB20)) ^ *&v69[4 * BYTE1(v93)];
  v98 = *&v71[4 * BYTE2(v93)] ^ *&v69[4 * ((v63 ^ 0xA37) >> 8)] ^ 0x3130F3C8;
  v99 = *&v72[4 * ((v92 ^ 0xFC47C039) >> 24)];
  LODWORD(v63) = *&v72[4 * HIBYTE(v93)] ^ *&v71[4 * (BYTE2(v63) ^ 0xB3)] ^ 0x4E79F81B ^ (*(v75 + 4 * ((a47 ^ v90) ^ 0x96u)) - 190468687);
  v100 = *(v75 + 4 * (v92 ^ 0x39u)) - 190468687;
  v101 = *&v69[4 * (BYTE1(v92) ^ 0x87)];
  v102 = (v96 - 1524062632 - ((2 * v96) & 0x4A514CB0)) ^ a42 ^ *&v71[4 * ((v92 ^ 0xFC47C039) >> 16)] ^ (*(v75 + 4 * v93) - 190468687);
  v103 = a44 ^ v99 ^ 0x61C6B6CD ^ (v97 - 346988989 - ((2 * v97) & 0xD6A2BC86));
  v104 = (v98 - 346988989 - ((2 * v98) & 0xD6A2BC86)) ^ a46 ^ *&v72[4 * HIBYTE(v91)] ^ v100;
  LODWORD(v63) = v101 ^ a45 ^ (v63 - 1810344560 - ((2 * v63) & 0x2830AB20));
  BYTE2(v98) = BYTE2(v63) ^ 0x65;
  v105 = (v63 ^ 0x7D650C28) >> 24;
  v106 = *(v75 + 4 * (v63 ^ 0x28u));
  v107 = *(v75 + 4 * (v104 ^ 0xDDu));
  v108 = (v106 - 537457676 - ((2 * v106 - 380937374) & 0xD6A2BC86)) ^ *&v72[4 * ((v102 ^ 0x7F82DAABu) >> 24)];
  v109 = (v108 - 1810344560 - ((2 * v108) & 0x2830AB20)) ^ *&v69[4 * (((v104 ^ 0x35DF) >> 8) ^ 0x79)];
  v110 = (v107 - 2000813247 - ((2 * v107 + 692804450) & 0x2830AB20)) ^ *&v69[4 * BYTE1(v103)];
  LODWORD(v63) = *&v71[4 * (((v104 ^ 0x13FC35DF) >> 16) ^ 0x9B)] ^ *&v69[4 * (BYTE1(v63) ^ 0x4B)];
  v111 = *&v71[4 * ((v102 ^ 0x7F82DAABu) >> 16)] ^ (v110 - 1524062632 - ((2 * v110) & 0x4A514CB0));
  v112 = *&v71[4 * BYTE2(v98)] ^ 0x4E79F81B ^ *&v72[4 * (HIBYTE(v104) ^ 0xBD)] ^ (*(v75 + 4 * v103) - 190468687);
  v113 = *&v72[4 * v105] ^ a41 ^ (v111 - 346988989 - ((2 * v111) & 0xD6A2BC86));
  v114 = *&v71[4 * BYTE2(v103)] ^ a40 ^ (v109 - 1524062632 - ((2 * v109) & 0x4A514CB0));
  v115 = v113 ^ 0x66654B3E;
  LODWORD(v63) = *&v72[4 * HIBYTE(v103)] ^ a39 ^ (*(v75 + 4 * (v102 ^ 0xBDu)) - 190468687) ^ ((v63 ^ 0x3130F3C8) - 346988989 - 2 * ((v63 ^ 0x3130F3C8) & 0x6B515E47 ^ v63 & 4));
  LOBYTE(v102) = v63 ^ 0x1F;
  v116 = a43 ^ *&v69[4 * (BYTE1(v102) ^ 0xDA)] ^ 0xE82DABD ^ (v112 - 1810344560 - ((2 * v112) & 0x2830AB20));
  v117 = HIBYTE(v116);
  v118 = (v113 ^ 0x66654B3E) >> 24;
  v119 = *&v72[4 * ((v63 ^ 0x880EE61F) >> 24)];
  v120 = *(v75 + 4 * (v113 ^ 0x28u));
  v121 = (*(v75 + 4 * v116) - 2000813247 - ((2 * *(v75 + 4 * v116) + 692804450) & 0x2830AB20)) ^ *&v69[4 * ((v63 ^ 0xE61F) >> 8)];
  v122 = (v121 - 346988989 - ((2 * v121) & 0xD6A2BC86)) ^ *&v72[4 * v118];
  v123 = v114 ^ 0xA480DD5E;
  v124 = (v120 - 2000813247 - ((2 * v120 + 692804450) & 0x2830AB20)) ^ *&v69[4 * BYTE1(v116)];
  LODWORD(v63) = (v124 - 1524062632 - ((2 * v124) & 0x4A514CB0)) ^ *&v71[4 * (BYTE2(v63) ^ 0x91)];
  v125 = v119 ^ 0xB4345216 ^ *&v69[4 * BYTE1(v115)];
  v126 = *&v71[4 * BYTE2(v116)] ^ 0x65CF4C9C;
  v127 = (*(v75 + 4 * v102) - 1714531319 - ((2 * *(v75 + 4 * v102) + 1766546274) & 0x4A514CB0)) ^ *&v71[4 * BYTE2(v115)];
  v128 = (v127 - 346988989 - ((2 * v127) & 0xD6A2BC86)) ^ *&v72[4 * v117];
  v129 = (*(v75 + 4 * (v114 ^ 0x48u)) - 190468687) ^ a35 ^ (v126 + v125 - 2 * (v126 & v125));
  v130 = *&v72[4 * ((v114 ^ 0xA480DD5E) >> 24)] ^ a36 ^ (v63 - 346988989 - ((2 * v63) & 0xD6A2BC86));
  v131 = *&v69[4 * BYTE1(v123)] ^ a38 ^ (v128 - 1810344560 - ((2 * v128) & 0x2830AB20));
  v132 = a37 ^ *&v71[4 * BYTE2(v123)] ^ 0x84654B28 ^ (v122 - 1524062632 - ((2 * v122) & 0x4A514CB0));
  v133 = *(v75 + 4 * (v129 ^ 0x7Eu));
  v134 = *(v75 + 4 * (v131 ^ 0xDDu));
  LODWORD(v63) = *&v72[4 * (HIBYTE(v129) ^ 0x30)] ^ 0x4E79F81B ^ *&v71[4 * (BYTE2(v131) ^ 0x67)] ^ (*(v75 + 4 * (v130 ^ 0x6Eu)) - 190468687);
  v135 = (v134 - 537457676 - ((2 * v134 - 380937374) & 0xD6A2BC86)) ^ *&v72[4 * HIBYTE(v132)];
  v136 = (v135 - 1524062632 - ((2 * v135) & 0x4A514CB0)) ^ *&v71[4 * (((v130 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v137 = *&v71[4 * BYTE2(v132)] ^ (v133 - 1714531319 - ((2 * v133 + 1766546274) & 0x4A514CB0));
  v138 = *&v72[4 * ((v130 ^ 0xD0C9FB6E) >> 24)] ^ *&v71[4 * (BYTE2(v129) ^ 0xEE)] ^ 0x4E79F81B ^ (*(v75 + 4 * v132) - 190468687);
  v139 = *&v69[4 * (BYTE1(v129) ^ 0xC3)];
  v140 = *&v69[4 * (BYTE1(v130) ^ 0xBC)];
  v141 = (v137 - 346988989 - ((2 * v137) & 0xD6A2BC86)) ^ *&v72[4 * (HIBYTE(v131) ^ 0x5F)];
  v142 = *&v69[4 * (BYTE1(v131) ^ 0x4C)] ^ a32 ^ (v138 - 1810344560 - ((2 * v138) & 0x2830AB20));
  v143 = (v63 - 1810344560 - ((2 * v63) & 0x2830AB20)) ^ a31 ^ *&v69[4 * BYTE1(v132)];
  v144 = v140 ^ a34 ^ (v141 - 1810344560 - ((2 * v141) & 0x2830AB20));
  v145 = a33 ^ v139 ^ 0x9A674CDD ^ (v136 - 1810344560 - ((2 * v136) & 0x2830AB20));
  v146 = *(v75 + 4 * ((a33 ^ v139) ^ 0xDDu ^ (v136 - 112 - ((2 * v136) & 0x20))));
  v147 = (v146 - 2000813247 - ((2 * v146 + 692804450) & 0x2830AB20)) ^ *&v69[4 * ((v144 ^ 0xDAAB) >> 8)];
  v148 = (v147 - 1524062631 + ~((2 * v147) & 0x4A514CB0)) ^ *&v71[4 * ((v143 ^ 0xBFC6B6DB) >> 16)];
  v149 = v148 - 346988989 - ((2 * v148) & 0xD6A2BC86);
  v150 = *&v72[4 * ((v143 ^ 0xBFC6B6DB) >> 24)] ^ 0x7F490BD3 ^ (*(v75 + 4 * (v142 ^ 0xEu)) - 190468687) ^ *&v69[4 * ((a33 ^ v139 ^ 0x4CDD ^ (v136 + 21904 - ((2 * v136) & 0xAB20))) >> 8)];
  v151 = *&v69[4 * (BYTE1(v142) ^ 0x2A)] ^ 0x7F490BD3 ^ *&v72[4 * ((v144 ^ 0x2982DAABu) >> 24)];
  LODWORD(v63) = *&v69[4 * ((v143 ^ 0xB6DB) >> 8)] ^ 0x7F490BD3 ^ *&v72[4 * HIBYTE(v145)];
  v152 = *(v75 + 4 * (v144 ^ 0xBDu)) - 190468687;
  v153 = (v150 - 1524062632 - ((2 * v150) & 0x4A514CB0)) ^ a27 ^ *&v71[4 * ((v144 ^ 0x2982DAABu) >> 16)];
  v154 = a30 ^ *&v71[4 * BYTE2(v145)] ^ (*(v75 + 4 * (v143 ^ 0xCDu)) - 190468687) ^ (v151 - 1524062632 - ((2 * v151) & 0x4A514CB0)) ^ 0x2674CDD;
  v155 = a28 ^ *&v72[4 * (HIBYTE(v142) ^ 0xA6)] ^ 0xAF54BB9B ^ v149;
  v156 = a29 ^ *&v71[4 * (BYTE2(v142) ^ 0xB3)] ^ v152 ^ 0x2BE67D3F ^ (v63 - 1524062631 + ~((2 * v63) & 0x4A514CB0));
  LODWORD(v63) = *(v75 + 4 * (v153 ^ 0x8Au));
  v157 = *(v75 + 4 * ((a28 ^ v72[4 * (HIBYTE(v142) ^ 0xA6)]) ^ 0x9Bu ^ v149));
  v158 = (v157 - 1714531319 - ((2 * v157 + 1766546274) & 0x4A514CB0)) ^ *&v71[4 * BYTE2(v154)];
  v159 = (v158 - 1810344560 - ((2 * v158) & 0x2830AB20)) ^ *&v69[4 * BYTE1(v156)];
  v160 = *&v72[4 * ((v153 ^ 0x44E9778Au) >> 24)];
  v161 = *&v72[4 * HIBYTE(v156)] ^ *&v69[4 * ((v153 ^ 0x778A) >> 8)];
  v162 = *&v72[4 * HIBYTE(v155)] ^ *&v69[4 * BYTE1(v154)] ^ 0x7F490BD3 ^ (*(v75 + 4 * (v156 ^ 0x16u)) - 190468687);
  LODWORD(v63) = *&v72[4 * HIBYTE(v154)] ^ (v63 - 537457676 - ((2 * v63 - 380937374) & 0xD6A2BC86));
  v163 = *&v71[4 * (BYTE2(v153) ^ 0x76)];
  v164 = (v63 - 1524062632 - ((2 * v63) & 0x4A514CB0)) ^ *&v71[4 * BYTE2(v156)];
  LODWORD(v63) = v162 - 1524062632 - ((2 * v162) & 0x4A514CB0);
  v165 = *&v71[4 * BYTE2(v155)] ^ a25 ^ (*(v75 + 4 * v154) - 190468687) ^ ((v161 ^ 0x7F490BD3) - 1524062632 - 2 * ((v161 ^ 0x7F490BD3) & 0x2528A65C ^ v161 & 4));
  v166 = v160 ^ a24 ^ (v159 - 346988989 - ((2 * v159) & 0xD6A2BC86));
  v167 = a26 ^ *&v69[4 * BYTE1(v155)] ^ 0x26E67D29 ^ (v164 - 1810344560 - ((2 * v164) & 0x2830AB20));
  LOBYTE(v162) = v160 ^ a24 ^ (v159 + 67 - ((2 * v159) & 0x86)) ^ 0x58;
  v168 = a28 ^ a25 ^ v163 ^ 0xA254BB9B ^ v63;
  v169 = *(v75 + 4 * (v165 ^ 0x49u));
  v170 = (*(v75 + 4 * v167) - 2000813247 - ((2 * *(v75 + 4 * v167) + 692804450) & 0x2830AB20)) ^ *&v69[4 * ((v160 ^ a24 ^ (v159 + 24131 - ((2 * v159) & 0xBC86)) ^ 0x2758) >> 8)];
  v171 = *&v72[4 * ((v166 ^ 0x4BE2758) >> 24)];
  v172 = (v169 - 1714531319 - ((2 * v169 + 1766546274) & 0x4A514CB0)) ^ *&v71[4 * (BYTE2(v166) ^ 0x21)];
  v173 = (v172 - 346988989 - ((2 * v172) & 0xD6A2BC86)) ^ *&v72[4 * HIBYTE(v168)];
  v174 = (v170 - 1524062632 - ((2 * v170) & 0x4A514CB0)) ^ *&v71[4 * BYTE2(v168)];
  v175 = *&v72[4 * (HIBYTE(v165) ^ 0xEF)];
  LODWORD(v72) = (*(v75 + 4 * v162) - 537457676 - ((2 * *(v75 + 4 * v162) - 380937374) & 0xD6A2BC86)) ^ *&v72[4 * HIBYTE(v167)];
  LODWORD(v63) = (v72 - 1810344560 - ((2 * v72) & 0x2830AB20)) ^ *&v69[4 * BYTE1(v168)];
  v176 = v171 ^ *&v69[4 * (BYTE1(v165) ^ 0xEB)] ^ 0x7F490BD3 ^ (*(v75 + 4 * v168) - 190468687);
  LODWORD(v72) = *&v71[4 * BYTE2(v167)] ^ a21 ^ (v176 - 1524062632 - ((2 * v176) & 0x4A514CB0));
  v177 = *&v71[4 * (BYTE2(v165) ^ 3)];
  LODWORD(v71) = *&v69[4 * BYTE1(v167)] ^ a22 ^ (v173 - 1810344560 - ((2 * v173) & 0x2830AB20));
  LODWORD(v63) = v177 ^ a23 ^ (v63 - 1524062632 - ((2 * v63) & 0x4A514CB0));
  v178 = a23 ^ a25 ^ v175 ^ (v174 - 346988989 - ((2 * v174) & 0xD6A2BC86));
  v179 = v178 ^ 0xBD9E3C06;
  v180 = v63 ^ 0xB0693C07;
  v181 = *(v53 - 124);
  v182 = *(&off_1F2870B00 + (v181 ^ 0x43F)) - 12;
  v183 = *&v182[4 * ((a23 ^ a25 ^ v175 ^ (v174 + 67 - ((2 * v174) & 0x86))) ^ 7)];
  v184 = *(&off_1F2870B00 + v181 - 1112) - 4;
  v185 = *&v184[4 * (HIBYTE(v178) ^ 0xD2)];
  v186 = 1909043885 * v185 - ((59991386 * v185 + 80226446) & 0xB15C7D4);
  v187 = *(&off_1F2870B00 + v181 - 1065);
  HIDWORD(v188) = *(v187 + 4 * ((v71 ^ 0xFAB5) >> 8)) ^ 0x2098047;
  LODWORD(v188) = *(v187 + 4 * ((v71 ^ 0xFAB5) >> 8));
  LODWORD(v63) = (v188 >> 28) ^ (*&v182[4 * (v72 ^ 0x16)] - 421160104) ^ (1909043885 * *&v184[4 * (BYTE3(v63) ^ 0xDF)] + 308548679);
  v189 = v183 - ((2 * v183 + 231421616) & 0xB15C7D4);
  HIDWORD(v188) = *(v187 + 4 * ((v72 ^ 0xF016) >> 8)) ^ 0x2098047;
  LODWORD(v188) = *(v187 + 4 * ((v72 ^ 0xF016) >> 8));
  v190 = v188 >> 28;
  HIDWORD(v188) = *(v187 + 4 * BYTE1(v179)) ^ 0x2098047;
  LODWORD(v188) = *(v187 + 4 * BYTE1(v179));
  v191 = *(&off_1F2870B00 + v181 - 1086) - 4;
  v192 = *&v191[4 * ((v71 ^ 0x422CFAB5) >> 16)];
  v193 = *&v191[4 * ((v72 ^ 0xF6BCF016) >> 16)];
  v194 = (v188 >> 28) ^ (*&v182[4 * (v71 ^ 0xB5)] - 421160104);
  LODWORD(v182) = *&v182[4 * v180];
  v195 = *&v191[4 * BYTE2(v179)];
  LODWORD(v191) = *&v191[4 * (BYTE2(v180) ^ 0xF7)];
  v196 = *(v187 + 4 * BYTE1(v180));
  LODWORD(v187) = *&v184[4 * ((v71 >> 24) ^ 0x2D)];
  HIDWORD(v188) = v196 ^ 0x2098047;
  LODWORD(v188) = v196;
  LODWORD(v71) = a13 ^ v195 ^ (v63 + 92988394 - ((2 * v63) & 0xB15C7D4));
  LODWORD(v182) = v192 ^ a15 ^ v190 ^ (v182 - 421160104) ^ (v186 + 401537073);
  LODWORD(v75) = (v189 - 328171710) ^ a14 ^ v193 ^ (1909043885 * v187 + 308548679) ^ (v188 >> 28);
  v197 = a14 ^ a21 ^ v191 ^ (v194 + 92988394 - ((2 * v194) & 0xB15C7D4));
  v198 = *(v53 - 144);
  v199 = v197 ^ (1909043885 * *&v184[4 * ((v72 >> 24) ^ 0x99)] + 308548679);
  v200 = *(&off_1F2870B00 + (v181 ^ 0x4DF));
  v61[10] = *(v200 + ((((v189 + 32578) ^ a14 ^ v193 ^ (-19795 * v187 + 5191) ^ (v188 >> 28)) >> 8) ^ 0x79)) ^ 0x8B;
  v201 = v181;
  v202 = *(&off_1F2870B00 + (v181 ^ 0x46C)) - 8;
  v61[13] = v202[BYTE2(v199) ^ 0xF0] ^ 0x86;
  v203 = *(&off_1F2870B00 + v181 - 965) - 4;
  v61[15] = (v203[v199 ^ 0x45] + 105) ^ 0x8F;
  v61[6] = *(v200 + (BYTE1(v182) ^ 0x1BLL)) ^ 0x77;
  v61[1] = v202[BYTE2(v71) ^ 0x3ELL] ^ 0xE0;
  v204 = *(&off_1F2870B00 + (v181 & 0xAC1B7335)) - 8;
  v205 = *(v53 - 116);
  *(v198 + *(v53 - 120)) = v204[HIBYTE(v199) ^ 0x41] ^ 0xE2;
  v61[8] = v204[BYTE3(v75) ^ 0xB6] ^ 0x24;
  v61[3] = (v203[v71 ^ 0xDFLL] + 105) ^ 0x17;
  v61[14] = *(v200 + (BYTE1(v199) ^ 0x5ELL)) ^ 0x36;
  v61[11] = (v203[((v189 + 66) ^ a14 ^ v193 ^ (-83 * v187 + 71) ^ (v188 >> 28)) ^ 0x54] + 105) ^ 0x67;
  v61[2] = *(v200 + (BYTE1(v71) ^ 0x13)) ^ 0x7B;
  v61[7] = (v203[v182 ^ 0xDELL] + 105) ^ 0x84;
  v61[5] = v202[BYTE2(v182) ^ 0x7ALL] ^ 0x27;
  *v61 = v204[(v71 >> 24) ^ 0xB5] ^ 0xC4;
  v61[9] = v202[BYTE2(v75) ^ 0x6FLL] ^ 0x55;
  v61[4] = v204[(v182 >> 24) ^ 0x49] ^ 0xB0;
  v206 = v205 + 787148193 < a16;
  if (a16 < 0x2EEAED91 != (v205 + 787148193) < 0x2EEAED91)
  {
    v206 = a16 < 0x2EEAED91;
  }

  return (*(*(v53 - 152) + 8 * (v201 ^ (4 * v206))))();
}

void sub_1B16B5494(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x25E7AFF025E7AFF0;
  *(a1 + 16) = 0xA1E377C215A6CA6DLL;
  *(a1 + 24) = 296339821;
  *v2 = a1;
  JUMPOUT(0x1B16B54CCLL);
}

unsigned int **sub_1B16B555C@<X0>(unsigned int **result@<X0>, int a2@<W8>)
{
  v3 = 1466505531 - (((a2 ^ 0x72BDEF14) - 1925050132) ^ ((a2 ^ 0x2A917D0C) - 714177804) ^ (((v2 - 365) ^ 0xB67AA75E) + (a2 ^ 0x49855B75)));
  **result = v3 ^ ((v3 ^ 0x978BD37) - 1617638439) ^ ((v3 ^ 0xEC9B3998) + 2054639480) ^ ((v3 ^ 0xB32FF042) + 633570990) ^ ((v3 ^ 0x3FDFFDFD) - 1456239853) ^ 0x78BA407D;
  return result;
}

uint64_t sub_1B16B5748@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  a6 = v8 + 210068311 * ((&a3 & 0xBA07B2B2 | ~(&a3 | 0xBA07B2B2)) ^ 0xB773E2A5) + 791;
  a3 = a2;
  a4 = a1;
  v9 = (*(v7 + 8 * (v8 + 1433)))(&a3);
  return (*(v7 + 8 * (((a5 == v6) * ((181 * ((v8 - 707316766) & 0x2A28CBFC ^ 0x2D0)) ^ 0x338)) ^ v8)))(v9);
}

void sub_1B16B58A0()
{
  v4 = *(v0 + 16) + v2;
  v5 = ((v4 ^ 0x8C73F8ACCF421D82) + 0x50090F63AACA0E3ELL) ^ v4 ^ ((v4 ^ 0xD619E5A3387E9860) + 0xA63126C5DF68BE0) ^ ((v4 ^ 0x39FB7EFBFAFE1FB6) - 0x1A7E76CB6089F3F6) ^ ((v4 ^ 0x40146BC497B57614) + (v3 ^ 0x9C6E9C0BF23D6406));
  *v6 = (HIBYTE(v5) ^ 0x23) + (~(2 * (HIBYTE(v5) ^ 0x23)) | 3) + 127;
  v6[1] = (BYTE6(v5) ^ 0x85) + (~(2 * (BYTE6(v5) ^ 0x85)) | 3) + 127;
  v6[2] = (BYTE5(v5) ^ 8) + ~(2 * (BYTE5(v5) ^ 8 ^ BYTE5(v5) & 1)) + 127;
  v6[3] = (BYTE4(v5) ^ 0x30) - 2 * (BYTE4(v5) ^ 0x30 ^ BYTE4(v5) & 1) + 126;
  v6[4] = (BYTE3(v5) ^ 0x9A) - ((2 * (BYTE3(v5) ^ 0x9A)) & 0xFC) + 126;
  v6[5] = (BYTE2(v5) ^ 0x77) - ((2 * (BYTE2(v5) ^ 0x77)) & 0xFC) + 126;
  v6[6] = (BYTE1(v5) ^ 0xEC) - ((2 * (BYTE1(v5) ^ 0xEC)) & 0xFC) + 126;
  v6[7] = v5 ^ 0x3E;
  *(v0 + 8) = *(v1 + 24);
}

uint64_t sub_1B16B5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37)
{
  if ((v37 - 623) < 0xFFFFFD90)
  {
    v41 = 0;
  }

  else
  {
    v41 = -1;
  }

  v42 = 1564307779 * ((0x1F3ECC6088A1E744 - ((v40 - 152) | 0x1F3ECC6088A1E744) + a37) ^ 0xC502C7E5E053D4A8);
  *(v40 - 152) = a35 - v42 - 32;
  *(v40 - 148) = v42 + v41 + 2 * a35 - 200327406;
  *(v40 - 144) = v42 ^ 1;
  v43 = v40 - 168;
  *(v43 + 32) = (v39 + 1) + v42;
  *(v43 + 40) = v42 ^ 3;
  *(v40 - 120) = v42 + a35 - 27;
  *(v40 - 116) = -2030744672 - v42;
  v44 = (*(v38 + 17256))(v40 - 152);
  return (*(v38 + 8 * *(v40 - 140)))(v44);
}

uint64_t sub_1B16B5BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = (v13 - 1791557494) & 0x6AC8FDFD;
  v17 = (((a13 + 605591308) ^ 0xA95413A4) + 234133662) ^ (a13 + 605591308) ^ (((a13 + 605591308) ^ 0xAD6B9BC8) + 164303090) ^ ((v16 ^ 0x243F8C88) + ((a13 + 605591308) ^ 0x809F024D)) ^ (((a13 + 605591308) ^ 0xDFFFFB70 ^ *(v14 - 132)) + 2069853663);
  *(v14 - 132) = v16 ^ 0x6A;
  v19 = v17 == 1532982470 || (v17 & 0xF) != 657 * (v16 ^ 0x5FF) - 1308;
  v20 = *(v15 + 8 * ((1022 * v19) ^ v16));
  *(v14 - 136) = -42899;
  return v20();
}

uint64_t sub_1B16B5D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = (((v8 ^ 0x96FE2920) + 1761728224) ^ ((v8 ^ 0xF209FC91) + 234226543) ^ ((v8 ^ 0x755E1CDC) - 1969102044)) + (((LODWORD(STACK[0x4F4]) ^ 0xEE3604DC) + 298449700) ^ ((LODWORD(STACK[0x4F4]) ^ 0x36E1CD18) - 920767768) ^ ((LODWORD(STACK[0x4F4]) ^ ((a8 - 1636) | 0x38) ^ 0xC97E0115) + 914489175)) + 592679642;
  *(STACK[0x240] + 52) = ((v11 % 0x2710) ^ 0xE7EF6A9D) + 1065334259 + ((2 * (v11 % 0x2710)) & 0x553A);
  v12 = STACK[0x4FC];
  *(v10 + 32) -= 1616;
  LODWORD(STACK[0x310]) = v12;
  return (*(v9 + 8 * ((1302 * (v12 == a7)) ^ (a8 - 1580))))();
}

uint64_t sub_1B16B6404@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, int a58)
{
  LODWORD(STACK[0x30C]) = a1;
  v60 = (*(v58 + 8 * (a58 + 1457)))(v59 + 4, 0);
  v61 = v59[4] + 1820993421 - ((2 * v59[4]) & 0xD9144F1A);
  v59[1] = v59[6] + 1820993421 - ((((a58 - 204) | 0x5E8) ^ 0xD91448F2) & (2 * v59[6]));
  v59[2] = v61;
  v62 = (*(v58 + 8 * (a58 + 1435)))(v60);
  v59[3] = v62 + 1820993421 - ((2 * v62) & 0xD9144F1A);
  v63 = (*(v58 + 8 * a57))();
  *v59 = v63 + 1820993421 - ((2 * v63) & 0xD9144F1A);
  return sub_1B16B64CC();
}

uint64_t sub_1B16B64CC()
{
  v7 = *(v2 + 4 * (v5 - 1));
  v8 = (1664525 * (v7 ^ (v7 >> 30))) ^ *(v2 + 4 * v5);
  *(v2 + 4 * v5) = v4 + (((*(v3 + 4 * v4) ^ 0x499CFA48) - 1235024456) ^ ((*(v3 + 4 * v4) ^ 0x85434F05) + 2059186427) ^ ((*(v3 + 4 * v4) ^ 0xA05592C0) + 1605004608)) - 1568570240 + (((v8 ^ 0xA36D9194) + 1768239769) ^ ((v8 ^ 0x1011AC6A) - 635891865) ^ ((v8 ^ 0xB37C3DFE) + 2037686003));
  v9 = 1564307779 * ((~((v6 - 216) | 0x2B887BFBB41FA2ADLL) + ((v6 - 216) & 0x2B887BFBB41FA2ADLL)) ^ 0xF1B4707EDCED9141);
  *(v6 - 184) = ((v0 + 1216549263) ^ 0x85) + v9;
  *(v6 - 208) = v9 ^ 1;
  v10 = v6 - 216;
  *(v10 + 16) = v5 + 1 + v9;
  *(v10 + 24) = v9 ^ 0x26F;
  *(v6 - 180) = -2030746696 - v9 + v0;
  *(v6 - 216) = v0 + 1216549263 - v9 + 30;
  *(v6 - 212) = v0 + 1216549263 + v9;
  v11 = (*(v1 + 8 * (v0 + 133)))(v6 - 216);
  return (*(v1 + 8 * *(v6 - 204)))(v11);
}

uint64_t sub_1B16B6678@<X0>(uint64_t a1@<X1>, int a2@<W2>, unsigned int a3@<W8>)
{
  v9 = *(v7 - 220 + a3 + 72);
  v10 = ((v8 + v4 + 1994373850) & (2 * a3)) + (a3 ^ (a2 + 3584)) + v3;
  *(a1 + v10) = (HIBYTE(v9) ^ 0x20) - 2 * (HIBYTE(v9) ^ 0x20 ^ HIBYTE(v9) & 1) + 126;
  *(a1 + v10 + 1) = (BYTE2(v9) ^ 0xC9) - ((2 * (BYTE2(v9) ^ 0xC9)) & 0xFC) + 126;
  *(a1 + v10 + 2) = (BYTE1(v9) ^ 0xAD) + (~(2 * ((v9 >> 8) ^ 0xFFFFFFAD)) | 3) + 127;
  *(a1 + v10 + 3) = v9 ^ 0x70;
  return (*(v6 + 8 * (((a3 + 4 < *(v7 - 128)) * v5) ^ v4)))(v8 + v4 - 225);
}

uint64_t sub_1B16B687C()
{
  *(v2 - 1) = v4;
  *v2 = v4;
  return (*(v3 + 8 * (((8 * (v1 != 0)) | (32 * (v1 != 0))) ^ v0)))();
}

uint64_t sub_1B16B68A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((51 * (v5 == ((v3 - 324) ^ 0x4FELL))) ^ v3)))();
}

uint64_t sub_1B16B68E8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 1361651671 * (((a1 | 0xB6552830) - a1 + (a1 & 0x49AAD7CF)) ^ 0x6577D8BC);
  v2 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = v2;
  v4 = v1 + 143681137 * (((&v4 | 0x4344D92E) - &v4 + (&v4 & 0xBCBB26D0)) ^ 0x221C52FE) + 562359413;
  return (*(*(&off_1F2870B00 + (v1 ^ 0xDE7B15FB)) + (v1 ^ 0xDE7B1D29) - 1))(&v4);
}

uint64_t sub_1B16B69F4@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v30 = (a1 + 721) | 0x140;
  v31 = ((a28 & a2) << (((a1 - 47) | 0x40) - 66)) & ((a1 - 400839906) ^ a28) ^ a28 & a2;
  v32 = ((2 * (a28 ^ 0x6C9BB662)) ^ 0x5D9076F6) & (a28 ^ 0x6C9BB662) ^ (2 * (a28 ^ 0x6C9BB662)) & 0xAEC83B7A;
  v33 = (v32 ^ 0xA8803161) & (4 * v31) ^ v31;
  v34 = ((4 * (v32 ^ 0xA2480909)) ^ 0xBB20EDEC) & (v32 ^ 0xA2480909) ^ (4 * (v32 ^ 0xA2480909)) & 0xAEC83B78;
  v35 = (v34 ^ 0xAA002963) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0x4C81213)) ^ 0xEC83B7B0) & (v34 ^ 0x4C81213) ^ (16 * (v34 ^ 0x4C81213)) & 0xAEC83B70;
  v37 = v35 ^ 0xAEC83B7B ^ (v36 ^ 0xAC80334B) & (v35 << 8);
  v38 = 10 * (v30 ^ 0x55A);
  v40 = (a28 ^ (2 * ((v37 << 16) & 0x2EC80000 ^ v37 ^ ((v37 << 16) ^ 0x3B7B0000) & (((v36 ^ 0x248084B) << 8) & 0x2EC80000 ^ 0x26C00000 ^ (((v36 ^ 0x248084B) << 8) ^ 0x483B0000) & (v36 ^ 0x248084B))))) == v38 - 883688715 || ((a28 ^ (2 * v37)) & 0xF) != (((v30 - 1013) | 0x31) ^ 0x170);
  v41 = *(v28 + 8 * ((25 * v40) ^ v30));
  *(v29 - 184) = -42899;
  *(v29 - 180) = v38;
  return v41();
}

uint64_t sub_1B16B6BAC(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v8.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v8.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v9.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v9.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v10 = vaddq_s8(vsubq_s8(*(a3 + 17), vandq_s8(vaddq_s8(*(a3 + 17), *(a3 + 17)), v8)), v9);
  *(v4 + v7 - 252) = vaddq_s8(vsubq_s8(*(a3 + 1), vandq_s8(vaddq_s8(*(a3 + 1), *(a3 + 1)), v8)), v9);
  *(v4 + v7 - 252 + 16) = v10;
  return (*(v6 + 8 * ((((a4 & 0x60) == 32) * ((v5 + a2) ^ 0x5B7)) ^ (v5 + a2 + 459))))();
}

uint64_t sub_1B16B6C6C@<X0>(int a1@<W8>)
{
  v9 = (v2 - 2);
  v10 = v1 + 2;
  *v9 = (v10 ^ v5) * (v10 + 17);
  *(v9 - 1) = (v3 + 2 + (a1 ^ (v8 + 9))) * (v10 ^ 0xBB);
  return (*(v7 + 8 * (((v4 != 2) * v6) ^ a1)))();
}

uint64_t sub_1B16B6C80@<X0>(uint64_t a1@<X8>)
{
  v6 = ((v3 - 71910888) & 0x4494755) - 1810;
  *(a1 - 7 + (v6 ^ v2) + v1) = vadd_s8(vsub_s8(*(v4 - 7 + (v6 ^ v2) + v1), vand_s8(vadd_s8(*(v4 - 7 + (v6 ^ v2) + v1), *(v4 - 7 + (v6 ^ v2) + v1)), 0xFCFCFCFCFCFCFCFCLL)), 0x7E7E7E7E7E7E7E7ELL);
  return (*(v5 + 8 * ((991 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_1B16B6CF8(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x7695409B) - (a1 & 0x7695409B)) ^ 0xE1988C88);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1B16B70D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v9 = *(a4 + a7 + 16);
  v10 = (a5 + a7);
  *(v10 - 1) = *(a4 + a7);
  *v10 = v9;
  return (*(v7 + 8 * ((2 * (v8 == a7)) | (16 * (v8 == a7)) | a6)))();
}

uint64_t sub_1B16B71CC@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, int a6@<W8>)
{
  HIDWORD(v16) = a1 ^ v14;
  LODWORD(v16) = a1 ^ 0x20000000;
  v17 = (a5 ^ 0xDF3652F1) & (v8 ^ 0x40B7B6F4) ^ a5 & 0x607E1BFA;
  v18 = (v16 >> 27) + (((a6 ^ 0xF7B1C62C) + 139344340) ^ ((a6 ^ 0xDB10480A) + 619689974) ^ ((a6 ^ 0xC682328) - 208151336)) + (v17 & 0xC6BA6E76 ^ 0x797793F9 ^ (v17 ^ 0xBFC9ED0F) & (a2 & 0x6EAC7938 ^ 0x19CDB881 ^ (a5 ^ 0x4E65D436) & (a2 ^ v12))) - 539405796 + (((*(v11 + 4 * (v7 + v9)) ^ 0x86195096) + 2045161322) ^ ((*(v11 + 4 * (v7 + v9)) ^ 0x7A7D286D) - 2055022701) ^ ((*(v11 + 4 * (v7 + v9)) ^ 0xEDCDB196) + 305286762));
  return (*(v10 + 8 * ((38 * (v7 + 1 != v13 + 4)) ^ v6)))(v18 ^ ((v18 ^ 0x64C3F090) - 908104344) ^ ((v18 ^ 0x26D58975) - 1949756285) ^ ((v18 ^ 0x670AE112) - 904495898) ^ ((v18 ^ 0x77FFFAFF) - 622631159) ^ 0x722ACF06u, a1, __ROR4__(a5, 2) ^ 0xA8FBC64D, a3, a4, 2239944595, a1);
}

void sub_1B16B74BC(uint64_t a1)
{
  if (*(*(a1 + 24) + 4) - 1550341629 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1550341629;
  }

  else
  {
    v2 = 1550341629 - *(*(a1 + 24) + 4);
  }

  v1 = *(a1 + 32) + 843532609 * (((a1 | 0xB1CD8508) - (a1 | 0x4E327AF7) + 1311931127) ^ 0xED80D18D);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1B16B7680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = LODWORD(STACK[0x278]) ^ 0xA6;
  v17 = STACK[0x418];
  STACK[0x4D8] -= 32;
  *(v17 + 335) = *(a14 + 335) ^ 0xE1 ^ *(*(v15 + 8 * (v16 ^ 0x196)) + 15) ^ *(((v16 - 94) | 0x50u) + 15 + *(v15 + 8 * (v16 - 98)) - 250) ^ *(*(v15 + 8 * (v16 ^ 0x17C)) + 6) ^ 0x7E;
  return (*(v14 + 8 * v16))();
}

void sub_1B16B7754(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x32C]) = v3;
  LODWORD(STACK[0x304]) = v5;
  LODWORD(STACK[0x34C]) = v2;
  LODWORD(STACK[0x33C]) = 1918359130;
  v7 = *(v6 + 480);
  v8 = (((v2 ^ 0x29A445BC) - 698631612) ^ ((v2 ^ 0xD978699A) + 646420070) ^ ((v2 ^ 0xD0158128) + 803897048)) + 1512660301 + (((*(v7 + 88) ^ 0x3006FC7A) - 805764218) ^ ((*(v7 + 88) ^ 0x35B9935C) - 901354332) ^ ((*(v7 + 88) ^ 0x2576C228) + (((a1 - 22) | 0x620) ^ 0xDA893A30)));
  v9 = (v8 ^ 0xC64DFAAF) & (2 * (v8 & 0xE769FCCF)) ^ v8 & 0xE769FCCF;
  v10 = ((2 * (v8 ^ 0x461E42B5)) ^ 0x42EF7CF4) & (v8 ^ 0x461E42B5) ^ (2 * (v8 ^ 0x461E42B5)) & 0xA177BE7A;
  v11 = v10 ^ 0xA110820A;
  v12 = (v10 ^ 0x673470) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x85DEF9E8) & v11 ^ (4 * v11) & 0xA177BE78;
  v14 = (v13 ^ 0x8156B860) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x20210612)) ^ 0x177BE7A0) & (v13 ^ 0x20210612) ^ (16 * (v13 ^ 0x20210612)) & 0xA177BE70;
  v16 = v14 ^ 0xA177BE7A ^ (v15 ^ 0x173A600) & (v14 << 8);
  *(v7 + 88) = v8 ^ (2 * ((v16 << 16) & 0x21770000 ^ v16 ^ ((v16 << 16) ^ 0x3E7A0000) & (((v15 ^ 0xA004185A) << 8) & 0x21770000 ^ 0x410000 ^ (((v15 ^ 0xA004185A) << 8) ^ 0x77BE0000) & (v15 ^ 0xA004185A)))) ^ 0xC5AB2D35;
  LODWORD(STACK[0x4B0]) = a2;
  LODWORD(STACK[0x488]) = v4;
  JUMPOUT(0x1B16B7988);
}

uint64_t sub_1B16B80FC(int a1, double a2, int8x16_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int32x4_t a9)
{
  v13 = &v12[56].i32[3];
  v14 = vld1q_dup_f32(v13);
  v15 = a1 + v9;
  a3.i64[0] = v12[57].i64[0];
  a3.i32[2] = v12[57].i32[2];
  v16 = vextq_s8(v14, a3, 0xCuLL);
  v17 = a3;
  v17.i32[3] = v12[57].i32[3];
  v18 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v17, a8), vandq_s8(v16, a6)), 1uLL), *v12);
  v16.i32[0] = *(v11 + 4 * (v12[57].i32[0] & 1));
  v16.i32[1] = *(v11 + 4 * (v12[57].i32[1] & 1));
  v16.i32[2] = *(v11 + 4 * (v12[57].i32[2] & 1));
  v16.i32[3] = *(v11 + 4 * (v17.i8[12] & 1));
  *(v12 + 4 * ((v15 + 1070) ^ 0x67ELL)) = veorq_s8(vaddq_s32(vsubq_s32(v18, vandq_s8(vaddq_s32(v18, v18), a7)), a9), v16);
  return (*(v10 + 8 * (v15 + 798)))();
}

uint64_t sub_1B16B8294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = 1037613739 * ((((v72 | 0xCBA4217A) ^ 0xFFFFFFFE) - (~v72 | 0x345BDE85)) ^ 0xE559F3FA);
  *(v73 - 192) = (v71 + 369) ^ v74;
  *(v73 - 188) = v74 + a58 - 235117616;
  *(v73 - 176) = ((v71 - 809796338) ^ v69) - v74 + ((((v71 - 577) | 0x19) ^ 0x9F76FF46) & (2 * v69)) + 1993730043;
  v75 = (v73 - 216);
  v75[4] = &STACK[0x4B4];
  v75[1] = &STACK[0x320];
  v75[2] = a69;
  v77 = (*(v70 + 8 * (v71 ^ 0xA1F)))(v73 - 216);
  v78 = *(v73 - 216);
  LODWORD(STACK[0x358]) = v78;
  return (*(v70 + 8 * ((1272 * (v78 == 296339821)) ^ v71)))(v77, a2);
}

void sub_1B16B8440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, uint64_t a17)
{
  *a15 = 64;
  *(a17 + 252) = 1550341629;
  *(a17 + 256) = a17 + 264;
  STACK[0x260] = a17 + 520;
  *(a17 + 520) = 0x5C6855FD00000040;
  *(a17 + 528) = a17 + 536;
  STACK[0x270] = a17 + 792;
  *(a17 + 792) = 0x5C6855FD00000040;
  *(a17 + 800) = a17 + 808;
  STACK[0x278] = a17 + 1064;
  *(a17 + 1064) = 0x5C6855FD00000040;
  *(a17 + 1072) = a17 + 1080;
  STACK[0x298] = a17 + 1336;
  *(a17 + 1336) = 0x5C6855FD00000040;
  *(a17 + 1344) = a17 + 1352;
  v23 = (v21 - 216);
  v24 = *(v22 + 120) + 4;
  v25 = 1785193651 * (((v20 | 0x1DBE78AF) - v20 + (v20 & 0xE2418750)) ^ 0x31092347);
  v26 = v19 + 57;
  *(v21 - 208) = v19 + 57 + v25;
  *(v21 - 204) = v25 + 1550061422 + (((v17 ^ 0xFB2768BE) + 81303362) ^ ((v17 ^ 0x9C29C153) + 1674985133) ^ (((v19 - 1871334083) & 0x6F8A4FF8 ^ 0x89589868) + (v17 ^ 0x76A76080)));
  *v23 = v24;
  v23[2] = a15;
  v27 = v19 + 1485;
  (*(v18 + 8 * (v19 + 1485)))(v21 - 216);
  v28 = v17 ^ 0x11A9C96Du;
  v29 = v24 + v28;
  v30 = 1785193651 * ((((v21 - 216) | 0x95691B25) - (v21 - 216) + ((v21 - 216) & 0x6A96E4D8)) ^ 0xB9DE40CD);
  *(v21 - 200) = STACK[0x260];
  *(v21 - 208) = v19 + 57 + v30;
  *(v21 - 204) = v30 + 1550061422 + (((v17 ^ 0xC3066903) + 1022990077) ^ ((v17 ^ 0x17BE00A7) - 398327975) ^ ((v17 ^ 0xC511A0C9) + 988700471));
  *v23 = v29;
  (*(v18 + 8 * (v19 ^ 0xACD)))(v21 - 216);
  v31 = 1785193651 * ((-1746021097 - ((v21 - 216) | 0x97EDD517) + ((v21 - 216) | 0x68122AE8)) ^ 0x44A57100);
  *v23 = v29 + v28;
  *(v21 - 200) = STACK[0x270];
  *(v21 - 208) = v19 + 57 + v31;
  *(v21 - 204) = v31 + 1550061422 + (((v17 ^ 0x6BB59BB5) - 1807063989) ^ ((v17 ^ 0xD2D47B03) + 757826813) ^ ((v17 ^ 0xA8C829DB) + 1463277093));
  (*(v18 + 8 * (v19 + 1485)))(v21 - 216);
  v32 = v29 + v28 + v28;
  v33 = 1785193651 * ((v21 - 216) ^ 0x2CB75BE8);
  *(v21 - 200) = STACK[0x278];
  *(v21 - 208) = v26 + v33;
  *(v21 - 204) = v33 + 1550061422 + (((v17 ^ 0x3DB8AD76) - 1035513206) ^ ((v17 ^ 0xE6C1500F) + 423538673) ^ ((v17 ^ 0xCAD03414) + 892324844));
  *v23 = v32;
  (*(v18 + 8 * v27))(v21 - 216);
  v34 = 1785193651 * ((((v21 - 216) | 0x8C7CECAA) - ((v21 - 216) & 0x8C7CECAA)) ^ 0xA0CBB742);
  *v23 = v32 + v28;
  *(v21 - 208) = v26 + v34;
  *(v21 - 204) = v34 + 1550061422 + (((v17 ^ 0x76D96B96) - 1993960342) ^ ((v17 ^ 0x5B9EE2FC) - 1537139452) ^ ((v17 ^ 0x3CEE4007) - 1022246919));
  *(v21 - 200) = STACK[0x298];
  (*(v18 + 8 * v27))(v21 - 216);
  JUMPOUT(0x1B16B4A14);
}

uint64_t sub_1B16B88E0()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xF89)))();
  STACK[0x350] += ((v0 - 1751) | 0xAu) ^ 0xFFFFFFFFFFFFFEEBLL;
  return (*(v1 + 8 * ((v0 - 1741) ^ (2345 * (v2 == 296339821)))))(v3);
}

uint64_t sub_1B16B8948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v22 - 112) = v20 + 1082434553 * ((((v22 - 144) | 0x342555F6) - (v22 - 144) + ((v22 - 144) & 0xCBDAAA08)) ^ 0xAF62A37C) - 1424;
  *(v22 - 128) = &a16;
  *(v22 - 120) = v18;
  *(v22 - 144) = v17;
  *(v22 - 136) = &a16;
  (*(v16 + 8 * (v20 + 354)))(v22 - 144);
  v23 = ((v22 - 144) ^ 0xAF278218) * v21;
  *(v22 - 144) = v23 + v20 - 906;
  *(v22 - 136) = a13;
  *(v22 - 128) = (v19 - 249289167) ^ v23;
  v24 = (*(v16 + 8 * (v20 + 419)))(v22 - 144);
  return (*(v16 + 8 * (((4 * (*(v22 - 140) != -201441088)) | (32 * (*(v22 - 140) != -201441088))) ^ v20)))(v24);
}

void sub_1B16B8ABC(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1785193651 * (((a1 | 0x578DA8E) - a1 + (a1 & 0xFA872571)) ^ 0x29CF8166));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16B8B6C()
{
  LODWORD(STACK[0x2A0]) = v0;
  v4 = v3 - 216;
  *v4 = (113 * (((~(v3 + 40) | 0xAA) + ((v3 + 40) | 0x55)) ^ 0x84)) ^ 0x26;
  *(v3 - 212) = v1 - 143681137 * (((~(v3 - 216) | 0xF84C87AA) + ((v3 - 216) | 0x7B37855)) ^ 0x66EBF384) + 1486;
  *(v4 + 8) = &STACK[0x300];
  *(v4 + 16) = &STACK[0x37C];
  v5 = (*(v2 + 8 * (v1 ^ 0x954)))(v3 - 216);
  v6 = *(v3 - 192);
  LODWORD(STACK[0x358]) = v6;
  return (*(v2 + 8 * (((v6 == ((v1 - 291) ^ 0x11A9C9B1)) * (v1 + 556)) ^ v1)))(v5);
}

uint64_t sub_1B16B8CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a11;
  a17 = v20 + 2066391179 * (&a15 ^ 0xAF278218) - 525;
  v21 = (*(v18 + 8 * (v20 ^ 0xBC4)))(&a15);
  v22 = a15 != (((v20 ^ (v19 - 2743)) - v19 + 2410) ^ (v17 - 206));
  return (*(v18 + 8 * (((4 * v22) | (8 * v22)) ^ v20)))(v21);
}

uint64_t sub_1B16B8D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14 & 0xFFFFFFF8;
  v17 = a5 - 215;
  v18 = (136 * (a5 ^ 0x5AE)) ^ 0x3B0u;
  v19 = *(v15 + 8 * ((494 * (v18 == v16)) ^ v17));
  return v19(a1, a2, a3, v16, v18, 494, v19, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1B16B94E0()
{
  v6 = (v1 + 4 * (v0 + v4));
  *v6 = v3 ^ __ROR4__(*(v6 - 8) ^ *(v6 - 3) ^ *(v6 - 14) ^ *(v6 - 16), 31);
  return (*(v2 + 8 * ((1453 * (v0 + 1 == v5 + 64)) ^ 0x209u)))();
}

void sub_1B16B9548()
{
  v4 = (((v0 ^ 0x78F07539) - 2029024569) ^ ((v0 ^ 0x89EED921) + 1980835551) ^ ((v0 ^ 0xD1D70116) + 774438634)) - 1265216168 + (((*(v2 - 132) ^ 0xCC6C92F7) + 865299721) ^ ((*(v2 - 132) ^ 0xEF056D4A) + ((v3 + v1 - 1861) ^ 0x9806B28B)) ^ ((*(v2 - 132) ^ 0x3A052B3) - 60838579));
  v5 = (v4 ^ 0x8EF9B4A1) & (2 * (v4 & 0x8CFD04C4)) ^ v4 & 0x8CFD04C4;
  v6 = ((2 * (v4 ^ 0x8FC3B4A9)) ^ 0x67D60DA) & (v4 ^ 0x8FC3B4A9) ^ (2 * (v4 ^ 0x8FC3B4A9)) & 0x33EB06C;
  v7 = v6 ^ 0x1029025;
  v8 = (v6 ^ 0x23C2000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xCFAC1B4) & v7 ^ (4 * v7) & 0x33EB06C;
  v10 = (v9 ^ 0x3A8020) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x3043049)) ^ 0x33EB06D0) & (v9 ^ 0x3043049) ^ (16 * (v9 ^ 0x3043049)) & 0x33EB060;
  v12 = v10 ^ 0x33EB06D ^ (v11 ^ 0x32A0000) & (v10 << 8);
  *(v2 - 132) = v4 ^ (2 * ((v12 << 16) & 0x33E0000 ^ v12 ^ ((v12 << 16) ^ 0x306D0000) & (((v11 ^ 0x14B02D) << 8) & 0x33E0000 ^ 0x10E0000 ^ (((v11 ^ 0x14B02D) << 8) ^ 0x3EB00000) & (v11 ^ 0x14B02D)))) ^ 0xAA11C910;
  JUMPOUT(0x1B16B9760);
}

uint64_t sub_1B16B9EE4@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v3 - 502;
  v6 = (*(v4 + 8 * (v3 + 989)))(**(v2 + 8 * (v3 - 1121)), va, ((((a1 - 1698310875 + (v5 ^ 0x3EF)) & 0xFFFFF000 ^ 0xA94A395B) + 1262721051) ^ (((a1 - 1698310875 + (v5 ^ 0x3EF)) & 0xFFFFF000 ^ 0xB4B8D6F6) + (((v3 - 640) | 0x409) ^ 0x56B171B1)) ^ (((a1 - 1698310875 + (v5 ^ 0x3EF)) & 0xFFFFF000 ^ 0x1DF2EFAD) - 307475)) + 502685374, 1) != 0;
  return (*(v4 + 8 * ((50 * v6) ^ v5)))();
}

uint64_t sub_1B16B9FB0@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v8 = (v5 - 469) | 0x24E;
  *(*(v2 + 8) + 4 * (v3 + a1 + v8 + 65 - 688)) = v8 ^ (v7 + v4) ^ v6;
  *(v2 + 4) = a1 + 1;
  v9 = a1 + 1 + v3;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return (*(a2 + 8 * ((1084 * (((v9 ^ (((v8 + 65) ^ 0x196) + 1593506521)) + ((2 * v9) & 0xBDF5FBFE) - 43165698 + ((((v8 + 65) ^ 0x196) - 59) ^ (v3 + 86) ^ ((((v8 + 65) ^ 0x196) - 166) | 0x30))) >= 0)) ^ (v8 + 65) ^ 0x196)))();
}

uint64_t sub_1B16BA06C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = 143681137 * (a1 ^ 0x61588BD0);
  v3 = *a1 + v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  v7 = *(a1 + 28);
  v8 = 1037613739 * ((-1140849200 - (&v10 | 0xBC0005D0) + (&v10 | 0x43FFFA2F)) ^ 0x92FDD750);
  v16 = *(a1 + 8);
  v14 = v8 ^ (v3 + 2013068217);
  v10 = v7 - v2 - 955729000 + v8;
  v11 = v5;
  v12 = v4;
  v13 = v6;
  result = (*(*(&off_1F2870B00 + (v3 ^ 0x88030A93)) + (v3 ^ 0x8803024E) - 1))(&v10);
  *(a1 + 4) = v15;
  return result;
}

uint64_t sub_1B16BA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v18 - 136) = a14;
  *(v18 - 128) = v17 + 202 - 143681137 * ((2 * (v14 & 0x2905998) - v14 - 43014557) ^ 0x9C372DB3) - 629;
  *(v18 - 120) = v15;
  v19 = (*(v16 + 8 * (v17 + 1672)))(v18 - 136);
  return (*(v16 + 8 * ((42 * (((((v17 - 54) ^ 0xD8) - 92) ^ ((*(v18 - 112) - 2140359114) < 0xF1F8F973)) & 1)) ^ (v17 + 202))))(v19);
}

uint64_t sub_1B16BA1C4(char a1)
{
  v6 = v1 + 2;
  v7 = (v4 - 2);
  *v7 = ((v2 + 10) ^ v6 ^ a1) * (v6 + 17);
  *(v7 - 1) = (v6 ^ 0xBB) * (v6 + 18);
  return (*(v5 + 8 * ((529 * (v3 == -2)) | v2)))();
}

uint64_t sub_1B16BA1D0(uint64_t a1)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v6 + 8 * ((v7 == 0) ^ (v4 - 965))))();
}

void sub_1B16BA2A4(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4) - 1550341629;
  if (v2 < 0)
  {
    v2 = 1550341629 - *(*(a1 + 24) + 4);
  }

  v1 = *a1 - 2066391179 * ((((2 * a1) | 0x48B2A1A) - a1 + 2109369075) ^ 0x2D621715);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1B16BA3EC()
{
  v6 = (v4 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v3 + 8 * ((((((v1 ^ 3u) - 708) & v0) != 16) * ((((v1 ^ 3) + 1005) | 0x48) ^ 0x6EA)) ^ v1 ^ 3)))();
}

uint64_t sub_1B16BA440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = 1785193651 * ((1333417767 - (v15 | 0x4F7A5727) + a12) ^ 0x9C32F330);
  *(v21 - 136) = v16;
  *(v21 - 128) = v19 - v22 - 481;
  *(v21 - 124) = 225860456 - v22;
  (*(v17 + 8 * (v19 ^ 0xAA5)))(v21 - 136);
  *(v21 - 120) = (v19 + 1083) ^ (1564307779 * ((-1598499053 - (v15 | 0xA0B8D713) + a11) ^ 0xC84AE4FF));
  *(v21 - 136) = v20;
  *(v21 - 128) = a15;
  (*(v17 + 8 * (v19 ^ 0xA4D)))(v21 - 136);
  *(v21 - 128) = v19 - a10 * v18 - 629;
  *(v21 - 136) = a15;
  *(v21 - 120) = v16;
  v23 = (*(v17 + 8 * (v19 + 1470)))(v21 - 136);
  return (*(v17 + 8 * ((42 * (*(v21 - 112) + (((v19 - 679) | 0x93) ^ 0x806CB68D) >= (v19 ^ 0xF1F8FBBC))) ^ v19)))(v23);
}

uint64_t sub_1B16BA5F4()
{
  v6 = LODWORD(STACK[0x2A0]) - 2023;
  v7 = STACK[0x218];
  *v3 = v6 + v1;
  v8 = (v6 + 447) | 0x208;
  v9 = ((v6 ^ 0x13FEu) < v1) ^ v0 ^ (v0 >> 11) ^ (v8 ^ 0x9D2C5500) & ((v0 ^ (v0 >> 11)) << 7);
  v10 = STACK[0x260];
  v11 = (v7 + (LODWORD(STACK[0x260]) - 1));
  v12 = -1508932039 * ((*(*STACK[0x270] + (*STACK[0x278] & ((v8 + 941413364) & 0xC7E3284B ^ 0x3177218))) ^ v11) & ((v8 - 144) ^ (v5 + 169)));
  v13 = -1508932039 * (v12 ^ HIWORD(v12));
  v14 = *(*(v4 + 8 * (v8 ^ 0x3F1)) + (v13 >> 24) - 4) ^ v9 ^ (((v9 << 15) & 0xEFC60000 ^ v9) >> 18) ^ *(*(v4 + 8 * (v8 - 900)) + (v13 >> 24) - 7) ^ *(*(v4 + 8 * (v8 - 871)) + (v13 >> 24) - 3) ^ v13;
  *v11 = (-101 * BYTE3(v13)) ^ v14;
  return (*(v2 + 8 * ((28 * (v10 != (v14 != (-101 * BYTE3(v13))))) ^ v8)))();
}

uint64_t sub_1B16BA7A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v36 = (a8 + a2 - 45) ^ (a8 + 82);
  v31 = 1785193651 * ((v30 + 679348658 - 2 * ((v30 - 128) & 0x287E0A32)) ^ 0x4C951DA);
  *(v30 - 128) = (a2 + 1420) ^ v31;
  *(v30 - 112) = a12 - v31 - 470371960;
  *(v30 - 120) = &a20;
  v32 = (*(v29 + 8 * (a2 + 2138)))(v30 - 128);
  v33 = a29 & 0x3F;
  *(&a20 + v33) = -2;
  return (*(v29 + 8 * ((1058 * (v33 > (v36 ^ 0xC1u))) ^ a2)))(v32);
}

uint64_t sub_1B16BA954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v14 = (*(v12 + 4 * v13) ^ v5) + v7 + a3 * ((v11 - 1868) ^ v9 ^ (v5 - 604) ^ *(*(v8 + 8) + a2));
  *(v12 + 4 * v13) = v14 + v5 - (v6 & (2 * v14));
  return (*(v4 + 8 * (v11 ^ ((a4 == 0) * v10))))();
}

uint64_t sub_1B16BA9F0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x30C]) = 0;
  v5 = LODWORD(STACK[0x30C])++;
  *STACK[0x250] = v5 + 1297775726;
  v6 = *STACK[0x258];
  v7 = 1564307779 * ((0xEA7FFB8B27C418C9 - (v3 | 0xEA7FFB8B27C418C9) + STACK[0x228]) ^ 0x3043F00E4F362B25);
  v8 = a1 - 2078179214 + v7;
  *(v4 - 212) = v8;
  *(v4 - 208) = v7 ^ 1;
  *(v4 - 216) = ~v7 + a1 - 2078179214;
  *(v4 - 184) = v8 - 84;
  *(v4 - 180) = -2030746696 - v7 + a1;
  *(v2 + 16) = v7 + v6;
  *(v2 + 24) = v7 ^ 0x13FF;
  v9 = (*(v1 + 8 * (a1 ^ 0xF85)))(v4 - 216);
  return (*(v1 + 8 * *(v4 - 204)))(v9);
}

uint64_t sub_1B16BAAB0@<X0>(int a1@<W2>, uint64_t a2@<X6>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q3>)
{
  v10 = (v9 + (v6 + a3));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a2 + v6);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a5)), a4);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a5)), a4);
  return (*(v8 + 8 * (((v6 == 32) * v7) ^ (a1 + v5 - 517))))();
}

uint64_t sub_1B16BAB68@<X0>(int a1@<W8>)
{
  v4 = v3 + ((v1 - 1048) | 0x6Cu) - 383;
  v6 = __CFADD__(a1, v4) || v4 > (((v1 + 410) | 9u) ^ 0xFFFFF932uLL);
  return (*(v2 + 8 * ((120 * v6) ^ v1)))();
}

uint64_t sub_1B16BACD4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = *(v3 + a2 * a1 + 36);
  LODWORD(STACK[0x2B8]) = v5;
  v6 = (((v2 + 343) | 0x480) ^ 0xDE8C7364) + v5;
  v8 = v6 > -1625008101 && v6 < SLODWORD(STACK[0x258]);
  return (*(v4 + 8 * ((1506 * v8) ^ v2)))();
}

uint64_t sub_1B16BAD78(uint64_t a1, signed int a2, uint64_t a3, int a4)
{
  v7 = ((2 * a4) ^ 0xBF2 ^ (v5 - 324)) - v4;
  if (a2 > v7)
  {
    v7 = a2;
  }

  return (*(v6 + 8 * (((v7 > 0x7FFFFFFE) * ((18 * (a4 ^ 0x549)) ^ 0x171)) ^ a4)))();
}

void sub_1B16BAF6C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v22 = (((a22 ^ 0x1788295B) - 394799451) ^ ((a22 ^ 0x7BA84094) - 2074624148) ^ ((a22 ^ 0x4CE9C4C1) - 1290388673)) + 1713297683 + (((a1 ^ 0x43CF46A8) - 1137657512) ^ ((a1 ^ 0xEFC96706) + 272013562) ^ ((a1 ^ 0x8CCF8C86 ^ (a2 - 1412)) + 1932555104));
  LODWORD(STACK[0x288]) = v22 ^ ((v22 ^ 0xBFB2E4EA) + 1690723811) ^ ((v22 ^ 0xA3CE7012) + 2025517339) ^ ((v22 ^ 0xC74815F0) + 473732345) ^ ((v22 ^ 0xFFBFFFFF) + 617316088) ^ 0x442D3F9;
  JUMPOUT(0x1B16BB0A8);
}

uint64_t sub_1B16BB7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x410];
  LODWORD(STACK[0x410]) += 64;
  v10 = LODWORD(STACK[0x50C]) + 1929734792;
  v11 = v9 - 401855672 > v10;
  if ((v9 - 401855672) < 0xE80C2B08 != v10 < ((a8 - 973) ^ 0xE80C2F13))
  {
    v11 = (v9 - 401855672) < 0xE80C2B08;
  }

  return (*(v8 + 8 * ((v11 * (a8 - 1973)) ^ (a8 - 973))))();
}

uint64_t sub_1B16BB7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *v28;
  v30 = *(v28 + 48);
  *(v27 - 180) = a1 - 56;
  *(v27 - 112) = veorq_s8(*v29, xmmword_1B176D1D0);
  if (v26)
  {
    v31 = v30 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  v33 = *(v25 + 8 * ((14 * v32) ^ a1));
  *(v27 - 184) = -42900;
  return v33(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1B16BBACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v19 = (v16 + 1483621791) & 0xA791B7AF;
  v20 = 1785193651 * ((((v18 - 136) | 0xBE0096B8) - ((v18 - 136) & 0xBE0096B8)) ^ 0x92B7CD50);
  *(v18 - 136) = &a12;
  *(v18 - 128) = v16 - v20 - 622;
  *(v18 - 124) = ((2 * v14) & 0x7AEEBEFE) - v20 + ((v19 + 1031233236) ^ v14) - 805372952;
  (*(v15 + 8 * (v16 ^ 0xB36)))(v18 - 136);
  *(v18 - 120) = &a14;
  *(v18 - 128) = v19 - ((((2 * (v18 - 136)) | 0x2FD8228A) - (v18 - 136) + 1746136763) ^ 0xF6B49A95) * v17 - 81;
  *(v18 - 136) = a11;
  v21 = (*(v15 + 8 * (v19 + 2018)))(v18 - 136);
  return (*(v15 + 8 * (((*(v18 - 112) <= (v19 ^ 0x445) + 2140357851) * (((v19 + 487154340) & 0xE2F69DF1) - 216)) ^ v19)))(v21);
}

uint64_t sub_1B16BBC2C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xBE2));

  return v3(v1);
}

uint64_t sub_1B16BBD84()
{
  v5 = 1082434553 * ((v4 + 1206992432 - 2 * ((v4 - 144) & 0x47F13EC0)) ^ 0xDCB6C84A);
  *(v4 - 136) = v2;
  *(v4 - 144) = v0 - v5 + ((v3 + 1794808066) & 0x95056593 ^ 0x2EB4A84D);
  *(v4 - 128) = (v3 + 829) ^ v5;
  *(v4 - 120) = v7;
  (*(v1 + 8 * (v3 ^ 0xA38)))(v4 - 144);
  result = v10;
  *v9 = v8;
  *(v10 + 8) = 296339821;
  return result;
}

void sub_1B16BBE10(uint64_t a1)
{
  v1 = *(a1 + 8) + 143681137 * ((-2 - ((~a1 | 0x1CA2B536) + (a1 | 0xE35D4AC9))) ^ 0x7DFA3EE6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16BBF4C(uint64_t a1, int a2)
{
  v8 = ((v2 + v4) & v5 ^ 0xFFFFFFFFFFFFFF07) + v3;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 == 0) * a2) ^ (v2 - 1118))))();
}

uint64_t sub_1B16BC39C@<X0>(void *a1@<X8>)
{
  v5 = *(*a1 + (v3 - 363252330)) ^ 0x7E;
  v6 = ((*(*a1 + (v3 - 363252333)) ^ 0x7E) << (((v4 - 29) | 0xC8) + 28)) + ((*(*a1 + (v4 + v3 - 363252571 - 1378)) ^ 0x7E) << 16) + ((*(*a1 + (v3 - 363252331)) ^ 0x7E) << 8) + v5;
  return (*(v2 + 8 * ((55 * (((v6 + v1 - 2 * (v6 & (v1 + 16) ^ v5 & 0x10)) & 0xFFFFFF) == 5427253)) ^ v4)))();
}

uint64_t sub_1B16BC644(uint64_t a1)
{
  v1 = 1785193651 * (a1 ^ 0x2CB75BE8);
  v2 = *(a1 + 12) + v1;
  return (*(*(&off_1F2870B00 + v2 - 910) + (((((((*(a1 + 8) + v1) ^ 0x66C21734) - 1723995956) ^ (((*(a1 + 8) + v1) ^ 0x387AA7C8) - 947562440) ^ (((*(a1 + 8) + v1) ^ 0x4F117991u) - 1326545297)) - 1851143827 < 0x80000064) * ((v2 ^ 0x59D) - 549)) ^ v2) - 1))();
}

uint64_t sub_1B16BC714()
{
  v8 = -v4;
  v10.val[0].i64[0] = (v3 + v8 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + v8 + 14) & 0xF;
  v10.val[1].i64[0] = (v3 + v8 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + v8 + ((2 * v5) ^ 0xA2) - 46) & 0xF;
  v10.val[2].i64[0] = (v3 + v8 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + v8 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + v8 + 9) & 0xF;
  v10.val[3].i64[1] = (v3 + v8) & 0xF ^ 8;
  *(v3 + v7 - 8 + v8) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v3 + v7 - 8 + v8), *(v0 + v10.val[0].i64[0] - 7)), veor_s8(*(v10.val[0].i64[0] + v1 - 4), *(v10.val[0].i64[0] + v2 - 2)))), 0x7E7E7E7E7E7E7E7ELL), vmul_s8(*&vqtbl4q_s8(v10, xmmword_1B176D1C0), 0x6161616161616161)));
  return (*(v6 + 8 * ((1450 * (8 - (v3 & 0x18) == v8)) ^ (v5 - 1594))))(xmmword_1B176D1C0);
}

uint64_t sub_1B16BC818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a2 + v6) = *(a1 + v6) - ((2 * *(a1 + v6)) & 0xFC) + 126;
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_1B16BC928@<X0>(char a1@<W8>)
{
  v8 = (v3 - 2);
  v9 = v2 + 2;
  *v8 = (v9 ^ v5) * (v9 + 17);
  *(v8 - 1) = (v9 + (a1 ^ 0xE)) * (v9 ^ 0xBB);
  return (*(v7 + 8 * (((v4 == 2) * v6) ^ v1)))();
}

uint64_t sub_1B16BC9AC@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  HIDWORD(a2) = v58 - 619;
  *a3 = a1;
  v59 = (*(v54 + 48 * v57 + 8))(a4);
  return (*(v56 + 8 * ((59 * (v59 + 296339821 - ((v59 << ((3 * ((v58 - 107) ^ v55 ^ (v55 - 27))) ^ 0xF9)) & 0x235392DA) == 296339821)) ^ (v58 - 619))))(v59, v60, v61, 2147483652, 3804639413, 3757534029, 3543666428, 3507957638, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1B16BCAA8()
{
  v5 = *(v4 + 136);
  v6 = 742307843 * ((-2024541598 - ((v3 - 216) | 0x8753F262) + ((v3 - 216) | 0x78AC0D9D)) ^ 0x25D072E7);
  *(v3 - 216) = -473373760 - v6 + v0 + 13;
  *(v3 - 196) = 1267016942 - v6;
  *(v2 + 8) = v5;
  v7 = (*(v1 + 8 * (v0 ^ 0x8DA)))(v3 - 216);
  STACK[0x3E8] = *(v1 + 8 * v0);
  v8 = STACK[0x298];
  STACK[0x500] = v5;
  LODWORD(STACK[0x50C]) = 1963376785;
  STACK[0x2E8] = v8;
  return (*(v1 + 8 * ((115 * ((((v0 ^ 0x44F) + 245548985) & 0xF15D37BB) - 960 + (*(v5 + 68) & (((v0 ^ 0x44F) - 1936402590) & 0x736B27FF ^ 0x341)) > 0xFFFFFFBF)) ^ v0 ^ 0x44F)))(v7, 225);
}

uint64_t sub_1B16BCB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v21 = (2 * v18) ^ 0xF58;
  v22 = 1785193651 * (((((v20 - 136) | 0x27D0CE3E) ^ 0xFFFFFFFE) - (~(v20 - 136) | 0xD82F31C1)) ^ 0xF4986A29);
  *(v20 - 136) = &a15;
  *(v20 - 128) = v18 - v22 - 1284;
  *(v20 - 124) = ((2 * v16) & 0x3AEDBFFE) - v22 + ((v21 - 1653155005) ^ v16) + 1879014248;
  (*(v17 + 8 * (v18 ^ 0xD98)))(v20 - 136);
  *(v20 - 136) = a14;
  *(v20 - 128) = v21 - (((((v20 - 136) | 0xCF540532) ^ 0xFFFFFFFE) - (~(v20 - 136) | 0x30ABFACD)) ^ 0x51F3711D) * v19 - 1122;
  *(v20 - 120) = v15;
  v23 = (*(v17 + 8 * (v21 + 977)))(v20 - 136);
  return (*(v17 + 8 * ((429 * (((v21 - 1) ^ (*(v20 - 112) > ((v21 - 1225211425) & 0x49073F6F ^ 0x7F934FC2u))) & 1)) ^ v21)))(v23);
}

void sub_1B16BCD28(uint64_t a1)
{
  v1 = *(a1 + 16) - 1361651671 * ((2 * (a1 & 0xA46929BF) - a1 + 1536611904) ^ 0x88B426CC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B16BCF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, unsigned int a13, unsigned int a14)
{
  v17 = 143681137 * ((((&a10 | 0xAE8B3E22) ^ 0xFFFFFFFE) - (~&a10 | 0x5174C1DD)) ^ 0x302C4A0D);
  a11 = v15 - v17 - 1044;
  a12 = v14;
  a10 = &a9;
  a13 = 1696005621 - v17;
  a14 = v17 ^ 0xB7EEB5FF;
  v18 = (*(v16 + 8 * (v15 ^ 0xDBF)))(&a10);
  return (*(v16 + 8 * ((754 * (*(v14 + 24) == 2 * (v15 ^ 0x694) + 296337919)) ^ v15)))(v18);
}

uint64_t sub_1B16BCFD0@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v29 = (a16 + 24 * v23);
  *v29 = v25;
  v29[1] = a1;
  *&v27[6 * v23 + 4] = v28;
  v29[4] = a21;
  *v27 = v22 + ((v21 + 107026628) & 0xF99EE7BE) - 1157;
  return (*(v26 + 8 * ((1763 * ((((v21 - 867) | 0x15) ^ (v24 - 139)) + a2 < 0x80000003)) ^ (v21 - 273))))();
}

uint64_t sub_1B16BD0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v30 - 144) = &a17;
  *(v30 - 136) = &a17;
  *(v30 - 128) = v27 - (((((v30 - 144) | 0x4F7C4F14) ^ 0xFFFFFFFE) - (~(v30 - 144) | 0xB083B0EB)) ^ 0x1FA432F3) * v29 + 227;
  *(v30 - 120) = a11;
  *(v30 - 112) = &a27;
  *(v30 - 104) = a10;
  v31 = (*(v28 + 8 * (v27 ^ 0xC9D)))(v30 - 144);
  return (*(v28 + 8 * ((250 * (a13 - 1344007376 >= ((v27 + 1145000471) & 0xBBC0ADFE) + 2147482403)) ^ (v27 - 588))))(v31);
}

uint64_t sub_1B16BD180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15, int a16, int a17, uint64_t a18, char *a19, int a20)
{
  v25 = ((&a15 + 801771838 - 2 * (&a15 & 0x2FCA113E)) ^ 0x72B66E44) * v20;
  a20 = v25 ^ 0x7C1F1342;
  a17 = v24 - v25 - 1197042908;
  a15 = v25 + 2135198056;
  a18 = a11;
  a19 = &a13;
  v26 = (*(v22 + 8 * (v24 + 1712)))(&a15);
  return (*(v22 + 8 * (((a16 == v21 + ((v24 + 302) | 0x402) - 1826) * (((v24 + 1496401414) | 0x82020004) ^ (v23 - 2792))) ^ v24)))(v26);
}

uint64_t sub_1B16BD258()
{
  v8 = (v2 - 2);
  v9 = v1 + 2;
  *v8 = (v9 ^ v5) * (v9 + 17);
  *(v8 - 1) = (v3 + 2) * (v9 ^ 0xBB);
  return (*(v7 + 8 * (((v4 == 2) * v6) ^ v0)))();
}

uint64_t sub_1B16BD26C()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F2870B00 + ((79 * (dword_1EB75A160 ^ 0x73 ^ qword_1EB75A150)) ^ byte_1B1765790[byte_1B1761B20[(79 * (dword_1EB75A160 ^ 0x73 ^ qword_1EB75A150))] ^ 0xAD]) - 34);
  v1 = *(v0 - 4);
  v2 = off_1F2870C28 - 8;
  v3 = off_1F2870E80 - 12;
  v4 = *(&off_1F2870B00 + (*(off_1F2870E80 + (*(off_1F2870C28 + (79 * ((qword_1EB75A150 + v1) ^ 0x73)) - 8) ^ 0x1Cu) - 12) ^ (79 * ((qword_1EB75A150 + v1) ^ 0x73))) - 81);
  v5 = (*(v4 - 4) + v1) ^ &v14;
  v6 = 1889310799 * v5 + 0x6CD83E9A0F465C73;
  v7 = 1889310799 * (v5 ^ 0x6CD83E9A0F465C73);
  *(v0 - 4) = v6;
  *(v4 - 4) = v7;
  LOBYTE(v7) = 79 * ((v7 - *(v0 - 4)) ^ 0x73);
  v15 = *(&off_1F2870B00 + (v7 ^ v3[v2[v7] ^ 0x1C]) + 83);
  v16 = (1785193651 * (((&v15 | 0x5B9880BB) + (~&v15 | 0xA4677F44)) ^ 0x772FDB52)) ^ 0x97;
  v8 = off_1F2870C50 - 12;
  v9 = off_1F2870CE8 - 4;
  v10 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - dword_1EB75A160) ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * ((qword_1EB75A150 - dword_1EB75A160) ^ 0x73))] ^ 0xAD]) + 30) - 8;
  (*&v10[8 * (*(off_1F2870CE8 + (*(off_1F2870C50 + (79 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x73)) - 12) ^ 0x5Bu) - 4) ^ (79 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x73))) + 15832])(&v15);
  v15 = *(&off_1F2870B00 + (*(off_1F2870FB8 + (*(off_1F2870CB0 + (79 * (*(v0 - 4) ^ 0x73 ^ *(v4 - 4)))) ^ 0x4Au) - 8) ^ (79 * (*(v0 - 4) ^ 0x73 ^ *(v4 - 4)))) - 157);
  v16 = (1785193651 * ((&v15 & 0xD0A47BFB | ~(&v15 | 0xD0A47BFB)) ^ 0x3ECDFEC)) ^ 0x97;
  v11 = 79 * (*(v0 - 4) ^ 0x73 ^ *(v4 - 4));
  (*&v10[8 * (*(off_1F2870D70 + (*(off_1F2870EA8 + v11 - 4) ^ 0xDEu) - 12) ^ v11) + 16584])(&v15);
  v12 = 2066391179 * ((&v15 - 2 * (&v15 & 0xAEBCD493) - 1363356525) ^ 0x19B568B);
  HIDWORD(v15) = v12 ^ 0x3C4;
  LOBYTE(v15) = v12 ^ 0x6A;
  return (*&v10[8 * ((79 * (*(v0 - 4) ^ 0x73 ^ *(v4 - 4))) ^ v9[v8[(79 * (*(v0 - 4) ^ 0x73 ^ *(v4 - 4)))] ^ 0x41]) + 16720])(&v15);
}

uint64_t sub_1B16BD744@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = v20 + 1168;
  v28 = a3 + 528;
  v29 = a3 + 800;
  switch(v25)
  {
    case 32:
      LODWORD(STACK[0x278]) = 0;
      v30 = 19;
      break;
    case 20:
      LODWORD(STACK[0x278]) = 0;
      v30 = 15;
      break;
    case 16:
      LODWORD(STACK[0x278]) = 0;
      v30 = 18;
      break;
    default:
      LODWORD(STACK[0x298]) = 0;
      LODWORD(STACK[0x278]) = 1;
      goto LABEL_9;
  }

  LODWORD(STACK[0x298]) = v30;
LABEL_9:
  v31 = 843532609 * (v21 ^ 0x5C4D5485);
  v32 = (v26 - 216);
  v32[9] = 0;
  *v32 = v29;
  v32[6] = v27;
  v32[7] = &STACK[0x540] + a1;
  *(v26 - 152) = v31 + a2 - 1165;
  *(v26 - 192) = ((v23 ^ 0x7FFEFDFF) - 1177856450 + (a20 & (2 * v23))) ^ v31;
  v32[4] = &STACK[0x308];
  v32[5] = 0;
  v32[2] = v28;
  v33 = (*(v22 + 8 * (a2 + 128)))(v26 - 216);
  return (*(v22 + 8 * ((119 * (*(v26 - 208) == 296339821)) ^ v24)))(v33);
}

uint64_t sub_1B16BD89C()
{
  *(v8 - 120) = v4 & 0x10;
  v13.val[1].i64[0] = (v4 + 13) & 0xF;
  v13.val[1].i64[1] = (v4 + 12) & 0xF;
  v13.val[2].i64[0] = (v4 + 11) & 0xF;
  v13.val[2].i64[1] = (v4 + 10) & 0xF;
  v13.val[3].i64[0] = (v4 + 9) & 0xF;
  v13.val[3].i64[1] = v5 & 0xF ^ 0xCLL;
  v9 = *(v8 - 192);
  v14.val[0].i64[0] = (v4 + 7) & 0xF;
  v14.val[0].i64[1] = (v4 + 6) & 0xF;
  v14.val[1].i64[0] = (v4 + 5) & 0xF;
  v14.val[1].i64[1] = (v4 + 4) & 0xF;
  v14.val[2].i64[0] = (v4 + 3) & 0xF;
  v14.val[2].i64[1] = (v4 + 2) & 0xF;
  v14.val[3].i64[0] = (v4 + 1) & 0xF;
  v14.val[3].i64[1] = v4 & 0xF;
  v10 = vqtbl4q_s8(v14, xmmword_1B176D1B0).u64[0];
  v11.i64[0] = 0x7575757575757575;
  v11.i64[1] = 0x7575757575757575;
  v13.val[0].i64[0] = (v4 - 17) & 0xF;
  v13.val[0].i64[1] = (v4 + 14) & 0xF;
  v14.val[3].i64[0] = vqtbl4q_s8(v13, xmmword_1B176D1B0).u64[0];
  v14.val[3].i64[1] = v10;
  v14.val[0] = vrev64q_s8(vmulq_s8(v14.val[3], v11));
  *(v7 + v4 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v3 + v13.val[0].i64[0] - 15), *(v0 + v4 - 16)), veorq_s8(*(v1 + v13.val[0].i64[0] - 15), *(v2 + v13.val[0].i64[0] - 15))), vextq_s8(v14.val[0], v14.val[0], 8uLL));
  return (*(v9 + 8 * ((((v4 & 0x10) == 16) * (((v6 - 1482) | 0x1B) + 3489)) ^ v6)))(v13.val[0].i64[1]);
}

void sub_1B16BDA24(uint64_t a1)
{
  v1 = 1785193651 * ((((2 * a1) | 0x9791F8AA) - a1 + 876020651) ^ 0xE77FA7BD);
  v2 = *(a1 + 8) + v1;
  __asm { BRAA            X14, X17 }
}

void sub_1B16BDB54(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v3 = **(a1 + 40) - 359700344;
  v4 = *(a1 + 12) - v1 + 1870839032;
  v5 = v3 < 0xEE9CB9F8;
  v6 = v3 > v4;
  if (v4 < 0xEE9CB9F8 != v5)
  {
    v6 = v5;
  }

  v2 = *(a1 + 24) - v1;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B16BDC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = a14;
  *(v21 - 120) = v19 - ((((v21 - 128) ^ 0x36D7E050 | 0x9713F42F) - (((v21 - 128) ^ 0x36D7E050) & 0x9713F42F)) ^ 0xC09C9FAF) * v18 - 1607;
  *(v21 - 112) = &a17;
  v22 = (*(v17 + 8 * (v19 ^ 0xE2C)))(v21 - 128);
  v23 = (v20 + *(v21 - 104) - 1) < 0x8110A998;
  return (*(v17 + 8 * ((((v19 + 62) ^ v23) & 1 | (2 * (((v19 + 62) ^ v23) & 1))) ^ v19)))(v22);
}

uint64_t sub_1B16BDD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  *(v16 - 136) = v13;
  *(v16 - 128) = v12;
  *(v16 - 120) = (v15 + 255) ^ (1564307779 * ((((v16 - 136) | 0xDB670119) - ((v16 - 136) & 0xDB670119)) ^ 0x4C6ACD0A));
  v17 = (*(v14 + 8 * (v15 ^ 0xE89u)))(v16 - 136);
  return (*(v14 + 8 * ((23 * (a12 < 1)) ^ (v15 - 386))))(v17);
}

uint64_t sub_1B16BDDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, _DWORD *a37)
{
  v41 = v37 + 1840;
  v42 = (*(v38 + 8 * (v41 + 169)))(a37 + 4, 0);
  v43 = a37[4] - 684627889 - ((2 * a37[4]) & 0xAE62D09E);
  a37[1] = a37[6] - 684627889 - ((((v39 + v41 + 1815) & v40) - 1131691052) & (2 * a37[6]));
  a37[2] = v43;
  v41 += 147;
  v44 = (*(v38 + 8 * v41))(v42);
  a37[3] = v44 - 684627889 - ((2 * v44) & 0xAE62D09E);
  v45 = (*(v38 + 8 * v41))();
  *a37 = v45 - 684627889 - ((2 * v45) & 0xAE62D09E);
  LODWORD(a29) = a32 & 0x7D29D51F;
  LODWORD(a28) = a32 & 0xC;
  LODWORD(a27) = a32 - 47590125;
  LODWORD(a25) = 8;
  return sub_1B16BDF60(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1B16BDF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v45 = *(v42 + 4 * (v41 - 1));
  v46 = (1664525 * (v45 ^ (v45 >> 30))) ^ *(v42 + 4 * v41);
  *(v42 + 4 * v41) = v43 + (((*(a37 + 4 * v43) ^ 0x9A36A525) + 1707694811) ^ ((*(a37 + 4 * v43) ^ 0xF7F30AFB) + 135066885) ^ ((*(a37 + 4 * v43) ^ 0xBAF4C791) + 1158363247)) + 1941395863 + (((v46 ^ 0x4E4D9062) + 758619862) ^ ((v46 ^ 0x4CF2A077) + 797486785) ^ ((v46 ^ 0x2BF3015) + 1640316579));
  *(v44 - 116) = -1793179946 - v38 + v40;
  *(v44 - 120) = ((v40 + 751436610) ^ 0x58) + v38;
  *(v44 - 148) = v40 + 751436610 + v38;
  *(v44 - 144) = v38 ^ 1;
  v47 = v44 - 168;
  *(v47 + 32) = v41 + 1 + v38;
  *(v47 + 40) = a36;
  *(v44 - 152) = ((v40 + 751436610) ^ 0x16) - v38;
  v48 = (*(v39 + 8 * (v40 ^ (v37 - 2083))))(v44 - 152);
  return (*(v39 + 8 * *(v44 - 140)))(v48);
}

uint64_t sub_1B16BE0D4@<X0>(char a1@<W1>, int8x16_t *a2@<X2>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>, uint64_t a6, uint64_t a7)
{
  v9 = (a7 + a3);
  v10 = vaddq_s8(vsubq_s8(a2[1], vandq_s8(vaddq_s8(a2[1], a2[1]), a4)), a5);
  v9[-1] = vaddq_s8(vsubq_s8(*a2, vandq_s8(vaddq_s8(*a2, *a2), a4)), a5);
  *v9 = v10;
  return (*(v8 + 8 * (((2 * ((a1 & 0x60) != 32)) | (4 * ((a1 & 0x60) != 32))) ^ (v7 + 630))))();
}

void sub_1B16BE14C()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F2870B00 + ((79 * (dword_1EB75A1C8 ^ 0x73 ^ qword_1EB75A150)) ^ byte_1B1765790[byte_1B1761B20[(79 * (dword_1EB75A1C8 ^ 0x73 ^ qword_1EB75A150))] ^ 0xDB]) - 157);
  v1 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + *v0) ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * ((qword_1EB75A150 + *v0) ^ 0x73))] ^ 0xDB]) - 175);
  v2 = &v7[*(v1 - 4) ^ *v0];
  v3 = 1889310799 * v2 - 0x77891E10DC513083;
  v4 = 1889310799 * (v2 ^ 0x6CD83E9A0F465C73);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = 79 * ((v4 + *v0) ^ 0x73);
  **(&off_1F2870B00 + (off_1F2870CC0[(*(off_1F2871068 + v4 - 12) ^ 0xDB) - 8] ^ v4) - 75) = 296339821;
  LOBYTE(v4) = 79 * ((*(v1 - 4) - *v0) ^ 0x73);
  v5 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - dword_1EB75A1C8) ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * ((qword_1EB75A150 - dword_1EB75A1C8) ^ 0x73))] ^ 0xDB]) - 127) - 8;
  v6 = (*&v5[8 * (*(off_1F2870E80 + (*(off_1F2870C28 + v4 - 8) ^ 0x66u) - 12) ^ v4) + 16728])(512, 0x100004077774924);
  *(*(&off_1F2870B00 + (*(off_1F2870FB8 + (*(off_1F2870CB0 + (79 * ((*(v1 - 4) + *v0) ^ 0x73))) ^ 0x5Eu) - 8) ^ (79 * ((*(v1 - 4) + *v0) ^ 0x73))) + 7) - 4) = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16BE3D8(uint64_t a1, int a2)
{
  v6 = ((a2 + 541) ^ (v2 + 1447)) + v3;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  if (v4 >= 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = -v4;
  }

  return (*(v5 + 8 * ((77 * (v7 > v8)) ^ a2)))();
}

uint64_t sub_1B16BE66C@<X0>(int a1@<W1>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q3>)
{
  v10 = (v8 + (v5 + a2));
  v11 = *v10;
  v12 = v10[1];
  v13 = (v9 + v5);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a4)), a3);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a3);
  return (*(v7 + 8 * (((v5 != 32) * v6) ^ (a1 + v4 - 101))))();
}

uint64_t sub_1B16BE740@<X0>(char a1@<W8>)
{
  v8 = v1 - 2;
  v9 = a1 + 2;
  v10 = (v5 + v8);
  *v10 = (v9 + v3) * (v9 ^ v2);
  *(v10 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v6 + 8 * (((v8 == 1) * v4) | v7)))();
}

uint64_t sub_1B16BE7D4@<X0>(_OWORD *a1@<X8>)
{
  v6 = a1[1];
  *(v5 + v1) = *a1;
  *(v5 + v1 + 16) = v6;
  return (*(v4 + 8 * ((((((v3 - 45) ^ 0x664) & v2) != 32) * (((v3 - 1049) | 0x421) ^ 0x60C)) ^ (v3 - 45))))();
}

void sub_1B16BE880(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = 843532609 * ((((2 * &a3) | 0x91801022) - &a3 + 926939119) ^ 0x948D5C94);
  a5 = v6;
  a3 = (-1427731608 - v7 - ((v5 ^ 0x4942A6DC) & (210399832 - 2 * v7))) ^ v8;
  a4 = v8 + v5 + 1271;
  (*(a1 + 8 * (v5 ^ 0xADC)))(&a3);
  JUMPOUT(0x1B16A8870);
}

uint64_t sub_1B16BE968@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  v39 = *(&a22 + a1 + 72);
  v40 = ((v34 - 839124501) & (2 * a1)) + (a1 ^ 0x66FDFD3F) + v36;
  *(v37 + v40) = v39 ^ 0x70;
  *(v37 + v40 + 1) = (BYTE1(v39) ^ 0xAD) - ((2 * (BYTE1(v39) ^ 0xAD)) & 0xFC) + 126;
  *(v37 + v40 + 2) = (BYTE2(v39) ^ 0xC9) + (~(2 * (BYTE2(v39) ^ 0xC9)) | 3) + 127;
  *(v37 + v40 + 3) = (HIBYTE(v39) ^ 0x20) - ((2 * (HIBYTE(v39) ^ 0x20)) & 0xFC) + 126;
  return (*(v38 + 8 * (((a1 + 4 < a34) * v35) ^ v34)))();
}

uint64_t sub_1B16BED44(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int8x16_t a33, int8x16_t a34, uint64_t a35, uint64_t a36, int8x16_t a37, int8x16_t a38)
{
  v44 = v38 + 2;
  v45 = (v42 + (v41 + 32));
  v46 = veorq_s8(v44[-1], *v45);
  v47 = veorq_s8(*v44, v45[1]);
  return (*(v43 + 8 * (((v40 == 32) * ((v39 + 1930) ^ a10)) ^ v39)))(vorrq_s8(vqtbl1q_s8(v46, a38), a1), vorrq_s8(vqtbl1q_s8(v46, a37), a2), vorrq_s8(vqtbl1q_s8(v46, a34), a3), vorrq_s8(vqtbl1q_s8(v46, a33), a4), vorrq_s8(vqtbl1q_s8(v47, a38), a5), vorrq_s8(vqtbl1q_s8(v47, a34), a6), vorrq_s8(vqtbl1q_s8(v47, a37), a7), vorrq_s8(vqtbl1q_s8(v47, a33), a8));
}

void sub_1B16BEE00()
{
  v3[8] = v0;
  v3[26] = STACK[0x298];
  v3[6] = *(v2 + 8 * v1);
  JUMPOUT(0x1B16BEE78);
}

uint64_t sub_1B16BEF2C()
{
  *(v4 - 216) = (v1 - 875955144) ^ (1564307779 * ((((v3 | 0xFBAB89B0) ^ 0xFFFFFFFE) - (~v3 | 0x454764F)) ^ 0x9359BA5C));
  (*(v0 + 8 * (v1 + 1070)))(v4 - 216);
  v5 = 143681137 * (((v3 | 0xEF19FC3C) - v3 + (v3 & 0x10E603C0)) ^ 0x8E4177EC);
  *(v4 - 212) = v1 - v5 + 941;
  v6 = v4 - 216;
  *(v6 + 8) = &STACK[0x300];
  *(v6 + 16) = &STACK[0x37C];
  *v6 = v5 ^ 0x27;
  v7 = (*(v0 + 8 * (v1 ^ 0xC8B)))(v4 - 216);
  v8 = *(v4 - 192);
  LODWORD(STACK[0x358]) = v8;
  return (*(v0 + 8 * ((1716 * (v8 == ((((v1 + 136099769) & 0xF7E346A7) - 577) | 0x19) + 296339732)) ^ (v1 + 136099769) & 0xF7E346A7)))(v7, v2);
}

uint64_t sub_1B16BF128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char *a30, char *a31, uint64_t a32, char a33)
{
  v40 = (v34 - 880506194) & 0x347B74BC;
  v41 = ((((v39 - 144) | 0x5A3CD886) - ((v39 - 144) & 0x5A3CD886)) ^ 0x925D1CD0) * v37;
  *(v39 - 120) = (v34 + 1403) ^ v41;
  *(v39 - 136) = &a26;
  *(v39 - 128) = v33;
  *(v39 - 140) = v35 + v41 + (v40 ^ 0x36F58FB5);
  (*(v36 + 8 * (v34 + 1909)))(v39 - 144);
  a30 = &a28;
  a31 = &a33;
  *(v39 - 144) = (v40 + 1391) ^ (((((v39 - 144) | 0x2A138EB3) + (~(v39 - 144) | 0xD5EC714C)) ^ 0xE2724AE4) * v37);
  *(v39 - 136) = a21;
  *(v39 - 128) = &a30;
  (*(v36 + 8 * (v40 ^ 0x8C6)))(v39 - 144);
  *(v39 - 136) = a21;
  *(v39 - 128) = &a30;
  *(v39 - 120) = &a26;
  *(v39 - 112) = &a24;
  *(v39 - 144) = v40 + 631 + 2066391179 * ((((2 * (v39 - 144)) | 0x492A4B3E) - (v39 - 144) + 1533729377) ^ 0xBB2A787);
  (*(v36 + 8 * (v40 + 2043)))(v39 - 144);
  v42 = a31;
  *(v39 - 128) = v40 + 1293 - 2066391179 * ((((2 * (v39 - 144)) | 0x363E4006) - (v39 - 144) - 455024643) ^ 0xB438A21B);
  *(v39 - 112) = &a24;
  *(v39 - 104) = &a30;
  *(v39 - 120) = a21;
  *(v39 - 144) = &a24;
  *(v39 - 136) = v42;
  (*(v36 + 8 * (v40 ^ 0x8C7)))(v39 - 144);
  *(v39 - 144) = &a30;
  *(v39 - 136) = a21;
  *(v39 - 120) = v40 + 1066 + 1388665877 * ((((v39 - 144) | 0x85A6B84C) - ((v39 - 144) & 0x85A6B84C)) ^ 0x80BDAA0);
  *(v39 - 128) = &a24;
  *(v39 - 112) = &a24;
  *(v39 - 104) = a13;
  (*(v36 + 8 * (v40 ^ 0x82C)))(v39 - 144);
  *(v39 - 144) = (v40 + 1391) ^ (50899313 * ((525228871 - ((v39 - 144) | 0x1F4E5B47) + ((v39 - 144) | 0xE0B1A4B8)) ^ 0x28D060EE));
  *(v39 - 136) = v38;
  *(v39 - 128) = &a30;
  (*(v36 + 8 * (v40 + 1982)))(v39 - 144);
  *(v39 - 136) = v38;
  *(v39 - 128) = &a30;
  *(v39 - 120) = &a26;
  *(v39 - 112) = &a22;
  *(v39 - 144) = v40 + 631 + 2066391179 * ((v39 - 144) ^ 0xAF278218);
  (*(v36 + 8 * (v40 + 2043)))(v39 - 144);
  v43 = a31;
  *(v39 - 128) = v40 + 1293 - 2066391179 * ((((v39 - 144) | 0x8A0AD1DB) - (v39 - 144) + ((v39 - 144) & 0x75F52E20)) ^ 0x252D53C3);
  *(v39 - 120) = v38;
  *(v39 - 112) = &a22;
  *(v39 - 144) = &a22;
  *(v39 - 136) = v43;
  *(v39 - 104) = &a30;
  (*(v36 + 8 * (v40 ^ 0x8C7)))(v39 - 144);
  *(v39 - 120) = v40 + 1066 + 1388665877 * ((v39 + 650700688 - 2 * ((v39 - 144) & 0x26C8E820)) ^ 0xAB658ACC);
  *(v39 - 112) = &a22;
  *(v39 - 104) = a15;
  *(v39 - 136) = v38;
  *(v39 - 128) = &a22;
  *(v39 - 144) = &a30;
  (*(v36 + 8 * (v40 + 2068)))(v39 - 144);
  *(v39 - 144) = &a24;
  *(v39 - 128) = &a22;
  *(v39 - 136) = v40 + 742307843 * ((v39 + 1908044836 - 2 * ((v39 - 144) & 0x71BA74B4)) ^ 0x2CC60BCE) + 1847;
  (*(v36 + 8 * (v40 + 2003)))(v39 - 144);
  *(v39 - 144) = &a22;
  *(v39 - 132) = v40 + 50899313 * ((((v39 - 144) | 0xBCDFF3ED) + (~(v39 - 144) | 0x43200C12)) ^ 0x74BE37BA) + 1571;
  v44 = (*(v36 + 8 * (v40 + 1904)))(v39 - 144);
  return (*(v36 + 8 * (((((v40 + 67) ^ (*(v39 - 136) < 0x6732D9FBu)) & 1) * (v40 - 46)) ^ v40)))(v44);
}

uint64_t sub_1B16BF60C()
{
  v6 = STACK[0x2A0];
  v7 = 1388665877 * ((0xE90268FA5CBD5689 - (v3 | 0xE90268FA5CBD5689) + STACK[0x288]) ^ 0x2387074A2EEFCB9ALL);
  *(v5 - 188) = LODWORD(STACK[0x294]) ^ v7;
  *(v5 - 208) = ((((v6 - 1401 - v1) & ((v6 - 1401) ^ (-2 - v4)) | v1 & ~(v6 - 1401)) >= 0) ^ 0xC9736B84) + v7;
  *(v5 - 204) = ((v6 - 915184739) ^ 0x13) - v7;
  v8 = (v5 - 216);
  v8[4] = v7 ^ 3;
  *v8 = (v2 + 1) ^ v7;
  *(v5 - 200) = v7 ^ (v6 - 915184739) ^ 0x2A;
  *(v5 - 196) = v7;
  v9 = (*(v0 + 8 * (v6 + 90)))(v5 - 216);
  return (*(v0 + 8 * *(v5 - 192)))(v9);
}

uint64_t sub_1B16BF754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = ((v8 - 1602) ^ ((v8 - 1978) | 0x48u) ^ 0x3FFFFFFFA397ABD2) + a3;
  v10 = *(*(v3 + 8) + 4 * v9);
  v11 = *(*(v4 + 8) + 4 * v9);
  LODWORD(v9) = (((v10 ^ 0xD1A80156) + 777518762) ^ ((v10 ^ 0x483C24A2) - 1211901090) ^ ((v10 ^ 0x8DE2243) - 148775491)) + v7;
  v12 = (((v11 ^ 0x4D2B56DF) - 1294685919) ^ ((v11 ^ 0x77E9C9DF) - 2011810271) ^ ((v11 ^ 0xAB8898B7) + 1417111369)) + v7;
  v13 = v9 < v6;
  v14 = v9 > v12;
  if (v13 != v12 < v6)
  {
    v14 = v13;
  }

  return (*(v5 + 8 * ((2 * !v14) | (16 * !v14) | v8)))();
}

uint64_t sub_1B16BF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  STACK[0x298] = (*(v69 + 8 * a63))(a69 + 0x241C4012002942D1, 0x100004077774924);
  v71 = (*(v69 + 8 * a67))();
  *v70 = v71;
  v70[1] = 1812433253 * (v71 ^ (v71 >> 30)) + 1;
  return (*(v69 + 8 * ((53 * (((a66 ^ 1) & 1) == 0)) ^ a68)))();
}

uint64_t sub_1B16BF980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, char a20, uint64_t *a21, int a22, unsigned int a23, char *a24, int a25, int *a26, int *a27, uint64_t a28)
{
  a18 = 67981681;
  v31 = 1082434553 * (((&a21 | 0x3DCDD52E) - &a21 + (&a21 & 0xC2322AD0)) ^ 0xA68A23A4);
  a23 = ((v28 + 362) ^ 0x5252093C) + a19 + v31;
  a24 = &a20;
  a21 = &a16;
  a25 = v31 + v28 + 416;
  a26 = &a19;
  a27 = &a18;
  a28 = a16;
  v32 = (*(v29 + 8 * (v28 ^ 0x9FF)))(&a21);
  return (*(v29 + 8 * ((1319 * (a22 == 296339821)) ^ v28)))(v32, v30);
}

uint64_t sub_1B16BFAE8@<X0>(int a1@<W2>, int a2@<W8>)
{
  v7 = *(v5 + v2 * a1 + 36);
  v9 = v7 != v6 && (((a2 - 68) | 0x25) ^ (v3 - 139)) + v7 < 0x80000003;
  return (*(v4 + 8 * ((479 * (((a2 ^ v9) & 1) == 0)) ^ a2)))();
}

uint64_t sub_1B16BFB44()
{
  v3 = (*(v1 + 8 * (v0 + 1923)))();
  LODWORD(STACK[0x4F8]) = v2;
  return (*(v1 + 8 * ((((v0 + 360707869) & 0xEA800FEC ^ ((v0 ^ 0x736) - 948)) * (v2 == 296339821)) ^ v0)))(v3);
}

uint64_t sub_1B16BFBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v6 - 1682136849) & 0x644359FF;
  **(a1 + 24) = v5 + v4 + v7 - 231;
  return (*(v3 + 8 * ((1068 * (*(a2 + 24) == v2 + 2 * (v7 ^ 0x9C) - 230)) ^ v7)))();
}

uint64_t sub_1B16BFD18@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v7 = *result;
  v8 = *(result + 32);
  v9 = *(result + 16);
  *a2 = v4;
  *v9 = v3;
  *v8 = v6;
  *v7 = v2 + v5;
  *(result + 8) = 296339821;
  return result;
}

uint64_t sub_1B16BFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 742307843 * (((&a13 | 0xBC263447) - &a13 + (&a13 & 0x43D9CBB8)) ^ 0xE15A4B3D);
  a13 = v21 + 2135198056;
  a15 = v20 - v21 - 1197043601;
  a18 = v21 ^ 0xB51B2C4A;
  a16 = a9;
  a17 = &a10;
  v22 = (*(v19 + 8 * (v20 ^ 0xC05)))(&a13);
  return (*(v19 + 8 * ((121 * (a14 == (v20 ^ 0x57D) + v18)) ^ v20)))(v22);
}

uint64_t sub_1B16BFF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v17 - 128) = &a11;
  *(v17 - 120) = v13;
  *(v17 - 112) = v16 + 1082434553 * ((((v17 - 144) | 0x6AEBB81D) + (~(v17 - 144) | 0x951447E2)) ^ 0xF1AC4E96) - 88;
  *(v17 - 144) = v14;
  *(v17 - 136) = &a11;
  (*(v15 + 8 * (v16 ^ 0x9AA)))(v17 - 144);
  v18 = 2066391179 * ((((v17 - 144) | 0xFD3DC433) - (v17 - 144) + ((v17 - 144) & 0x2C23BC8)) ^ 0x521A462B);
  *(v17 - 128) = (v11 - 249289167) ^ v18;
  *(v17 - 144) = v18 + v16 + 430;
  *(v17 - 136) = v12;
  v19 = (*(v15 + 8 * (v16 ^ 0x9EB)))(v17 - 144);
  return (*(v15 + 8 * (((*(v17 - 140) == (((v16 - 156) | 0x221) ^ 0xF3FE43E1)) * (28 * (v16 ^ 0x193) - 364)) ^ v16)))(v19);
}

uint64_t sub_1B16C0064(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = a5 - 8;
  v16.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + v14 + (v11 ^ 8)) & 0xF;
  v16.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(a6 + v14) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a6 + v14)), veor_s8(*(v7 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v13 + 8 * (((a4 == v14) * a7) ^ v12)))();
}

uint64_t sub_1B16C00BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 120) = &a15;
  *(v18 - 136) = a14;
  *(v18 - 128) = v17 - ((1227139865 - ((v18 - 136) | 0x4924AB19) + ((v18 - 136) | 0xB6DB54E6)) ^ 0xD783DF36) * v16 - 1389;
  v19 = (*(v15 + 8 * (v17 ^ 0xD4A)))(v18 - 136);
  return (*(v15 + 8 * (((*(v18 - 112) != v17 + 2140357636) * (v17 - 1426)) ^ v17)))(v19);
}

uint64_t sub_1B16C01D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, int a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = (*(v72 + 8 * (v71 + 1743)))(*STACK[0x240], a2, a58 ^ 0x384555B9u, *(STACK[0x240] + 52) + 253 * (v71 ^ 0x1C6u) - 661596280, &STACK[0x530], v75, v74, &STACK[0x17D0]);
  v80 = STACK[0x2A0];
  if (v78 == 268435459)
  {
    return (*(v72 + 8 * (((a57 ^ 0x78C ^ (6 * a56)) * (a71 < 3)) ^ (v80 - 1815))))(v78, v79);
  }

  if (v78)
  {
    v81 = 1785193651 * ((v77 - 216) ^ 0x2CB75BE8);
    *v73 = &STACK[0x358];
    *(v77 - 208) = 296339821 - v81 + v78 - ((v78 << (v80 + 25)) & 0x235392DA);
    *(v77 - 204) = v80 - v81 - 1043;
    (*(v72 + 8 * (v80 ^ 0xFBC)))(v77 - 216);
    JUMPOUT(0x1B16BF060);
  }

  v83 = v80 - 1600;
  v84 = v80 - 1747;
  (*(v72 + 8 * (v80 ^ 0xF78)))(*STACK[0x200], v75, v74);
  v85 = *(STACK[0x240] + 52);
  v86 = STACK[0x430];
  v87 = (LODWORD(STACK[0x46C]) ^ 0x9EDBDD7F) + 1945107162 + ((2 * LODWORD(STACK[0x46C])) & 0x3DB7BAFE);
  *(v77 - 216) = v76;
  v88 = v77 - 216;
  *(v88 + 16) = v86;
  *(v88 + 24) = &STACK[0x17D0];
  LODWORD(v86) = 742307843 * ((((v77 - 216) | 0x1F8FA695) - ((v77 - 216) & 0x1F8FA695)) ^ 0x42F3D9EF);
  *(v77 - 208) = v87 ^ v86;
  *(v77 - 204) = (v85 ^ ((v85 ^ 0xD4DC58FD) + 206342035) ^ ((v85 ^ 0x69BA960) - 569674224) ^ (v83 + 1382413365 + (v85 ^ 0x8AF52AB3)) ^ ((v85 ^ 0x7FDDFBBE) - 1488116526) ^ 0x55486FD5) - v86;
  *(v77 - 180) = (LODWORD(STACK[0x2A0]) - 1986) ^ v86;
  *(v77 - 176) = (a58 & 0x7FFFFFFF ^ 0xCA621AFC) - v86;
  v89 = (*(v72 + 8 * (LODWORD(STACK[0x2A0]) ^ 0xF83)))(v77 - 216);
  v90 = *(v77 - 184);
  LODWORD(STACK[0x358]) = v90;
  return (*(v72 + 8 * ((1092 * (v90 == 296339821)) ^ v84)))(v89);
}

uint64_t sub_1B16C0254(uint64_t a1, char a2, char a3, int a4, uint64_t a5)
{
  v9 = v6 - 1;
  *(a5 + v9) = *(v7 + v9) - ((*(v7 + v9) << ((v5 ^ a2) * a3 - 3)) & 0xFC) + 126;
  return (*(v8 + 8 * (((v9 == 0) * a4) ^ (v5 - 1560))))();
}

uint64_t sub_1B16C0298(uint64_t a1, __n128 a2)
{
  v4[-1] = a2;
  *v4 = a2;
  return (*(v5 + 8 * (((a1 != 0) * v3) ^ v2)))(a1 - 8);
}

uint64_t sub_1B16C0358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71 ^ 0x61B;
  v74 = (*(v72 + 8 * (v71 ^ 0xD1C)))(*STACK[0x200], a2, LODWORD(STACK[0x4D4]));
  return (*(v72 + 8 * (((2 * (((LODWORD(STACK[0x310]) == 296339821) ^ (v73 - 22)) & 1)) & 0xF7 | (8 * (((LODWORD(STACK[0x310]) == 296339821) ^ (v73 - 22)) & 1))) ^ v73)))(v74, a71);
}

uint64_t sub_1B16C0458(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3 - 833788085 + ((v5 - 199418679) & 0xBE2DDF7);
  v7 = v4 - 833787620;
  v8 = v7 < -1430929639;
  v9 = v6 < v7;
  if (v8 != v6 < -1430929639)
  {
    v9 = v8;
  }

  return (*(v3 + 8 * (((16 * v9) | (v9 << 6)) ^ v5)))();
}

uint64_t sub_1B16C04D4@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 == v5 - 1802) * v6) ^ v3)))();
}

uint64_t sub_1B16C052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = v18 + 742307843 * ((v19 - 136) ^ 0x5D7C7F7A) + 1769;
  *(v19 - 120) = v15;
  *(v19 - 136) = &a15;
  v20 = (*(v16 + 8 * (v18 + 1925)))(v19 - 136);
  return (*(v16 + 8 * ((504 * (v17 == (((v18 ^ 0x52D) + 43) ^ 0x5F3))) ^ v18)))(v20);
}

uint64_t sub_1B16C05D0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = (*(*(v11 + 8) + 4 * v4) ^ v7) + v2 + (*(*(v9 + 8) + 4 * v4) ^ v7);
  *(*(a2 + 8) + 4 * v4) = v7 + (v6 & a1) + v12 - (v8 & (2 * v12)) - 585;
  return (*(v10 + 8 * (((8 * (v4 + 1 == v3)) | ((v4 + 1 == v3) << 6)) ^ v5)))();
}

void sub_1B16C0658(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 635940848;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16C080C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v9 = (a3 + 4 * a6);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * ((62 * (a5 + a6 != v6)) ^ v7)))();
}

uint64_t sub_1B16C098C(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 843532609 * ((((2 * a1) | 0x7C0848CA) - a1 + 1107024795) ^ 0xE24970E0);
  v3 = a1[10] ^ v2;
  v4 = a1[11] ^ v2;
  v9 = v3 + 1037613739 * (((&v9 | 0xA413FE1D) - &v9 + (&v9 & 0x5BEC01E0)) ^ 0x7511D362) + 1084731835;
  v5 = *(&off_1F2870B00 + (v3 ^ 0x76625E83)) - 8;
  result = (*&v5[8 * (v3 ^ 0x7662560B)])(&v9);
  if (v4 > 1443144723)
  {
    if (v4 == 1728357395)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 1443144724)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((53 * ((*&v5[8 * v3 - 0x3B312B230])(*(*(&off_1F2870B00 + (v3 ^ 0x76625EAC)) + 6 * v7 + 4) + (((v3 - 1986157927) | 0x280) ^ 0xD3380D21), 0x100004077774924) == 0)) ^ (v3 - 1986157307))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 1443144720)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 1443144723)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[12] = -296316207;
  return result;
}

uint64_t sub_1B16C0CD8@<X0>(unint64_t a1@<X3>, _DWORD *a2@<X4>, int a3@<W5>, int a4@<W6>, unsigned int a5@<W8>)
{
  v13 = (a2[1] ^ a5) + (v8 ^ HIDWORD(a1)) + v12 * (*(*(v9 + 8) + 4) ^ a5);
  *a2 = (v13 + ((v11 + 1360) ^ (v6 + 232)) - ((v7 + 1240) & (2 * v13))) ^ a3;
  return (*(v10 + 8 * (((v5 == 2) * a4) ^ v11)))();
}

uint64_t sub_1B16C0D48@<X0>(int a1@<W8>, double a2@<D0>)
{
  *(v4 - 1) = a2;
  *v4 = a2;
  return (*(v5 + 8 * (((v3 == 0) * a1) ^ v2)))();
}

uint64_t sub_1B16C0D70@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, uint64_t), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24)
{
  v28 = (a3 - 401);
  v29 = &a24 + v26;
  *v29 = v24;
  v29[1] = v25;
  v29[2] = v27;
  *(&a24 + v26 + v28 - 25) = a1;
  return sub_1B16AC5A0(v28, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a2, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1B16C0E04@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4) + 1241109897;
  v5 = (v1 + 1241109897 < 643967878) ^ (v4 < ((v3 - 1137) | 4) + 643967615);
  v6 = v1 + 1241109897 > v4;
  if (v5)
  {
    v7 = v1 + 1241109897 < 643967878;
  }

  else
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((853 * v7) ^ v3)))();
}

uint64_t sub_1B16C0ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  *(v20 - 144) = &a17;
  *(v20 - 136) = &a17;
  *(v20 - 128) = v17 - ((v20 - 144) ^ 0xAF278218) * v19 + 1289;
  *(v20 - 112) = &a15;
  *(v20 - 104) = a10;
  *(v20 - 120) = a11;
  v21 = (*(v18 + 8 * (v17 + 1979)))(v20 - 144);
  return (*(v18 + 8 * ((250 * (a13 - 1344007376 >= ((611 * (v17 ^ 0xA2) + 1145000471) & 0xBBC0ADFE) + 2147482403)) ^ (611 * (v17 ^ 0xA2) - 588))))(v21);
}

uint64_t sub_1B16C1084(int a1, uint64_t a2, unint64_t a3)
{
  v9 = (a2 ^ 0x843) & (v6 + 15);
  v10 = -v8 - v6 + 1;
  v12 = a3 >= ((a1 - 320) | 0x701u) - 1905 && (v10 + v5 + v9) >= 0x10 && (v10 + v3 + v9) >= 0x10;
  v13 = v10 + v4 + v9;
  v15 = !v12 || v13 < 0x10;
  return (*(v7 + 8 * ((961 * v15) ^ a1)))();
}

uint64_t sub_1B16C1158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 112) = v17;
  *(v22 - 120) = v19 - ((~((v22 - 128) | 0x90D23B74) + ((v22 - 128) & 0x90D23B74)) ^ 0xE754F5B) * v20 - 650;
  *(v22 - 128) = &a17;
  v23 = (*(v18 + 8 * (v19 ^ 0xA69)))(v22 - 128);
  return (*(v18 + 8 * ((((*(v22 - 104) + v21) < 0x9D5D71F2) * (((v19 + 957) ^ 0x42D) + 450)) ^ v19)))(v23);
}

void sub_1B16C11F8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 36) ^ (742307843 * ((~a1 & 0x2DB7B62F | a1 & 0xD24849D0) ^ 0x70CBC955));
  v2 = 742307843 * ((1533436337 - (&v5 | 0x5B6661B1) + (&v5 | 0xA4999E4E)) ^ 0xF9E5E134);
  v7 = 1267016942 - v2;
  v6 = v4;
  v5 = v1 - v2 - 473373702;
  v3 = *(&off_1F2870B00 + (v1 ^ 0x61)) - 8;
  (*&v3[8 * v1 + 17176])(&v5);
  __asm { BRAA            X14, X17 }
}

void sub_1B16C1484(int a1@<W8>)
{
  if (a1 == 57769795)
  {
    v2 = 296339821;
  }

  else
  {
    v2 = -296316235;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_1B16C18AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 120) = v16 - ((v18 - 128 + v15 - 2 * ((v18 - 128) & v15)) ^ 0x3EBA4A37) * v17 - 1112;
  *(v18 - 112) = &a13;
  *(v18 - 128) = v13;
  v19 = (*(v14 + 8 * (v16 ^ 0xC3F)))(v18 - 128);
  return (*(v14 + 8 * ((119 * ((v16 - 2140360317 + *(v18 - 104)) < 0xE4CFF750)) ^ v16)))(v19);
}

uint64_t sub_1B16C1C9C()
{
  v6 = *(v5 + 80) + 128;
  *(v5 + 136) = v6;
  v7 = 742307843 * ((v4 - 967558002 - 2 * ((v4 - 216) & 0xC6543D66)) ^ 0x9B28421C);
  *(v4 - 196) = 1267016942 - v7;
  *(v4 - 216) = -473373760 - v7 + v2;
  *(v3 + 8) = v6;
  v8 = v0;
  v9 = (*(v1 + 8 * (v2 ^ 0x8E9)))(v4 - 216);
  STACK[0x3E8] = *(v1 + 8 * v2);
  STACK[0x298] = v8;
  STACK[0x500] = v6;
  LODWORD(STACK[0x50C]) = 1963376785;
  STACK[0x2E8] = v8;
  return (*(v1 + 8 * ((115 * (((((v2 + 928) | 0x1C) + 245548985) & 0xF15D37BB) - 960 + (*(v6 + 68) & ((((v2 + 928) | 0x1C) - 1936402590) & 0x736B27FF ^ 0x341)) > 0xFFFFFFBF)) ^ ((v2 + 928) | 0x1C))))(v9, 225);
}

uint64_t sub_1B16C1E14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = v5 + 1;
  v11 = (((v6 - 1067) ^ 8) & 0xDC) == v7 || v9 == (((v6 - 290) | 0x88u) ^ a3);
  return (*(v8 + 8 * ((v11 * a5) ^ v6)))();
}

void sub_1B16C1F14(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + ((v1 - 1887467801) & 0x70807FFB) + 597140057 >= 0)
  {
    a1 = -a1;
  }

  *(v2 + 4) = a1 + v3;
}

uint64_t sub_1B16C1F50()
{
  v5 = ((((2 * v3) | 0x69083D5E) - v3 - 881073839) ^ 0xAFC3E825) * v0;
  v6 = (v4 - 216);
  v6[4] = 0;
  *(v4 - 216) = v5 ^ 0x2ACDE3A0;
  *(v4 - 212) = (v2 + 124) ^ v5;
  v6[2] = &STACK[0x3C8];
  v6[1] = &STACK[0x3B0];
  v7 = (*(v1 + 8 * (v2 ^ 0x95F)))(v4 - 216);
  return (*(v1 + 8 * ((1021 * (*(v4 - 192) == (((v2 ^ 0x19D) + 296339691) ^ v2 ^ 0x19D))) ^ v2)))(v7);
}

void sub_1B16C2034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *(a58 + 1560) = *STACK[0x2A8];
  *(a58 + 1552) = *(STACK[0x2F8] - 0x1190F38222DAFA9CLL);
  v59 = *(v58 + 376);
  *(*v59 + 488) = *(a50 + 8);
  *(*v59 + 480) = *a50;
  JUMPOUT(0x1B16C20A0);
}

uint64_t sub_1B16C21DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  v41 = 1785193651 * ((v40 - 168) ^ 0x2CB75BE8);
  *(v40 - 160) = a2;
  *(v40 - 168) = (v39 + 1423) ^ v41;
  *(v40 - 152) = a12 - v41;
  v42 = (*(v38 + 8 * (v39 + 2141)))(v40 - 168);
  v43 = a38 & 0x3F;
  *(&a29 + v43) = -2;
  return (*(v38 + 8 * ((1304 * (v43 > (((v39 - 22) | 8) ^ 0xFFFFFF3A) + ((v39 - 25) | 0x100))) ^ v39)))(v42);
}

uint64_t sub_1B16C22A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, _BYTE *a10, uint64_t a11, uint64_t a12, _BYTE *a13, _BYTE *a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, _BYTE *a18, _BYTE *a19, uint64_t a20, uint64_t a21, uint64_t a22, _BYTE *a23, uint64_t a24, _BYTE *a25, uint64_t a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, _BYTE *a30, uint64_t a31, _BYTE *a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, unsigned int a39)
{
  *a10 = v44;
  *a13 = BYTE3(v44);
  a10[1] = BYTE6(a2);
  a9[1] = BYTE4(v44) ^ 0x30;
  a23[20] = a3;
  *a14 = BYTE5(a2);
  a23[64] = BYTE2(v44);
  a23[50] = v43 >> ((2 * a34) ^ 0x76u);
  *a25 = BYTE1(v44);
  *a15 = v43;
  a23[26] = BYTE6(v43);
  *a17 = BYTE4(v43);
  a9[2] = BYTE1(a5);
  a23[45] = BYTE5(v43);
  *a32 = HIBYTE(v43);
  a23[11] = BYTE2(a5);
  *a27 = BYTE1(a3);
  *a9 = HIBYTE(a2);
  *a16 = BYTE2(a3);
  a23[52] = BYTE4(a3);
  *a19 = BYTE3(a3);
  v46 = *(a12 + 526 + (((v40 >> 33) & 0x80 | (a3 >> 41) & 0x7F) ^ 0x1D));
  a23[9] = BYTE6(a3);
  *a18 = (((v46 >> 4) | (16 * v46)) ^ 0xB ^ (((v46 >> 4) | (16 * v46)) >> 1) & 0x55) + 95;
  v47 = *(a11 + (((a3 >> 51) & 0xE0 | (v40 >> 59)) ^ 0xF3));
  a23[39] = v42 ^ 0x53;
  *a29 = (v47 ^ 0xBC) + 74;
  v48 = *(a11 + (((v42 >> 3) & 0xE0 | (v42 >> 11)) ^ 0xEF));
  v49 = a5 & 0x38;
  v50 = (v39 >> 38) ^ 0xB0;
  a23[49] = BYTE5(v42) ^ 0xBB;
  a23[63] = BYTE3(v42) ^ 0xC1;
  a23[13] = BYTE6(v42) ^ 0x15;
  *a28 = BYTE2(v42) ^ 0x1D;
  *a30 = (v48 ^ 0xBC) + 74;
  a23[36] = BYTE4(v42) ^ 0xF2;
  a23[60] = BYTE1(v39) ^ 0x54;
  a23[27] = BYTE2(v39) ^ 0x11;
  a23[40] = (v42 ^ 0x4F15BBF2C11DE053) >> v49 >> (v49 ^ 0x38u);
  a23[53] = BYTE3(v39) ^ 5;
  a23[59] = v39 ^ 0x4C;
  a23[22] = BYTE4(v39) ^ 0x2D;
  v51 = *(a21 + ((v50 & 0xFC | (v39 >> 46) & 3) ^ 0x97));
  a23[37] = -35 * ((((v50 & 0xFC | (v39 >> 46) & 3) ^ 0x86) - ((2 * v50) & 0xD0) + (v51 ^ 0xB2) + ((2 * v51) & 0x64) + 79) ^ 0x85);
  v52 = *(a12 + 526 + (((v39 >> 41) & 0x80 | (v39 >> 49) & 0x7F) ^ 0x56));
  a23[29] = HIBYTE(v39) ^ 0x30;
  a23[57] = (((v52 >> 4) | (16 * v52)) ^ 0xB) + ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55) - 2 * ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55 & (((v52 >> 4) | (16 * v52)) ^ 0xB)) + 95;
  **a31 = a24 + 1;
  v54 = *a31;
  v55 = ((*(*a31 + 17) << 32) | (*(*a31 + 16) << 40) | (*(*a31 + 30) << 48)) ^ __ROR8__(((*(*a31 + 21) << 51) | (*(*a31 + 35) << 43) | (*(*a31 + 6) << 35) | __ROR8__(*(*a31 + 54), 5)) ^ 0xA9362DBB142E3600, 35) ^ (*(*a31 + 42) << 56);
  v56 = *(*a31 + 15) | (*(*a31 + 32) << 8) | (*(*a31 + 7) << 16) | (*(*a31 + 34) << 24) | (*(*a31 + 61) << 40);
  v57 = *(&off_1F2870B00 + a34 - 1424);
  v58 = (*(v57 + 10 + (((((69 * v54[55]) - ((69 * v54[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v54[55])) ^ 0xD5)) - 18) ^ 0x57;
  v59 = (v58 >> 2) | (v58 << 6);
  v60 = v55 ^ 0xDB2A43A9595D2B68;
  LOBYTE(v55) = (*(v57 + 10 + ((69 * *(*a31 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v61 = ((v55 >> 2) | (v55 << 6)) << 32;
  v62 = *(*a31 + 8) << 24;
  v63 = *(*a31 + 33) << 16;
  v64 = ((v54[4] >> 4) | (16 * v54[4])) ^ 0x5CLL;
  v65 = ((((v63 & 0xD80000 ^ 0x9A6CB7E30A5ECF0BLL ^ ((((((*(v57 + 541 + v64) >> 5) | (8 * *(v57 + 541 + v64))) << 8) ^ 0xF1EF99FE6B5D0B18) & (*(*a31 + 19) ^ 0xFBFFBBFFEBFFFF98) | *(*a31 + 19) & 0xE7) ^ 0x5B78CC4C0A7A354ALL) & (v63 ^ 0xFFFFFFFFEBFFFFFFLL)) & ~v62 | v62 & 0x94000000) ^ 0xE9E5404C3B7B901CLL) & ~v61 | v61 & 0xE200000000) ^ ((v54[38] << 40) | (v54[43] << 48));
  LODWORD(v62) = v54[44] | (v54[25] << 16) | (v54[10] << 8) | (v54[24] << 24);
  v66 = ((*(v57 + 802 + (*(*a31 + 18) ^ 0x57)) ^ 0xFA) - 119) << 32;
  v67 = v62 & 0x211556C0;
  v68 = v62 & 0xDEEAA93F | v66 & 0xC5DEEAA93FLL;
  v69 = v66 ^ 0xC500000000;
  if (!*(*a31 + 58))
  {
    v69 = 0x3A00000000;
  }

  v70 = (__ROR8__((((v69 & v66) >> 8) | __ROR8__(v67, 8)) ^ 0x1F3E43E1B109A3DELL, 56) ^ 0x3E43E1B109A3DE1FLL) + v68;
  v71 = v54[12];
  v45 = (2 * a34) ^ 0xFF6;
  return (*(v41 + 8 * ((120 * ((v45 ^ 0x4B1) != 0x731)) ^ v45)))(87, 0xFFFFFF0000000000 * v71, ((v65 & 0x15400194151504 ^ 0xB50BFFDEEC779532) & ((v54[46] << 56) & 0xB500000000000000 ^ 0x301DC483F4379506 ^ v65 & 0xB50ABFDE68628032) | (v65 ^ (v54[46] << 56)) & 0x4AE0002003886AC9) ^ 0xE917669FB4353547, ((*(*a31 + 51) << 56) | (*(*a31 + 56) << 48)) ^ 0x4CDD424DE1C2DFA2 ^ (((0xFFFFFFFF00000000 * v59) ^ (v56 - (v56 & 0xFFFFFF00FFFFFFFFLL | (v59 << 32))) ^ ((v59 << 32) - ((v59 << 33) & 0xF800000000) + 0x688B427CB65ED3F6) ^ 0x688B427CB65ED3F6) + v56), v60, 250, ((*(*a31 + 23) << 48) | (*(*a31 + 62) << 56)) ^ 0x801353417BE014CALL ^ (((0xFFFFFF0000000000 * v71) ^ ((v71 << 40) - ((v71 << 41) & 0x1A0000000000) - 0x2085F26EE38F03D6) ^ 0xDF7A0D911C70FC2ALL ^ (v70 - (v70 ^ (v71 << 40)))) + v70), a39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1B16C2ACC@<X0>(unint64_t a1@<X1>, uint64_t a2@<X6>, int a3@<W8>)
{
  v14 = ((a1 >> (((v13 + 10) | v7) - 49)) ^ (((v13 - 1337) | 0x20u) + v5)) + (*(a2 + 4 * a3) ^ v3);
  v15 = v14 - (v9 & (2 * v14)) + v10;
  *(a2 + 4 * v6) = v15 ^ v11;
  *(a2 + 4 * a3) = HIDWORD(v15) ^ v12;
  return (*(v8 + 8 * (v13 | (32 * (v4 + 1 == a3)))))();
}

uint64_t sub_1B16C2B8C()
{
  v6 = *(v4 + 4 * (v2 - 1));
  *(v4 + 4 * v2) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v4 + 4 * v2)) - v2;
  v7 = 1564307779 * ((((v5 - 152) | 0xA27A989236BFFDB9) - (v5 - 152) + ((v5 - 152) & 0x5D85676DC9400240)) ^ 0x87B96CE8A1B231AALL);
  v8 = v0 - 1083274372 + v7;
  v9 = v8 + 122;
  *(v5 - 152) = ((v0 - 1083274372) ^ 0xF7) - v7;
  *(v5 - 148) = v8;
  v10 = v7 ^ 0x26F;
  *(v5 - 144) = v7 ^ 1;
  *(v5 - 120) = v9;
  *(v5 - 116) = -1793179946 - v7 + v0;
  v11 = v2 + 1 + v7;
  v12 = v5 - 168;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v13 = (*(v1 + 8 * (v0 ^ v3)))(v5 - 152);
  return (*(v1 + 8 * *(v5 - 140)))(v13);
}

uint64_t sub_1B16C2C84@<X0>(int a1@<W8>)
{
  v5 = (a1 - 616555715) & 0x24BFDF9D;
  v6 = STACK[0x320];
  v7 = 742307843 * ((((v4 - 216) | 0x987449E3) - ((v4 - 216) & 0x987449E3)) ^ 0xC5083699);
  *(v4 - 192) = -528028 - v7 + (LODWORD(STACK[0x4B4]) ^ 0x362FBFEF) + ((2 * LODWORD(STACK[0x4B4])) & 0x6C5F7FDE) + 3192;
  *(v4 - 188) = v7 + a1 + 1421510555;
  v8 = STACK[0x230];
  v9 = (v4 - 216);
  *v9 = v6;
  v9[1] = v8;
  *(v4 - 172) = (v1 ^ 0xF9F7DDFE) - v7 + 938441550 + ((v5 ^ 0x284) & (2 * v1));
  v9[4] = v3;
  v9[2] = STACK[0x238];
  v10 = (*(v2 + 8 * (a1 ^ 0xF29)))(v4 - 216);
  v11 = *(v4 - 176);
  LODWORD(STACK[0x358]) = v11;
  return (*(v2 + 8 * (((v11 == ((2 * v5) ^ 0x11A9CC6F)) * (((v5 - 569) | 0x11) ^ 0xA8D)) ^ v5)))(v10, v3);
}

uint64_t sub_1B16C2DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = (v18 + 336) ^ (1564307779 * ((1242077348 - ((v19 - 136) | 0x4A0898A4) + ((v19 - 136) | 0xB5F7675B)) ^ 0x22FAAB48));
  *(v19 - 136) = &a15;
  *(v19 - 128) = a14;
  (*(v16 + 8 * (v18 ^ 0xD38)))(v19 - 136);
  v20 = 1785193651 * ((-1548664493 - ((v19 - 136) | 0xA3B14153) + ((v19 - 136) | 0x5C4EBEAC)) ^ 0x70F9E544);
  *(v19 - 136) = v15;
  *(v19 - 128) = v18 - v20 - 1228;
  *(v19 - 124) = 225860456 - v20;
  (*(v16 + 8 * (v18 ^ 0xDD0)))(v19 - 136);
  *(v19 - 128) = v18 - ((((v19 - 136) | 0x66AA7EF8) - (v19 - 136) + ((v19 - 136) & 0x99558100)) ^ 0x7F2F528) * v17 - 1376;
  *(v19 - 120) = v15;
  *(v19 - 136) = a14;
  v21 = (*(v16 + 8 * (v18 ^ 0xD37)))(v19 - 136);
  return (*(v16 + 8 * ((109 * (((v18 + 78086709) & 0xFB5878DB) - 2140359114 + *(v19 - 112) - 203 < ((v18 - 1279) ^ 0x87E82546))) ^ v18)))(v21);
}

uint64_t sub_1B16C2F7C@<X0>(int a1@<W6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *(v62 + 32) = a61 - 1712;
  LODWORD(STACK[0x310]) = a1;
  v63 = *(STACK[0x240] + 360) < 2u;
  return (*(v61 + 8 * (((8 * v63) | (v63 << 6)) ^ a2)))();
}

uint64_t sub_1B16C3020(int a1, int8x16_t a2, double a3, double a4, int8x16_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = 35 * (v11 ^ 0x1EC);
  v15 = (a10 + v10);
  v16 = vaddq_s8(vsubq_s8(v15[1], vandq_s8(vaddq_s8(v15[1], v15[1]), a5)), a2);
  *v12 = vaddq_s8(vsubq_s8(*v15, vandq_s8(vaddq_s8(*v15, *v15), a5)), a2);
  v12[1] = v16;
  return (*(v13 + 8 * ((((((v14 - 424) | 0x20u) ^ 0x7FLL) != 32) * a1) ^ v14)))();
}

uint64_t sub_1B16C30F0@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 200);
  v5 = 46 * ((35 * ((a1 + 80) ^ 0x3F)) ^ 0xD9);
  v6 = *(a2 + 72);
  *v4 = ((v6 >> (v5 ^ 0xF0)) ^ 0x20) - 2 * ((v6 >> (v5 ^ 0xF0)) ^ 0x20 ^ (v6 >> (v5 ^ 0xF0)) & 1) + 126;
  v4[1] = (BYTE2(v6) ^ 0xC9) - ((2 * (BYTE2(v6) ^ 0xC9)) & 0xFC) + 126;
  v4[2] = (BYTE1(v6) ^ 0xAD) + (~(2 * ((v6 >> 8) ^ 0xFFFFFFAD)) | 3) + 127;
  v4[3] = v6 ^ 0x70;
  return (*(v2 + 8 * ((1229 * (*(a2 + 92) > 4u)) ^ (35 * ((a1 - 944) ^ 0x43F)))))();
}

uint64_t sub_1B16C332C@<X0>(char a1@<W4>, int a2@<W8>)
{
  v11 = v3 + 16;
  v12 = (v2 + 16);
  v13 = v4 + 1 - ((v11 >> (v5 + 23)) & v6);
  v10[12] = (HIBYTE(v13) ^ 0x2D) - ((2 * (HIBYTE(v13) ^ 0x2D)) & 0x7C) + 126;
  v10[13] = (BYTE2(v13) ^ v7) - 2 * (BYTE2(v13) ^ v7 ^ BYTE2(v13) & 1) + 126;
  v10[14] = (v9 ^ BYTE1(v13)) + (~(2 * (v9 ^ BYTE1(v13))) | 3) + 127;
  v10[15] = v13 ^ a1;
  *(v12 - 15) ^= *v10 ^ 0x7E;
  *(v12 - 14) ^= v10[1] ^ 0x7E;
  *(v12 - 13) ^= v10[2] ^ 0x7E;
  *(v12 - 12) ^= v10[3] ^ 0x7E;
  *(v12 - 11) ^= v10[4] ^ 0x7E;
  *(v12 - 10) ^= v10[5] ^ 0x7E;
  *(v12 - 9) ^= v10[6] ^ 0x7E;
  *(v12 - 8) ^= v10[7] ^ 0x7E;
  *(v12 - 7) ^= v10[8] ^ 0x7E;
  *(v12 - 6) ^= v10[9] ^ 0x7E;
  *(v12 - 5) ^= v10[10] ^ 0x7E;
  *(v12 - 4) ^= v10[11] ^ 0x7E;
  *(v12 - 3) ^= v10[12] ^ 0x7E;
  *(v12 - 2) ^= v10[13] ^ 0x7E;
  *(v12 - 1) ^= v10[14] ^ 0x7E;
  *v12 ^= v10[15] ^ 0x7E;
  return (*(v8 + 8 * ((42 * (v11 < 0x140)) ^ (a2 - 290))))();
}

uint64_t sub_1B16C3AFC@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v5 + v6) = *(a1 + v6) - ((*(a1 + v6) << (v1 + 45)) & 0xFC) + 126;
  return (*(v4 + 8 * (((v6 == 0) * v3) ^ v1)))();
}

uint64_t sub_1B16C3B38@<X0>(uint64_t a1@<X8>)
{
  v7 = LODWORD(STACK[0x4B4]) ^ 0x757E2E7B;
  v8 = (2 * LODWORD(STACK[0x4B4])) & 0xEAFC5CF6;
  v9 = 143681137 * ((1067387891 - (v5 | 0x3F9F0BF3) + (v5 | 0xC060F40C)) ^ 0xA1387FDC);
  *(v6 - 216) = v3 - v9 - 2013067181;
  *(v6 - 192) = v1 - v9 - 2 * v1 + 1516545475;
  *(v6 - 188) = v9 + v7 + v8 - 88083545;
  v10 = STACK[0x238];
  v11 = (v6 - 216);
  v11[4] = STACK[0x230];
  v11[5] = v10;
  v11[1] = v4;
  v11[2] = a1;
  v12 = (*(v2 + 8 * (v3 + 1570)))(v6 - 216);
  v13 = *(v6 - 212);
  LODWORD(STACK[0x358]) = v13;
  return (*(v2 + 8 * ((427 * (v13 == v3 + 296339180)) ^ v3)))(v12, v4);
}

void sub_1B16C3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0xBD4403D5) + 1922975923) ^ v10 ^ ((v10 ^ 0x7C414794) - 1281684236) ^ ((v10 ^ 0x7BF7FBFE) - 1272074086) ^ (v11 + (v10 ^ 0x8AD70B27) + 1158495465);
  *a9 = (HIBYTE(v12) ^ 0x30) - 2 * (HIBYTE(v12) ^ 0x30 ^ HIBYTE(v12) & 1) + 126;
  a9[1] = (BYTE2(v12) ^ 0x25) - ((2 * (BYTE2(v12) ^ 0x25)) & 0xFC) + 126;
  a9[2] = (BYTE1(v12) ^ 0xB4) + (~(2 * (BYTE1(v12) ^ 0xB4)) | 3) + 127;
  a9[3] = ((v10 ^ 0xD5) - 77) ^ v10 ^ ((v10 ^ 0x94) - 12) ^ ((v10 ^ 0xFE) - 102) ^ (v11 + (v10 ^ 0x27) - 23) ^ 0xE6;
  v13 = v9 - ((2 * v9) & 0x96DAF1452878D37ALL) + 0x4B6D78A2943C69BDLL;
  a9[4] = (HIBYTE(v13) ^ 0x4B) + (~(2 * (HIBYTE(v13) ^ 0x4B)) | 3) + 127;
  a9[5] = (BYTE6(v13) ^ 0x6D) + (~(2 * (BYTE6(v13) ^ 0x6D)) | 3) + 127;
  a9[6] = (BYTE5(v13) ^ 0x78) + ~(2 * (BYTE5(v13) ^ 0x78 ^ BYTE5(v13) & 1)) + 127;
  a9[7] = (BYTE4(v13) ^ 0xA2) - 2 * (BYTE4(v13) ^ 0xA2 ^ BYTE4(v13) & 1) + 126;
  a9[8] = (((v9 - ((2 * v9) & 0x2878D37A) - 1807980099) >> 24) ^ 0x94) - ((2 * (((v9 - ((2 * v9) & 0x2878D37A) - 1807980099) >> 24) ^ 0x94)) & 0xFC) + 126;
  a9[9] = (BYTE2(v13) ^ 0x3C) - 2 * (BYTE2(v13) ^ 0x3C ^ BYTE2(v13) & 1) + 126;
  a9[10] = (BYTE1(v13) ^ 0x69) - ((2 * (BYTE1(v13) ^ 0x69)) & 0xFC) + 126;
  a9[11] = (v9 - ((2 * v9) & 0x7A) - 67) ^ 0xC3;
  JUMPOUT(0x1B16AF700);
}

uint64_t sub_1B16C3E2C@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 - 672646467) & 0x2817C7FF;
  v7 = (v2 + 500) ^ (1564307779 * (((v6 ^ 0x36811744) + 1376494492 - 2 * ((v6 ^ 0x36811744) & 0x520BA39C)) ^ 0xF38778CB));
  v6[0] = v3;
  v6[1] = a1;
  result = (*(v1 + 8 * (v2 + 876)))(v6);
  *(v3 + 4) = (v4 ^ 0xB8D0AC29) - *(v3 + 4);
  return result;
}

uint64_t sub_1B16C3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30)
{
  v33 = a13 < 0xE4E6C8F0;
  if (v33 == v30 > 0x1B19370F)
  {
    v33 = v30 - 454637328 < a13;
  }

  return (*(v32 + 8 * ((!v33 * ((v31 + 630080076) & 0xDA71B66A ^ 0x24)) ^ v31)))(214, &a30);
}

uint64_t sub_1B16C4058(__n128 a1, __n128 a2, __n128 a3)
{
  v6 = v3 ^ 0x452;
  v7.n128_u64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v7.n128_u64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v8.n128_u64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v8.n128_u64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v9 = *(v4 + 16) - 1816166887;
  v10 = v9 < 0xA9664886;
  if (v9 >= 0xA9664886)
  {
    v10 = v9 > 0xA9664886;
  }

  return (*(v5 + 8 * ((v10 * ((v6 ^ 0x6C0) - 944)) ^ v6)))(a1, a2, a3, v7, v8);
}

uint64_t sub_1B16C42DC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = *(v32 + 4 * (v30 - 1));
  *(v32 + 4 * v30) = ((1566083941 * (v34 ^ (v34 >> 30))) ^ *(v32 + 4 * v30)) - v30;
  v35 = 1388665877 * ((0x59000D002C7ACF31 - ((v33 - 152) | 0x59000D002C7ACF31) + a29) ^ 0x938562B05E285222);
  v36 = v33 - 168;
  *(v36 + 48) = v35 ^ 0x26F;
  *(v33 - 136) = v35 ^ (a1 - 1096256694) ^ 0x7A;
  *(v33 - 132) = v35;
  *(v33 - 124) = (a1 - 304831800) ^ v35;
  *(v36 + 16) = (v30 + 1) ^ v35;
  *(v33 - 144) = a1 - 1096256694 + v35;
  *(v33 - 140) = ((a1 - 1096256694) ^ 0x33) - v35;
  v37 = (*(v31 + 8 * (a1 ^ (v29 - 2114))))(v33 - 152);
  return (*(v31 + 8 * *(v33 - 128)))(v37);
}

uint64_t sub_1B16C43D8@<X0>(unsigned int a1@<W8>)
{
  v6 = (v4 - 179) | 0x16;
  v1 = a1 - 1630347370 < v3 + 701243158;
  if (a1 > v6 + 1630346475 != (v3 + 701243158) < 0x9ED2DF96)
  {
    v1 = (v3 + 701243158) < 0x9ED2DF96;
  }

  return (*(v5 + 8 * ((v1 * ((v6 + 745) ^ 0x686)) ^ v6)))(1305);
}

uint64_t sub_1B16C4430@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v7 = (v4 + 262322728) & 0xF05D42FB;
  v8 = (v7 ^ 0x2FB) + a1;
  *(*(a2 + 8) + 4 * (a1 + v2)) = v6 ^ v5;
  *(a2 + 4) = v8;
  v9 = (v7 ^ 0x1F0 ^ (v2 - 250)) + v8;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return (*(v3 + 8 * ((1049 * (((v9 ^ 0x5C7CF7FD) + ((2 * v9) & 0xB8F9EFFA) - 1551694994 + (((v7 ^ 0x1F0) + 1955015412) & 0x8B78D695)) >= 0)) ^ v7 ^ 0x1F0)))();
}

void sub_1B16C470C(uint64_t a1)
{
  v1 = *(a1 + 24) + 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16C48A4(uint64_t a1, unsigned int a2)
{
  v7 = *(v6 + 4) + ((a2 - v4) ^ (v4 - 1));
  v8 = (v5 & (2 * v7)) + (v7 ^ v3) == v3;
  return (*(v2 + 8 * ((v8 << 9) | (v8 << 10) | a2)))();
}

void sub_1B16C4A10()
{
  v6 = 1785193651 * ((((2 * v0) | 0x7ECBF990) - v0 + 1083835192) ^ 0x93D2A720);
  *(v5 - 136) = v4;
  *(v5 - 128) = v3 - v6 - 279;
  *(v5 - 124) = (v1 ^ 0x8F777BF7) - v6 + ((((v3 + 1) | 0xC9) ^ 0x1EEEF520) & (2 * v1)) + 2113855344;
  (*(v2 + 8 * (v3 + 1637)))(v5 - 136);
  JUMPOUT(0x1B16C4AA8);
}

void sub_1B16C4B68(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_1F2870B00 + (v1 ^ 0x173)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x94A)])(32, 0x101004023FF3BD5) == 0) * (((v1 - 179) | 0x102) ^ 0x134)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16C4CDC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35)
{
  v38 = *(&a23 + a2 + 72);
  v39 = ((2 * a2) & 0xFDC3E348) + (a2 ^ 0x7EE1F1A7) + v35;
  *(a1 + v39) = (HIBYTE(v38) ^ 0x20) - 2 * (HIBYTE(v38) ^ 0x20 ^ HIBYTE(v38) & (((v36 - 121) | 8) ^ 0x1D)) + 126;
  *(a1 + v39 + 1) = (BYTE2(v38) ^ 0xC9) - ((2 * (BYTE2(v38) ^ 0xC9)) & 0xFC) + 126;
  *(a1 + v39 + 2) = (BYTE1(v38) ^ 0xAD) + (~(2 * ((v38 >> 8) ^ 0xFFFFFFAD)) | 3) + 127;
  *(a1 + v39 + 3) = v38 ^ 0x70;
  return (*(v37 + 8 * ((396 * (a2 + 4 < a35)) ^ v36)))();
}

void sub_1B16C4E2C(uint64_t a1)
{
  v1 = *(a1 + 8) - 1785193651 * ((a1 & 0x63D26EBF | ~(a1 | 0x63D26EBF)) ^ 0xB09ACAA8);
  v2 = *(&off_1F2870B00 + (v1 ^ 0x395)) - 8;
  v3 = *a1;
  (*&v2[8 * (v1 ^ 0xBA9)])(*(&off_1F2870B00 + (v1 ^ 0x39A)) - 4, sub_1B16A6CC8);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1B16C5174(uint64_t a1)
{
  v1 = (*a1 ^ (50899313 * (a1 ^ 0xC861C456))) + 959;
  v2 = (v1 ^ 0xA397AFDB) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_1F2870B00 + v1 - 1425) + ((653 * (v2 > (((v1 - 984) | 0x19) ^ 0x219))) ^ v1) - 1))();
}

void mm0Euuzhc()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - dword_1EB75A1D8) ^ 0x73)) ^ byte_1B1765790[byte_1B1761B20[(79 * ((qword_1EB75A150 - dword_1EB75A1D8) ^ 0x73))] ^ 0xDB]) - 58);
  v1 = *(v0 - 4);
  v2 = *(&off_1F2870B00 + (*(off_1F2870E80 + (*(off_1F2870C28 + (79 * ((qword_1EB75A150 + v1) ^ 0x73)) - 8) ^ 0x66u) - 12) ^ (79 * ((qword_1EB75A150 + v1) ^ 0x73))) - 60);
  v3 = 1889310799 * (&v5[*(v2 - 4) - v1] ^ 0x6CD83E9A0F465C73);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v6[0] = (1037613739 * (((v6 | 0xF6A5DD78) - v6 + (v6 & 0x95A2280)) ^ 0x27A7F007)) ^ 0x9617D40F;
  LOBYTE(v2) = 79 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x73);
  v4 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A1D8) ^ 0x73)) ^ byte_1B1765890[byte_1B1761C20[(79 * ((qword_1EB75A150 + dword_1EB75A1D8) ^ 0x73))] ^ 0x5E]) + 14) - 8;
  (*&v4[8 * (*(off_1F2870FB8 + (*(off_1F2870CB0 + v2) ^ 0x4Au) - 8) ^ v2) + 15696])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16C5498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v34 = v26 - 726;
  v35 = 1785193651 * ((2 * (((v33 - 144) ^ 0x729FD5A2) & 0x6E205FA) - ((v33 - 144) ^ 0x729FD5A2) + 2032007680) ^ 0x2735744A);
  *(v33 - 144) = v30;
  *(v33 - 136) = v35 + v26 - 905;
  *(v33 - 132) = v35 + v27 + ((v26 - 726) ^ 0x10EFF25A);
  *(v33 - 128) = &a20;
  (*(v28 + 8 * (v26 ^ 0xE0B)))(v33 - 144);
  a14 = &a22;
  a15 = &a18;
  *(v33 - 144) = (v34 + 621) ^ (((v33 - 1163917324 - 2 * ((v33 - 144) & 0xBAA00884)) ^ 0x72C1CCD2) * v32);
  *(v33 - 136) = v29;
  *(v33 - 128) = &a14;
  (*(v28 + 8 * (v34 + 1212)))(v33 - 144);
  *(v33 - 104) = (v34 - 125) ^ (2066391179 * ((((2 * (v33 - 144)) | 0x4026E98C) - (v33 - 144) - 538145990) ^ 0x8F34F6DE));
  *(v33 - 128) = v29;
  *(v33 - 120) = &a26;
  *(v33 - 112) = &a20;
  *(v33 - 144) = &a14;
  *(v33 - 136) = a11;
  v36 = (*(v28 + 8 * (v34 ^ 0xB1F)))(v33 - 144);
  return (*(v28 + 8 * (((((153 * (v34 ^ 0x39B) - 620) | 0x26C) ^ 0x2D8) * (v31 == 0)) ^ v34)))(v36);
}

uint64_t sub_1B16C5648@<X0>(char a1@<W5>, int a2@<W7>, uint64_t a3@<X8>)
{
  v9 = (v4 - 1106) | 0x123;
  v10 = (*(a3 + 1128) ^ 0x7E) - (*(v3 + 1148) ^ 0x7E);
  return (*(v6 + 8 * (((v10 + v7 - ((v10 << ((v9 ^ 0x93) * a1 + 25)) & a2) != v7) * v5) ^ v9)))(v8);
}

uint64_t sub_1B16C5690@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 - 470) | 0x10;
  v8 = v4 + 1785193651 * (((v6 ^ 0xD255D7C5 | 0x1BB234FE) - ((v6 ^ 0xD255D7C5) & 0x1BB234FE)) ^ 0xE550B8D3) - 41;
  v6[0] = v3;
  v6[1] = a1;
  v7 = v3;
  return (*(v1 + 8 * (v4 ^ 0xD67)))(v6);
}

void sub_1B16C5708(uint64_t a1)
{
  v2 = *(&off_1F2870B00 + ((79 * (dword_1EB75A0F0 ^ 0x73 ^ qword_1EB75A150)) ^ byte_1B1765890[byte_1B1761C20[(79 * (dword_1EB75A0F0 ^ 0x73 ^ qword_1EB75A150))] ^ 0x4A]) - 232);
  v3 = 79 * ((qword_1EB75A150 - *v2) ^ 0x73);
  v4 = *(&off_1F2870B00 + (*(off_1F2870F50 + (*(off_1F28710E0 + v3 - 4) ^ 0x52u) - 8) ^ v3) - 133);
  v5 = &v9[*v2 + *(v4 - 4)];
  v6 = 1889310799 * v5 - 0x77891E10DC513083;
  v7 = 1889310799 * (v5 ^ 0x6CD83E9A0F465C73);
  *v2 = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *v2;
  v8 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 - dword_1EB75A0F0) ^ 0x73)) ^ byte_1B1761F20[byte_1B176D0B0[(79 * ((qword_1EB75A150 - dword_1EB75A0F0) ^ 0x73))] ^ 0x1C]) - 33) - 8;
  (*&v8[8 * (*(off_1F2870E80 + (*(off_1F2870C28 + (79 * ((v7 + v4) ^ 0x73)) - 8) ^ 0x76u) - 12) ^ (79 * ((v7 + v4) ^ 0x73))) + 16872])(*(&off_1F2870B00 + (*(off_1F2870CE8 + (*(off_1F2870C50 + (79 * (v4 ^ 0x73 ^ v7)) - 12) ^ 0x41u) - 4) ^ (79 * (v4 ^ 0x73 ^ v7))) - 58) - 4, sub_1B16A6CC8);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B16C5900@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X4>, unsigned int a5@<W8>)
{
  v11 = v9 < v7;
  *(a2 + a5) = *(a4 + v5) - ((v6 ^ a3) & (2 * *(a4 + v5))) + 126;
  v12 = v5 + 1;
  if (v11 == v12 > v8 + 15)
  {
    v11 = v12 + v7 < v9;
  }

  return (*(v10 + 8 * ((!v11 * a1) ^ v6)))();
}

uint64_t sub_1B16C5968@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x230] + a1 + 72);
  v6 = ((2 * a1) & 0xBDE76728) + ((v2 - 554454562) ^ a1) + v1;
  *(v3 + v6) = (HIBYTE(v5) ^ 0x20) - 2 * (HIBYTE(v5) ^ 0x20 ^ HIBYTE(v5) & 1) + 126;
  *(v3 + v6 + 1) = (BYTE2(v5) ^ 0xC9) - ((2 * (BYTE2(v5) ^ 0xC9)) & 0xFC) + 126;
  *(v3 + v6 + 2) = (BYTE1(v5) ^ 0xAD) + (~(2 * ((v5 >> 8) ^ 0xFFFFFFAD)) | 3) + 127;
  *(v3 + v6 + 3) = v5 ^ 0x70;
  return (*(v4 + 8 * (((a1 + 4 < LODWORD(STACK[0x28C])) | ((a1 + 4 < LODWORD(STACK[0x28C])) << 6)) ^ v2)))();
}

void sub_1B16C5A74(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  v2 = *(a1 + 4) ^ v1;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B16C5B68()
{
  v3 = *(v0 + 16) - 2087211148;
  v4 = *(v0 + 12) + 1935067633;
  v5 = (v3 < 0x993E79E1) ^ (v4 < 0x993E79E1);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x993E79E1;
  }

  return (*(v2 + 8 * ((1525 * v6) ^ v1)))();
}

void sub_1B16C5BD0(uint64_t a1)
{
  v1 = 50899313 * ((a1 & 0x62D7CF3D | ~(a1 | 0x62D7CF3D)) ^ 0x5549F494);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1B16C5D34(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v14 = (v11 >> (a7 + 30)) + a3 * (*(a5 + 4 * a4) ^ v8) + (*(a8 + 4 * a2) ^ v8);
  *(a8 + 4 * a2) = v14 + v8 - ((v10 + 555) & (2 * v14));
  return (*(v12 + 8 * (((a4 + 1 == v9) * v13) ^ a1)))();
}

uint64_t sub_1B16C5D90(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v12 = a5 + 1;
  v13 = v9 > a8;
  if (v13 == v12 < v11)
  {
    v13 = v12 < a1;
  }

  return (*(v8 + 8 * ((!v13 * v10) ^ a7)))();
}

uint64_t sub_1B16C5DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = ((((v18 - 144) | 0xD1F25CDD) + (~(v18 - 144) | 0x2E0DA322)) ^ 0x7ED5DEC4) * v17;
  *(v18 - 136) = a13;
  *(v18 - 144) = v19 + v13 + 83;
  *(v18 - 128) = (((((v13 - 579) | 0x141) - 249290553) ^ v13 ^ 0x664) + v15) ^ v19;
  v20 = (*(v14 + 8 * (v13 + 1408)))(v18 - 144);
  return (*(v14 + 8 * ((449 * (*(v18 - 140) == v16)) ^ v13)))(v20);
}

void sub_1B16C5EA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = (v10 - 1195053714) & 0x13FF;
  v12 = v9 - (**(a2 + 8) == ((v10 + 110) ^ 0xD7));
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1550341629;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v13 = *(a1 + 96) + 800;
  v14 = *(a2 + 8) + (*(a2 + 4) - v12);
  v15 = 50899313 * ((&a5 - 580876879 - 2 * (&a5 & 0xDD6085B1)) ^ 0x150141E7);
  a6 = v15 + 683872143 + v12;
  a7 = v13;
  a8 = v14;
  a9 = (v11 + 981) ^ v15;
  (*(a3 + 8 * (v11 ^ 0xA71u)))(&a5);
  JUMPOUT(0x1B16C5FC4);
}

uint64_t sub_1B16C5FF0()
{
  v5 = v4 - 717;
  v11 = v9;
  v12 = &v10;
  v14 = v4 + 210068311 * ((((2 * &v11) | 0x1A43C520) - &v11 - 220324496) ^ 0xFFAA4D78) + 357;
  (*(v2 + 8 * (v4 ^ 0xC29u)))(&v11);
  LODWORD(v11) = v4 - 50899313 * (((&v11 | 0xC916F8BD) + (~&v11 | 0x36E90742)) ^ 0x1773CEA) - 656;
  v12 = v9;
  (*(v2 + 8 * (v4 + 989)))(&v11);
  if (v13 == ((v4 - 717) ^ (v0 + 292)))
  {
    v6 = v10;
  }

  else
  {
    v6 = v13;
  }

  LODWORD(v11) = v4 - ((&v11 & 0xDCAC47CA | ~(&v11 | 0xDCAC47CA)) ^ 0xAEFEDAD9) * v3 + 591;
  v12 = v9;
  (*(v2 + 8 * (v4 ^ 0xC2Fu)))(&v11);
  LODWORD(v11) = v5 - ((2 * (&v11 & 0x1CC88FE8) - &v11 - 482906091) ^ 0x6E9A12F9) * v3 + 1308;
  v12 = v8;
  (*(v2 + 8 * (v5 ^ 0x952)))(&v11);
  return v6 ^ v1;
}

void sub_1B16C65CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v73 + 32) = a72;
  LODWORD(STACK[0x358]) = v72;
  JUMPOUT(0x1B16BF060);
}

uint64_t sub_1B16C6664@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) - ((*(v3 + v7) << v5) & 0xFC) + 126;
  return (*(v1 + 8 * (((v7 != 0) * v6) ^ v2)))();
}

void sub_1B16C6698(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) - 1785193651 * ((-2 - ((a1 | 0xEE360D75) + (~a1 | 0x11C9F28A))) ^ 0x3D7EA962);
  v2 = *(a1 + 16);
  if (*(v2 + 4) - 1550341629 >= 0)
  {
    v3 = *(v2 + 4) - 1550341629;
  }

  else
  {
    v3 = 1550341629 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 1550341629 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 1550341629;
  }

  else
  {
    v4 = 1550341629 - *(*(a1 + 8) + 4);
  }

  v8 = v1 + 50899313 * (&v7 ^ 0xC861C456) + 466;
  v7 = v2;
  v5 = *(&off_1F2870B00 + v1 - 1190) - 8;
  (*&v5[8 * v1 + 6392])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_1B16C67F4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x967u));

  return v3(v1);
}

uint64_t sub_1B16C685C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + 434) ^ (1564307779 * (((v5 | 0x2E15C6D6) - v5 + (v5 & 0xD1EA3928)) ^ 0xB9180AC5));
  v5[0] = v2;
  v5[1] = a1;
  return (*(v1 + 8 * (v3 + 810)))(v5);
}

uint64_t sub_1B16C6910(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, unsigned int a29)
{
  v31.n128_u64[0] = 0xFCFCFCFCFCFCFCFCLL;
  v31.n128_u64[1] = 0xFCFCFCFCFCFCFCFCLL;
  v32.n128_u64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v32.n128_u64[1] = 0x7E7E7E7E7E7E7E7ELL;
  return (*(v30 + 8 * (((2 * (v29 + 44) - 1093) * (a17 < a16)) ^ (v29 - 917))))(756332952, a23, a29, 37, a8, a20, 4279203834, 4263440372, a1, a2, a3, v31, v32);
}

void sub_1B16C6A44(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 4) - 751300868) < 5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1B16C6AE4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v62 = 4 * (v56 ^ 0x39D);
  v63 = &STACK[0x17E0] + a1;
  v64 = *v57;
  *(v63 + 17) = *(v57 + 1);
  *(v63 + 25) = *(v57 + 9);
  *(v63 + 29) = *(v57 + 13);
  v63[31] = *(v57 + 15);
  v65 = *(v57 + 8);
  *v63 = *v57;
  *(v63 + 1) = v65;
  v63[16] = v64;
  v66 = (v63 + 16);
  v67 = v62 ^ 0x6C6;
  v68 = *(v60 + 8 * (v62 - 335));
  LOBYTE(v63) = *(v68 + (v63[21] ^ 0x56));
  v69 = *(v60 + 8 * (v62 - 259)) - 4;
  v70 = *(v69 + (v66[15] ^ 0x74));
  v71 = *(v69 + (v66[7] ^ 0xB3));
  v72 = (v71 ^ 0xDEFFFD34) & ((((19 * v63 - 125) ^ (76 * v63 - 32)) << ((v62 ^ 0xC6) - 86)) ^ 0x4E95F0D6) | v71 & 0x29;
  LODWORD(v63) = *(v69 + (v66[11] ^ 0x19));
  v73 = *(v60 + 8 * (v62 ^ 0x122)) - 8;
  v74 = *(v73 + (v66[2] ^ 0xA4));
  v75 = v74 ^ 0x21 ^ (v74 >> 3) ^ (((v74 ^ 0x21) >> 5) | 0xE0);
  v76 = *(v60 + 8 * (v62 ^ 0x102)) - 8;
  v77 = *(v76 + (v66[12] ^ 0x28));
  v78 = *(v76 + (*v66 ^ 0xBBLL));
  v79 = (((v77 ^ (v77 >> 3) ^ (v77 >> 2) ^ 0x23) << 24) ^ 0xF49810F3) & (v70 ^ 0xFF98103C) | v70 & 0xC;
  LOBYTE(v77) = *(v68 + (v66[13] ^ 0xCFLL));
  v80 = (((v78 ^ (v78 >> 3) ^ (v78 >> 2)) << 24) ^ 0x42779F24) & ((v75 << 8) ^ 0xFF77C8F6) & 0xFFFF9FFF | (((v75 >> 5) & 3) << 13);
  v81 = *(v76 + (v66[8] ^ 4));
  v82 = ((19 * v77 - 125) ^ (76 * v77 - 32)) << 16;
  v83 = (v79 ^ 0x15CB362C) & (v82 ^ 0xFF6AB7FF);
  v84 = v82 & 0xAC0000;
  v228 = v69;
  v85 = *(v69 + (v66[3] ^ 0xF1));
  v86 = (((v81 ^ (v81 >> 3) ^ (v81 >> 2) ^ 0xE5) << 24) ^ 0xD4000D4) & (v63 ^ 0xFF40001F) | v63 & 0x2B;
  LODWORD(v63) = (v80 ^ 0x9F22C85C) & (v85 ^ 0xFFFFFFF7) | v85 & 0xFFFFFF87;
  v87 = *(v73 + (v66[6] ^ 0xAELL));
  v88 = (((((v87 >> 5) ^ (v87 >> 3) | 0x80) ^ v87) << 8) ^ 0x55258F81) & (v72 ^ 0x99010F54);
  LOBYTE(v87) = *(v68 + (v66[1] ^ 0x72));
  v89 = *(v73 + (v66[10] ^ 0x41));
  v227 = v73;
  v90 = (*(v73 + (v66[14] ^ 0xC9)) ^ (*(v73 + (v66[14] ^ 0xC9)) >> 5) ^ (*(v73 + (v66[14] ^ 0xC9)) >> 3)) << 8;
  LODWORD(v69) = *(v76 + (v66[4] ^ 0x51));
  v91 = (v90 ^ 0xFFFFFEFF) & ((v84 | v83) ^ 0xDD21C0CC);
  v92 = (v69 ^ (v69 >> 3) ^ (v69 >> 2) ^ 0x49) << 24;
  v229 = v68;
  LOBYTE(v66) = *(v68 + (v66[9] ^ v58));
  LODWORD(a41) = -125;
  LODWORD(a40) = -32;
  v93 = (v89 ^ (v89 >> 5) ^ (v89 >> 3)) << 8;
  LODWORD(v66) = ((76 * v66 - 32) ^ (19 * v66 - 125)) << 16;
  LODWORD(STACK[0x250]) = v63 & 0x60230583 ^ 0xB21AF543 ^ ((((19 * v87 - 125) ^ (76 * v87 - 32)) << 16) ^ 0x9F55FA7C) & (v63 ^ 0xFDAA8C86);
  LODWORD(STACK[0x218]) = v92 & 0x6A000000 ^ 0x691CEE53 ^ (v92 ^ 0xC3FFFFFF) & (v72 & 0xADA207E ^ 0xCA42D8D0 ^ v88);
  LODWORD(STACK[0x248]) = v90 & 0x1900 ^ 0xD5A4AAF ^ v91;
  LODWORD(STACK[0x208]) = v66 & 0xBA0000 ^ 0xA93E9E76 ^ (v66 ^ 0xFF1EFFFF) & ((v93 & 0xFFFFDFFF | (v86 ^ 0x5540208A) & ~v93) ^ 0x2B45C04F);
  v225 = *(v61 + 432);
  v226 = *(v61 + 440);
  STACK[0x298] = v226 + 7;
  STACK[0x260] = v225 + 7;
  LODWORD(STACK[0x270]) = 0;
  LODWORD(v65) = 104 * (v67 ^ 0x762);
  v94 = STACK[0x298];
  v95 = *(STACK[0x298] - 1);
  LODWORD(STACK[0x278]) = v65;
  LODWORD(STACK[0x258]) = v65 ^ 0x1AB;
  LOBYTE(v91) = *(v228 + (*(v226 + (v65 ^ 0x1AB)) ^ 0x3FLL));
  v96 = *(v73 + (v94[7] ^ 0xC3));
  v97 = *(v227 + (v95 ^ 0xD3)) ^ 0xC1 ^ (*(v227 + (v95 ^ 0xD3)) >> 5) ^ (((*(v227 + (v95 ^ 0xD3)) ^ 0xC1) >> 3) | 0xA0);
  LOBYTE(v95) = (2 * v91) & 0xC4;
  LOBYTE(v91) = (v91 ^ 0x6B) - 98;
  LOBYTE(v87) = v91 + v95;
  v98 = v96 ^ (v96 >> 3) ^ ((v96 >> 5) | 0x30);
  v99 = *(v228 + (*v94 ^ 0xEELL));
  LODWORD(v69) = (v99 ^ 0x4FA4FF0C) & ((v97 << 8) ^ 0x4FA4EC4D) | v99 & 0xB2;
  v100 = *(v68 + (v94[6] ^ 0xFLL));
  LOBYTE(v92) = ((((19 * v100 - 125) ^ 0xFFFFFFB5) + ((38 * v100 + 6) & 0x6A)) << (v91 & 2) << (v91 & 2 ^ 2)) ^ (19 * v100 - 125);
  v101 = *(v76 + (v94[1] ^ 0xAALL));
  v102 = ((32 * (v101 ^ (v101 >> 3) ^ (v101 >> 2))) ^ 0x623F5A2809FB4F2) & ((v87 << 13) ^ 0x6EFFF7F2909FBFFFLL) ^ ((((v87 >> 1) & 1) << 14) | 0x68DC02501000100DLL);
  v103 = (v102 << 19) ^ 0x80480000 | (v102 >> 13) ^ 0xBF9410E5;
  v104 = *(v68 + (*(v94 - 6) ^ 0xDLL));
  v105 = (76 * v104 - 32) ^ (19 * v104 - 125);
  v106 = (((v105 >> 4) | 0xA0) & 0x8ELL ^ 0x3F9AF9CE74CFF446) & ((*(v228 + (*(v94 - 4) ^ 0x87)) << 12) ^ 0x3F9AF9CE74C284CELL) ^ (((v105 >> 4) | 0xA0) & 1 | 0xC00504010111C300);
  v107 = (v106 ^ 0x40002080202030) & ((v105 << 28) ^ 0x40C9442281E1A47ELL) ^ v106 & 0x3F16B9CD141E5281;
  v108 = *(v73 + (v94[3] ^ 8));
  v109 = (v107 << 20) ^ 0xE4E00000 | (v107 >> 12) ^ 0xDEF5037B;
  v110 = v103 ^ ((v108 ^ (v108 >> 5) ^ (v108 >> 3)) << 8);
  LODWORD(v106) = *(v76 + ((*(v94 - 3) - ((2 * *(v94 - 3)) & 0x1A4u) + 210) ^ 0x71));
  v111 = v106 ^ (v106 >> 3) ^ (v106 >> 2);
  LODWORD(v106) = *(v76 + (v94[5] ^ 0x9FLL));
  v112 = *(v73 + (*(v94 - 5) ^ 0x3FLL));
  v113 = *(v229 + (v94[2] ^ 0x9DLL));
  v114 = v109 ^ ((v112 ^ (v112 >> 3) ^ ((v112 >> 5) | 0x50)) << 8);
  v115 = v110 ^ (((19 * v113 - 125) ^ (76 * v113 - 32)) << 16);
  v116 = *(v228 + (v94[8] ^ 0x4BLL));
  LOBYTE(v112) = *(v229 + (*(v94 - 2) ^ 0xF7));
  LODWORD(v106) = (((v106 ^ (v106 >> 3) ^ (v106 >> 2) ^ 0x6C) << 24) ^ 0x2BEBB909) & ((((v92 << 16) ^ 0xABBB82E9) & ((v98 << 8) ^ 0xBFFFBEED) | (v98 << 8) & 0x7D00) ^ 0x54293172) ^ (((v92 << 16) ^ 0xABBB82E9) & ((v98 << 8) ^ 0xBFFFBEED) & 0x2A144680 | (v98 << 8) & 0x4400);
  v117 = ((19 * v112 - 125) ^ (76 * v112 - 32)) << 16;
  LODWORD(v65) = *(v76 + (*(v94 - 7) ^ 0xD6));
  v118 = ((((v111 << 24) ^ 0x1690475E) & ~v117 | v117 & 0x6F0000) ^ 0xE3B79609) & (v69 ^ 0xB05B1930) ^ v69 & 0x47842EA8;
  v119 = ((16 * (v65 ^ (v65 >> 1))) & 0xFC0 ^ 0x7F) & (((v65 ^ (v65 >> 1)) >> 4) ^ 0xFFFFFFE9) ^ (((v65 ^ 7) >> 2) | ((v65 ^ 7) << 6));
  LODWORD(a51) = v114 ^ ((((v119 >> 6) | (4 * v119)) ^ 0xFFFFFFF7) << 24);
  v120 = *(&off_1F2870B00 + (v67 ^ 0x772));
  v121 = v92 ^ 0x54u;
  v122 = *(&off_1F2870B00 + (v67 ^ 0x744));
  LODWORD(v65) = *(v122 + 4 * (v99 ^ 0xD)) - (v118 ^ 0x21C176B8);
  v123 = *(&off_1F2870B00 + (v67 ^ 0x72B));
  LODWORD(v73) = HIBYTE(v103);
  v124 = *(&off_1F2870B00 + (v67 ^ 0x7CA)) - 4;
  v125 = *&v124[4 * (BYTE1(v110) ^ 0x8B)] ^ (*(v123 + 4 * v121) - 1409877230) ^ v65 ^ (*(v120 + 4 * (BYTE3(a51) ^ 0x6B)) + (BYTE3(a51) ^ 0xA095C5C0) - 72909195);
  v126 = *&v124[4 * (v98 ^ 0x31)] ^ (*(v123 + 4 * (BYTE2(v109) ^ 0x7Cu)) - 1409877230) ^ (*(v120 + 4 * (HIBYTE(v118) ^ 0x1B)) + (HIBYTE(v118) ^ 0xA095C5B0) - 72909195) ^ (*(v122 + 4 * ((v102 >> 13) ^ 0x53)) - ((v102 >> 13) ^ 0x21C176FA));
  v127 = *&v124[4 * (BYTE1(v114) ^ 0x4B)] ^ (*(v123 + 4 * ((BYTE2(v118) ^ 0x8E) + ((v118 >> 15) & 0xF8 ^ 0xFFFFFFE7) + 125)) - 1409877230) ^ ((v73 ^ 0xA095C545) - 72909195 + *(v120 + 4 * (v73 ^ 0xEE))) ^ (*(v122 + 4 * (v116 ^ 0x88)) - ((v106 ^ 0xF9) & (v116 ^ 0x38) ^ v116 & 0x8F ^ 0x21C17611));
  LODWORD(a53) = v118;
  LODWORD(v106) = (*(v123 + 4 * (BYTE2(v115) ^ 0x53u)) - 1409877230) ^ ((BYTE3(v106) ^ 0x5F6A3AEE) - 72909196 - 2 * (BYTE3(v106) ^ 0x5F6A3AEE) + *(v120 + 4 * (BYTE3(v106) ^ 0xBA))) ^ *&v124[4 * (BYTE1(v118) ^ 0xB1)] ^ (*(v122 + 4 * ((v107 >> 12) ^ 0xCDLL)) - ((v107 >> 12) ^ 0x21C17664));
  v128 = *(v123 + 4 * (BYTE2(v106) ^ 0xC5u));
  v129 = *&v124[4 * (BYTE1(v127) ^ 0xF9)] ^ (*(v122 + 4 * (v126 ^ 0x68u)) - (v126 ^ 0x21C176C1)) ^ ((HIBYTE(v125) ^ 0xA095C535) - 72909195 + *(v120 + 4 * (HIBYTE(v125) ^ 0x9E))) ^ ((__ROR4__(__ROR4__(v128, 7) ^ 0x383AAE5C, 25) ^ 0xB6A1D50E) + ((2 * v128) & 0x57EDF624));
  v130 = (*(v123 + 4 * (BYTE2(v125) ^ 0x96u)) - 1409877230) ^ ((HIBYTE(v126) ^ 0xA095C503) - 72909195 + *(v120 + 4 * (HIBYTE(v126) ^ 0xA8))) ^ (*(v122 + 4 * (v127 ^ 0xFAu)) - (v127 ^ 0x21C17653)) ^ *&v124[4 * (BYTE1(v106) ^ 0x6E)];
  LODWORD(v107) = (*(v123 + 4 * ((((BYTE2(v126) ^ 5) - (BYTE2(v126) ^ 0x79)) ^ 0xFFFFFFF8) + (BYTE2(v126) ^ 5))) - 1409877230) ^ *&v124[4 * (BYTE1(v125) ^ 0xE0)] ^ ((HIBYTE(v127) ^ 0xA095C50D) - 72909195 + *(v120 + 4 * (HIBYTE(v127) ^ 0xA6))) ^ (*(v122 + 4 * (v106 ^ 0x40u)) - (v106 ^ 0x21C176E9));
  LODWORD(v116) = v130 ^ 0xF7D9A230;
  LODWORD(v106) = (*(v123 + 4 * (BYTE2(v127) ^ 0xA3u)) - 1409877230) ^ *&v124[4 * (BYTE1(v126) ^ 0x9A)] ^ (*(v122 + 4 * (v125 ^ 0x9Au)) - (v125 ^ 0x21C17633)) ^ ((BYTE3(v106) ^ 0xA095C5DF) - 72909195 + *(v120 + 4 * (BYTE3(v106) ^ 0x74)));
  BYTE2(v126) = BYTE2(v107) ^ 0xEC;
  LODWORD(v121) = *&v124[4 * (BYTE1(v107) ^ 0xBB)];
  v131 = (v107 ^ 0xCFECEC50) >> 24;
  v132 = (*(v123 + 4 * (BYTE2(v106) ^ 0x2Cu)) - 1409877230) ^ v121 & 0xFFFFFFBF ^ (v121 & 0x40 | 0x94F5230B) ^ (*(v122 + 4 * (v130 ^ 0xE0u)) - (v130 ^ 0x21C17649)) ^ ((((v129 ^ 0xC29E1175) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v129 ^ 0xC29E1175) >> 24) ^ 0x8A)));
  LODWORD(v107) = (*(v123 + 4 * (BYTE2(v129) ^ 0xE2u)) - 1409877230) ^ ((((v130 ^ 0xF7D9A230) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v130 ^ 0xF7D9A230) >> 24) ^ 0x8A))) ^ *&v124[4 * (BYTE1(v106) ^ 0x4F)] ^ (*(v122 + 4 * (v107 ^ 0x80u)) - (v107 ^ 0x21C17629));
  v133 = (*(v123 + 4 * (BYTE2(v116) - ((v116 >> 15) & 0xF8) + 124)) - 1409877230) ^ ((v131 ^ 0xA095C521) - 72909195 + *(v120 + 4 * (v131 ^ 0x8A))) ^ *&v124[4 * (BYTE1(v129) ^ 0x46)] ^ (*(v122 + 4 * (v106 ^ 0xA8u)) - (v106 ^ 0x21C17601));
  LODWORD(v106) = (*(v123 + 4 * (BYTE2(v126) ^ 0x7Cu)) - 1409877230) ^ ((((v106 ^ 0x13501878) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v106 ^ 0x13501878) >> 24) ^ 0x8A))) ^ *&v124[4 * BYTE1(v116)] ^ (*(v122 + 4 * (v129 ^ 0xA5u)) - (v129 ^ 0x21C1760C));
  v134 = v107 ^ 0xF40D6B87;
  BYTE2(v125) = BYTE2(v133) ^ 0x7F;
  v135 = (v133 ^ 0xF97FC1A2) >> 24;
  v136 = (v107 ^ 0xF40D6B87) >> 24;
  v137 = (*(v123 + 4 * ((v106 ^ 0x1DF67BEA) >> 16)) - 1409877230) ^ *&v124[4 * ((v133 ^ 0xC1A2) >> 8)] ^ (*(v122 + 4 * (v107 ^ 0x57u)) - (v107 ^ 0x21C176FE)) ^ ((((v132 ^ 0xFB60CFE9) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v132 ^ 0xFB60CFE9) >> 24) ^ 0x8A)));
  v138 = ((v136 ^ 0xA095C521) - 72909195 + *(v120 + 4 * (v136 ^ 0x8A))) ^ 0x94F5230B ^ *&v124[4 * (BYTE1(v106) ^ 0x2C)] ^ (*(v122 + 4 * (v133 ^ 0x72u)) - (v133 ^ 0x21C176DB)) ^ (*(v123 + 4 * (((((v132 ^ 0xFB60CFE9) >> 16) - (((v132 ^ 0xFB60CFE9) >> 16) ^ 0x7C)) ^ 0xFFFFFFF8) + ((v132 ^ 0xFB60CFE9) >> 16))) - 1409877230);
  v139 = v135 ^ 0xDE;
  LODWORD(v65) = (*(v123 + 4 * BYTE2(v134)) - 1409877230) ^ *&v124[4 * ((v132 ^ 0xCFE9) >> 8)] ^ (-72909196 - (v135 ^ 0x5F6A3ADE) + *(v120 + 4 * (v135 ^ 0x8A)));
  LODWORD(v141) = __ROR4__(v138, 24) ^ 0xF7A7AFD3;
  HIDWORD(v141) = v141;
  v140 = v141 >> 8;
  v142 = v65 ^ (*(v122 + 4 * (v106 ^ 0x3Au)) - (v106 ^ 0x21C17693));
  v143 = v137 ^ 0xFBC8137;
  v144 = (*(v123 + 4 * BYTE2(v125)) - 1409877230) ^ (-72909196 - ((1600797406 - (((v106 ^ 0x1DF67BEA) >> 24) & 2)) ^ ((v106 ^ 0x1DF67BEA) >> 24) & 0xFFFFFFFD) + *(v120 + 4 * (((v106 ^ 0x1DF67BEA) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v132 ^ 0x39u)) - (v132 ^ 0x21C17690)) ^ *&v124[4 * ((BYTE1(v134) - 1853103297 - ((v134 >> 7) & 0x7E)) ^ 0x918BE368)];
  v145 = v144 ^ 0x25BF358A;
  v146 = (*(v123 + 4 * (((v144 ^ 0x25BF358A) >> 16) ^ 0x7Cu)) - 1409877230) ^ ((HIBYTE(v143) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (HIBYTE(v143) ^ 0x8A))) ^ *&v124[4 * (BYTE1(v142) ^ 0x25)] ^ (*(v122 + 4 * (BYTE1(v141) ^ 0xD3u)) - (BYTE1(v141) ^ 0x21C1767A));
  v147 = ((v137 ^ 0xFBC8137) >> 16) & 0xC0;
  if (((v137 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v147 = (v137 ^ 0xFBC8137) >> 16;
  }

  v148 = (*(v123 + 4 * (v147 ^ 0x7Cu)) - 1409877230) ^ *&v124[4 * BYTE1(v145)] ^ (*(v122 + 4 * (v142 ^ 0x37u)) - (v142 ^ 0x21C1769E)) ^ ((((v140 ^ 0x1DD0DB03u) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v140 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)));
  v149 = (*(v123 + 4 * (BYTE2(v140) ^ 0xACu)) - 1409877230) ^ ((((v142 ^ 0xCC4472E7) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v142 ^ 0xCC4472E7) >> 24) ^ 0x8A))) ^ *&v124[4 * BYTE1(v143)] ^ (*(v122 + 4 * (v144 ^ 0x5Au)) - (v144 ^ 0x21C176F3));
  v150 = (*(v123 + 4 * (BYTE2(v142) ^ 0x38u)) - 1409877230) ^ ((HIBYTE(v145) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (HIBYTE(v145) ^ 0x8A))) ^ (*(v122 + 4 * (v137 ^ 0xE7u)) - (v137 ^ 0x21C1764E)) ^ *&v124[4 * (BYTE1(v140) ^ 0x8C)];
  v151 = (*(v123 + 4 * ((v150 ^ 0x28B1C8AF) >> 16)) - 1409877230) ^ *&v124[4 * ((v149 ^ 0xF582) >> 8)] ^ ((((v146 ^ 0x3AB33250) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v146 ^ 0x3AB33250) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v148 ^ 0x82u)) - (v148 ^ 0x21C1762B));
  v152 = (*(v123 + 4 * (BYTE2(v146) ^ 0xCFu)) - 1409877230) ^ *&v124[4 * ((v150 ^ 0xC8AF) >> 8)] ^ (*(v122 + 4 * (v149 ^ 0x52u)) - (v149 ^ 0x21C176FB)) ^ ((((v148 ^ 0x94240652) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v148 ^ 0x94240652) >> 24) ^ 0x8A)));
  v153 = (*(v123 + 4 * ((v148 ^ 0x94240652) >> 16)) - 1409877230) ^ ((((v149 ^ 0x57A0F582) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v149 ^ 0x57A0F582) >> 24) ^ 0x8A))) ^ *&v124[4 * ((v146 ^ 0x3250) >> 8)] ^ (*(v122 + 4 * (v150 ^ 0x7Fu)) - (v150 ^ 0x21C176D6));
  v154 = (*(v123 + 4 * (BYTE2(v149) ^ 0xDCu)) - 1409877230) ^ ((((v150 ^ 0x28B1C8AF) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v150 ^ 0x28B1C8AF) >> 24) ^ 0x8A))) ^ *&v124[4 * (((v148 ^ 0x652) >> 8) ^ 0x57)] ^ (*(v122 + 4 * (v146 ^ 0x80u)) - (v146 ^ 0x21C17629));
  BYTE2(v150) = BYTE2(v153) ^ 0xB2;
  v155 = (*(v123 + 4 * ((v154 ^ 0xBE27B2EF) >> 16)) - 1409877230) ^ *&v124[4 * ((v153 ^ 0x7C12) >> 8)] ^ ((((v151 ^ 0xDBAE4527) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v151 ^ 0xDBAE4527) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v152 ^ 0x10u)) - (v152 ^ 0x21C176B9));
  v156 = (*(v123 + 4 * (BYTE2(v151) ^ 0xD2u)) - 1409877230) ^ *&v124[4 * (BYTE1(v154) ^ 0xE5)] ^ ((((v152 ^ 0x6FA1BBC0) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v152 ^ 0x6FA1BBC0) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v153 ^ 0xC2u)) - (v153 ^ 0x21C1766B));
  v157 = (*(v123 + 4 * (BYTE2(v152) ^ 0xA1u)) - 1409877230) ^ *&v124[4 * ((v151 ^ 0x4527) >> 8)] ^ ((((v153 ^ 0x2B27C12) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v153 ^ 0x2B27C12) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v154 ^ 0x3Fu)) - (v154 ^ 0x21C17696));
  v158 = (*(v123 + 4 * BYTE2(v150)) - 1409877230) ^ *&v124[4 * ((v152 ^ 0xBBC0) >> 8)] ^ ((((v154 ^ 0xBE27B2EF) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v154 ^ 0xBE27B2EF) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v151 ^ 0xF7u)) - (v151 ^ 0x21C1765E));
  v159 = (v158 ^ 0x7DDF413F) >> 24;
  v160 = (*(v123 + 4 * ((v158 ^ 0x7DDF413F) >> 16)) - 1409877230) ^ *&v124[4 * (BYTE1(v157) ^ 0x1F)] ^ ((((v155 ^ 0x179F0454) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v155 ^ 0x179F0454) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v156 ^ 0xF5u)) - (v156 ^ 0x21C1765C));
  v161 = (*(v123 + 4 * ((v155 ^ 0x179F0454) >> 16)) - 1409877230) ^ *&v124[4 * ((v158 ^ 0x413F) >> 8)] ^ ((((v156 ^ 0x75457125) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v156 ^ 0x75457125) >> 24) ^ 0x8A))) ^ (*(v122 + 4 * (v157 ^ 0xC0u)) - (v157 ^ 0x21C17669));
  v162 = *&v124[4 * (BYTE1(v155) ^ 0x53)];
  v163 = v162 ^ -v162 ^ (-1795874037 - (__ROR4__(__ROR4__(v162, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v164 = *(v122 + 4 * (v158 ^ 0xEFu)) - (v158 ^ 0x21C17646);
  v165 = BYTE2(v157) ^ 0x59;
  v166 = (*(v123 + 4 * (BYTE2(v156) ^ 0x39u)) - 1409877230) ^ v164 ^ ((((v157 ^ 0xAC254810) >> 24) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (((v157 ^ 0xAC254810) >> 24) ^ 0x8A))) ^ (((2 * v163) & 0x29EA4616) + (v163 ^ 0x94F5230B));
  v167 = (*(v123 + 4 * v165) - 1409877230) ^ *&v124[4 * (BYTE1(v156) ^ 0x26)] ^ ((v159 ^ 0xA095C521) - 72909195 + *(v120 + 4 * (v159 ^ 0x8A)));
  v168 = v160 ^ 0x8EBD9B97;
  v169 = v167 ^ (*(v122 + 4 * (v155 ^ 0x84u)) - (v155 ^ 0x21C1762D));
  v170 = v166 ^ 0x8CA395FC;
  v171 = v161 ^ 0xA3ECFAB3;
  v172 = v169 ^ 0x10CC86ED;
  v173 = *(v122 + 4 * (v161 ^ 0x63u)) - (v161 ^ 0x21C176CA);
  v174 = (*(v123 + 4 * ((v169 ^ 0x10CC86EDu) >> 16)) - 1409877230) ^ ((HIBYTE(v168) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (HIBYTE(v168) ^ 0x8A))) ^ 0x94F5230B ^ *&v124[4 * (BYTE1(v166) ^ 0xC2)];
  v175 = (v174 ^ -v174 ^ (v173 - (v174 ^ v173))) + v173;
  if (((v166 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v176 = -16;
  }

  else
  {
    v176 = 16;
  }

  v177 = (*(v123 + 4 * (BYTE2(v160) ^ 0xC1u)) - 1409877230) ^ *&v124[4 * ((v169 ^ 0x86ED) >> 8)] ^ ((HIBYTE(v171) ^ 0xA095C521) - 72909195 + *(v120 + 4 * (HIBYTE(v171) ^ 0x8A)));
  v178 = *(v122 + 4 * ((v176 + v170) ^ 0xC0u)) - ((v176 + v170) ^ 0x21C17669);
  v179 = HIBYTE(v170);
  v180 = v177 ^ v178;
  v181 = (*(v123 + 4 * BYTE2(v171)) - 1409877230) ^ *&v124[4 * BYTE1(v168)] ^ (*(v122 + 4 * (v169 ^ 0x3Du)) - (v169 ^ 0x21C17694));
  v182 = *(v120 + 4 * (HIBYTE(v172) ^ 0x8A));
  v183 = ((v179 ^ 0xA095C521) - 72909195 + *(v120 + 4 * (v179 ^ 0x8A))) ^ v181;
  v184 = STACK[0x270];
  v185 = (*(v123 + 4 * (BYTE2(v166) ^ 0xDFu)) - 1409877230) ^ ((HIBYTE(v172) ^ 0xA095C521) - 72909195 + v182) ^ *&v124[4 * (BYTE1(v161) ^ 0xAD)] ^ (*(v122 + 4 * (v160 ^ 0x47u)) - (v160 ^ 0x21C176EE));
  v186 = BYTE2(v183) ^ 0xCB;
  v187 = *(&off_1F2870B00 + (v67 ^ 0x75A)) - 12;
  v188 = *(&off_1F2870B00 + v67 - 1789) - 4;
  v189 = *&v188[4 * ((v185 ^ 0x66EB169A) >> 16)] ^ 0x4D522762;
  v190 = *(&off_1F2870B00 + (v67 ^ 0x7FE)) - 4;
  v191 = *(&off_1F2870B00 + (v67 ^ 0x7ED)) - 4;
  v192 = (((v177 ^ v178) ^ 0xA4) - 1352815326) ^ *&v190[4 * (BYTE1(v183) ^ 0x57)] ^ *&v187[4 * (HIBYTE(v175) ^ 0xBE)] ^ *&v191[4 * ((v177 ^ v178) ^ 0x91)] ^ (((v189 >> (v139 & 3) >> (v139 & 3 ^ 3)) ^ v189) >> 2);
  v193 = *&v188[4 * (BYTE2(v175) ^ 0xBF)] ^ 0x4D522762;
  v194 = *&v187[4 * (((v177 ^ v178) >> 24) ^ 0x43)] ^ ((v183 ^ 0xC4) - 1352815326) ^ *&v190[4 * (BYTE1(v185) ^ 0x7C)] ^ v193 ^ *&v191[4 * (v183 ^ 0xF1)] ^ (v193 >> 2) ^ (v193 >> 5);
  v195 = *&v187[4 * (HIBYTE(v183) ^ 0xD5)];
  v196 = *&v187[4 * ((v185 ^ 0x66EB169A) >> 24)];
  v197 = *&v188[4 * (BYTE2(v180) ^ 0x20)];
  v198 = v195 ^ ((v185 ^ 0x9A) - 1352815326) ^ *&v191[4 * (v185 ^ 0xAF)];
  v199 = *&v190[4 * ((v175 ^ 0x84FF) >> 8)];
  LODWORD(v190) = *&v190[4 * (BYTE1(v180) ^ 0x2D)];
  v200 = v198 ^ v199;
  v201 = v192 - ((2 * v192) & 0x5B8E1440);
  v202 = *&v188[4 * v186] ^ 0x4D522762;
  v203 = v200 ^ ((v197 ^ 0x4D522762u) >> 2) ^ ((v197 ^ 0x4D522762u) >> 5);
  LODWORD(v190) = v196 ^ (~v175 - 1352815326) ^ v202 ^ v190 ^ (v202 >> 2) ^ (v202 >> 5) ^ *&v191[4 * (v175 ^ 0xCA)];
  v204 = (v194 - ((2 * v194) & 0xE8E32E68) - 193882316) ^ LODWORD(STACK[0x218]);
  v205 = v197 ^ 0x4D522762 ^ LODWORD(STACK[0x208]) ^ (v203 - ((2 * v203) & 0x11B6F468) + 148601396);
  HIDWORD(v207) = ((v190 ^ 0x23A4540) + 11054414 - ((2 * (v190 ^ 0x23A4540)) & 0x515A9C)) ^ LODWORD(STACK[0x248]);
  LODWORD(v207) = ((v190 ^ 0x23A4540) - 2 * ((v190 ^ 0x23A4540) & 0xA8AD5E ^ v190 & 0x10) - 2136429234) ^ LODWORD(STACK[0x248]);
  v206 = v207 >> 24;
  v208 = *(&off_1F2870B00 + v67 - 1818) - 8;
  v209 = STACK[0x260];
  v209[1] = (-97 * v208[HIBYTE(v205) ^ 0x4CLL]) ^ ((-97 * v208[HIBYTE(v205) ^ 0x4CLL]) >> 5) ^ ((-97 * v208[HIBYTE(v205) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v209 - 3) = (-97 * v208[BYTE3(v204) ^ 0x61]) ^ ((-97 * v208[BYTE3(v204) ^ 0x61]) >> 5) ^ ((-97 * v208[BYTE3(v204) ^ 0x61]) >> 1) ^ 0xD8;
  v210 = *(&off_1F2870B00 + (v67 ^ 0x7E6)) - 12;
  v209[3] = ((((((v205 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v205 ^ 0xD2C1) >> 8) ^ 0xDA) + v210[((v205 ^ 0xD2C1) >> 8) ^ 0x6CLL]) ^ 0xB3;
  v211 = *(&off_1F2870B00 + (v67 ^ 0x701)) - 4;
  v212 = v189 ^ LODWORD(STACK[0x250]);
  LOBYTE(v191) = v211[((((v205 ^ 0xA619D2C1) >> 16) ^ -((v205 ^ 0xA619D2C1) >> 16) ^ (510 - ((v205 ^ 0xA619D2C1) >> 16) - ((2 * ((v205 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v213 = ((((v205 ^ 0xA619D2C1) >> 16) ^ -((v205 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v205 ^ 0xA619D2C1) >> 16) - ((2 * ((v205 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v214 = v213 & 8 ^ v191;
  v215 = (v213 & 8 & v191) == 0;
  v216 = v191 - (v213 & 8);
  if (v215)
  {
    v216 = v214;
  }

  v209[2] = v216 ^ v213 & 0xF7;
  HIDWORD(v218) = v206 ^ 0x8829CA87;
  LODWORD(v218) = v206 ^ 0x8829CA87;
  v217 = v218 >> 8;
  *(v209 - 1) = (v210[BYTE1(v204) ^ 0x94] + (((BYTE1(v204) ^ 0x22) + 99) ^ BYTE1(v204) ^ 0x22)) ^ 0xA8;
  v219 = v212 ^ (v201 + 768018976);
  *(v209 - 2) = BYTE2(v204) ^ 0x9E ^ v211[BYTE2(v204) ^ 0xD5];
  v220 = *(&off_1F2870B00 + (v67 ^ 0x7FF)) - 12;
  v221 = v220[v219 ^ 0xE7] - 24;
  *(v209 - 4) = v221 ^ 0x5D ^ (v221 >> 1) & 0x1E;
  v209[5] = (-97 * v208[HIBYTE(v217) ^ 0x60]) ^ ((-97 * v208[HIBYTE(v217) ^ 0x60]) >> 5) ^ ((-97 * v208[HIBYTE(v217) ^ 0x60]) >> 1) ^ 0xFE;
  v222 = v220[((180 - (v205 ^ 0x56) + (v205 ^ 0xE2) - 2 * ((180 - (v205 ^ 0x56)) & (v205 ^ 0xE2))) ^ -(v205 ^ 0xE2)) + 180] - 24;
  *(v225 + LODWORD(STACK[0x258])) = v222 ^ 0x62 ^ (v222 >> 1) & 0x1E;
  v209[7] = (v210[((v218 >> 8) >> 8) ^ 0x4FLL] + (((((v218 >> 8) >> 8) ^ 0xF9) + 99) ^ ((v218 >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v209 - 5) = (v210[BYTE1(v219) ^ 0x1FLL] + (((BYTE1(v219) ^ 0xA9) + 99) ^ BYTE1(v219) ^ 0xA9)) ^ 0x84;
  v223 = v220[v204 ^ 0xDDLL];
  *v209 = (((v223 + ((v223 - 24) ^ 0xAE) - 23) ^ 0xFE) + v223 - 24) ^ ((v223 - 24) >> 1) & 0x1E;
  *(v209 - 7) = (-97 * v208[BYTE3(v219) ^ 0x67]) ^ ((-97 * v208[BYTE3(v219) ^ 0x67]) >> 5) ^ ((-97 * v208[BYTE3(v219) ^ 0x67]) >> 1) ^ 0xE1;
  v209[6] = BYTE2(v217) ^ 0x8E ^ v211[BYTE2(v217) ^ 0x55];
  *(v209 - 6) = BYTE2(v219) ^ 0xD3 ^ v211[BYTE2(v219) ^ 0x7DLL];
  LOBYTE(v223) = v220[BYTE1(v218) ^ 0xF7] - 24;
  v209[8] = v223 ^ ((v223 & (v223 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v59 + 8 * ((22 * (v184 > 0x13F)) ^ v67)))(v204, v208, 2499093259, v209, 2942151970, v210, 1297229666, v219, a2, a3, a4, a5, a6, a7, a8, a9, a10, v225, v226, v76, v227, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v228, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v229, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1B16C8A70(uint64_t a1, uint64_t a2, int a3)
{
  if ((v4 - 847955523) < 0xE31C0422 != (v5 ^ 0xEE563692) > 0x1CE3FBDD)
  {
    v6 = (v4 - 847955523) < 0xE31C0422;
  }

  else
  {
    v6 = v4 - 847955523 > a3 + (v5 ^ 0xEE563692) - 484703521;
  }

  return (*(v3 + 8 * ((4 * ((((a3 ^ 0x43) + 1) ^ v6) & 1)) & 0xEF | (16 * ((((a3 ^ 0x43) + 1) ^ v6) & 1)) | a3)))();
}

uint64_t sub_1B16C8AF8@<X0>(int a1@<W8>)
{
  v8 = (v1 ^ 0x7F41B3CF) - 1040294094 + (a1 & 0xFE83679E);
  v9 = ((v7 - 1690710837 - 2 * ((v7 - 144) & 0x9B39CD5B)) ^ 0x341E4F43) * v6;
  *(v7 - 136) = v4;
  *(v7 - 128) = v8 ^ v9;
  *(v7 - 144) = v9 + v2 + 595;
  v10 = (*(v3 + 8 * (v2 + 1920)))(v7 - 144);
  return (*(v3 + 8 * ((471 * (*(v7 - 140) == (((v2 + 843) | 0x84) ^ (v5 + 838)))) ^ v2)))(v10);
}

uint64_t sub_1B16C8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v23 = *a19;
  memset((v22 - 204), 126, 16);
  v24 = 1037613739 * ((v22 - 168) ^ 0xD1022D7F);
  *(v22 - 168) = v24 + 927391178;
  *(v22 - 152) = v23;
  *(v22 - 144) = v22 - 188;
  *(v22 - 128) = &STACK[0x220];
  *(v22 - 136) = (v19 + 1629) ^ v24;
  *(v22 - 160) = v22 - 204;
  v25 = (*(v20 + 8 * (v19 ^ 0x8AA)))(v22 - 168);
  return (*(v20 + 8 * (((*(v22 - 132) == v21) * (((v19 - 170339258) & 0xA272BAF ^ 0x36) + v19 + 1060)) ^ v19)))(v25);
}

uint64_t sub_1B16C8C84(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 20) - 18429 * ((2 * (result & 0xA3D6) - result + 23593) ^ 0x2353);
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0xEC;
  v3 = v2 ^ 0xEC;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -484750082;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xCF040687478C8E0FLL;
    *(v1 + 80) = 0x30FBF978B87371F0;
    *(v1 + 92) = v4;
  }

  *(result + 16) = 1116425443;
  return result;
}

void sub_1B16C8D40(_DWORD *a1)
{
  v1 = *a1 - 742307843 * ((2 * (a1 & 0xBB72D496) - a1 + 1150102377) ^ 0x19F15413);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1B16C8E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x314]) = STACK[0x44C];
  *(v9 + 360) = STACK[0x2E0];
  LODWORD(STACK[0x43C]) = 67981681;
  return (*(v8 + 8 * ((162 * (((v7 + 1039) ^ (a7 + 1304)) == 296339821)) | (v7 - 456))))();
}

uint64_t sub_1B16C8F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v15 - 120) = (v14 + 1631) ^ (1564307779 * ((1883716145 - ((v15 - 136) | 0x70473A31) + ((v15 - 136) | 0x8FB8C5CE)) ^ 0x18B509DD));
  *(v15 - 136) = &a12;
  *(v15 - 128) = a11;
  (*(v12 + 8 * (v14 + 2007)))(v15 - 136);
  *(v15 - 120) = v13;
  *(v15 - 128) = v14 - 143681137 * (((v15 - 136) & 0xBB0B5681 | ~((v15 - 136) | 0xBB0B5681)) ^ 0x25AC22AE) - 81;
  *(v15 - 136) = a11;
  v16 = (*(v12 + 8 * (v14 + 2018)))(v15 - 136);
  return (*(v12 + 8 * ((105 * ((((v14 + 65) ^ (*(v15 - 112) > ((v14 + 150) ^ 0x7F934888u))) & 1) == 0)) ^ v14)))(v16);
}

uint64_t sub_1B16C90CC@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v12 = (v9 + 4 * v5);
  v13 = HIDWORD(v7) + (*v12 ^ v2) + HIDWORD(v4) + v11 * (*(v6 + 4 * v5) ^ v2);
  *(v12 - 1) = v13 + v2 - (((v3 + 49) ^ (a1 - 163)) & (2 * v13));
  return (*(v8 + 8 * (((v5 + 1 != a2) * v10) ^ v3)))();
}

uint64_t sub_1B16C9130()
{
  *(v6 - 128) = v3 - (((v0 | 0xEECA4325) - (v0 & 0xEECA4325)) ^ 0x8F92C8F5) * v4 - 1469;
  *(v6 - 136) = v5;
  *(v6 - 120) = v1;
  v7 = (*(v2 + 8 * (v3 ^ 0xE9A)))(v6 - 136);
  return (*(v2 + 8 * ((390 * (*(v6 - 112) > ((((v3 + 1875351804) & 0x903866FD) - 1036) ^ 0x7F934BCC))) ^ v3)))(v7);
}

uint64_t sub_1B16C924C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = v29 - 450;
  LOBYTE(STACK[0x234]) = a29;
  v33 = 1785193651 * ((((v31 - 168) | 0x54C21BB7) - (v31 - 168) + ((v31 - 168) & 0xAB3DE448)) ^ 0x7875405F);
  *(v31 - 152) = 460197736 - v33;
  *(v31 - 160) = a2;
  *(v31 - 168) = (v32 + 1427) ^ v33;
  v34 = (*(v30 + 8 * (v32 ^ 0x8A1)))(v31 - 168);
  return a3(v34, &STACK[0x230]);
}

uint64_t sub_1B16C930C(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_1B16C9338@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 + 958) ^ 0xFFFFFFFFFFFFF9E9) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((4 * (v5 != 0)) | (16 * (v5 != 0))) ^ (v3 - 336))))();
}

void sub_1B16C93B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v22 = 1082434553 * ((((v21 - 144) | 0xCF13C9C2) - (v21 - 144) + ((v21 - 144) & 0x30EC3638)) ^ 0x54543F48);
  *(v21 - 120) = a10;
  *(v21 - 128) = (v19 + 1432) ^ v22;
  *(v21 - 144) = a19 - v22 + 1240042223 + ((v19 + 1012576041) & 0xC3A551F6);
  *(v21 - 136) = v20;
  JUMPOUT(0x1B16C9444);
}

uint64_t sub_1B16C94EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  a16 = 349 - (((&a13 ^ 0x6246E4AA | 0x430A1DD4) - (&a13 ^ 0x6246E4AA) + ((&a13 ^ 0x6246E4AA) & 0xBCF5E22A)) ^ 0x8E6B7B66) * v19;
  a14 = v16;
  a15 = a9;
  v20 = (*(v18 + 17584))(&a13);
  return (*(v18 + 8 * ((506 * (a13 == v17 + 474)) ^ 0x4A7u)))(v20);
}

uint64_t sub_1B16C9590(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = a4 ^ (a4 - 92);
  v28 = a5 + a4;
  (*(v24 + 8 * (a5 + a4 + 1551)))(a16 + a17, 0x100004077774924);
  v29 = (*(v24 + 8 * (v28 + 1528)))();
  *v25 = v29;
  v30 = 1812433253 * ((((v29 >> (v27 + 122)) ^ v29 ^ 0xAA0D1B90) - 888219655) ^ (((v29 >> (v27 + 122)) ^ v29 ^ 0xE0BB3268) - 2118582783) ^ (((v29 >> (v27 + 122)) ^ v29 ^ 0x4AB629F8) + 733341073));
  v25[1] = v26 + 1 + v30;
  v31 = *(v24 + 8 * (v27 ^ 0x19));
  return v31(v30, 25, 1, v31, 1812433253, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void sub_1B16C9824(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) + 143681137 * ((((2 * a1) | 0xF4C30480) - a1 - 2053210688) ^ 0x1B390990);
  v2 = *a1;
  v4[0] = (50899313 * (((v4 | 0xE4AF118E) - (v4 & 0xE4AF118E)) ^ 0x2CCED5D8)) ^ (v1 - 72);
  v5 = v2;
  v3 = *(&off_1F2870B00 + (v1 ^ 0x226)) - 8;
  (*&v3[8 * v1 + 12960])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16C9960@<X0>(int a1@<W8>)
{
  v6 = v5 + v2 - 3738;
  *v1 = v6 ^ a1 ^ v11 | ((v8 ^ v3) << 32);
  v12 = 617398010 - 1388665877 * (((&v12 | 0x840A2BC3) - (&v12 & 0x840A2BC3)) ^ 0x9A7492F) + v6;
  v13 = v10;
  (*(v4 + 8 * (v6 ^ v5)))(&v12);
  v13 = v9;
  v12 = 617398010 - 1388665877 * (((&v12 | 0x6490FCDC) - &v12 + (&v12 & 0x9B6F0320)) ^ 0xE93D9E30) + v6;
  (*(v4 + 8 * (v6 ^ v5)))(&v12);
  return v3 ^ 0x11A9C96D;
}

uint64_t sub_1B16C9A90@<X0>(uint64_t a1@<X8>)
{
  v2[13] = -v1;
  v3 = v2[6];
  v2[4] = a1 - 112;
  return v3();
}

uint64_t sub_1B16C9AAC()
{
  v5 = ((v1 - 1055) | 4) + *(v2 + 24) + v0 + ((v1 - 1200) | 0x95) - 807777923;
  v7 = (*(v3 + 20) & 1) == 0 && v5 < 0xFFFFFFBF;
  return (*(v4 + 8 * ((457 * v7) ^ v1)))();
}

void hZZRqgZwI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1B16CA154(unint64_t a1)
{
  *(v5 + 32) = v3 + ((v1 + 631516619) & 0xDA5BD1FF) - 434;
  *(v5 + 232) = a1;
  return (*(v2 + 8 * (v1 ^ (1450 * (v4 > a1)))))();
}

uint64_t sub_1B16CA5A0(int a1)
{
  v1 = *(v7 + 8 * (v9 - 967));
  v2 = *v5;
  v3 = v13 + 1323409803;
  *(*v5 + v3) = (v12 ^ ((a1 + 4) >> 24)) - ((2 * (v12 ^ ((a1 + 4) >> 24))) & 0xFC) + 126;
  *(v2 + v3 + 1) = (((a1 + 4) >> 16) ^ v11) - 2 * (((a1 + 4) >> 16) ^ v11 ^ ((a1 + 4) >> 16) & 1) + 126;
  *(v2 + v3 + 2) = (v6 ^ ((a1 + 4) >> 8)) + (v8 | ~(2 * (v6 ^ ((a1 + 4) >> 8)))) + 127;
  *(v2 + (v13 + 1323409806)) = (a1 + 4) ^ v10;
  return v1();
}

uint64_t sub_1B16CA630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13, int a14, int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 742307843 * ((((&a13 | 0xA6395A90) ^ 0xFFFFFFFE) - (~&a13 | 0x59C6A56F)) ^ 0x4BADA15);
  a18 = v21 ^ 0xB51B2C4A;
  a13 = v21 + 2135198057;
  a15 = v20 - v21 - 1197042706;
  a16 = a9;
  a17 = &a11;
  v22 = (*(v19 + 8 * (v20 ^ 0x98A)))(&a13);
  return (*(v19 + 8 * ((565 * (a14 == (v20 ^ 0x437 ^ v18))) ^ v20)))(v22);
}

void sub_1B16CA6F4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a5 = v8;
  a6 = a1;
  a4 = v7 - 454 + 843532609 * ((((2 * &a3) | 0xB3CC3ACC) - &a3 + 639230618) ^ 0x85AB49E3) + 57;
  (*(v6 + 8 * ((v7 - 454) ^ 0xDBC)))(&a3);
  JUMPOUT(0x1B16CA758);
}

uint64_t sub_1B16CA784@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  memset((v3 - 204), 126, 16);
  v6 = 1037613739 * ((((v3 - 168) ^ 0x6F202CF5) & 0x2BAB8AA9 | ~((v3 - 168) ^ 0x6F202CF5 | 0x2BAB8AA9)) ^ 0x6A7674DC);
  v7 = (v3 - 168);
  v7[1] = v3 - 204;
  v7[2] = v5;
  v7[5] = v4;
  v7[3] = v3 - 188;
  *(v3 - 136) = (a2 + 1649) ^ v6;
  *(v3 - 168) = v6 + 927391178;
  result = (*(v2 + 8 * (a2 + 2174)))(v3 - 168);
  *(a1 + 28) = *(v3 - 132);
  return result;
}

void sub_1B16CA91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 120) = a1;
  LODWORD(STACK[0x494]) = v3;
  JUMPOUT(0x1B16CA930);
}

uint64_t sub_1B16CAEF4(uint64_t a1, uint64_t a2)
{
  v7 = (v2 + v3 + v6 - 16);
  v8 = *(v2 + a2 - 16);
  *(v7 - 1) = *(v2 + a2 - 32);
  *v7 = v8;
  return (*(v5 + 8 * ((666 * ((v4 + 503) - (v2 & 0xFFFFFFE0) == 1340)) ^ (v4 - 464))))();
}

uint64_t sub_1B16CB164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v29 = ((((v28 - 144) | 0xD77B39E5) + (~(v28 - 144) | 0x2884C61A)) ^ 0x785CBBFC) * v24;
  *(v28 - 144) = &a24;
  *(v28 - 136) = v29 + v26 + 1000;
  *(v28 - 132) = v29 + 1368967397;
  v30 = (*(v25 + 8 * (v26 + 1306)))(v28 - 144);
  return (*(v25 + 8 * ((v26 - 509) ^ (v27 == 0))))(v30);
}

uint64_t sub_1B16CB20C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = *(v7 + 48 * v5 + 36);
  v14 = v12 != v11 && v12 + v6 < a4;
  return (*(v9 + 8 * ((v14 * (v10 + v4 - 1663 + v8 + v4 - 1246 + 18)) ^ v4)))();
}

uint64_t sub_1B16CB2F4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = (v8 - 1);
  *(a4 + v11) = *(a5 + v11) ^ *(v7 + (v11 & 0xF)) ^ *((v11 & 0xF) + a6 + 5) ^ *((v11 & 0xF) + v6 + 1) ^ ((((v9 + a2) & a1) + 123) * (v11 & 0xF)) ^ 0x7E;
  return (*(v10 + 8 * (((8 * (((v11 == 0) ^ (15 * ((v9 + a2) & a1 ^ a3) + 1)) & 1)) & 0xEF | (16 * (((v11 == 0) ^ (15 * ((v9 + a2) & a1 ^ a3) + 1)) & 1))) ^ (((v9 + a2) & a1) - 512))))();
}

uint64_t sub_1B16CB374(uint64_t a1, uint64_t a2)
{
  v6 = v5[396] ^ ((*v5 & 0x7FFFFFFE | v5[623] & 0x80000000) >> 1);
  v5[623] = (v6 + v3 - ((2 * v6) & 0xBB16C35C)) ^ *(a2 + 4 * (*v5 & ((v2 + 1264) ^ 0x7E9u)));
  return (*(v4 + 8 * ((421 * (LODWORD(STACK[0x30C]) > 0x26F)) ^ v2)))();
}

uint64_t sub_1B16CB480()
{
  v5 = *(*(v1 + 24) + v0) - *(v4 + v0);
  v6 = (v5 ^ 0xFA5FF6D6) - 33828880 + ((2 * v5) & 0xF4BFEDAC);
  v8 = v0 == 15 || v6 != -128203066;
  return (*(v2 + 8 * ((v8 * (19 * (v3 ^ 0x456) + 645)) | v3)))();
}

uint64_t sub_1B16CB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return (*(v9 + 8 * ((v10 * (((v7 ^ 0xB9) + 1966) ^ 0x625 ^ (22 * (v7 ^ 0xB9)))) ^ v7)))();
}

uint64_t sub_1B16CB550()
{
  v4 = STACK[0x2A0];
  v5 = v2[1];
  v6 = v2[397] ^ v0 ^ ((v5 & 0x7FFFFFFE | *v2 & 0x80000000) >> 1) ^ *(&STACK[0x528] + (v5 & 1));
  v7 = v2[398] ^ v0 ^ ((v2[2] & 0x7FFFFFFE | v5 & (((LODWORD(STACK[0x2A0]) - 429895661) & 0x199FABE6) + v3)) >> 1) ^ *(&STACK[0x528] + (v2[2] & 1));
  *v2 = v6;
  v2[1] = v7;
  return (*(v1 + 8 * (v4 - 1549)))();
}

uint64_t sub_1B16CB628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, _DWORD *a15)
{
  v19 = 843532609 * ((2 * (((v17 - 136) ^ 0xC5FDE7B1) & 0x278F7130) - ((v17 - 136) ^ 0xC5FDE7B1) - 663712055) ^ 0x41C03DFD);
  v20 = (*a15 ^ 0x914A07B7) * *(*(a10 + 16) + 16);
  *(v17 - 112) = a11;
  *(v17 - 128) = &a14;
  *(v17 - 120) = (v20 ^ 0x7DEBF3FB) - v19 + ((2 * v20) & 0xFBD7E7F6) - 830488625;
  *(v17 - 136) = v19 + 1550341629;
  *(v17 - 104) = v16 - v19 - 1526;
  v21 = (*(v15 + 8 * (v16 + 387)))(v17 - 136);
  return (*(v15 + 8 * ((435 * (a4 == 1)) ^ v16)))(v21);
}

uint64_t sub_1B16CB76C@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 944));

  return v3(v1);
}

uint64_t sub_1B16CB7BC@<X0>(uint64_t a1@<X8>)
{
  v10 = (*(*(v8 + 8) + 4 * v2) ^ v5) + v1;
  *(*(a1 + 8) + 4 * v2) = v10 + v5 - (v6 & (2 * v10));
  return (*(v7 + 8 * (((v2 + 1 == v9) * v4) ^ v3)))();
}

uint64_t sub_1B16CB81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((~((v17 - 144) | 0x99DFC828) + ((v17 - 144) & 0x99DFC828)) ^ 0xC907B5CF) * v16;
  *(v17 - 144) = v18 + v14 - 1082;
  *(v17 - 136) = a13;
  *(v17 - 128) = (v15 - 249289170) ^ v18;
  v19 = (*(v13 + 8 * (v14 ^ 0xFF3u)))(v17 - 144);
  return (*(v13 + 8 * (((*(v17 - 140) == -201441088) * (((v14 + 1561708659) & 0xA2EA32FF) + 3255)) ^ v14)))(v19);
}

uint64_t sub_1B16CB978@<X0>(unsigned int a1@<W8>)
{
  v7 = *(v6 - 220 + a1 + 72);
  v8 = ((2 * a1) & 0x8DFF7978) + (v3 ^ v2 ^ a1 ^ 0x4E039C82) + v1;
  *(v4 + v8) = v7 ^ 0x70;
  *(v4 + v8 + 1) = (BYTE1(v7) ^ 0xAD) - ((2 * (BYTE1(v7) ^ 0xAD)) & 0xFC) + 126;
  *(v4 + v8 + 2) = (BYTE2(v7) ^ 0xC9) + (~(2 * (BYTE2(v7) ^ 0xC9)) | 3) + 127;
  *(v4 + v8 + 3) = (HIBYTE(v7) ^ 0x20) - ((2 * (HIBYTE(v7) ^ 0x20)) & 0xFC) + 126;
  return (*(v5 + 8 * ((62 * (a1 + 4 >= *(v6 - 128))) ^ v3)))();
}

void sub_1B16CBA3C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  a4 = a1;
  a5 = v7;
  a6 = v8 + 510 + 1785193651 * (((&a3 | 0x1C7F9445) - &a3 + (&a3 & 0xE3806BB8)) ^ 0x30C8CFAD) - 107;
  a3 = v7;
  (*(v6 + 8 * ((v8 + 510) ^ 0xD29)))(&a3);
  JUMPOUT(0x1B16CBAA4);
}

void sub_1B16CBACC()
{
  v5 = 1082434553 * ((v4 + 795056316 - 2 * ((v4 - 144) & 0x2F63994C)) ^ 0xB4246FC6);
  *(v4 - 136) = v2;
  *(v4 - 128) = v1;
  *(v4 - 120) = v0 - v5 + 978382218 + ((v3 - 1222867750) & 0x48E379BB);
  *(v4 - 116) = (v3 + 76) ^ v5;
  JUMPOUT(0x1B16CBB48);
}

uint64_t sub_1B16CBC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, char a21)
{
  v27 = 1082434553 * ((v26 - 152) ^ 0x9B47F68A);
  *(v26 - 128) = v27 + v24 + 105;
  *(v26 - 152) = &a18;
  *(v26 - 140) = v25 + v27 + (((v23 + v24 + v21 + 3) | 0x1C0) ^ 0x52520A38);
  *(v26 - 136) = &a16;
  *(v26 - 112) = &a21;
  *(v26 - 104) = a13;
  *(v26 - 120) = &a14;
  v28 = (*(v22 + 8 * (v24 + 1564)))(v26 - 152);
  return (*(v22 + 8 * ((1740 * (*(v26 - 144) == 296339821)) ^ v24)))(v28);
}

uint64_t sub_1B16CBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v16 - 136) = &a12;
  *(v16 - 128) = v12 + 742307843 * ((v16 - 136) ^ 0x5D7C7F7A) + 741;
  *(v16 - 120) = v14;
  v17 = (*(v13 + 8 * (v12 + 897)))(v16 - 136);
  return (*(v13 + 8 * (((v15 == (v12 ^ 0x4EF)) * (v12 - 776)) ^ v12)))(v17);
}

uint64_t sub_1B16CBF14(int a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v5 + a3 + 16);
  v9 = (v3 + a3);
  *(v9 - 1) = *(v5 + a3);
  *v9 = v8;
  return (*(v7 + 8 * (((v4 == a3) * a1) ^ v6)))();
}

uint64_t sub_1B16CC040@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  *a17 = 1297775726;
  v20 = *v18;
  v21 = 1388665877 * ((2 * ((v19 - 152) & 0x3235971550C51320) - (v19 - 152) - 0x3235971550C51327) ^ 0xF8B0F8A522978E35);
  *(v19 - 124) = (a2 - 304831800) ^ v21;
  v22 = v19 - 168;
  *(v22 + 48) = v21 ^ 0x13FF;
  *(v22 + 16) = v20 ^ v21;
  *(v19 - 144) = a2 - 1519568620 + v21;
  *(v19 - 140) = ((a2 - 1519568620) ^ 0x21) - v21;
  *(v19 - 136) = (a2 - 1519568695) ^ v21;
  *(v19 - 132) = v21;
  v23 = (*(v17 + 8 * (a1 + a2 + 1491)))(v19 - 152);
  return (*(v17 + 8 * *(v19 - 128)))(v23);
}

uint64_t sub_1B16CC058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = v7 + v5 - 517;
  v11 = (v10 + 7) | 0x285;
  v12 = v10 + 1882;
  v13 = ((v11 + 1061) ^ 0xDEB8D9F6) + v9;
  v14 = (v8 - 1241628751 < a5) ^ (v13 < a5);
  v15 = v13 < v8 - 1241628751;
  if (v14)
  {
    v15 = v8 - 1241628751 < a5;
  }

  return (*(v6 + 8 * ((3963 * v15) ^ v12)))();
}

void sub_1B16CC0CC()
{
  v4 = -1339647885 * (*(v0 + 16) - v2) - 1903736188;
  v5 = ((v4 ^ 0xCA5C81F1) + 1969286038) ^ v4 ^ ((v4 ^ 0x367831E1) - 1992008826) ^ ((v4 ^ 0xC3181A70) + ((v3 - 1238437173) & 0x49D10F7F ^ 0x7C24777B)) ^ ((v4 ^ 0x7FFF3FFB) - 1060940384);
  *v6 = (HIBYTE(v5) ^ 0x40) - 2 * (HIBYTE(v5) ^ 0x40 ^ HIBYTE(v5) & 1) + 126;
  v6[1] = (BYTE2(v5) ^ 0xC3) - ((2 * (BYTE2(v5) ^ 0xC3)) & 0xFC) + 126;
  v6[2] = (BYTE1(v5) ^ 0x95) + (~(2 * (BYTE1(v5) ^ 0x95)) | 3) + 127;
  v6[3] = v5 ^ 0xE5;
  *(v0 + 4) = *(v1 + 24);
}

uint64_t sub_1B16CC224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v10 = ~v6 + v4;
  v11 = *(a1 + v10 - 15);
  v12 = *(a1 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a3)), a4);
  *(v13 - 31) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a3)), a4);
  return (*(v9 + 8 * (((v6 + v8 - 1374 == v5) | (2 * (v6 + v8 - 1374 == v5))) ^ v7)))();
}

uint64_t sub_1B16CC288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v24 - 128) = v21 - 1265 - ((2 * ((v24 - 144) & 0x406B45D8) - (v24 - 144) - 1080772057) ^ 0x10B3383F) * v23 + 1289;
  *(v24 - 112) = &a21;
  *(v24 - 104) = a10;
  *(v24 - 120) = a11;
  *(v24 - 144) = &a17;
  *(v24 - 136) = &a17;
  v25 = (*(v22 + 8 * ((v21 - 1265) ^ 0x8FB)))(v24 - 144);
  return (*(v22 + 8 * ((250 * (a13 - 1344007376 >= ((((v21 - 467261370) & 0x1BD9D6EE) + 1145000471) & 0xBBC0ADFE) + 2147482403)) ^ (((v21 - 467261370) & 0x1BD9D6EE) - 588))))(v25);
}

void sub_1B16CC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *v35 = v32 ^ (v32 - v33 - 1909918301 + (((a18 - v32) | (v32 - a18)) >= 0) + 2) ^ 1;
  (*(v34 + 8 * (v32 ^ 0x861u)))(a32);
  JUMPOUT(0x1B16CC404);
}

uint64_t sub_1B16CC508@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 4 + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFFC) == 4) * (((v3 + 516) | 1) ^ 0x29D)) ^ v3)))((v2 & 0xFFFFFFFC) - 8);
}

uint64_t sub_1B16CC75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  STACK[0x278] = a59 + 2353;
  STACK[0x270] = v60 + 49;
  STACK[0x260] = a59 + 2333;
  STACK[0x258] = v60 + 29;
  STACK[0x250] = a59 + 2313;
  STACK[0x248] = v60 + 9;
  return (*(v61 + 8 * (v62 - 2010)))(231);
}

uint64_t sub_1B16CC81C()
{
  LODWORD(STACK[0x298]) = v0;
  *(v5 + 336) = 0;
  v6 = 1082434553 * ((((v3 | 0x21FA0D7E) ^ 0xFFFFFFFE) - (~v3 | 0xDE05F281)) ^ 0x4542040B);
  v7 = (v4 - 216);
  v7[4] = 0;
  *(v4 - 216) = v6 ^ 0x2ACDE3A7;
  *(v4 - 212) = (v2 - 645) ^ v6;
  v7[1] = &STACK[0x414];
  v7[2] = &STACK[0x480];
  v8 = (*(v1 + 8 * (v2 + 934)))(v4 - 216);
  return (*(v1 + 8 * (((*(v4 - 192) == 296339821) * (((v2 + 1115513634) & 0xBD829FE8) + ((v2 - 989) | 0x204) - 2754)) ^ v2)))(v8);
}

uint64_t sub_1B16CCA18(uint64_t result)
{
  v1 = 143681137 * ((((2 * result) | 0xB2C286885287900ELL) - result + 0x269EBCBBD6BC37F9) ^ 0x68E871F0481B43D7);
  v2 = *(result + 24);
  v3 = v2 + v1;
  v4 = *(result + 8);
  v5 = v4 == v2;
  v6 = v4 + v1 > v3;
  if ((*(result + 40) - 143681137 * ((((2 * result) | 0x5287900E) - result - 692307975) ^ 0x481B43D7)))
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = (result + 20);
  }

  else
  {
    v7 = result;
  }

  *(result + 16) = *(result + 32) ^ (143681137 * ((((2 * result) | 0x5287900E) - result - 692307975) ^ 0x481B43D7)) ^ (*v7 + 143681137 * ((((2 * result) | 0x5287900E) - result - 692307975) ^ 0x481B43D7));
  return result;
}

uint64_t sub_1B16CCABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *(v26 - 128) = v23 + 975 - ((v26 - 144) ^ 0xAF278218) * v25 + 227;
  *(v26 - 144) = &a17;
  *(v26 - 136) = &a17;
  *(v26 - 120) = a11;
  *(v26 - 112) = &a23;
  *(v26 - 104) = a10;
  v27 = (*(v24 + 8 * (v23 + 1892)))(v26 - 144);
  return (*(v24 + 8 * ((250 * (a13 - 1344007376 >= ((v23 + 1145001446) & 0xBBC0ADFE) + 2147482403)) ^ (v23 + 387))))(v27);
}

void sub_1B16CCB68(_DWORD *a1)
{
  v1 = 1785193651 * ((2 * (a1 & 0x45B3DE0) - a1 + 2074395167) ^ 0x571399F7);
  v2 = *(*a1 + 12) + 314332051;
  v3 = a1[2] + v1 - 748041714;
  v4 = (v3 < 0x38A40383) ^ (v2 < 0x38A40383);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x38A40383;
  }

  __asm { BRAA            X11, X17 }
}

void sub_1B16CCC54(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = 143681137 * (&a3 ^ 0x61588BD0);
  a4 = v7 - v8 - 1137;
  a5 = (-1533542859 - v6 - ((451720910 - (v6 << ((7 * (v7 ^ 0xF0)) ^ 0xEF))) & 0x2E43459C)) ^ v8;
  a3 = v5;
  (*(a1 + 8 * (v7 + 414)))(&a3);
  JUMPOUT(0x1B16CCCDCLL);
}

uint64_t sub_1B16CCD04@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = (v2 ^ 0x17) + *(v3 + v5) - ((2 * *(v3 + v5)) & 0xFC) - 53;
  return (*(v4 + 8 * (((4 * (v5 == 0)) | (8 * (v5 == 0))) ^ v2)))();
}

uint64_t sub_1B16CCD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v12 = v8 - 192;
  v13 = *(v10 + v9 * a8 + 36);
  v14 = v12 - 1597224554 + v13;
  v16 = v14 > 1633955314 || v14 < SLODWORD(STACK[0x298]);
  v17 = !v16;
  if (v13 == a6)
  {
    v17 = 1;
  }

  return (*(v11 + 8 * ((495 * v17) ^ v12)))();
}

uint64_t sub_1B16CCDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  *(v18 - 120) = &a14;
  *(v18 - 136) = &a12;
  *(v18 - 128) = v14 - ((((v18 - 136) | 0x104B0DEB) + (~(v18 - 136) | 0xEFB4F214)) ^ 0x7113863A) * v16 - 1172;
  v19 = (*(v15 + 8 * (v14 ^ 0xC63)))(v18 - 136);
  return (*(v15 + 8 * ((((v17 + *(v18 - 112) + 1) < 0xB7B15FE6) * (((v14 + 889434735) & 0xCAFC4BFE) - 569)) ^ v14)))(v19);
}

uint64_t sub_1B16CCF4C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned int a10)
{
  a9 = (-117 * (((&a9 | 0xB2) - (&a9 | 0x4D) + 77) ^ 0xAA)) ^ 0x6B;
  a10 = (a1 + 399) ^ (2066391179 * (((&a9 | 0xCB5D5B2) - (&a9 | 0xF34A2A4D) - 213243315) ^ 0xA39257AA));
  v13 = (*(v11 + 8 * (a1 + 1655)))(&a9);
  return (*(v11 + 8 * ((43 * (**(v12 + 8 * (v10 ^ 0x43E)) == ((((v10 - 448) | 0xA0) + 1251) ^ 0x7CD))) ^ v10)))(v13);
}

uint64_t sub_1B16CCFC0@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 - 1964));
  v9 = *v8;
  v10 = *(v6 + 8 * (a1 ^ 0x7BE));
  v11 = *(v10 - 4);
  v20[0] = *v11 - 11;
  v20[1] = v11[1] - 11;
  v20[2] = v11[2] - 11;
  v20[3] = v11[3] - 11;
  v20[4] = v11[4] - 11;
  v20[5] = v11[5] - 11;
  v20[6] = v11[6] - 11;
  v20[7] = v11[7] - 11;
  v20[8] = v11[8] - 11;
  v20[9] = v11[9] - 11;
  v20[10] = v11[10] - 11;
  v20[11] = v11[11] - 11;
  v20[12] = v11[12] - 11;
  v20[13] = v11[13] - 11;
  v20[14] = v11[14] - 11;
  v20[15] = v11[15] - 11;
  v20[16] = v11[16] - 11;
  v20[17] = v11[17] - 11;
  v20[18] = v11[18] - 11;
  v20[19] = v11[19] - 11;
  v12 = *(v10 - 4);
  v20[20] = v12[20] - 11;
  v20[21] = v12[21] - 11;
  v20[22] = v12[22] - 11;
  v20[23] = v12[23] - 11;
  v20[24] = v12[24] - 11;
  v20[25] = v12[25] - 11;
  v20[26] = v12[26] - 11;
  v20[27] = v12[27] - 11;
  v20[28] = v12[28] - 11;
  v20[29] = v12[29] - 11;
  result = (*(v4 + 8 * (a1 ^ 0xF76)))(v9, v20, v2);
  if (result == 1102)
  {
    v15 = *v8;
    v16 = *(*(v6 + 8 * (v5 ^ 0x7BB)) - 4);
    v21[0] = *v16 ^ 0xC5;
    v21[1] = v16[1] ^ 0xC5;
    v21[2] = v16[2] ^ (((v5 + 117) | 0xA8) - 37);
    v21[3] = v16[3] ^ 0xC5;
    v21[4] = v16[4] ^ 0xC5;
    v21[5] = v16[5] ^ 0xC5;
    v21[6] = v16[6] ^ 0xC5;
    v21[7] = v16[7] ^ 0xC5;
    v21[8] = v16[8] ^ 0xC5;
    v21[9] = v16[9] ^ 0xC5;
    v21[10] = v16[10] ^ 0xC5;
    v21[11] = v16[11] ^ 0xC5;
    v21[12] = v16[12] ^ 0xC5;
    v21[13] = v16[13] ^ 0xC5;
    v21[14] = v16[14] ^ 0xC5;
    v21[15] = v16[15] ^ 0xC5;
    v21[16] = v16[16] ^ 0xC5;
    v21[17] = v16[17] ^ 0xC5;
    v21[18] = v16[18] ^ 0xC5;
    v21[19] = v16[19] ^ 0xC5;
    v17 = *(v4 + 8 * ((1822 * ((*(v4 + 8 * (v5 + 238)))(v15, v21, v2) == 0)) ^ (v5 - 1251)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v19 = -296316331;
  }

  else
  {
    v14 = (v5 - 1477) | 0xE2;
    *(v7 + 348) |= v14 - 736;
    *(v7 + 48) = 1262799542;
    result = (*(v4 + 8 * (v5 + 165)))(*v2, v7 + 336, v7 + 340, v7 + 344, v3);
    v18 = *(v1 + 16);
    **(v1 + 8) = *v2;
    *v18 = ((v14 + 226) | 0x401) + *v3 - ((2 * *v3) & 0x2A8900E) - 2125184966;
    v19 = 296339821;
  }

  *(v1 + 24) = v19;
  return result;
}

void sub_1B16CD3AC()
{
  *(v4 - 216) = (v3 - 579637855) ^ (1564307779 * ((((v4 - 216) | 0x504D62B5) + (~(v4 - 216) | 0xAFB29D4A)) ^ 0xC740AEA7));
  (*(v2 + 8 * (v0 + v3 + 1316)))(v4 - 216);
  v5 = v4 - 216;
  *v5 = (113 * ((v4 + 40) ^ 0xD0)) ^ 0x27 ^ (((v1 - v3) | (v3 - v1)) >> (v0 + v3 - 11));
  *(v4 - 212) = v0 - 143681137 * ((v4 - 216) ^ 0x61588BD0) + v3 + 1187;
  *(v5 + 8) = &STACK[0x300];
  *(v5 + 16) = &STACK[0x37C];
  (*(v2 + 8 * (v0 + v3 + 1409)))(v4 - 216);
  JUMPOUT(0x1B16BC8E8);
}

uint64_t sub_1B16CD5F0@<X0>(int a1@<W8>, uint64_t a2, int a3, __int16 a4, char a5, char a6, char a7, int a8, int a9, char a10, uint64_t a11, char *a12, char *a13, char a14, char *a15, int a16, unsigned int a17, int a18)
{
  v21 = *(v18 + 32);
  v22 = 843532609 * ((2 * (&a11 & 0x2EA5D6D8) - &a11 + 1364863264) ^ 0xD177DA5);
  a13 = &a10;
  a14 = 65 * ((2 * (&a11 & 0xD8) - &a11 + 32) ^ 0xA5) + 117;
  a16 = (v20 + 1986157676) ^ v22;
  a17 = ((((a1 ^ 0x929143FF) + 1835973633) ^ ((a1 ^ 0x9BD8F953) + 1680279213) ^ ((a1 ^ 0x2284590D) - 579099157 + ((v20 - 344) | 8))) - 2133686354) ^ v22;
  a15 = &a7;
  a11 = v21;
  a12 = &a6;
  v23 = (*(v19 + 8 * (v20 + 1594)))(&a11);
  return (*(v19 + 8 * ((1965 * (a18 == 296339821)) ^ v20)))(v23);
}

void sub_1B16CD740(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, int a9)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1550341629;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v11 = *(a1 + 96) + 528;
  v12 = *(a2 + 8) + (*(a2 + 4) - v10);
  v13 = 50899313 * ((((&a5 | 0x8BDCE1AE) ^ 0xFFFFFFFE) - (~&a5 | 0x74231E51)) ^ 0xBC42DA07);
  a6 = v13 + v10 + 683872143;
  a7 = v11;
  a8 = v12;
  a9 = (v9 + 1417) ^ v13;
  (*(a3 + 8 * (v9 ^ 0x985u)))(&a5);
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v10);
  JUMPOUT(0x1B16CD834);
}

uint64_t sub_1B16CD864(int a1)
{
  v10 = v5 - v6;
  v12.val[0].i64[0] = (v10 - 1) & 0xF;
  v12.val[0].i64[1] = (v10 + 14) & 0xF;
  v12.val[1].i64[0] = (v10 + 13) & 0xF;
  v12.val[1].i64[1] = (v10 + 12) & 0xF;
  v12.val[2].i64[0] = (v10 + 11) & 0xF;
  v12.val[2].i64[1] = (v10 + 10) & 0xF;
  v12.val[3].i64[0] = (a1 - 109 + v10) & 0xF;
  v12.val[3].i64[1] = v10 & 0xF ^ 8;
  *(v7 - 8 + v10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v1 - 8 + v10), *(v2 + v12.val[0].i64[0] - 7)), veor_s8(*(v12.val[0].i64[0] + v3 - 2), *(v12.val[0].i64[0] + v4 - 5)))), 0x7E7E7E7E7E7E7E7ELL), vmul_s8(*&vqtbl4q_s8(v12, xmmword_1B176D1C0), 0x5959595959595959)));
  return (*(v9 + 8 * ((1702 * ((v8 & 7 | 8) == v10)) ^ a1)))(xmmword_1B176D1C0);
}

uint64_t sub_1B16CD958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v47 = (v42 + 1534605511) ^ (v43 + 642);
  v48 = *a28;
  if (((v47 ^ 0x385) & *a28) != 0 || (v49 = *(v45 + 8 * (v42 + 1772170280)), *v49))
  {
    JUMPOUT(0x1B16B4444);
  }

  v50 = v47 + 176;
  *v49 = v48;
  **(v45 + 8 * (v47 - 835)) = 255;
  *v48 |= ~v48[*v48 & 0x3ELL] << 16;
  v48[4] |= ((v47 + 176) ^ 0xFBC9 ^ v48[v48[4] & 0x3ELL]) << 16;
  v48[8] |= ~v48[v48[8] & 0x3ELL] << 16;
  v48[12] |= ~v48[v48[12] & 0x3ELL] << 16;
  v48[16] |= ~v48[v48[16] & 0x3ELL] << 16;
  v48[20] |= ~v48[v48[20] & 0x3ELL] << 16;
  v48[24] |= ~v48[v48[24] & 0x3ELL] << 16;
  v48[28] |= ~v48[v48[28] & 0x3ELL] << 16;
  v48[32] |= ~v48[v48[32] & 0x3ELL] << 16;
  v48[36] |= ~v48[v48[36] & 0x3ELL] << 16;
  v48[40] |= ~v48[v48[40] & 0x3ELL] << 16;
  v48[44] |= ~v48[v48[44] & 0x3ELL] << 16;
  v48[48] |= ~v48[v48[48] & 0x3ELL] << 16;
  v48[52] |= ~v48[v48[52] & 0x3ELL] << 16;
  v48[56] |= ~v48[v48[56] & 0x3ELL] << 16;
  v48[60] |= ~v48[v48[60] & 0x3ELL] << 16;
  v51 = (*(v44 + 8 * (v47 ^ 0xB27)))(&a42, 0, 1024);
  *(v46 - 168) = &a42;
  return (*(v44 + 8 * ((13 * ((v50 ^ 0x47 ^ (v50 == 1078)) & 1)) ^ v50)))(v51);
}

uint64_t sub_1B16CDD60(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (((379 * ((a3 + 399) ^ 0x53A) - 228) | 0xE4) ^ 0x257B2259) + v3;
  v7 = ((v5 + 2009934261) < 0xA4951DAF) ^ (v6 < 0xA4951DAF);
  v8 = v5 + 2009934261 > v6;
  if (v7)
  {
    v8 = (v5 + 2009934261) < 0xA4951DAF;
  }

  return (*(v4 + 8 * ((112 * v8) ^ (a3 + 399))))();
}

uint64_t sub_1B16CDE08()
{
  v4 = v2 - 1780;
  if ((v1 - 1) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = -2 - v0 >= (v1 - 1);
  }

  v6 = !v5;
  return (*(v3 + 8 * ((((v4 ^ 0x222) + ((v4 + 754) | 0x201) - 2271) * v6) ^ v4)))();
}

uint64_t sub_1B16CE094(uint64_t a1, uint64_t a2)
{
  v2 = (qword_1EB75A150 - qword_1EB75A100) ^ &v8;
  qword_1EB75A100 = 1889310799 * v2 - 0x6CD83E9A0F465C73;
  qword_1EB75A150 = 1889310799 * (v2 ^ 0x6CD83E9A0F465C73);
  v3 = *(a2 + 4);
  v4 = 79 * ((79 * v2 - 115) ^ 0x73 ^ qword_1EB75A150);
  v5 = *(&off_1F2870B00 + (v4 ^ byte_1B1765A90[byte_1B1761E20[v4] ^ 0xF0]) - 106) - 8;
  if (v3 == 751300871)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 751300878)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_1B16CE3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = v15;
  *(v19 - 128) = v18 - ((~((v19 - 136) | 0x80FE6D4A) + ((v19 - 136) & 0x80FE6D4A)) ^ 0x1E591965) * v17 - 144;
  *(v19 - 136) = &a15;
  v20 = (*(v16 + 8 * (v18 ^ 0x867)))(v19 - 136);
  return (*(v16 + 8 * ((((*(v19 - 112) - 2140359114) < 0xD14CEC47) * ((29 * (v18 ^ 0xD9)) ^ 0x4C4)) ^ v18)))(v20);
}

uint64_t sub_1B16CE494(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = v8;
  HIDWORD(v18) = a1 ^ (v16 + 131 * (v6 ^ 0x2B2) - 917);
  LODWORD(v18) = a1 ^ 0x20000000;
  v19 = (v17 ^ 0xDF3652F1) & (a3 ^ 0x75A427FF) ^ v17 & 0xAA92750E;
  v20 = (v17 ^ v13) & (a3 ^ 0xE069D79C) ^ v17 & 0xC0A07A92;
  v21 = (v18 >> 27) + (v9 ^ v13) + (*(v12 + 4 * (a6 + v10)) ^ v14) + (v20 & 0xDA3D24A1 ^ 0x25C2FB5E ^ (v19 & 0xA8C5373B ^ 0x507FC65 ^ (v19 ^ 0x75EDAFFF) & (v7 ^ 0x880C9A35)) & (v20 ^ 0xFF7FD7FD)) - 491683746;
  v22 = (v21 ^ 0x2E4ABB7E) & (2 * (v21 & 0xAC6A3C7E)) ^ v21 & 0xAC6A3C7E;
  v23 = ((2 * (v21 ^ 0x361E9302)) ^ 0x34E95EF8) & (v21 ^ 0x361E9302) ^ (2 * (v21 ^ 0x361E9302)) & 0x9A74AF7C;
  v24 = v23 ^ 0x8A14A104;
  v25 = (v23 ^ 0x10600278) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x69D2BDF0) & v24 ^ (4 * v24) & 0x9A74AF7C;
  v27 = (v26 ^ 0x850AD60) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x9224020C)) ^ 0xA74AF7C0) & (v26 ^ 0x9224020C) ^ (16 * (v26 ^ 0x9224020C)) & 0x9A74AF70;
  v29 = v27 ^ 0x9A74AF7C ^ (v28 ^ 0x8240A700) & (v27 << 8);
  return (*(v11 + 8 * ((1584 * (a6 + 1 == v15 + 44)) ^ v6)))(v21 ^ (2 * ((v29 << 16) & 0x1A740000 ^ v29 ^ ((v29 << 16) ^ 0x2F7C0000) & (((v28 ^ 0x1834083C) << 8) & 0x1A740000 ^ 0xA500000 ^ (((v28 ^ 0x1834083C) << 8) ^ 0x74AF0000) & (v28 ^ 0x1834083C)))) ^ 0xACA2CF88);
}

void sub_1B16CE71C()
{
  v3 = (*(v1 + 8 * (v0 ^ 0xFC3u)))(3);
  v4 = *(v2 + 8 * (v0 - 1698));
  *v4 = v3;
  v5 = v4;
  (*(v1 + 8 * (v0 ^ 0xFF1u)))();
  v6 = (*(v1 + 8 * (v0 + 323)))(66);
  v7 = *(v2 + 8 * (v0 ^ 0x7C1u));
  *v7 = v6;
  (*(v1 + 8 * (v0 ^ 0xFF1u)))();
  v8 = (*(v1 + 8 * (v0 ^ 0xFC3u)))(2);
  v9 = *(v2 + 8 * (v0 ^ 0x706u));
  *(v9 - 4) = v8;
  *v8 = 7196;
  **v7 = 0;
  **(v2 + 8 * (v0 ^ 0x761u)) = 0;
  v10 = *(v9 - 4);
  v11 = *v7;
  v12 = *v5;
  v11[64] = 1;
  **(v2 + 8 * (v0 ^ 0x745u)) = 51;
  v11[9] = -15;
  v10[1] = 79;
  **(v2 + 8 * (v0 - 1743)) = 80;
  **(v2 + 8 * (v0 ^ 0x70Eu)) = -77;
  *v10 = -22;
  v11[11] = 73;
  *v12 = 68;
  v11[20] = -44;
  **(v2 + 8 * (v0 - 1858)) = -121;
  v11[36] = -11;
  v11[45] = -113;
  v11[49] = 25;
  *(v12 + 1) = 6695;
  **(v2 + 8 * (v0 ^ 0x7E1u)) = -122;
  **(v2 + 8 * (v0 ^ 0x7F1u)) = 88;
  v11[26] = -34;
  v11[60] = -5;
  **(v2 + 8 * (v0 - 1803)) = 96;
  **(v2 + 8 * (v0 - 1764)) = 80;
  **(v2 + 8 * (v0 ^ 0x77Eu)) = 17;
  **(v2 + 8 * (v0 - 1836)) = 119;
  v11[52] = 47;
  v11[50] = 102;
  v11[59] = -59;
  v11[22] = -36;
  v11[29] = 59;
  v11[27] = 34;
  v11[40] = -80;
  v11[13] = 23;
  **(v2 + 8 * (v0 ^ 0x7C2u)) = 99;
  v11[53] = 3;
  **(v2 + 8 * (v0 - 1736)) = -109;
  v11[39] = 54;
  v11[57] = 73;
  **(v2 + 8 * (v0 ^ 0x77Fu)) = 83;
  v11[37] = -52;
  v11[63] = -72;
  v13 = *v7;
  *(v13 + 65) = -85;
  *(v13 + 5) = -14;
  *(v13 + 54) = 32;
  *(v13 + 58) = 113;
  *(v13 + 8) = 16909;
  *(v13 + 28) = -39;
  *(v13 + 47) = -4065;
  *(v13 + 21) = 15;
  *(v13 + 41) = -29527;
  *(v13 + 38) = -121;
  *(v13 + 31) = 8824;
  *(v13 + 10) = -98;
  *(v13 + 25) = 69;
  *(v13 + 7) = 27031;
  *(v13 + 23) = -86;
  *(v13 + 14) = -90;
  *(v13 + 62) = -105;
  *(v13 + 35) = 52;
  *(v13 + 33) = 15089;
  *(v13 + 55) = -30385;
  *(v13 + 46) = -17;
  *(v13 + 4) = -92;
  *(v13 + 30) = 36;
  *(v13 + 15) = 72;
  *(v13 + 51) = -15;
  *(v13 + 12) = -15;
  *(v13 + 61) = 73;
  *(v13 + 9) = -9761;
  *(v13 + 43) = 19744;
  *(v13 + 6) = 45;
  *(v13 + 24) = -72;
  JUMPOUT(0x1B16CF148);
}

uint64_t sub_1B16CF328@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v8 + 1 - v4;
  v10 = v3 + v9;
  v11 = v3 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v2 - v4 + v8 + 2;
  v15 = v8 + (((a1 ^ 0xCE0) - 1281) | 0x214u) + v2 - 539;
  v17 = v13 > v5 && v12 < v7;
  if (v11 > v5 && v10 < v7)
  {
    v17 = 1;
  }

  v20 = v14 < v7 && v15 > v5 || v17;
  return (*(v6 + 8 * ((58 * (v20 ^ 1)) ^ a1 ^ 0xCE0)))(v4, v15);
}

uint64_t sub_1B16CF4FC(uint64_t a1)
{
  v1 = 1082434553 * (a1 ^ 0x9B47F68A);
  v2 = *(a1 + 16) ^ v1;
  v3 = *a1 + v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1550341629;
  v5 = v4 - 1550341629 < 0;
  v7 = 1550341629 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F2870B00 + (v2 ^ 0x67D)) + ((((v3 - 1753153051) < (4 * v7)) * (v2 - 1473)) ^ v2) - 1))();
}

uint64_t sub_1B16CF638()
{
  v7 = ((v5 & 0x1EDD939E | ~(v5 | 0x1EDD939E)) ^ 0x7A659AEB) * v0;
  v1[4] = 0;
  *(v6 - 216) = v7 ^ 0x2ACDE3A2;
  *(v6 - 212) = (v3 + 124) ^ v7;
  v1[1] = &STACK[0x3B0];
  v1[2] = &STACK[0x3C8];
  v8 = (*(v2 + 8 * (v3 ^ 0x95F)))(v6 - 216);
  return (*(v2 + 8 * ((1021 * (*(v6 - 192) == v4)) ^ v3)))(v8);
}

uint64_t sub_1B16CF70C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v9 = v3 - 1322;
  v10 = *(v8 + 272);
  *(v10 + 392) = v2;
  *(v10 + 396) = STACK[0x44C];
  *(v10 + 400) = STACK[0x2E0];
  *(v10 + 408) = ((v3 + 1740232900) & 0x9846257A ^ 0x377758A6) - v5 + LODWORD(STACK[0x43C]);
  *(v10 + 416) = v7 + (v5 - 67981681);
  v11 = (*(v4 + a2 * a1 + 8))(STACK[0x248], v10 + 392);
  return (*(v6 + 8 * (((v11 + 296339821 - ((2 * v11) & 0x235392DA) == 296339821) * (v9 ^ 0x4CD)) ^ v9)))();
}

uint64_t sub_1B16CF82C(uint64_t a1)
{
  v1 = 1785193651 * (((a1 | 0x193C2578) - a1 + (a1 & 0xE6C3DA87)) ^ 0x358B7E90);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) + v1;
  v5 = v4 + *(v3 + 68) - 460197732;
  *(v3 + 68) = v5;
  v4 += 2085849952;
  v6 = v4 < 0x97C19AC4;
  v7 = v5 - 1748919612 < v4;
  if (v6 != v5 > 0x683E653B)
  {
    v7 = v6;
  }

  return (*(*(&off_1F2870B00 + (v2 ^ 0x5FE)) + ((82 * v7) ^ v2) - 1))();
}

void sub_1B16CF970(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A158) ^ 0x73)) ^ byte_1B1765890[byte_1B1761C20[(79 * ((qword_1EB75A150 + dword_1EB75A158) ^ 0x73))] ^ 0x5C]) - 74);
  v4 = off_1F2870CB0;
  v5 = off_1F2870FB8 - 8;
  v6 = *(&off_1F2870B00 + (*(off_1F2870FB8 + (*(off_1F2870CB0 + (79 * (*v3 ^ qword_1EB75A150 ^ 0x73))) ^ 0x4Au) - 8) ^ (79 * (*v3 ^ qword_1EB75A150 ^ 0x73))) - 222);
  v7 = (*(v6 - 4) + *v3) ^ &v10;
  *v3 = 1889310799 * v7 - 0x6CD83E9A0F465C73;
  *(v6 - 4) = 1889310799 * (v7 ^ 0x6CD83E9A0F465C73);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v7) = 742307843 * ((2 * (&v12 & 0x2C661238) - &v12 - 744886842) ^ 0x8EE592BC);
  v13 = v11;
  v12 = -473373664 - v7;
  v14 = 1267016942 - v7;
  LODWORD(v6) = 1889310799 * ((*(v6 - 4) + *v3) ^ 0xF465C73);
  v8 = *(&off_1F2870B00 + ((79 * ((qword_1EB75A150 + dword_1EB75A158) ^ 0x73)) ^ byte_1B1761F20[byte_1B176D0B0[(79 * ((qword_1EB75A150 + dword_1EB75A158) ^ 0x73))] ^ 0x66]) - 12) - 8;
  (*&v8[8 * (v6 ^ v5[v4[v6] ^ 0x5C]) + 15480])(&v12);
  v9 = *(a2 + 16) - 930569756 + (v11[68] & 0x3Fu) < 0xFFFFFFC0;
  __asm { BRAA            X11, X17 }
}

void sub_1B16CFC80(int a1@<W8>)
{
  v4 = (v3 - 1074640) & 0x1067D7;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((2 * v2) & 0x22940F6E) + (v4 ^ 0x914A00F4);
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_1B16CFD6C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = v4 + 1488452427 + (a4 ^ 0x768) + 588;
  v8 = (a2 + v6) > 0x282DFFCA;
  if (v8 == v7 < 0xD7D20035)
  {
    LOBYTE(v8) = a2 + v6 - 674103243 > v7;
  }

  return (*(v5 + 8 * ((63 * ((((a4 ^ 0x68) + 1) ^ v8) & 1)) ^ a4 ^ 0x768)))();
}

uint64_t sub_1B16CFDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, _BYTE *a15, int a16, char a17, _BYTE *a18, char *a19, int a20, unsigned int a21)
{
  a21 = v21 - 278 + 210068311 * ((((&a18 | 0x3D9612FE) ^ 0xFFFFFFFE) - (~&a18 | 0xC269ED01)) ^ 0x30E242E9);
  a18 = a15;
  a19 = &a11;
  (*(v22 + 8 * (v21 ^ 0xFAC)))(&a18);
  a21 = v21 - 278 + 210068311 * (((&a18 | 0x4916DA6D) - &a18 + (&a18 & 0xB6E92590)) ^ 0xBB9D7585);
  a18 = a15;
  a19 = &a17;
  (*(v22 + 8 * (v21 + 364)))(&a18);
  a21 = v21 - 278 + 210068311 * ((((2 * &a18) | 0x9E61FC9C) - &a18 + 818872754) ^ 0x3DBB51A6);
  a18 = a15;
  a19 = &a14;
  (*(v22 + 8 * (v21 + 364)))(&a18);
  LODWORD(a18) = v21 - 50899313 * (((&a18 | 0xAE895257) - (&a18 & 0xAE895257)) ^ 0x66E89601) - 1291;
  a19 = a15;
  v23 = (*(v22 + 8 * (v21 + 354)))(&a18);
  return (*(v22 + 8 * (((a20 == 296339821) * (v21 - 1701)) ^ v21)))(v23);
}

uint64_t sub_1B16CFF8C@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v12 = (v8 ^ 0x5ED86D1E) + 1;
  v13 = ((&a3 - 912593976 - 2 * (&a3 & 0xC99AEBC8)) ^ 0xA8C26018) * v7;
  a4 = v11 - v13 - 1678;
  a5 = v9;
  a6 = (v12 ^ 0xED37FDF5) - v13 + ((2 * v12) & 0xDA6FFBEA) + 2011103228;
  a7 = v13 ^ a1;
  a3 = &a2;
  v14 = (*(v10 + 8 * (v11 ^ 0xF01)))(&a3);
  v16 = v12 != ((v11 - 939724862) & 0x380309FD) - 349 && *(v9 + 24) == v11 + 296337872;
  return (*(v10 + 8 * ((44 * v16) ^ v11)))(v14);
}

uint64_t sub_1B16D05E0()
{
  v5 = 69 * (v4 ^ 0x13B);
  v11 = v10;
  v12 = &v9;
  v14 = v4 + 210068311 * (((&v11 | 0x45EEA0F) - (&v11 & 0x45EEA0F)) ^ 0xF6D545E7) + 1252;
  (*(v3 + 8 * (v4 + 1894)))(&v11);
  v12 = v10;
  LODWORD(v11) = v4 - 50899313 * ((((2 * &v11) | 0x62133ED2) - &v11 + 1324769431) ^ 0x79685B3F) + 239;
  (*(v3 + 8 * (v4 ^ 0x9ACu)))(&v11);
  if (v13 == (v5 ^ v1))
  {
    v6 = v9;
  }

  else
  {
    v6 = v13;
  }

  LODWORD(v11) = v4 - ((((&v11 | 0x81BA81C0) ^ 0xFFFFFFFE) - (~&v11 | 0x7E457E3F)) ^ 0xF3E81CD3) * v0 + 1486;
  v12 = v10;
  (*(v3 + 8 * (v4 + 1888)))(&v11);
  LODWORD(v11) = v5 - (((&v11 | 0x75CD9846) - &v11 + (&v11 & 0x8A3267B8)) ^ 0xF860FAAA) * v0 + 471;
  v12 = v8;
  (*(v3 + 8 * (v5 + 873)))(&v11);
  return v6 ^ v2;
}

uint64_t sub_1B16D0838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, char a47)
{
  LODWORD(STACK[0x2F4]) = v47;
  v52[36] = *(v49 + 8 * v48);
  v52[60] = v51;
  v52[61] = v51;
  v53 = v52[4];
  v54 = (&STACK[0x540] + v53);
  v52[62] = &STACK[0x540] + v53;
  v52[4] = v53 + 320;
  LODWORD(STACK[0x4B0]) = *(v51 + 72);
  LODWORD(STACK[0x488]) = *(v51 + 76);
  LODWORD(STACK[0x32C]) = *(v51 + 80);
  LODWORD(STACK[0x304]) = *(v51 + 84);
  v55 = *(v51 + 96);
  if (v55 == 2)
  {
    LODWORD(STACK[0x34C]) = *(v51 + 88);
    JUMPOUT(0x1B16C33B8);
  }

  if (v55 != 1)
  {
    JUMPOUT(0x1B16B799CLL);
  }

  v56 = *(v51 + (v50 + 1918359050)) ^ 0x7E;
  v57 = ((*(v51 + (v50 + 1918359052)) ^ 0x7E) << 16) | ((*(v51 + (v50 + 1918359053)) ^ 0x7E) << 24) | v56 & 0xFFFF00FF | (((a47 ^ *(v51 + (v50 + 1918359051))) ^ 0x7C) << 8);
  *v54 = v57 + a7 - 2 * (v57 & (a7 + 18) ^ v56 & 0x12);
  return (*(v49 + 8 * ((61 * ((v50 + 1918359054) < 0x40)) ^ (a8 - 1115))))();
}

uint64_t sub_1B16D08EC()
{
  v5 = *(v2 + 4 * (v3 - 1));
  *(v2 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v2 + 4 * v3)) - v3;
  v6 = STACK[0x280];
  *(v4 - 180) = -2030746696 - STACK[0x280] + v0;
  v7 = v0 - 609058713 + v6;
  *(v4 - 184) = v7 - 47;
  *(v4 - 212) = v7;
  *(v4 - 208) = v6 ^ 1;
  v8 = v4 - 216;
  *(v8 + 16) = v3 + 1 + v6;
  *(v8 + 24) = v6 ^ 0x26F;
  *(v4 - 216) = ((v0 - 609058713) ^ 0x52) - v6;
  v9 = (*(v1 + 8 * (v0 ^ 0xF85)))(v4 - 216);
  return (*(v1 + 8 * *(v4 - 204)))(v9);
}

uint64_t sub_1B16D09DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v22 = 1785193651 * (((((v21 - 128) | 0xD8B671F0) ^ 0xFFFFFFFE) - (~(v21 - 128) | 0x27498E0F)) ^ 0xBFED5E7);
  *(v21 - 128) = &a13;
  *(v21 - 120) = v20 - v22 - 964;
  *(v21 - 116) = (v20 ^ 0x90) - v22 + (v17 ^ 0x1D7EDF67) + ((2 * v17) & 0x3AFDBECE) - 268994594;
  (*(v16 + 8 * (v20 ^ 0xCD8)))(v21 - 128);
  *(v21 - 120) = (v20 ^ 0x90) - ((((v21 - 128) | 0x1B1F353F) - (v21 - 128) + ((v21 - 128) & 0xE4E0CAC0)) ^ 0x7A47BEEF) * v18 - 968;
  *(v21 - 128) = v15;
  *(v21 - 112) = &a15;
  v23 = (*(v16 + 8 * (v20 ^ 0xC3F)))(v21 - 128);
  return (*(v16 + 8 * (((*(v21 - 104) <= (((v20 ^ 0x90) - 815) ^ (v19 - 143))) * ((((v20 ^ 0x90) - 1442766891) & 0x55FEDEDE) - 698)) | v20 ^ 0x90)))(v23);
}

uint64_t sub_1B16D0E3C(int a1)
{
  v4 = (a1 - 1947) | 0x620;
  v6 = v1 + (v4 + 485) + (v4 + 45) - 3795 > 0xF || ((v2 - 1) & 0xFu) < ((v1 + ((a1 + 101) | 0x20) - 27 + ((a1 + 101) | 0x20) + 45 + 45) & 0xFu);
  return (*(v3 + 8 * ((230 * v6) ^ v4)))();
}

uint64_t sub_1B16D0F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v43 = 1361651671 * (((v41 | 0xC09898F4) - (v41 & 0xC09898F4)) ^ 0x13BA6878);
  v40[3] = v37;
  v40[4] = a37;
  *(v42 - 152) = v43 + 513110506;
  *(v42 - 200) = v43 + v39 + 692;
  v40[6] = 0;
  v40[7] = 0;
  *v40 = &STACK[0x448];
  v40[1] = a15;
  v44 = (*(v38 + 8 * (v39 ^ 0x967)))(v42 - 216);
  v45 = *(v42 - 176);
  LODWORD(STACK[0x4FC]) = v45;
  return (*(v38 + 8 * (((v45 == (v39 ^ 0x11A9C876)) * ((v39 + 1741) ^ 0x42F)) ^ v39)))(v44);
}

uint64_t sub_1B16D100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v17 = a15 - 1550341630 + ((v15 + 227) | 0x518);
  v19 = v17 - 1851;
  v18 = v17 - 1851 < 0;
  v20 = 1851 - v17;
  if (!v18)
  {
    v20 = v19;
  }

  return (*(v16 + 8 * ((115 * ((((v15 - 29) | 0x18) ^ 0x2F ^ (((v20 ^ 0x5CEB77FD) + ((2 * v20) & 0xB9D6EFFA) - 8593920 + (((v15 + 227) | 0x518) ^ 0xA397AD3E)) >= 0)) & 1)) ^ ((v15 + 227) | 0x518))))();
}

uint64_t sub_1B16D1320(_DWORD *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (1564307779 * ((213036865 - (a1 | 0xCB2AF41) + (a1 | 0xF34D50BE)) ^ 0x64409CAD));
  v2 = **(&off_1F2870B00 + (v1 + 875954275));
  v5 = v1 + 875954275 + 1785193651 * (((&v4 | 0x3E637DDD) - (&v4 & 0x3E637DDD)) ^ 0x12D42635) + 791;
  v4 = v2;
  return (*(*(&off_1F2870B00 + (v1 ^ 0xCBCA001F)) + (v1 + 875956309) - 1))(&v4);
}

void sub_1B16D1438()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v1 = *(v0 + 24) - 1388665877 * ((-1205643889 - (v0 | 0xB823558F) + (v0 | 0x47DCAA70)) ^ 0xCA71C89C);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1B16D158C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 635940849;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 126)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 254)
  {
    v12 = 296339821;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 62)
    {
      v15 = -1578928191;
    }

    else
    {
      v15 = -1578928192;
    }

    *(result + 16) = 363252333;
    *(result + 20) = v15;
    *(result + 24) = 296339821;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 + 370)))();
    v12 = -296316236;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_1B16D16A0()
{
  STACK[0x350] = v1 - 1712;
  LODWORD(STACK[0x310]) = v3 + 5;
  return (*(v2 + 8 * ((((((v0 - 2008) | 0x387) + 501) ^ 0x560) * (STACK[0x2C8] == 0)) ^ (v0 - 648))))();
}

uint64_t sub_1B16D1A74(uint64_t a1, int a2)
{
  v9 = v6 - 1;
  *(v8 + v9) = *(v5 + (v9 & 0xF)) ^ *(v2 + v9) ^ *(v3 + (v9 & 0xF)) ^ (117 * (v9 & 0xF)) ^ *(v4 + (v9 & 0xF));
  return (*(v7 + 8 * ((368 * (v9 == ((a2 - 1818) ^ 0x132))) ^ (a2 - 1081))))();
}

uint64_t sub_1B16D2868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(a58) = 0;
  STACK[0x208] = 0;
  LODWORD(STACK[0x35C]) = -221634611;
  v63 = &STACK[0x540] + a60;
  *(v62 + 32) = a60 + 1712;
  *v63 = 0x6370646600;
  v63[8] = 1;
  STACK[0x298] = *(v62 + 208);
  STACK[0x218] = &STACK[0x540] + a60 + 9;
  v64 = *(v61 + 8 * ((1303 * (((v60 - 76) | 0x40) == 968)) ^ (v60 - 156)));
  STACK[0x278] = *(&off_1F2870B00 + ((v60 - 156) ^ 0x37B));
  STACK[0x270] = *(&off_1F2870B00 + ((v60 - 156) ^ 0x313));
  return v64(a1, a2, a3, a4, a5, &STACK[0x540] + a60 + 9, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a2 + 2176, a2 + 2304, a40, a41, a42, a43, a44, a45, a46, &STACK[0x540] + a60 + 128, a48, &STACK[0x540] + a60, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_1B16D296C@<X0>(int a1@<W8>, int8x16_t a2@<Q5>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (v15 + 908);
  v17 = vld1q_dup_f32(v16);
  v18.i64[0] = 0x8000000080000000;
  v18.i64[1] = 0x8000000080000000;
  v19.i64[0] = 0x100000001;
  v19.i64[1] = 0x100000001;
  a2.i64[0] = *(a13 + 4);
  a2.i32[2] = *(a13 + 12);
  v20 = vextq_s8(v17, a2, 0xCuLL);
  v21 = a2;
  v21.i32[3] = *(a13 + 16);
  v22 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v21, vnegq_f32(v19)), vandq_s8(v20, v18)), 1uLL), *(a13 - 908));
  v20.i32[0] = *(v13 + 4 * (*(a13 + 4) & (((a1 + 790275211) & 0xD0E55CF3) - 1185)));
  v20.i32[1] = *(v13 + 4 * (*(a13 + 8) & 1));
  v20.i32[2] = *(v13 + 4 * (*(a13 + 12) & 1));
  v20.i32[3] = *(v13 + 4 * (v21.i8[12] & 1));
  *a13 = veorq_s8(vaddq_s32(vsubq_s32(v22, vandq_s8(vaddq_s32(v22, v22), vdupq_n_s32(0x1CD5FF86u))), vdupq_n_s32(0x8E6AFFC3)), v20);
  return (*(v14 + 8 * a1))();
}

uint64_t sub_1B16D2F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = (v36 - 363) | 0x128;
  *(v38 - 124) = v39;
  v40 = *(&off_1F2870B00 + (v36 ^ 0x1C6)) - 12;
  v41 = v40[v34[5] ^ 0xE2];
  v42 = v34[15];
  *(v38 - 172) = v35;
  v43 = *(&off_1F2870B00 + (v36 ^ 0x174)) - 8;
  v44 = v43[v42 ^ 0x92];
  v45 = v36;
  v46 = v43[(v34[7] & 0xC0 ^ 0xD9722AF73091217FLL) & (v34[7] & 0x3F ^ 0xD9722AF736D121E3) ^ 0xD9722AF7309121D0];
  v47 = *(&off_1F2870B00 + v45 - 200) - 8;
  v48 = (v46 ^ 0xDAFF1E40) & ((v41 << (v39 ^ 0x2C)) ^ 0xDAAA1E55) | v46 & 0xAAAAAAAA;
  v49 = -87 * v47[v34[12] ^ 0x68] + 90;
  v50 = *(&off_1F2870B00 + (v45 ^ 0x1C9));
  v51 = *(v50 + (v34[14] ^ 0xD6)) + 47;
  v52 = ((*(v50 + (v34[6] ^ 0x87)) + 47) ^ 0x30) << 8;
  v53 = (v52 | 0xD2B304B7) ^ (v48 & 0x4894048F ^ 0x28CCC3C0 ^ ((((-87 * v47[v34[4] ^ 0x57] + 90) ^ 0xC) << 24) ^ 0xC56BC370) & (v48 ^ 0x2555F107)) & ~v52;
  v54 = (((-87 * v47[v34[8] ^ 0xB9] + 90) ^ 0xBC) << 24) | ((v40[v34[9] ^ 0x3BLL] ^ 0xE5) << 16) | v43[v34[11] ^ 0x62] ^ 0x84;
  v55 = (((v49 << 24) ^ 0x2346C6DE) & ~((v51 ^ 0x27) << 8) & 0x3B40F804 | ((v51 ^ 0x27) << 8) & 0x3800) ^ 0xED260018 ^ ((((v49 << 24) ^ 0x2346C6DE) & ~((v51 ^ 0x27) << 8) | ((v51 ^ 0x27) << 8) & 0x3900) ^ 0xE0B90121) & ((((v40[v34[13] ^ 0xB9] << 16) ^ 0x26846780) & (v44 ^ 0x3EFF77D5) & 0xFFFFFF80 | v44 & 0x7F) ^ 0xE259602E);
  v56 = ((v43[v34[3] ^ 0x29] ^ 0xC7) & 0xFFFF00FF | ((v40[v34[1] ^ 8] ^ 0x14) << 16) | (((-87 * v47[*v34 ^ 0xE1] + 90) ^ 0xDA) << 24) | (((*(v50 + (v34[2] ^ 0x8FLL)) + 47) ^ 0xD8) << 8)) ^ 0x1B;
  LOBYTE(v40) = (*(v50 + (v34[10] ^ 0xB7)) + 47) ^ 0xE7;
  v57 = *(*(&off_1F2870B00 + (v45 ^ 0x1C5)) + (BYTE2(v55) ^ 0xBAu));
  v58 = *(&off_1F2870B00 + (v45 ^ 0x1C5));
  v59 = *(&off_1F2870B00 + (v45 ^ 0x1EC));
  *(v38 - 200) = v37;
  v60 = v59 - 12;
  v61 = v54 & 0xFFFF00FF | (v40 << 8);
  LODWORD(v43) = *(v59 - 12 + 4 * (v51 ^ 0x7Eu)) ^ 0xC115B396;
  *(v38 - 148) = v45;
  v62 = *(&off_1F2870B00 + (v45 ^ 0x140)) - 4;
  v63 = ((v57 ^ v43) - ((2 * (v57 ^ v43)) & 0xE021D6F2) - 267326599) ^ *&v62[4 * (v49 ^ 0x88)];
  v64 = *(&off_1F2870B00 + v45 - 208);
  LODWORD(v44) = *(v64 + 4 * (v44 ^ 0x59));
  *(v38 - 216) = v56;
  *(v38 - 204) = v53;
  v509 = v44 ^ v56 ^ (v63 - ((2 * v63) & 0x99D9560E) - 856904953);
  *(v38 - 208) = v61;
  v512 = v509 ^ v53;
  v500 = v509 ^ v53 ^ v61;
  v506 = (v500 ^ v55);
  v65 = *(v64 + 4 * (v506 ^ 0x35u));
  LODWORD(v44) = v500 ^ v55 ^ 0xF83672DE;
  *(v38 - 180) = BYTE1(v44);
  v66 = *(v59 - 12 + 4 * (BYTE1(v44) ^ 0x9Eu)) ^ v65;
  v518 = BYTE3(v44);
  v67 = ((v66 ^ 0x131A1E5) - 2 * ((v66 ^ 0x131A1E5) & 0x7010EB7B ^ v66 & 2) - 267326599) ^ *&v62[4 * (BYTE3(v44) ^ 0x86)];
  v515 = BYTE2(v44);
  v68 = v509 ^ *(v58 + 4 * (BYTE2(v44) ^ 0xBAu)) ^ (v67 - ((2 * v67) & 0x199172E8) + 214481268);
  v505 = ((v509 ^ v53) >> 16) ^ 0x5B;
  LODWORD(v44) = v68 ^ v509 ^ v53 ^ 0xA25B684D;
  *(v38 - 136) = v68;
  *(v38 - 132) = v44;
  v69 = v68;
  *(v38 - 212) = v55;
  v70 = v44 ^ 0xF73EC34E ^ v55;
  LODWORD(v59) = v70 ^ 0x7E4FB786;
  v71 = (v70 ^ 0x7E4FB786u) >> 24;
  *(v38 - 256) = v71;
  v526 = ((v70 ^ 0x7E4FB786u) >> 16);
  v72 = *&v62[4 * (v71 ^ 0x86)] ^ *(v58 + 4 * (v526 ^ 0xBAu)) ^ 0xFCD8520D;
  v523 = ((v70 ^ 0xB786) >> 8);
  v73 = (v72 - ((2 * v72) & 0x9BBA15C4) - 841151774) ^ *(v60 + 4 * (v523 ^ 0x9Eu));
  *(v38 - 176) = v70;
  v74 = (v73 - ((2 * v73) & 0x99D9560E) - 856904953) ^ *(v64 + 4 * (v70 ^ 0x6Du)) ^ v69;
  *(v38 - 128) = v74;
  v74 ^= 0xFEB4AEEu;
  LODWORD(v43) = v74 ^ v500 ^ 0xF83672DE;
  v75 = v74;
  *(v38 - 240) = v43;
  v76 = v43 ^ v59;
  LODWORD(v43) = ((v43 ^ v59) >> 16);
  *(v38 - 248) = v43;
  LODWORD(v43) = *(v58 + 4 * (v43 ^ 0xBA));
  *(v38 - 220) = BYTE1(v76);
  LODWORD(v40) = v43 ^ *(v60 + 4 * (BYTE1(v76) ^ 0x9Eu)) ^ 0xC115B396;
  *(v38 - 232) = HIBYTE(v76);
  LODWORD(v40) = (v40 - ((2 * v40) & 0xE021D6F2) - 267326599) ^ *&v62[4 * (HIBYTE(v76) ^ 0x86)];
  *(v38 - 184) = v76;
  v479 = BYTE2(v75);
  LODWORD(v43) = v75 ^ *(v64 + 4 * (v76 ^ 0xEBu)) ^ (v40 - ((2 * v40) & 0x99D9560E) - 856904953) ^ v44 ^ 0xF73EC34E ^ v500 ^ 0xF83672DE;
  v77 = v75 ^ *(v64 + 4 * (v76 ^ 0xEBu)) ^ (v40 - ((2 * v40) & 0x99D9560E) - 856904953);
  *(v38 - 144) = v43;
  *(v38 - 140) = v44 ^ 0xF73EC34E ^ v500 ^ 0xF83672DE;
  LODWORD(v59) = v43 ^ 0x598844C8 ^ v76;
  LODWORD(v50) = v43 ^ 0x598844C8;
  v412 = v43 ^ 0xC8;
  LODWORD(v40) = *(v64 + 4 * (v59 ^ 0x83u));
  v521 = (v59 ^ 0xCD2CB9A0) >> 24;
  v78 = *&v62[4 * (v521 ^ 0x86)];
  *(v38 - 120) = 0;
  v454 = ((v59 ^ 0xCD5DCD68) >> 16);
  LODWORD(v43) = ((v40 ^ v78 ^ 0x3CFC407E) - ((2 * (v40 ^ v78 ^ 0x3CFC407E)) & 0x199172E8) + 214481268) ^ *(v58 + 4 * (v454 ^ 0xBAu));
  v414 = ((v59 ^ 0xCD68) >> 8);
  LODWORD(v43) = (v43 - ((2 * v43) & 0x9BBA15C4) - 841151774) ^ *(v60 + 4 * (v414 ^ 0x9Eu));
  v480 = v75 ^ v44 ^ 0xF73EC34E;
  *(v38 - 160) = v43 ^ v480 ^ 0x7E4FB786;
  *(v38 - 156) = v480 ^ 0x7E4FB786;
  v79 = v43 ^ v480 ^ 0x7E4FB786 ^ 0xF39A3E26;
  v441 = v77;
  v475 = ((v79 ^ v76) >> 16);
  v473 = v79 ^ v76;
  LODWORD(v44) = *&v62[4 * (((v79 ^ v76) >> (v77 & 0x18) >> (v77 & 0x18 ^ 0x18)) ^ 0x86)] ^ *(v58 + 4 * (v475 ^ 0xBAu)) ^ 0xFCD8520D;
  v470 = ((v79 ^ v76) >> 8);
  LODWORD(v44) = (v44 - ((2 * v44) & 0x9BBA15C4) - 841151774) ^ *(v60 + 4 * (v470 ^ 0x9Eu));
  v465 = v43 ^ v77;
  v469 = BYTE2(v79);
  LODWORD(v47) = v79 ^ v50;
  v460 = v79 ^ v50;
  v444 = v43 ^ v77 ^ *(v64 + 4 * ((v79 ^ v50 ^ v59 ^ 0x68) ^ 0x83u)) ^ (v44 - ((2 * v44) & 0x99D9560E) - 856904953);
  v80 = v444 ^ 0x53DB0D92 ^ v79;
  v484 = v444 ^ 0x92;
  v81 = v80 ^ 0xF73EC34E ^ v59 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  v487 = v80 ^ 0x4E ^ v59 ^ 0x68;
  v82 = *(v58 + 4 * (BYTE2(v81) ^ 0xBAu)) ^ *(v64 + 4 * (v487 ^ 0x11u)) ^ 0xC0241273;
  v83 = (v82 - ((2 * v82) & 0xE021D6F2) - 267326599) ^ *&v62[4 * (HIBYTE(v81) ^ 0x86)];
  v84 = v60;
  LODWORD(v40) = v444 ^ 0x53DB0D92 ^ *(v60 + 4 * (BYTE1(v81) ^ 0x9Eu)) ^ (v83 - ((2 * v83) & 0x9BBA15C4) - 841151774);
  *(v38 - 164) = v40;
  v464 = BYTE2(v47) ^ 0x5D;
  v85 = v80 ^ 0xF73EC34E ^ v47 ^ 0xCD5DCD68;
  v405 = v40 ^ 0x85DB0D92 ^ v80;
  v419 = BYTE2(v40) ^ 0xDB;
  v429 = v405 ^ 0x484133B4 ^ v85;
  v86 = v429 ^ 0xBDE5CEDC ^ v81;
  v422 = (v86 ^ 0x29A3E26) >> 24;
  v482 = ((v86 ^ 0x3E26) >> 8);
  v87 = *&v62[4 * (v422 ^ 0x86)] ^ *(v60 + 4 * (v482 ^ 0x9Eu)) ^ 0x3DCDE19B;
  v415 = ((v86 ^ 0x29A3E26) >> 16);
  v88 = (v87 - ((2 * v87) & 0x199172E8) + 214481268) ^ *(v58 + 4 * (v415 ^ 0xBAu));
  v394 = v88 - ((2 * v88) & 0x99D9560E) - 856904953;
  v395 = v40 ^ 0x85DB0D92 ^ *(v64 + 4 * (v429 ^ 0xDC ^ v81 ^ 0xCDu));
  LODWORD(v43) = v395 ^ v394 ^ v405 ^ 0x484133B4;
  v447 = v43;
  *(v38 - 152) = v395 ^ v394;
  LODWORD(v40) = v43 ^ 0x19868409 ^ v429 ^ 0xBDE5CEDC;
  *(v38 - 168) = v40;
  v496 = v43 ^ 0x19868409;
  v89 = v40 ^ 0xC130088F ^ v86 ^ 0x29A3E26;
  v388 = (v89 ^ 0x7B68C86) >> 24;
  v389 = ((v89 ^ 0x8C86) >> 8);
  v90 = *&v62[4 * (v388 ^ 0x86)] ^ *(v60 + 4 * (v389 ^ 0x9Eu)) ^ 0x3DCDE19B;
  LODWORD(v60) = ((v89 ^ 0x7B68C86) >> 16);
  v491 = v89 ^ 0x7B68C86;
  v91 = (v90 - ((2 * v90) & 0x199172E8) + 214481268) ^ *(v58 + 4 * (v60 ^ 0xBA));
  v392 = v89;
  v423 = v395 ^ v394 ^ *(v64 + 4 * (v89 ^ 0x6Du)) ^ (v91 - ((2 * v91) & 0x99D9560E) - 856904953);
  v492 = v423 ^ 0x7B68C86;
  v407 = v423 ^ 0x7B68C86 ^ v43 ^ 0x19868409;
  v410 = v407 ^ v40 ^ 0xC130088F;
  v494 = v410 ^ 0xC104CD8D;
  v92 = v410 ^ 0xC104CD8D ^ v89 ^ 0x7B68C86 ^ 0xA91877A2;
  v432 = v410 ^ 0x8D ^ v89 ^ 0x86;
  v430 = HIBYTE(v92);
  LODWORD(v44) = *(v64 + 4 * (v432 ^ 0x49u)) ^ 0x3CFC407E ^ *&v62[4 * (HIBYTE(v92) ^ 0x86)];
  v435 = BYTE1(v92);
  LODWORD(v44) = (v44 - 841151774 + (~(2 * v44) | 0x6445EA3B) + 1) ^ *(v84 + 4 * (BYTE1(v92) ^ 0x9Eu));
  v426 = BYTE2(v92);
  v489 = (v44 - ((2 * v44) & 0x199172E8) + 214481268) ^ *(v58 + 4 * (BYTE2(v92) ^ 0xBAu));
  v93 = v506 ^ 0xEF;
  LODWORD(v43) = *(v38 - 148);
  v94 = *(&off_1F2870B00 + v43 - 212) - 8;
  LODWORD(v40) = (((v500 ^ 0xF83672DE) >> 16) ^ 0xFD84E2EE) - 392090914 + *&v94[4 * (((v500 ^ 0xF83672DE) >> 16) ^ 0x7E)];
  BYTE1(v506) = BYTE1(v509) ^ 0x6F;
  v95 = *(&off_1F2870B00 + (v43 ^ 0x141)) - 12;
  v96 = ((v505 ^ 0xFD84E273) - 392090914 + *&v94[4 * (v505 ^ 0xE3)]) ^ (-1974868763 * *&v95[4 * (HIBYTE(v512) ^ 0xE7)] - 33878693);
  v97 = *(&off_1F2870B00 + (v43 & 0xEA1F10F4)) - 8;
  v98 = (v40 - ((2 * v40) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v500 ^ 0x33)];
  LODWORD(v44) = (-1974868763 * *&v95[4 * (HIBYTE(v509) ^ 0xCB)] - 33878693) ^ ((((v509 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 392090914 + *&v94[4 * (((v509 ^ 0x6AB66F6C) >> 16) ^ 0x7B)]);
  v99 = *(&off_1F2870B00 + (v43 & 0x4633D61E));
  LODWORD(v40) = (v96 - ((2 * v96) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * (BYTE1(v512) ^ 0x4Bu));
  LODWORD(v44) = (v44 - ((2 * v44) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v509 ^ 0x1C)];
  v510 = v40 - ((2 * v40) & 0x3D53AFD0);
  LODWORD(v40) = (v515 ^ 0xFD84E215) - 392090914 + *&v94[4 * (v515 ^ 0x85)];
  v503 = *(v99 + 4 * (BYTE1(v500) ^ 0xE4u)) ^ (-1974868763 * *&v95[4 * (HIBYTE(v500) ^ 0x54)] - 33878693) ^ (v98 - ((2 * v98) & 0x182A6442) - 1944767967);
  LODWORD(v40) = (-1974868763 * *&v95[4 * (v518 ^ 0xBE)] - 33878693) ^ *&v97[4 * v93] ^ (v40 - ((2 * v40) & 0x3D53AFD0) + 514447336);
  v501 = v44 - ((2 * v44) & 0x182A6442);
  v498 = v40 - ((2 * v40) & 0x182A6442);
  LODWORD(v62) = (((v444 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 392090914 + *&v94[4 * (((v444 ^ 0xB89A99EC) >> 16) ^ 0x34)];
  v450 = v85 ^ 0xBFAB50FA;
  v100 = ((BYTE2(v450) ^ 0xFD84E2EB) - 392090914 + *&v94[4 * (BYTE2(v450) ^ 0x7B)]) ^ *&v97[4 * (v85 ^ 0x5F)] ^ (-1974868763 * *&v95[4 * (HIBYTE(v85) ^ 0xD2)] - ((345229770 * *&v95[4 * (HIBYTE(v85) ^ 0xD2)] + 1005984438) & 0x3D53AFD0) + 480568643);
  v458 = v512 ^ 0x25;
  LODWORD(v44) = *&v95[4 * (HIBYTE(v81) ^ 0xB6)];
  v101 = (-1974868763 * v44 - ((345229770 * v44 + 469113526) & 0x182A6442) - 1978646660) ^ *(v99 + 4 * (BYTE1(v81) ^ 0x25u));
  v516 = v101 - ((2 * v101) & 0x3D53AFD0);
  LODWORD(v40) = *(v99 + 4 * ((v444 ^ 0x99EC) >> 8)) ^ (v62 - ((2 * v62) & 0x182A6442) - 1944767967);
  v102 = (((v80 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 392090914 + *&v94[4 * (((v80 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v513 = v40 - ((2 * v40) & 0x3D53AFD0);
  v404 = HIBYTE(v444) ^ 0x48;
  v445 = v100 - ((2 * v100) & 0x182A6442);
  LODWORD(v40) = (v102 - ((2 * v102) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v80 ^ 0xA4)] ^ (-1974868763 * *&v95[4 * (HIBYTE(v80) ^ 0x40)] - 33878693);
  v437 = v40 - ((2 * v40) & 0x182A6442);
  v519 = (BYTE2(v81) ^ 0xFD84E217) - 392090914 + *&v94[4 * (BYTE2(v81) ^ 0x87)];
  v421 = BYTE1(v441) ^ 0x36;
  LODWORD(v40) = (((v441 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 392090914 + *&v94[4 * (((v441 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v439 = v441 ^ *(v38 - 156);
  v103 = *&v95[4 * (HIBYTE(v439) ^ 0x39)];
  v104 = (-1974868763 * v103 - ((345229770 * v103 + 469113526) & 0x182A6442) - 1978646660) ^ *(v99 + 4 * ((v439 ^ 0xDA26) >> 8));
  v105 = (v454 ^ 0xFD84E284) - 392090914 + *&v94[4 * (v454 ^ 0x14)];
  LODWORD(v40) = (v40 - ((2 * v40) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v441 ^ 0x7D)] ^ (-1974868763 * *&v95[4 * (HIBYTE(v441) ^ 0x5D)] - 33878693);
  v399 = *(v38 - 144) ^ 0xAF58D76C;
  v106 = (BYTE2(v399) ^ 0xFD84E2EB) - 392090914 + *&v94[4 * (BYTE2(v399) ^ 0x7B)];
  v442 = v104 - ((2 * v104) & 0x3D53AFD0);
  v107 = (v106 - ((2 * v106) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v412 ^ 0xD4)];
  v408 = v107 - ((2 * v107) & 0x182A6442);
  v455 = (((v439 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 392090914 + *&v94[4 * (((v439 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  v108 = (v105 - ((2 * v105) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * (v414 ^ 0xE5u)) ^ (-1974868763 * *&v95[4 * (v521 ^ 0xF0)] - 33878693);
  v402 = v40 - ((2 * v40) & 0x182A6442);
  v522 = v108 - ((2 * v108) & 0x3D53AFD0);
  v109 = *(v38 - 136);
  LODWORD(v413) = v109 ^ 0xD1;
  LODWORD(v40) = (v526 ^ 0xFD84E219) - 392090914 + *&v94[4 * (v526 ^ 0x89)];
  LODWORD(v40) = (v40 - ((2 * v40) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * (v523 ^ 0x93u));
  v527 = v40 - ((2 * v40) & 0x3D53AFD0);
  LODWORD(v40) = *(v38 - 132) ^ 0x47E1030D;
  LODWORD(v43) = *(v38 - 140);
  v110 = *&v95[4 * ((v43 >> 24) ^ 0xDE)];
  v111 = (BYTE2(v40) ^ 0xFD84E2EB) - 392090914 + *&v94[4 * (BYTE2(v40) ^ 0x7B)];
  LODWORD(v40) = (v111 - ((2 * v111) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * BYTE1(v40));
  v112 = ((BYTE2(v43) ^ 0xFD84E243) - 392090914 + *&v94[4 * (BYTE2(v43) ^ 0xD3)]) ^ *(v99 + 4 * (BYTE1(v43) ^ 0xDBu)) ^ (-1974868763 * v110 - ((345229770 * v110 + 469113526) & 0x182A6442) - 1978646660);
  v391 = BYTE1(v109) ^ 0x9D;
  v456 = (((v109 ^ 0x37B09DC8u) >> 16) ^ 0xFD84E2EB) - 392090914 + *&v94[4 * (((v109 ^ 0x37B09DC8u) >> 16) ^ 0x7B)];
  v401 = v40 - ((2 * v40) & 0x3D53AFD0);
  LODWORD(v400) = v112 - ((2 * v112) & 0x3D53AFD0);
  LODWORD(v40) = (-1974868763 * *&v95[4 * (v388 ^ 0xAC)] - 33878693) ^ ((v60 ^ 0xFD84E2A8) - 392090914 + *&v94[4 * (v60 ^ 0x38)]);
  v113 = (v40 - ((2 * v40) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * (v389 ^ 0xD9u));
  LODWORD(v40) = (BYTE2(*(v38 - 168)) ^ 0xFD84E256) - 392090914 + *&v94[4 * (BYTE2(*(v38 - 168)) ^ 0xC6)];
  v114 = v40 - ((2 * v40) & 0x3D53AFD0);
  LODWORD(v40) = *&v95[4 * ((v395 ^ ~v394) >> 24)];
  v115 = *(v38 - 152) ^ 0xDDA7A6D4;
  v116 = (-1974868763 * v40 - ((345229770 * v40 + 469113526) & 0x182A6442) - 1978646660) ^ *(v99 + 4 * BYTE1(v115));
  v117 = (v114 + 514447336) ^ *&v97[4 * (*(v38 - 168) ^ 0x67)] ^ (-1974868763 * *&v95[4 * (HIBYTE(*(v38 - 168)) ^ 0x3E)] - 33878693);
  HIDWORD(v393) = v116 - ((2 * v116) & 0x3D53AFD0);
  LODWORD(v396) = v113 - ((2 * v113) & 0x3D53AFD0);
  v383 = BYTE1(v447) ^ 0x9E;
  v118 = *&v95[4 * (HIBYTE(v447) ^ 0xCD)];
  v119 = *&v97[4 * (v447 ^ 0xC9)] ^ (-1974868763 * v118 - ((345229770 * v118 + 1005984438) & 0x3D53AFD0) + 480568643);
  LODWORD(v387) = v119 - ((2 * v119) & 0x182A6442);
  v524 = (BYTE2(v115) ^ 0xFD84E2A5) - 392090914 + *&v94[4 * (BYTE2(v115) ^ 0x35)];
  v386 = v117 - ((2 * v117) & 0x182A6442);
  v448 = (BYTE2(v447) ^ 0xFD84E2FB) - 392090914 + *&v94[4 * (BYTE2(v447) ^ 0x6B)];
  v397 = v429 ^ 0xDC ^ v81 ^ 0x97;
  v120 = (BYTE2(v405) ^ 0xFD84E271) - 392090914 + *&v94[4 * (BYTE2(v405) ^ 0xE1)];
  v121 = (v120 - 1944767966 + (~(2 * v120) | 0xE7D59BBD)) ^ *(v99 + 4 * (BYTE1(v405) ^ 0x28u));
  HIDWORD(v387) = v405 ^ 0xAE;
  v122 = *&v95[4 * (HIBYTE(v429) ^ 0x22)];
  v123 = (-1974868763 * v122 - ((345229770 * v122 + 469113526) & 0x182A6442) - 1978646660) ^ *(v99 + 4 * ((v429 ^ 0x4AFA) >> 8));
  v384 = v429 ^ 0xE4;
  HIDWORD(v396) = v121 - ((2 * v121) & 0x3D53AFD0);
  LODWORD(v390) = v123 - ((2 * v123) & 0x3D53AFD0);
  HIDWORD(v428) = (((v429 ^ 0xBF864AFA) >> 16) ^ 0xFD84E2A5) - 392090914 + *&v94[4 * (((v429 ^ 0xBF864AFA) >> 16) ^ 0x35)];
  v381 = v422 ^ 0x67;
  HIDWORD(v420) = (v415 ^ 0xFD84E291) - 392090914 + *&v94[4 * (v415 ^ 1)];
  LODWORD(v43) = *(v38 - 164);
  v124 = *&v95[4 * ((v43 >> 24) ^ 0x82)];
  LODWORD(v44) = (-1974868763 * v124 - ((345229770 * v124 + 469113526) & 0x182A6442) - 1978646660) ^ *(v99 + 4 * (BYTE1(v43) ^ 5u)) ^ ((v419 ^ 0xFD84E2FE) - 392090914 + *&v94[4 * (v419 ^ 0x6E)]);
  v418 = v44 - ((2 * v44) & 0x3D53AFD0);
  v125 = (((v407 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 392090914 + *&v94[4 * (((v407 ^ 0x23AAC875) >> 16) ^ 0x27)];
  LODWORD(v44) = (v125 - ((2 * v125) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * ((v407 ^ 0xC875) >> 8));
  v374 = v410 ^ 0x68D34E2A;
  v126 = *&v95[4 * (HIBYTE(v410) ^ 0x27)];
  LODWORD(v62) = (-1974868763 * v126 - ((345229770 * v126 + 1005984438) & 0x3D53AFD0) + 480568643) ^ *&v97[4 * (v410 ^ 0x5A)];
  v411 = v407 ^ 5;
  v379 = BYTE1(v423) ^ 0x82;
  v127 = ((v423 ^ 0xC1698200) >> 16);
  v128 = *&v94[4 * (v127 ^ 0x7B)];
  v416 = v44 - ((2 * v44) & 0x3D53AFD0);
  LODWORD(v40) = (-1974868763 * *&v95[4 * (HIBYTE(v423) ^ 0x60)] - 33878693) ^ *&v97[4 * (v423 ^ 0x72)] ^ ((v127 ^ 0xFD84E2EB) - 392090914 + v128 - ((2 * ((v127 ^ 0xFD84E2EB) - 392090914 + v128)) & 0x3D53AFD0) + 514447336);
  v129 = *&v95[4 * (v430 ^ 0x21)];
  v130 = *&v97[4 * (v432 ^ 0x12)] ^ ((v426 ^ 0xFD84E2A2) - 392090914 + *&v94[4 * (v426 ^ 0x32)]) ^ (-1974868763 * v129 - ((345229770 * v129 + 1005984438) & 0x3D53AFD0) + 480568643);
  v131 = HIBYTE(*(v38 - 132)) ^ 0xE6;
  LODWORD(v380) = *(v38 - 132) ^ 0x7D;
  v427 = v435 ^ 0x7D;
  v377 = v40 - ((2 * v40) & 0x182A6442);
  LODWORD(v376) = v130 - ((2 * v130) & 0x182A6442);
  HIDWORD(v375) = v62 - ((2 * v62) & 0x182A6442);
  *(v38 - 132) = (BYTE2(v374) ^ 0xFD84E2EB) - 392090914 + *&v94[4 * (BYTE2(v374) ^ 0x7B)];
  v132 = *(v38 - 256) ^ 0x32;
  v133 = (BYTE2(v465) ^ 0xFD84E2A2) - 392090914 + *&v94[4 * (BYTE2(v465) ^ 0x32)];
  v134 = (v464 ^ 0xFD84E216) - 392090914 + *&v94[4 * (v464 ^ 0x86)];
  v424 = v470 ^ 0x6E;
  v135 = (v134 - ((2 * v134) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v460 ^ 0x15)];
  v136 = (v469 ^ 0xFD84E2B1) - 392090914 + *&v94[4 * (v469 ^ 0x21)];
  v137 = (v133 - ((2 * v133) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v465 ^ 0x54)] ^ (-1974868763 * *&v95[4 * (HIBYTE(v465) ^ 0xEA)] - 33878693);
  HIDWORD(a10) = BYTE1(v465) ^ 0x83;
  v436 = v137 - 1944767966 + (~(2 * v137) | 0xE7D59BBD);
  LODWORD(v62) = BYTE1(v460) ^ 0xCC;
  v138 = HIBYTE(v460) ^ 0x5B;
  LODWORD(v373) = v135 - ((2 * v135) & 0x182A6442);
  HIDWORD(v373) = v473 ^ 0x81;
  LODWORD(v44) = (v136 - ((2 * v136) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * (BYTE1(*(v38 - 160)) ^ 0x56u)) ^ (-1974868763 * *&v95[4 * (HIBYTE(*(v38 - 160)) ^ 0x6D)] - 33878693);
  *(v38 - 256) = v44 - ((2 * v44) & 0x3D53AFD0);
  v461 = (v475 ^ 0xFD84E2DC) - 392090914 + *&v94[4 * (v475 ^ 0x4C)];
  LODWORD(v44) = (*(v38 - 248) ^ 0xFD84E246) - 392090914 + *&v94[4 * (*(v38 - 248) ^ 0xD6)];
  v139 = v44 - ((2 * v44) & 0x182A6442);
  v140 = *(v38 - 128);
  LODWORD(v44) = (-1974868763 * *&v95[4 * (HIBYTE(v140) ^ 0x41)] - 33878693) ^ ((v479 ^ 0xFD84E273) - 392090914 + *&v94[4 * (v479 ^ 0xE3)]);
  v141 = (v44 - ((2 * v44) & 0x182A6442) - 1944767967) ^ *(v99 + 4 * (BYTE1(v140) ^ 0x6Fu));
  LODWORD(v44) = BYTE2(*(v38 - 156));
  LODWORD(v44) = (v44 ^ 0xFD84E2B8) - 392090914 + *&v94[4 * (v44 ^ 0x28)];
  LODWORD(v44) = (v44 - ((2 * v44) & 0x3D53AFD0) + 514447336) ^ *&v97[4 * (v480 ^ 0xCE)];
  v142 = v44 - ((2 * v44) & 0x182A6442);
  LODWORD(v84) = *(v38 - 240);
  v143 = *&v95[4 * v132];
  v144 = *&v95[4 * v381];
  LODWORD(v40) = *&v95[4 * (HIBYTE(v405) ^ 0xD7)];
  LODWORD(v64) = *&v95[4 * (BYTE3(v84) ^ 0x18)];
  LODWORD(v44) = *&v95[4 * (HIBYTE(v407) ^ 0x82)];
  v145 = *&v95[4 * v138];
  v146 = *&v95[4 * (HIBYTE(v473) ^ 0x17)];
  v147 = *&v95[4 * (*(v38 - 232) ^ 7)];
  LODWORD(v43) = *&v95[4 * (HIBYTE(v480) ^ 0x2E)];
  LODWORD(v406) = -1974868763 * *&v95[4 * v404] - 33878693;
  v452 = -1974868763 * *&v95[4 * (HIBYTE(*(v38 - 144)) ^ 0xE)] - 33878693;
  HIDWORD(v406) = -1974868763 * *&v95[4 * (HIBYTE(*(v38 - 136)) ^ 0x96)] - 33878693;
  *(v38 - 156) = -1974868763 * *&v95[4 * v131] - 33878693;
  v478 = -1974868763 * v144 - 33878693;
  LODWORD(v382) = -1974868763 * v40 - 33878693;
  v476 = -1974868763 * v44 - 33878693;
  v466 = -1974868763 * v145 - 33878693;
  v431 = -1974868763 * v146 - 33878693;
  v433 = -1974868763 * v43 - 33878693;
  v148 = (-1974868763 * v64 - ((345229770 * v64 + 1005984438) & 0x3D53AFD0) + 480568643) ^ *&v97[4 * (v84 ^ 0xBC)];
  HIDWORD(v403) = *(v99 + 4 * BYTE1(v506));
  HIDWORD(v380) = *(v99 + 4 * (*(v38 - 180) ^ 0xD0u));
  v471 = *(v99 + 4 * BYTE1(v450));
  v468 = *(v99 + 4 * (BYTE1(v80) ^ 0x2Du));
  *(v38 - 180) = *(v99 + 4 * BYTE1(v399));
  v507 = *(v99 + 4 * v421);
  HIDWORD(v378) = *(v99 + 4 * v391);
  LODWORD(v44) = *(v99 + 4 * (*(v38 - 220) ^ 0xB0u)) ^ (-1974868763 * v147 - 33878693);
  *(v38 - 220) = *(v99 + 4 * v383);
  v474 = *(v99 + 4 * (BYTE1(*(v38 - 168)) ^ 0x4Fu));
  v463 = *(v99 + 4 * (v482 ^ 0x72u));
  LODWORD(v40) = (v139 - 1944767967) ^ v44;
  LODWORD(v420) = *(v99 + 4 * v379);
  v483 = *(v99 + 4 * v427);
  LODWORD(v44) = *(v99 + 4 * BYTE1(v374));
  v451 = *(v99 + 4 * v424);
  LODWORD(v64) = v141 - ((2 * v141) & 0x3D53AFD0);
  LODWORD(v428) = *(v99 + 4 * HIDWORD(a10));
  LODWORD(v425) = *(v99 + 4 * v62);
  *(v38 - 168) = *(v99 + 4 * (BYTE1(v480) ^ 0x74u));
  HIDWORD(v425) = *(v99 + 4 * (BYTE1(v84) ^ 0xF4u));
  HIDWORD(v398) = v445 - 1944767967;
  HIDWORD(v390) = v437 - 1944767967;
  v446 = v408 - 1944767967;
  LODWORD(v375) = v402 - 1944767967;
  HIDWORD(v382) = v387 - 1944767967;
  LODWORD(v378) = v377 - 1944767967;
  LODWORD(v409) = v148 - ((2 * v148) & 0x182A6442) - 1944767967;
  LODWORD(v403) = (BYTE2(v84) ^ 0xFD84E264) - 392090914 + *&v94[4 * (BYTE2(v84) ^ 0xF4)];
  HIDWORD(v376) = *&v97[4 * v458];
  v149 = *(v38 - 184) ^ 0xF2;
  v150 = *&v97[4 * (v487 ^ 0xBF)];
  LODWORD(v62) = *&v97[4 * (v484 ^ 0xE)];
  v440 = *&v97[4 * (v439 ^ 0x3D)];
  HIDWORD(v413) = *&v97[4 * (v59 ^ 0xC3)];
  v151 = *&v97[4 * v413];
  LODWORD(v50) = *&v97[4 * (*(v38 - 176) ^ 0xC9)];
  *(v38 - 176) = *&v97[4 * v380];
  *(v38 - 184) = *&v97[4 * (*(v38 - 140) ^ 0x6A)];
  v485 = *&v97[4 * (v392 ^ 0xF9)];
  v152 = *&v97[4 * (*(v38 - 152) ^ 0x1C)];
  LODWORD(v398) = *&v97[4 * v397];
  v153 = *&v97[4 * HIDWORD(v387)];
  v459 = *&v97[4 * v384];
  LODWORD(v393) = *&v97[4 * (*(v38 - 164) ^ 0x33)];
  v488 = *&v97[4 * v411];
  *(v38 - 164) = *&v97[4 * HIDWORD(v373)];
  HIDWORD(v387) = *&v97[4 * (*(v38 - 160) ^ 0xB)];
  *(v38 - 160) = *&v97[4 * (*(v38 - 128) ^ 0x45)];
  *(v38 - 152) = *&v97[4 * v149];
  v154 = v510 + 514447336;
  HIDWORD(v409) = v401 + 514447336;
  HIDWORD(v400) = v418 + 514447336;
  v155 = v416 + 514447336;
  LODWORD(v417) = *(v38 - 256) + 514447336;
  HIDWORD(v417) = v40 - ((2 * v40) & 0x3D53AFD0) + 514447336;
  LODWORD(v84) = (HIDWORD(v375) - 1944767967) ^ v44 ^ *(v38 - 132) ^ 0xC38F08C7;
  LODWORD(v58) = v50 ^ (-1974868763 * v143 - 33878693) ^ 0xADE18B96 ^ (v527 + 514447336);
  LODWORD(v99) = *(v38 - 148);
  v156 = *(&off_1F2870B00 + v99 - 259) - 4;
  v157 = *(&off_1F2870B00 + (v99 & 0x2DC52E59)) - 8;
  v158 = *(&off_1F2870B00 + (v99 ^ 0x1F8)) - 12;
  v159 = (((v157[*(v38 - 111) ^ 0xD5] - 19) ^ 0xED) << 16) | ((v158[*(v38 - 112) ^ 1] ^ 0x42) << 24);
  v160 = ((v156[*(v38 - 102) ^ 0x49] ^ 0x30) << 8) & 0xFF00FFFF | (((v157[*(v38 - 103) ^ 0xB3] - 19) ^ 0x59) << 16);
  v161 = (((v157[*(v38 - 99) ^ 0xDLL] - 19) ^ 0xA9) << 16) | ((v158[*(v38 - 100) ^ 0xCALL] ^ 0xD0) << 24);
  v162 = *(v38 - 107);
  LODWORD(v50) = ((v156[*(v38 - 106) ^ 0xD5] ^ 0x13) << 8) | ((v158[*(v38 - 108) ^ 0xC2] ^ 0x88888888) << 24);
  *(v38 - 240) = v157;
  *(v38 - 232) = v156;
  v163 = *(&off_1F2870B00 + (v99 ^ 0x1D5)) - 8;
  v164 = v161 & 0xFFFFFF00 | ((v156[*(v38 - 98) ^ 0xC6] ^ 0x6D) << 8) | (53 * v163[*(v38 - 97) ^ 0xCBLL] + 33) ^ 0x79;
  v165 = v159 & 0xFFFFFF00 | ((v156[*(v38 - 110) ^ 0xE7] ^ 0x89) << 8) | (53 * v163[*(v38 - 109) ^ 0x8ALL] + 33) ^ 0xC9;
  LODWORD(v50) = v50 & 0xFF00FF00 | (((v157[v162 ^ 0x45] - 19) ^ 0x16) << 16) | (53 * v163[*(v38 - 105) ^ 0xB9] + 33) ^ 0x3C;
  v166 = *(v38 - 101) ^ 6;
  *(v38 - 256) = v163;
  v167 = v160 & 0xFFFFFF00 | (53 * v163[v166] + 33) ^ 0x87;
  v168 = *(v38 - 104) ^ 0x8ALL;
  *(v38 - 248) = v158;
  v169 = v167 | ((v158[v168] ^ 0xAF) << 24);
  *(v38 - 140) = v165 ^ 0x37373737;
  *(v38 - 136) = v164 ^ 0x37373737;
  *(v38 - 132) = v50 ^ 0x37373737;
  *(v38 - 144) = v169 ^ 0x37373737;
  v525 = (HIDWORD(v393) + 514447336) ^ v152 ^ v524;
  v520 = (v516 + 514447336) ^ v150 ^ v519;
  v517 = (v513 + 514447336) ^ v62 ^ v406;
  v514 = v507 ^ v375;
  v511 = HIDWORD(v378) ^ v151 ^ v456 ^ HIDWORD(v406);
  v508 = v154 ^ HIDWORD(v376);
  LODWORD(v158) = v503 - ((2 * v503) & 0x2DEB28);
  v504 = (v501 - 1944767967) ^ HIDWORD(v403);
  v502 = (v498 - 1944767967) ^ HIDWORD(v380);
  *(v38 - 128) = (((*(v38 - 172) ^ 0x5E8F7F2D) + 1978285736) ^ ((*(v38 - 172) ^ 0x71D8DD81) + 1522375692) ^ ((*(v38 - 172) ^ 0xE4045943) - 815720246)) - 1201850375;
  LODWORD(v163) = v489 ^ v496 ^ 0xB9EF8AB;
  v499 = v491 ^ v163 ^ 0xB7778D02;
  v497 = v489 ^ v496 ^ 0xB530938F;
  v495 = v494 ^ v163 ^ 0xB2CF6573;
  v493 = v492 ^ v489 ^ 0xD960783;
  v490 = v488 ^ v155 ^ v476;
  HIDWORD(v486) = v483 ^ (v376 - 1944767967);
  LODWORD(v486) = v485 ^ (v396 + 514447336);
  HIDWORD(v481) = *(v38 - 220) ^ (v387 - 1944767967) ^ v448;
  LODWORD(v481) = (v386 - 1944767967) ^ v474;
  HIDWORD(v477) = v398 ^ v463 ^ v478 ^ HIDWORD(v420);
  LODWORD(v477) = v459 ^ HIDWORD(v428) ^ (v390 + 514447336);
  HIDWORD(v472) = v393 ^ HIDWORD(v400);
  LODWORD(v472) = HIDWORD(v398) ^ v471;
  HIDWORD(v467) = v468 ^ (v437 - 1944767967);
  LODWORD(v467) = v425 ^ (v373 - 1944767967) ^ v466;
  HIDWORD(v462) = HIDWORD(v387) ^ v417;
  LODWORD(v462) = v451 ^ *(v38 - 164) ^ v431 ^ v461;
  HIDWORD(v457) = v428 ^ v436;
  LODWORD(v457) = HIDWORD(v413) ^ (v522 + 514447336);
  v170 = *(v38 - 200);
  HIDWORD(v453) = v440 ^ (v442 + 514447336) ^ v455;
  LODWORD(v453) = *(v38 - 180) ^ v452 ^ v446;
  HIDWORD(v449) = *(v38 - 160) ^ (v64 + 514447336);
  LODWORD(v449) = HIDWORD(v425) ^ v403 ^ v409;
  HIDWORD(v443) = *(v38 - 152) ^ HIDWORD(v417);
  LODWORD(v443) = *(v38 - 168) ^ (v142 - 1944767967) ^ v433;
  HIDWORD(v438) = *(v38 - 176) ^ HIDWORD(v409) ^ *(v38 - 156);
  LODWORD(v438) = *(v38 - 184) ^ (v400 + 514447336);
  *(v38 - 220) = v58;
  LODWORD(v156) = *(v38 - 120);
  LODWORD(v434) = v158 + 1504660;
  v171 = *(v38 - 124);
  HIDWORD(v434) = 46032142 - v58 - v84;
  HIDWORD(a34) = HIDWORD(v434) ^ v84;
  *(v38 - 120) = v156;
  *(v38 - 148) = *(v38 - 128) < 0x9893F25F;
  v172 = (v170 + v156);
  v174 = *(v38 - 248);
  v173 = *(v38 - 240);
  LOBYTE(v157) = *(v173 + (v172[5] ^ 0x87));
  LOBYTE(v158) = v172[4];
  *(v38 - 184) = 0;
  *(v38 - 180) = (v171 - 180) | 0x72;
  LODWORD(v158) = *(v174 + (((v171 + 76) | 0x72) ^ v158 ^ 0xF8u));
  *(v38 - 160) = v171 + 67;
  LODWORD(v163) = *(v38 - 120) | (v171 + 67) ^ 0x171;
  *(v38 - 152) = v163;
  v175 = *(v38 - 232);
  v176 = *(v38 - 256);
  v177 = (((v157 - 19) ^ 0x74) << 16) | ((v158 ^ 0x98) << 24) | ((*(v175 + (v172[6] ^ 0xE2)) ^ 0x4F) << 8) | (53 * *(v176 + (v172[7] ^ 0xBFLL)) + 33) ^ 0xFA;
  v178 = ((53 * *(v176 + (v172[15] ^ 0x3CLL)) + 33) ^ 0x68 | ((*(v175 + (*(v170 + v163) ^ 8)) ^ 0xB) << 8)) & 0xFF00FFFF | ((*(v174 + (v172[12] ^ 0xBDLL)) ^ 0xB0) << 24) | (((*(v173 + (v172[13] ^ 0xCALL)) - 19) ^ 0xFD) << 16);
  v179 = (53 * *(v176 + (v172[3] ^ 0x19)) + 33) ^ 0x38 | ((*(v174 + (*v172 ^ 0x50)) ^ 0xAD) << 24) | (((*(v173 + (v172[1] ^ 0x1ELL)) - 19) ^ 0x68) << 16) | ((*(v175 + (v172[2] ^ 6)) ^ 0x77) << 8);
  v180 = ((*(v174 + v172[8]) ^ 0x93) << 24) | (((*(v173 + (v172[9] ^ 0xB0)) - 19) ^ 0x86) << 16) | ((*(v175 + (v172[10] ^ 0x42)) ^ 0x8A) << 8) | (53 * *(v176 + (v172[11] ^ 0x60)) + 33) ^ 0xDA;
  if ((((53 * *(v176 + (v172[7] ^ 0xBFLL)) + 33) ^ 0xFA) & 2) != 0)
  {
    v181 = -2;
  }

  else
  {
    v181 = 2;
  }

  *(v38 - 172) = v177;
  *(v38 - 168) = v178;
  v182 = v499 ^ v178;
  v183 = v497 ^ (v181 + v177);
  *(v38 - 164) = v180;
  *(v38 - 176) = v179;
  v184 = *(&off_1F2870B00 + v171 - 277) - 4;
  v185 = *&v184[4 * ((v495 ^ v180) >> 8)];
  HIDWORD(v187) = v185 ^ 0x2F4F;
  LODWORD(v187) = v185 ^ 0x7B058000;
  v186 = v187 >> 14;
  v188 = *(&off_1F2870B00 + v171 - 297) - 12;
  v189 = *&v188[4 * HIBYTE(v183)];
  v190 = *&v184[4 * ((v493 ^ v179) >> 8)];
  HIDWORD(v187) = v190 ^ 0x2F4F;
  LODWORD(v187) = v190 ^ 0x7B058000;
  *(v38 - 124) = v171;
  v191 = *(&off_1F2870B00 + (v171 ^ 0x141)) - 12;
  v192 = (-21582785 * *&v191[4 * (v495 ^ v180)] - 1964259703) ^ (v189 - 638147894);
  v193 = (-21582785 * *&v191[4 * v183] - 1964259703) ^ v186;
  v194 = *(&off_1F2870B00 + (v171 ^ 0x15C)) - 12;
  v195 = (*&v188[4 * ((v495 ^ v180) >> 24)] - 638147894) ^ (v187 >> 14);
  v196 = *&v194[4 * BYTE2(v183)];
  v197 = *&v184[4 * BYTE1(v183)];
  HIDWORD(v187) = v197 ^ 0x2F4F;
  LODWORD(v187) = v197 ^ 0x7B058000;
  v198 = (v195 + 1504660 - ((2 * v195) & 0x2DEB28)) ^ v196 ^ (-21582785 * *&v191[4 * v182] - 1964259703);
  v199 = (*&v188[4 * HIBYTE(v182)] - 638147894) ^ (v187 >> 14);
  v200 = *&v194[4 * BYTE2(v182)];
  v201 = *&v184[4 * BYTE1(v182)];
  HIDWORD(v187) = v201 ^ 0x2F4F;
  LODWORD(v187) = v201 ^ 0x7B058000;
  v202 = v199 ^ (-21582785 * *&v191[4 * (v493 ^ v179)] - 1964259703);
  v203 = *&v194[4 * ((v495 ^ v180) >> 16)];
  v204 = HIDWORD(a34) ^ (v198 + HIDWORD(v434) - 2 * (v198 & HIDWORD(v434)));
  v205 = v420 ^ v378 ^ v200 ^ (*&v188[4 * ((v493 ^ v179) >> 24)] - 638147894) ^ 0x8E1E9161 ^ (v193 + 1504660 - ((2 * v193) & 0x2DEB28));
  v206 = v490 ^ *&v194[4 * ((v493 ^ v179) >> 16)] ^ (v187 >> 14) ^ (v192 + 1504660 - ((2 * v192) & 0x2DEB28)) ^ 0x7A8BED94;
  v207 = HIDWORD(v486) ^ v203 ^ 0x342D1067 ^ (v202 + 1504660 - ((2 * v202) & 0x2DEB28));
  v208 = *&v184[4 * ((v204 ^ 0xAB13) >> 8)];
  HIDWORD(v187) = v208 ^ 0x2F4F;
  LODWORD(v187) = v208 ^ 0x7B058000;
  v209 = (v187 >> 14) ^ (*&v188[4 * HIBYTE(v205)] - 638147894);
  v210 = *&v188[4 * HIBYTE(v206)];
  v211 = v209 + 1504660 - ((2 * v209) & 0x2DEB28);
  v212 = *&v184[4 * ((WORD2(v486) ^ v203 ^ 0x1067 ^ (v202 - 2668 - ((2 * v202) & 0xEB28))) >> 8)];
  HIDWORD(v187) = v212 ^ 0x2F4F;
  LODWORD(v187) = v212 ^ 0x7B058000;
  v213 = v187 >> 14;
  v214 = *&v188[4 * ((v204 ^ 0xC04AB13u) >> 24)];
  v215 = (-21582785 * *&v191[4 * v205] - 1964259703) ^ (*&v188[4 * HIBYTE(v207)] - 638147894);
  v216 = *&v184[4 * BYTE1(v205)];
  HIDWORD(v187) = v216 ^ 0x2F4F;
  LODWORD(v187) = v216 ^ 0x7B058000;
  v217 = v187 >> 14;
  v218 = *&v184[4 * BYTE1(v206)];
  HIDWORD(v187) = v218 ^ 0x2F4F;
  LODWORD(v187) = v218 ^ 0x7B058000;
  v219 = *&v194[4 * BYTE2(v205)];
  v220 = v525 ^ *&v194[4 * BYTE2(v207)] ^ (-21582785 * *&v191[4 * v206] - 1964259703) ^ v211;
  v221 = -21582785 * *&v191[4 * v207] - 1964259703;
  v222 = v486 ^ *&v194[4 * (BYTE2(v204) ^ 4)] ^ (v187 >> 14) ^ 0xD9D684A ^ (v215 + 1504660 - ((2 * v215) & 0x2DEB28));
  v223 = HIDWORD(v481) ^ v219 ^ (v210 - 636643234 - ((2 * v210 + 2966932) & 0x2DEB28)) ^ v213 ^ 0x87DD46DC ^ (-21582785 * *&v191[4 * (v204 ^ 0x33)] - 1964259703);
  v224 = v481 ^ *&v194[4 * BYTE2(v206)] ^ v221 ^ v217 ^ 0x96521C3F ^ (v214 - 636643234 - ((2 * v214 + 2966932) & 0x2DEB28));
  v225 = *&v184[4 * ((v220 ^ 0xB36B) >> 8)];
  HIDWORD(v187) = v225 ^ 0x2F4F;
  LODWORD(v187) = v225 ^ 0x7B058000;
  v226 = v187 >> 14;
  v227 = *&v184[4 * BYTE1(v222)];
  HIDWORD(v187) = v227 ^ 0x2F4F;
  LODWORD(v187) = v227 ^ 0x7B058000;
  v228 = *&v184[4 * BYTE1(v223)];
  v229 = -21582785 * *&v191[4 * v223] - 1964259703;
  v230 = (*&v188[4 * HIBYTE(v223)] - 638147894) ^ (v187 >> 14);
  HIDWORD(v187) = v228 ^ 0x2F4F;
  LODWORD(v187) = v228 ^ 0x7B058000;
  v231 = (-21582785 * *&v191[4 * v222] - 1964259703) ^ v226;
  v232 = v230 ^ (-21582785 * *&v191[4 * v224] - 1964259703);
  v233 = (*&v188[4 * HIBYTE(v222)] - 638147894) ^ (v187 >> 14);
  v234 = *&v184[4 * BYTE1(v224)];
  HIDWORD(v187) = v234 ^ 0x2F4F;
  LODWORD(v187) = v234 ^ 0x7B058000;
  v235 = v233 ^ (-21582785 * *&v191[4 * (v220 ^ 0x6B)] - 1964259703);
  v236 = *&v188[4 * (HIBYTE(v220) ^ 0xEE)] - 638147894;
  v237 = (HIDWORD(v396) + 514447336) ^ v153 ^ v382 ^ *&v194[4 * ((v220 ^ 0x2F7BB36B) >> 16)] ^ (v232 + 1504660 - ((2 * v232) & 0x2DEB28));
  v238 = HIDWORD(v477) ^ *&v194[4 * BYTE2(v224)] ^ 0x98F52094 ^ (v235 + 1504660 - ((2 * v235) & 0x2DEB28));
  v239 = v477 ^ *&v194[4 * BYTE2(v223)] ^ (*&v188[4 * HIBYTE(v224)] - 638147894) ^ 0xD8A932B2 ^ (v231 + 1504660 - ((2 * v231) & 0x2DEB28));
  BYTE2(v202) = BYTE2(v237) ^ 0x6F;
  v240 = HIDWORD(v472) ^ *&v194[4 * BYTE2(v222)] ^ v236 ^ 0xDBC82169 ^ (((v187 >> 14) ^ v229) + 1504660 - ((2 * ((v187 >> 14) ^ v229)) & 0x2DEB28));
  v241 = *&v184[4 * ((v237 ^ 0x9E59) >> 8)];
  v242 = *&v184[4 * BYTE1(v240)];
  HIDWORD(v187) = v241 ^ 0x2F4F;
  LODWORD(v187) = v241 ^ 0x7B058000;
  v243 = v187 >> 14;
  HIDWORD(v187) = v242 ^ 0x2F4F;
  LODWORD(v187) = v242 ^ 0x7B058000;
  v244 = (-21582785 * *&v191[4 * v239] - 1964259703) ^ (*&v188[4 * ((v237 ^ 0xD16F9E59) >> 24)] - 638147894) ^ (*&v184[4 * BYTE1(v238)] >> 14) ^ (*&v184[4 * BYTE1(v238)] << 18) ^ 0xBD3DEC16;
  v245 = (*&v188[4 * HIBYTE(v238)] - 638147894) ^ v243 ^ (-21582785 * *&v191[4 * v240] - 1964259703);
  v246 = (v187 >> 14) ^ (*&v188[4 * HIBYTE(v239)] - 638147894) ^ (-21582785 * *&v191[4 * v238] - 1964259703);
  v247 = *&v191[4 * (v237 ^ 0x79)];
  v248 = *&v194[4 * BYTE2(v239)];
  v249 = *&v184[4 * BYTE1(v239)];
  HIDWORD(v187) = v249 ^ 0x2F4F;
  LODWORD(v187) = v249 ^ 0x7B058000;
  v250 = v520 ^ v248 ^ (v245 + 1504660 - ((2 * v245) & 0x2DEB28));
  v251 = v250 ^ 0xE0349DAE;
  v252 = v472 ^ *&v194[4 * BYTE2(v202)] ^ 0xF4361671 ^ (v246 + 1504660 - ((2 * v246) & 0x2DEB28));
  v253 = v517 ^ *&v194[4 * BYTE2(v238)] ^ (*&v188[4 * HIBYTE(v240)] - 638147894) ^ (v187 >> 14) ^ (-1964259703 - 2106197193 * v247 + 2084614408 * v247 + 1504660 - 2 * ((-1964259703 - 2106197193 * v247 + 2084614408 * v247) & 0x16F597 ^ (-1964259703 - 2106197193 * v247) & 3));
  v254 = HIDWORD(v467) ^ *&v194[4 * BYTE2(v240)] ^ 0x7E1E5010 ^ (v244 + 1504660 - ((2 * v244) & 0x2DEB28));
  v255 = (v250 ^ 0xE0349DAE) >> 24;
  v256 = (-21582785 * *&v191[4 * (v250 ^ 0x8E)] - 1964259703) ^ (*&v188[4 * HIBYTE(v252)] - 638147894);
  v257 = *&v188[4 * v255];
  v258 = v256 + 1504660 - ((2 * v256) & 0x2DEB28);
  v259 = *&v184[4 * BYTE1(v251)];
  HIDWORD(v187) = v259 ^ 0x2F4F;
  LODWORD(v187) = v259 ^ 0x7B058000;
  v260 = v187 >> 14;
  v261 = v257 - 636643234 - ((2 * v257 + 2966932) & 0x2DEB28);
  v262 = *&v184[4 * BYTE1(v254)];
  HIDWORD(v187) = v262 ^ 0x2F4F;
  LODWORD(v187) = v262 ^ 0x7B058000;
  v263 = v187 >> 14;
  v264 = *&v184[4 * ((v253 ^ 0x500A) >> 8)];
  v265 = v260 ^ (-21582785 * *&v191[4 * v252] - 1964259703) ^ (*&v188[4 * HIBYTE(v254)] - 638147894);
  HIDWORD(v187) = v264 ^ 0x2F4F;
  LODWORD(v187) = v264 ^ 0x7B058000;
  v266 = v187 >> 14;
  v267 = *&v184[4 * BYTE1(v252)];
  HIDWORD(v187) = v267 ^ 0x2F4F;
  LODWORD(v187) = v267 ^ 0x7B058000;
  v268 = *&v194[4 * BYTE2(v254)];
  v269 = (-21582785 * *&v191[4 * v254] - 1964259703) ^ (*&v188[4 * ((v253 ^ 0x6754500Au) >> 24)] - 638147894) ^ (v187 >> 14);
  v270 = *&v194[4 * BYTE2(v251)];
  v271 = v467 ^ v268 ^ v266 ^ v258 ^ 0x541774FA;
  v272 = HIDWORD(v462) ^ *&v194[4 * ((v253 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v265 + 1504660 - ((2 * v265) & 0x2DEB28));
  v273 = v462 ^ *&v194[4 * BYTE2(v252)] ^ v261 ^ (-21582785 * *&v191[4 * (v253 ^ 0x2A)] - 1964259703) ^ v263 ^ 0xC549E82B;
  v274 = HIDWORD(v457) ^ v270 ^ 0x8EB61C45 ^ (v269 + 1504660 - ((2 * v269) & 0x2DEB28));
  v275 = *&v184[4 * BYTE1(v272)];
  v276 = *&v191[4 * v272];
  HIDWORD(v187) = v275 ^ 0x2F4F;
  LODWORD(v187) = v275 ^ 0x7B058000;
  v277 = (v187 >> 14) + 1504660 - ((2 * (v187 >> 14)) & 0x2DEB28);
  v278 = *&v184[4 * BYTE1(v274)];
  HIDWORD(v187) = v278 ^ 0x2F4F;
  LODWORD(v187) = v278 ^ 0x7B058000;
  v279 = *&v191[4 * (v271 - ((2 * v271) & 0x40)) + 128];
  v280 = (v187 >> 14) ^ (*&v188[4 * HIBYTE(v271)] - 638147894);
  v281 = -21582785 * v279 - 1962755043 - ((2971774 * v279 + 1543442) & 0x2DEB28);
  v282 = -1964259703 - 2106197193 * v276 + 2084614408 * v276 + 1504660 - 2 * ((-1964259703 - 2106197193 * v276 + 2084614408 * v276) & 0x16F597 ^ (-1964259703 - 2106197193 * v276) & 3);
  v283 = *&v184[4 * BYTE1(v271)];
  HIDWORD(v187) = v283 ^ 0x2F4F;
  LODWORD(v187) = v283 ^ 0x7B058000;
  v284 = v187 >> 14;
  v285 = *&v184[4 * BYTE1(v273)];
  HIDWORD(v187) = v285 ^ 0x2F4F;
  LODWORD(v187) = v285 ^ 0x7B058000;
  v286 = v514 ^ *&v194[4 * BYTE2(v273)] ^ v284 ^ (*&v188[4 * HIBYTE(v274)] - 638147894) ^ v282;
  v287 = v457 ^ *&v194[4 * BYTE2(v271)] ^ (*&v188[4 * HIBYTE(v273)] - 638147894) ^ v277 ^ (-21582785 * *&v191[4 * v274] - 1964259703) ^ 0x7C892C4A;
  v288 = HIDWORD(v453) ^ *&v194[4 * BYTE2(v274)] ^ (*&v188[4 * HIBYTE(v272)] - 638147894) ^ (v187 >> 14) ^ 0x190B7FE4 ^ v281;
  v289 = v453 ^ *&v194[4 * BYTE2(v272)] ^ (-21582785 * *&v191[4 * v273] - 1964259703) ^ 0xCFA132BA ^ (v280 + 1504660 - ((2 * v280) & 0x2DEB28));
  v290 = v286 ^ 0x402CF460;
  v291 = (v286 ^ 0x402CF460u) >> 24;
  v292 = *&v184[4 * BYTE1(v287)];
  HIDWORD(v187) = v292 ^ 0x2F4F;
  LODWORD(v187) = v292 ^ 0x7B058000;
  v293 = v187 >> 14;
  v294 = *&v184[4 * BYTE1(v289)];
  HIDWORD(v187) = v294 ^ 0x2F4F;
  LODWORD(v187) = v294 ^ 0x7B058000;
  v295 = *&v191[4 * (v286 ^ 0x40)];
  v296 = *&v194[4 * BYTE2(v289)];
  v297 = HIBYTE(v289);
  v298 = (-21582785 * *&v191[4 * v288] - 1964259703) ^ (v187 >> 14) ^ (*&v188[4 * v291] - 638147894);
  v299 = (*&v188[4 * HIBYTE(v288)] - 638147894) ^ v293;
  v300 = *&v184[4 * BYTE1(v288)];
  HIDWORD(v187) = v300 ^ 0x2F4F;
  LODWORD(v187) = v300 ^ 0x7B058000;
  v301 = v187 >> 14;
  v302 = v299 ^ (-21582785 * *&v191[4 * v289] - 1964259703);
  v303 = *&v194[4 * BYTE2(v290)];
  v304 = (-21582785 * *&v191[4 * v287] - 1964259703) ^ (*&v188[4 * v297] - 638147894);
  v305 = *&v188[4 * HIBYTE(v287)] - 638147894;
  v306 = *&v184[4 * BYTE1(v290)];
  HIDWORD(v187) = v306 ^ 0x2F4F;
  LODWORD(v187) = v306 ^ 0x7B058000;
  v307 = HIDWORD(v449) ^ *&v194[4 * BYTE2(v287)] ^ 0x2655A6B2 ^ (v298 + 1504660 - ((2 * v298) & 0x2DEB28));
  v308 = v449 ^ *&v194[4 * BYTE2(v288)] ^ (v187 >> 14) ^ (v304 + 1504660 - ((2 * v304) & 0x2DEB28)) ^ 0x354150DE;
  v309 = HIDWORD(v443) ^ v296 ^ v301 ^ v305 ^ 0x6005D395 ^ (-1964259703 - 2106197193 * v295 + 2084614408 * v295 + 1504660 - 2 * ((-1964259703 - 2106197193 * v295 + 2084614408 * v295) & 0x16F596 ^ (-1964259703 - 2106197193 * v295) & 2));
  v310 = v443 ^ v303 ^ 0xD6EF510D;
  v311 = *&v184[4 * ((WORD2(v443) ^ v296 ^ v301 ^ v305 ^ 0xD395 ^ (-14711 - 1225 * v295 - 20216 * v295 - 2668 - 2 * ((-14711 - 1225 * v295 - 20216 * v295) & 0xF596 ^ (-14711 - 1225 * v295) & 2))) >> 8)];
  HIDWORD(v187) = v311 ^ 0x2F4F;
  LODWORD(v187) = v311 ^ 0x7B058000;
  v312 = v310 ^ (v302 + 1504660 - ((2 * v302) & 0x2DEB28));
  v313 = (v187 >> 14) + 1504660 - ((2 * (v187 >> 14)) & 0x2DEB28);
  v314 = *&v188[4 * HIBYTE(v307)];
  v315 = (-21582785 * *&v191[4 * v307] - 1964259703) ^ (*&v188[4 * HIBYTE(v309)] - 638147894);
  v316 = -21582785 * *&v191[4 * v309] - 1962755043 - ((2971774 * *&v191[4 * v309] + 1543442) & 0x2DEB28);
  v317 = *&v184[4 * BYTE1(v308)];
  HIDWORD(v187) = v317 ^ 0x2F4F;
  LODWORD(v187) = v317 ^ 0x7B058000;
  v318 = v187 >> 14;
  v319 = *&v184[4 * BYTE1(v307)];
  HIDWORD(v187) = v319 ^ 0x2F4F;
  LODWORD(v187) = v319 ^ 0x7B058000;
  v320 = v187 >> 14;
  v321 = *&v184[4 * BYTE1(v312)];
  HIDWORD(v187) = v321 ^ 0x2F4F;
  LODWORD(v187) = v321 ^ 0x7B058000;
  v322 = *&v194[4 * BYTE2(v308)] ^ *(v38 - 220) ^ (v187 >> 14) ^ (v315 + 1504660 - ((2 * v315) & 0x2DEB28));
  v323 = v511 ^ (v314 - 636643234 - ((2 * v314 + 2966932) & 0x2DEB28)) ^ v318;
  v324 = *&v188[4 * HIBYTE(v308)] - 638147894;
  BYTE2(v308) = BYTE2(v322) ^ 0x1C;
  v325 = v323 ^ (-21582785 * *&v191[4 * v312] - 1964259703) ^ *&v194[4 * BYTE2(v309)];
  v326 = HIDWORD(v438) ^ *&v194[4 * BYTE2(v307)] ^ (*&v188[4 * HIBYTE(v312)] - 638147894) ^ (-21582785 * *&v191[4 * v308] - 1964259703) ^ 0xDE12593A;
  v327 = v438 ^ *&v194[4 * BYTE2(v312)] ^ v324 ^ v320 ^ 0x8D19C5A6 ^ v316;
  BYTE2(v316) = BYTE2(v325) ^ 0x64;
  v328 = *&v184[4 * BYTE1(v327)];
  HIDWORD(v187) = v328 ^ 0x2F4F;
  LODWORD(v187) = v328 ^ 0x7B058000;
  v329 = *&v191[4 * (v322 ^ 0x30)];
  v330 = v326 ^ v313;
  v331 = (v187 >> 14) + 1504660 - ((2 * (v187 >> 14)) & 0x2DEB28);
  v332 = *&v184[4 * ((v322 ^ 0x5930) >> 8)];
  HIDWORD(v187) = v332 ^ 0x2F4F;
  LODWORD(v187) = v332 ^ 0x7B058000;
  v333 = (v187 >> 14) + 1504660 - ((2 * (v187 >> 14)) & 0x2DEB28);
  v334 = (*&v188[4 * (HIBYTE(v322) ^ 0x50)] - 638147894) ^ (-21582785 * *&v191[4 * (v325 ^ 0xAF)] - 1964259703);
  v335 = *&v184[4 * ((v325 ^ 0xCCAF) >> 8)];
  HIDWORD(v187) = v335 ^ 0x2F4F;
  LODWORD(v187) = v335 ^ 0x7B058000;
  v336 = v187 >> 14;
  v337 = *&v188[4 * HIBYTE(v327)];
  v338 = *&v188[4 * HIBYTE(v330)];
  LODWORD(v188) = *&v188[4 * (HIBYTE(v325) ^ 0x6A)];
  v339 = *&v184[4 * BYTE1(v330)];
  HIDWORD(v187) = v339 ^ 0x2F4F;
  LODWORD(v187) = v339 ^ 0x7B058000;
  LODWORD(v184) = v508 ^ *&v194[4 * BYTE2(v316)] ^ (v338 - 638147894) ^ (-21582785 * *&v191[4 * v327] - 1964259703) ^ v333;
  v340 = (v337 - 638147894) ^ v434 ^ v336 ^ *&v194[4 * BYTE2(v330)] ^ (-21582785 * v329 - 1964259703);
  v341 = v504 ^ *&v194[4 * BYTE2(v308)] ^ (-21582785 * *&v191[4 * v330] - 1964259703) ^ (v188 - 638147894) ^ v331;
  v342 = v502 ^ *&v194[4 * BYTE2(v327)] ^ (v187 >> 14) ^ (v334 + 1504660 - ((2 * v334) & 0x2DEB28));
  v343 = v342 ^ 0x644667A6;
  LODWORD(v194) = v341 ^ 0x7EC2C88;
  LODWORD(v191) = v184 ^ 0x9A25D878;
  v344 = *(v38 - 124);
  v345 = *(&off_1F2870B00 + v344 - 158) - 8;
  LODWORD(v188) = *&v345[4 * ((v342 ^ 0x644667A6u) >> 24)];
  HIDWORD(v187) = v188 ^ 0x30;
  LODWORD(v187) = v188 ^ 0xFD52900;
  v346 = *(&off_1F2870B00 + v344 - 161) - 8;
  *(v38 - 156) = *&v346[4 * ((v341 ^ 0x7EC2C88u) >> 16)];
  v347 = *(&off_1F2870B00 + v344 - 209) - 12;
  v348 = (v194 + 478009300 - ((2 * v194) & 0x1A8)) ^ *&v347[4 * (v341 ^ 0xDB)] ^ (v187 >> 7);
  v349 = *&v346[4 * ((v342 ^ 0x644667A6u) >> 16)];
  v350 = ((2 * v349) & 0xBB708860 ^ 0x55CFFFBF) + 852819091 + (((v349 ^ 0x34583805) - 878196741) ^ ((v349 ^ 0x7B0CA65) - 129026661) ^ ((v349 ^ 0xE6F44A02) + 420197886));
  v351 = (v184 ^ 0x78) + 478009300 - ((2 * (v184 ^ 0x9A25D878)) & 0x1A8);
  v352 = v348 - 719538078 - ((2 * v348) & 0xAA3970C4);
  v353 = *&v346[4 * ((v340 ^ 0xAD089B63) >> 16)];
  LODWORD(v346) = *&v346[4 * ((v184 ^ 0x9A25D878) >> 16)];
  v354 = *(&off_1F2870B00 + v344 - 189) - 12;
  v355 = ((v342 ^ 0xA6) + 478009300 - ((2 * (v342 ^ 0x644667A6)) & 0x1A8)) ^ (BYTE1(v194) - 777399989 - ((v194 >> 7) & 0x96)) ^ *&v347[4 * (v342 ^ 0xF5)] ^ *&v354[4 * (BYTE1(v194) ^ 0xF5)];
  v356 = *&v345[4 * ((v184 ^ 0x9A25D878) >> 24)];
  HIDWORD(v187) = v356 ^ 0x30;
  LODWORD(v187) = v356 ^ 0xFD52900;
  v357 = ((v340 ^ 0x9B63) >> 8);
  v358 = v357 - 777399989 - (((v340 ^ 0xAD089B63) >> 7) & 0x96);
  v359 = (v187 >> 7) - 719538078 - ((2 * (v187 >> 7)) & 0xAA3970C4);
  v360 = *&v345[4 * (HIBYTE(v340) ^ 0xBD)];
  HIDWORD(v187) = v360 ^ 0x30;
  LODWORD(v187) = v360 ^ 0xFD52900;
  v361 = v187 >> 7;
  LODWORD(v184) = *&v347[4 * (v184 ^ 0x2B)];
  v362 = *&v347[4 * (v340 ^ 0x30)];
  v363 = *&v354[4 * (v357 ^ 0xF5)];
  v364 = *&v354[4 * (BYTE1(v343) ^ 0xF5)];
  LODWORD(v354) = *&v354[4 * (BYTE1(v191) ^ 0xF5)];
  LODWORD(v194) = *&v345[4 * ((v341 ^ 0x7EC2C88u) >> 24)];
  LODWORD(v345) = BYTE1(v191) - 777399989 - ((v191 >> 7) & 0x96);
  HIDWORD(v187) = v194 ^ 0x30;
  LODWORD(v187) = v194 ^ 0xFD52900;
  LODWORD(v191) = *(v38 - 144) ^ *(v38 - 208) ^ v346 ^ v361;
  v365 = *(v38 - 200);
  LODWORD(v191) = v191 ^ (v355 - 719538078 - ((2 * v355) & 0xAA3970C4));
  LODWORD(v194) = *(v38 - 140) ^ *(v38 - 216) ^ v358 ^ v351 ^ v184 ^ v363 ^ (v187 >> 7) ^ v350;
  v366 = *(v38 - 136) ^ *(v38 - 212) ^ v345 ^ v353 ^ v354 ^ v352;
  LODWORD(v188) = *(v38 - 132) ^ *(v38 - 204) ^ ((v340 ^ 0x63) + 478009300 - ((2 * (v340 ^ 0xAD089B63)) & 0x1A8)) ^ (BYTE1(v343) - 777399989 - ((v343 >> 7) & 0x96)) ^ *(v38 - 156) ^ v364 ^ v362 ^ v359;
  v367 = *(&off_1F2870B00 + v344 - 136) - 12;
  v172[3] = v367[(*(v38 - 140) ^ *(v38 - 216) ^ v358 ^ v351 ^ v184 ^ v363 ^ (v187 >> 7) ^ v350) ^ 0xDFLL] ^ 0x35;
  v368 = *(&off_1F2870B00 + (v344 ^ 0x12C)) - 4;
  v172[4] = (v368[(v188 >> 24) ^ 0x2CLL] - 65) ^ 0x78;
  *v172 = (v368[(v194 >> 24) ^ 0x57] - 65) ^ 0xC8;
  v369 = *(&off_1F2870B00 + (v344 ^ 0x136)) - 4;
  v172[13] = (v369[BYTE2(v366) ^ 0x5CLL] - 111) ^ 0xC7;
  v172[11] = v367[v191 ^ 0x46] ^ 0x71;
  v370 = *(&off_1F2870B00 + (v344 ^ 0x121)) - 12;
  *(v365 + *(v38 - 152)) = ((BYTE1(v366) ^ 0xEE) - ((2 * (BYTE1(v366) ^ 0xEE)) & 0x55) - 86) ^ 0x75 ^ v370[BYTE1(v366)];
  v172[2] = ((BYTE1(v194) ^ 3) - ((2 * (BYTE1(v194) ^ 3)) & 0x55) - 86) ^ 0x8B ^ v370[BYTE1(v194) ^ 0xE6];
  v172[10] = ((BYTE1(v191) ^ 0xAB) - ((2 * (BYTE1(v191) ^ 0xAB)) & 0x55) - 86) ^ 0x6D ^ v370[BYTE1(v191) ^ 0x84];
  v172[15] = v367[v366 ^ 0x11] ^ 0xC6;
  v172[5] = (v369[BYTE2(v188) ^ 0x44] - 111) ^ 0xE2;
  v172[8] = (v368[(v191 >> 24) ^ 0x26] - 65) ^ 0xA2;
  v172[7] = v367[v188 ^ 0x3DLL] ^ 0xCC;
  v172[12] = (v368[BYTE3(v366) ^ 0x44] - 65) ^ 0x23;
  v172[1] = (v369[BYTE2(v194) ^ 0xA3] - 111) ^ 0x17;
  LOBYTE(v370) = (BYTE1(v188) - ((v188 >> 7) & 0x54) - 86) ^ 0xD0 ^ v370[BYTE1(v188) ^ 0x58];
  LODWORD(v188) = *(v38 - 120);
  v172[6] = v370;
  v172[9] = (v369[BYTE2(v191) ^ 0xF8] - 111) ^ 0x90;
  v371 = (v188 - 1735134609) < *(v38 - 128);
  if (*(v38 - 148) != (v188 - 1735134609) < 0x9893F25F)
  {
    v371 = *(v38 - 148);
  }

  HIDWORD(v385) = v376 - 1944767967;
  LODWORD(v387) = v373 - 1944767967;
  LODWORD(v385) = v522 + 514447336;
  LODWORD(v413) = v400 + 514447336;
  return (*(*(v38 - 192) + 8 * ((v371 | (v371 << 7)) ^ v344)))(&off_1F2870B00, v352, v363, v362, v366, 3517567307, v369, v344, a9, a10, v373, v375, v376, v378, v380, v382, v385, v387, v390, v393, v396, v398, v400, v403, v406, v409, v413, v417, v420, v425, v428, a32, a33, a34, v434, v438, v443, v449, v453, v457, v462, v467, v472, v477, v481, v486);
}