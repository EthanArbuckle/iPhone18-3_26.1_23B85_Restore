@interface NSFileManager(TSUTemporaryDirectoryAdditions)
- (uint64_t)tsu_grantUserWritePosixPermissionAtPath:()TSUTemporaryDirectoryAdditions error:;
@end

@implementation NSFileManager(TSUTemporaryDirectoryAdditions)

- (uint64_t)tsu_grantUserWritePosixPermissionAtPath:()TSUTemporaryDirectoryAdditions error:
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v43 = 0;
  v7 = [a1 attributesOfItemAtPath:v6 error:&v43];
  v8 = v43;
  v9 = [v7 fileType];
  v10 = *MEMORY[0x277CCA1E8];
  if (([v9 isEqualToString:*MEMORY[0x277CCA1E8]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CCA1F0]) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CCA1F8]))
  {
    v35 = a4;
    v11 = [v7 filePosixPermissions];
    v12 = MEMORY[0x277CBEAC0];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11 | 0x80];
    v14 = [v12 dictionaryWithObject:v13 forKey:*MEMORY[0x277CCA180]];
    v42 = v8;
    v15 = [a1 setAttributes:v14 ofItemAtPath:v6 error:&v42];
    v16 = v42;

    if (v15)
    {
      if (![v9 isEqualToString:v10])
      {
        v27 = 1;
LABEL_26:
        v8 = v16;
        goto LABEL_27;
      }

      v34 = v9;
      v17 = objc_autoreleasePoolPush();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v37 = 0;
      v18 = [a1 contentsOfDirectoryAtPath:v6 error:&v37];
      v19 = v37;
      v20 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v31 = v17;
        v32 = v16;
        v33 = v7;
        v22 = *v39;
        while (2)
        {
          v23 = 0;
          v24 = v19;
          do
          {
            if (*v39 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v25 = [v6 stringByAppendingPathComponent:*(*(&v38 + 1) + 8 * v23)];
            v36 = v24;
            v26 = [a1 tsu_grantUserWritePosixPermissionAtPath:v25 error:&v36];
            v19 = v36;

            if ((v26 & 1) == 0)
            {
              v19 = v19;

              v27 = 0;
              v16 = v19;
              v7 = v33;
              goto LABEL_18;
            }

            ++v23;
            v24 = v19;
          }

          while (v21 != v23);
          v21 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        v27 = 1;
        v16 = v32;
        v7 = v33;
LABEL_18:
        v17 = v31;
      }

      else
      {
        v27 = 1;
      }

      objc_autoreleasePoolPop(v17);
      v9 = v34;
    }

    else
    {
      v27 = 0;
    }

    if (v35 && (v27 & 1) == 0)
    {
      if (!v16)
      {
        v30 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
        *v35 = v30;

        v27 = 0;
        v8 = 0;
        goto LABEL_27;
      }

      v28 = v16;
      v27 = 0;
      *v35 = v16;
    }

    goto LABEL_26;
  }

  v27 = 1;
LABEL_27:

  return v27;
}

@end