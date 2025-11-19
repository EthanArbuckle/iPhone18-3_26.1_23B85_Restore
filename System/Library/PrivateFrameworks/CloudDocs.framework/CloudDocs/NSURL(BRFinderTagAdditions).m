@interface NSURL(BRFinderTagAdditions)
- (BOOL)br_setTagNames:()BRFinderTagAdditions error:;
- (uint64_t)br_getTagNames:()BRFinderTagAdditions error:;
@end

@implementation NSURL(BRFinderTagAdditions)

- (uint64_t)br_getTagNames:()BRFinderTagAdditions error:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69673A8] defaultManager];
  v8 = [v7 itemForURL:a1 error:a4];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = [v8 tags];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v8 tags];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * v16) label];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v18 = v11;
    *a3 = v11;
  }

  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)br_setTagNames:()BRFinderTagAdditions error:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 br_physicalURL];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__NSURL_BRFinderTagAdditions__br_setTagNames_error___block_invoke;
  v16[3] = &unk_1E7A14AD0;
  v17 = v6;
  v8 = v6;
  v9 = [v7 fp_withReadWriteAccess:v16];
  if (v9)
  {
    v10 = brc_bread_crumbs("[NSURL(BRFinderTagAdditions) br_setTagNames:error:]", 82);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, 0x90u))
    {
      v15 = "(passed to caller)";
      *buf = 136315906;
      v19 = "[NSURL(BRFinderTagAdditions) br_setTagNames:error:]";
      v20 = 2080;
      if (!a4)
      {
        v15 = "(ignored by caller)";
      }

      v21 = v15;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_error_impl(&dword_1AE2A9000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

@end