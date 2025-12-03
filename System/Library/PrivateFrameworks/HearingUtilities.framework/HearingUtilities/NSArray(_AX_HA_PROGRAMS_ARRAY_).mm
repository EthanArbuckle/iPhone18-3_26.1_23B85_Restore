@interface NSArray(_AX_HA_PROGRAMS_ARRAY_)
- (id)programThatMatchesProgram:()_AX_HA_PROGRAMS_ARRAY_;
- (void)setProgram:()_AX_HA_PROGRAMS_ARRAY_ withOtherSidePrograms:selected:;
@end

@implementation NSArray(_AX_HA_PROGRAMS_ARRAY_)

- (void)setProgram:()_AX_HA_PROGRAMS_ARRAY_ withOtherSidePrograms:selected:
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [self programThatMatchesProgram:v8];
  v11 = HCLogHearingAids();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Selecting program %@ - %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v68 = __Block_byref_object_copy__7;
  v69 = __Block_byref_object_dispose__7;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__7;
  v65 = __Block_byref_object_dispose__7;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__7;
  v59 = __Block_byref_object_dispose__7;
  v60 = 0;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __77__NSArray__AX_HA_PROGRAMS_ARRAY___setProgram_withOtherSidePrograms_selected___block_invoke;
  v54[3] = &unk_1E85CC8F8;
  v54[4] = &v55;
  v54[5] = buf;
  v54[6] = &v61;
  [v9 enumerateObjectsUsingBlock:v54];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__7;
  v52 = __Block_byref_object_dispose__7;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__7;
  v46 = __Block_byref_object_dispose__7;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__7;
  v40 = __Block_byref_object_dispose__7;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__7;
  v34 = __Block_byref_object_dispose__7;
  v35 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __77__NSArray__AX_HA_PROGRAMS_ARRAY___setProgram_withOtherSidePrograms_selected___block_invoke_2;
  v24 = &unk_1E85CC920;
  v26 = &v30;
  v12 = v10;
  v25 = v12;
  v27 = &v36;
  v28 = &v48;
  v29 = &v42;
  [self enumerateObjectsUsingBlock:&v21];
  if (*(*&buf[8] + 40))
  {
    if ([v12 isStreamOrMixingStream])
    {
      if ([*(*&buf[8] + 40) isStreamOrMixingStream])
      {
        index = [*(*&buf[8] + 40) index];
        if (index != [v12 index])
        {
          [*(*&buf[8] + 40) setIsSelected:0];
          if (!v62[5])
          {
            [v56[5] setIsSelected:1];
          }
        }
      }
    }
  }

  if (!v43[5] && !v49[5])
  {
    goto LABEL_26;
  }

  if ([v12 isMixingStream])
  {
    v14 = v49[5];
    if (v14)
    {
      [v14 setIsSelected:0];
      v15 = v31[5];
      if (v15)
      {
        [v15 setIsSelected:1];
        v16 = v12;
LABEL_28:
        [v16 setIsSelected:{a5, v21, v22, v23, v24}];
        goto LABEL_29;
      }
    }

LABEL_27:
    v16 = v12;
    goto LABEL_28;
  }

  if (([v12 isMixingStream] & 1) == 0 && objc_msgSend(v12, "isStream"))
  {
    v17 = v49[5];
    if (v17)
    {
      [v17 setIsSelected:0];
    }

    v18 = v43[5];
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (!v37[5])
  {
    v18 = v49[5];
    if (!v18)
    {
      if (!v43[5])
      {
        goto LABEL_29;
      }

      [v12 setIsSelected:1];
      a5 = 0;
      v16 = v43[5];
      goto LABEL_28;
    }

LABEL_25:
    [v18 setIsSelected:0];
LABEL_26:
    a5 = 1;
    goto LABEL_27;
  }

  [v12 setIsSelected:1];
  v19 = v43[5];
  if (v19)
  {
    [v19 setIsSelected:0];
  }

LABEL_29:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x1E69E9840];
}

- (id)programThatMatchesProgram:()_AX_HA_PROGRAMS_ARRAY_
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NSArray__AX_HA_PROGRAMS_ARRAY___programThatMatchesProgram___block_invoke;
  v8[3] = &unk_1E85CC948;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end