@interface GzVCsVtcKNcQqqNF
- (void)MypqGKKWznx4xnYa:(id)a3 l8OCYbP9LFIvnTwG:(unint64_t)a4 ygOPXTiKN0J02x0j:(id)a5;
- (void)MypqGKKWznx4xnYa:(id)a3 ygOPXTiKN0J02x0j:(id)a4;
- (void)t5yVezCKaX2Zrwrw:(id)a3 uXxcS3vcKdsH38zZ:(id)a4;
- (void)vffg4lwI2HftPvpO:(id)a3;
@end

@implementation GzVCsVtcKNcQqqNF

- (void)MypqGKKWznx4xnYa:(id)a3 ygOPXTiKN0J02x0j:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = a4;
  if (v5)
  {
    v21 = +[Lt10zus2DOk3OfFf sharedInstance];
    v6 = [v5 HkbEJeZjAQnItubK];
    v7 = [v5 profileIDs];
    v8 = [v5 TbX4HHO0pTPaerrJ];
    v24 = [v5 BGiN5h2SLMRO6B9R];
    v23 = [v5 rU1LRx5aI44CETG8];
    v22 = [v5 yNHDWo3TCV];
    v20 = [v5 zeXRCfLmM5cdkEtz];
    v9 = [v5 S08uY31jbmOEDLrH];
    v19 = [v5 hostChallenge];
    v10 = [v5 challengeResponse];
    v11 = [v5 seid];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_ygOPXTiKN0J02x0j___block_invoke;
    v26[3] = &unk_1E85EDDD8;
    v27 = v25;
    v18 = v9;
    v12 = v21;
    [v21 Z8aAH7stm0EYhyxg:v6 dhAnc7b9U376IHnX:v7 xz5EHXEN4FjlhJbi:v8 uhVTXyAfCFn7u0Ue:v24 EQUjQp7JcQbqcPcD:v23 A5wDLa5TFdFZlz3A:v22 TJKMyOe6zn5PdGIr:v20 eCqgGM0WcnHOslnr:0 eCszfxdv3kUXvhgV:v18 uWp4aZpP2vLhc04Q:v19 QZYtNpvp0hKd248p:v10 oCwPYmtRv8s31KUH:v11 completion:v26];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 localizedStringForKey:@"empty request" value:&stru_1F56D1DE0 table:0];
    v29[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v12 = [v13 errorWithDomain:@"com.apple.asd.ca" code:-27100 userInfo:v16];

    (*(v25 + 2))(v25, 0, 0, 0xFFFFFFFFLL, v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __54__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_ygOPXTiKN0J02x0j___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (v10 && v9 && !a6)
  {
    v26 = 0;
    v27 = 0;
    bcgsyabc74vz12([v10 bytes], objc_msgSend(v10, "length"), &v27);
    if (v12)
    {
      v13 = v12;
      free(v27);
      v14 = *(a1 + 32);
      v15 = MEMORY[0x1E696ABC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v17 = [v15 errorWithDomain:v16 code:v13 userInfo:0];
      (*(v14 + 16))(v14, 0, 0, 0xFFFFFFFFLL, v17);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = [v18 initWithBytes:v27 length:{objc_msgSend(v11, "length")}];
      free(v27);
      bcgsyabc74vz12([v9 bytes], objc_msgSend(v9, "length"), &v26);
      if (!v19)
      {
        v24 = objc_alloc(MEMORY[0x1E695DEF0]);
        v25 = [v24 initWithBytes:v26 length:{objc_msgSend(v9, "length")}];
        free(v26);
        (*(*(a1 + 32) + 16))();

        goto LABEL_10;
      }

      v20 = v19;
      free(v26);
      v21 = *(a1 + 32);
      v22 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v23 = [v22 errorWithDomain:v17 code:v20 userInfo:0];
      (*(v21 + 16))(v21, 0, 0, 0xFFFFFFFFLL, v23);
    }

LABEL_10:
    goto LABEL_11;
  }

  (*(*(a1 + 32) + 16))();
LABEL_11:
}

- (void)t5yVezCKaX2Zrwrw:(id)a3 uXxcS3vcKdsH38zZ:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[Lt10zus2DOk3OfFf sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__GzVCsVtcKNcQqqNF_t5yVezCKaX2Zrwrw_uXxcS3vcKdsH38zZ___block_invoke;
  v9[3] = &unk_1E85EDE00;
  v10 = v5;
  v8 = v5;
  [v7 ZfE6lVphNUVrZcKx:v6 completion:v9];
}

- (void)MypqGKKWznx4xnYa:(id)a3 l8OCYbP9LFIvnTwG:(unint64_t)a4 ygOPXTiKN0J02x0j:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9 = +[Lt10zus2DOk3OfFf sharedInstance];
    v27 = [v7 HkbEJeZjAQnItubK];
    v22 = [v7 profileIDs];
    v26 = [v7 TbX4HHO0pTPaerrJ];
    v25 = [v7 BGiN5h2SLMRO6B9R];
    v24 = [v7 rU1LRx5aI44CETG8];
    v23 = [v7 yNHDWo3TCV];
    v21 = [v7 zeXRCfLmM5cdkEtz];
    v10 = [v7 S08uY31jbmOEDLrH];
    v11 = [v7 hostChallenge];
    v12 = [v7 challengeResponse];
    [v7 seid];
    v14 = v13 = v8;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __71__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_l8OCYbP9LFIvnTwG_ygOPXTiKN0J02x0j___block_invoke;
    v29[3] = &unk_1E85EDDD8;
    v30 = v13;
    v28 = v9;
    [v9 Z8aAH7stm0EYhyxg:v27 dhAnc7b9U376IHnX:v22 xz5EHXEN4FjlhJbi:v26 uhVTXyAfCFn7u0Ue:v25 EQUjQp7JcQbqcPcD:v24 A5wDLa5TFdFZlz3A:v23 TJKMyOe6zn5PdGIr:v21 eCqgGM0WcnHOslnr:a4 eCszfxdv3kUXvhgV:v10 uWp4aZpP2vLhc04Q:v11 QZYtNpvp0hKd248p:v12 oCwPYmtRv8s31KUH:v14 completion:v29];

    v8 = v13;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [v16 localizedStringForKey:@"empty request" value:&stru_1F56D1DE0 table:0];
    v32[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v19 = [v15 errorWithDomain:@"com.apple.asd.ca" code:-27100 userInfo:v18];

    v28 = v19;
    (*(v8 + 2))(v8, 0, 0, 0, 0xFFFFFFFFLL, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __71__GzVCsVtcKNcQqqNF_MypqGKKWznx4xnYa_l8OCYbP9LFIvnTwG_ygOPXTiKN0J02x0j___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (!a6)
  {
    v26 = 0;
    v27 = 0;
    bcgsyabc74vz12([v10 bytes], objc_msgSend(v10, "length"), &v27);
    if (v12)
    {
      v13 = v12;
      free(v27);
      v14 = *(a1 + 32);
      v15 = MEMORY[0x1E696ABC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v17 = [v15 errorWithDomain:v16 code:v13 userInfo:0];
      (*(v14 + 16))(v14, 0, 0, 0, 0xFFFFFFFFLL, v17);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = [v18 initWithBytes:v27 length:{objc_msgSend(v11, "length")}];
      free(v27);
      bcgsyabc74vz12([v9 bytes], objc_msgSend(v9, "length"), &v26);
      if (!v19)
      {
        v24 = objc_alloc(MEMORY[0x1E695DEF0]);
        v25 = [v24 initWithBytes:v26 length:{objc_msgSend(v9, "length")}];
        free(v26);
        (*(*(a1 + 32) + 16))();

        goto LABEL_8;
      }

      v20 = v19;
      free(v26);
      v21 = *(a1 + 32);
      v22 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCADecrypt];
      v23 = [v22 errorWithDomain:v17 code:v20 userInfo:0];
      (*(v21 + 16))(v21, 0, 0, 0, 0xFFFFFFFFLL, v23);
    }

LABEL_8:
    goto LABEL_9;
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

- (void)vffg4lwI2HftPvpO:(id)a3
{
  v3 = a3;
  v4 = +[Lt10zus2DOk3OfFf sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__GzVCsVtcKNcQqqNF_vffg4lwI2HftPvpO___block_invoke;
  v6[3] = &unk_1E85EDE28;
  v7 = v3;
  v5 = v3;
  [v4 vffg4lwI2HftPvpO:v6];
}

@end